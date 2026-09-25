#!/usr/bin/env bash
# Ensure generated documentation does not contain template writer notes.
# Usage: no-template-notes.sh PATH...
#   PATH may be a file or a directory. Fails (exit 1) if a leaked writer note is found.
#   --self-test verifies that the check can actually detect the notes by scanning
#   the skill's own Templates/ directory, which must contain writer notes.
set -u

PATTERN='Writer note (do not include in the output)'

if [ "${1:-}" = "--self-test" ]; then
  SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
  TEMPLATES_DIR="$SCRIPT_DIR/../Templates"
  if [ ! -d "$TEMPLATES_DIR" ]; then
    echo "error: self-test: Templates/ not found at $TEMPLATES_DIR" >&2
    exit 2
  fi
  NOTES="$(grep -rnIFi --include='*.md' "$PATTERN" "$TEMPLATES_DIR" 2>/dev/null)"
  if [ -n "$NOTES" ]; then
    echo "self-test OK: writer notes detected in Templates/ (expected)."
    exit 0
  fi
  echo "error: self-test failed: no writer notes detected in Templates/." >&2
  exit 1
fi

if [ "$#" -eq 0 ]; then
  echo "error: at least one file or directory is required" >&2
  exit 2
fi

MATCHES="$(grep -rnIFi --include='*.md' "$PATTERN" "$@" 2>/dev/null)"

if [ -n "$MATCHES" ]; then
  echo "error: template writer notes leaked into the output:" >&2
  echo "$MATCHES" >&2
  exit 1
fi

echo "OK: no template writer notes found in the output."