#!/usr/bin/env bash
# Validate the structure of generated wiki pages.
# Usage: structure.sh PATH...
# PATH may be a markdown file or a directory of markdown files.
#
# Checks per page (files whose basename starts with '_' are skipped):
#   1. exactly one H1 title
#   2. a '## Related Documentation' section at the end
#   3. every internal '*.md' link resolves to an existing file
#   4. balanced code fences (```)
#   5. balanced centered-table divs (<div align="center"> / </div>)
#   6. every markdown table wrapped in a centered div
#
# _Sidebar.md, when present, is validated separately: every [[page-handle]]
# link must resolve to an existing page. Other underscore-prefixed files
# (_Footer.md, ...) are skipped.
#
# Exits 1 when any page fails; prints 'OK: N pages validated' otherwise.
set -u

if [ "$#" -eq 0 ]; then
  echo "error: at least one file or directory is required" >&2
  exit 2
fi

for p in "$@"; do
  [ -e "$p" ] || { echo "error: not a file or directory: $p" >&2; exit 2; }
done

FILES="$(printf '%s\n' "$@" | while IFS= read -r p; do
  if [ -d "$p" ]; then
    find "$p" -type f -name '*.md' | sort
  else
    printf '%s\n' "$p"
  fi
done | sed 's#^\./##' | sort -u)"

[ -n "$FILES" ] || { echo "error: no markdown files found" >&2; exit 2; }

VALIDATED=0
FAILED=0
fail() { echo "FAIL: $1"; FAILED=1; }

while IFS= read -r f; do
  base="$(basename "$f")"
  dir="$(dirname "$f")"
  case "$base" in
    _Sidebar.md)
      for handle in $(grep -oE '\[\[[^]|]+' "$f" | sed -E 's/^\[\[//'); do
        [ -z "$handle" ] && continue
        [ -f "$dir/$handle.md" ] || fail "$f: broken sidebar link -> [[$handle]]"
      done
      continue ;;
    _*) continue ;;  # skip other special wiki files (_Footer.md, ...)
  esac

  # 1. Exactly one H1
  h1="$(grep -c '^# ' "$f")"
  if [ "$h1" -ne 1 ]; then
    fail "$f: expected exactly one H1, found $h1"
  fi

  # 2. Related Documentation section
  if ! grep -q '^## Related Documentation' "$f"; then
    fail "$f: missing '## Related Documentation' section"
  fi

  # 3. Internal markdown links resolve
  for link in $(grep -oE '\]\([^)]+\)' "$f" | sed -E 's/^\]\(//; s/\)$//' | grep -E '\.md$'); do
    case "$link" in
      http*|https*) continue ;;
    esac
    target="${link%%#*}"
    [ -f "$dir/$target" ] || fail "$f: broken internal link -> $link"
  done

  # 4. Balanced code fences
  fences="$(grep -c '^```' "$f")"
  if [ $((fences % 2)) -ne 0 ]; then
    fail "$f: odd number of code fences ($fences)"
  fi

  # 5. Balanced centered-table divs
  opens="$(grep -c '<div align="center">' "$f")"
  closes="$(grep -c '</div>' "$f")"
  if [ "$opens" -ne "$closes" ]; then
    fail "$f: <div align=\"center\"> opens=$opens closes=$closes"
  fi

  # 6. Every table inside a centered div
  while IFS= read -r err; do
    fail "$err"
  done < <(awk 'BEGIN{d=0} /<div align="center">/{d++} /<\/div>/{d--} /^(\|[ -:]*)+$/{if(d<=0) print FILENAME": table not wrapped in <div align=\"center\"> (line "NR")"}' "$f")

  VALIDATED=$((VALIDATED + 1))
done <<< "$FILES"

if [ "$FAILED" -eq 1 ]; then
  echo "error: $VALIDATED page(s) validated, one or more checks failed." >&2
  exit 1
fi

echo "OK: $VALIDATED pages validated."