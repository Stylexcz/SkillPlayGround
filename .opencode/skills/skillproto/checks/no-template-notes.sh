#!/usr/bin/env bash
# Ensure generated documentation does not contain template writer notes.
# Usage: no-template-notes.sh PATH...
# PATH may be a file or a directory. Fails (exit 1) if a leaked writer note is found.
set -u

if [ "$#" -eq 0 ]; then
  echo "error: at least one file or directory is required" >&2
  exit 2
fi

PATTERN='^\s*>[[:space:]]*(Keep this page focused|Keep detailed procedures|Keep FAQ answers concise|Keep one tutorial focused|Do not turn this page into|Use this page for lookup information|Troubleshooting starts from an observable symptom|Include only resources directly relevant|This page is the high-level entry point)'

MATCHES="$(grep -rnE --include='*.md' "$PATTERN" "$@" 2>/dev/null)"

if [ -n "$MATCHES" ]; then
  echo "error: template writer notes leaked into the output:" >&2
  echo "$MATCHES" >&2
  exit 1
fi

echo "OK: no template writer notes found in the output."