#!/usr/bin/env bash
# Test: every [[id]] in a /ask answer's ## Sources block must resolve to a
# real file in wiki/ or qa/.
#
# Usage: pipe a saved /ask answer into this script, or pass a file path.
#   ./test_ask_cites_only_known_notes.sh <vault_root> <answer_file>
#
# The answer_file should be the raw text output of a /ask response
# (saved to a temp file for testing).

set -euo pipefail

VAULT="${1:-$(pwd)}"
ANSWER_FILE="${2:-}"

if [ -z "$ANSWER_FILE" ]; then
  echo "Usage: $0 <vault_root> <answer_file>"
  echo "answer_file = path to saved /ask response text"
  exit 1
fi

if [ ! -f "$ANSWER_FILE" ]; then
  echo "FAIL: answer file not found: $ANSWER_FILE"
  exit 1
fi

echo "Checking citations in: $ANSWER_FILE"
echo "Against vault at: $VAULT"

FAIL=0
IN_SOURCES=0

while IFS= read -r line; do
  if [[ "$line" =~ ^##\ Sources ]]; then
    IN_SOURCES=1
    continue
  fi
  if [[ "$line" =~ ^## ]] && [ "$IN_SOURCES" -eq 1 ]; then
    IN_SOURCES=0
  fi
  if [ "$IN_SOURCES" -eq 1 ]; then
    # Extract [[id]] patterns
    while [[ "$line" =~ \[\[([a-z/a-z0-9_-]+) ]]; do
      NOTE_ID="${BASH_REMATCH[1]}"
      # Convert id to file path: concept/foo → wiki/concepts/foo.md?
      # Try both wiki/ and qa/ subdirectories
      FOUND=0
      for DIR in wiki qa; do
        # Try direct path match: wiki/concept/foo.md
        if [ -f "$VAULT/$DIR/$NOTE_ID.md" ]; then
          FOUND=1
          break
        fi
        # Try with subfolder expansion: concept/foo → wiki/concepts/foo.md
        TYPE=$(echo "$NOTE_ID" | cut -d/ -f1)
        SLUG=$(echo "$NOTE_ID" | cut -d/ -f2-)
        if [ -f "$VAULT/$DIR/${TYPE}s/$SLUG.md" ]; then
          FOUND=1
          break
        fi
      done
      if [ "$FOUND" -eq 0 ]; then
        echo "FAIL: Cited note does not exist: [[$NOTE_ID]]"
        FAIL=1
      else
        echo "OK: [[$NOTE_ID]] resolves to a real file"
      fi
      # Remove matched portion to find next [[...]]
      line="${line#*\[\[$NOTE_ID}"
    done
  fi
done < "$ANSWER_FILE"

[ "$FAIL" -eq 0 ] && echo "PASS: All cited notes exist" || exit 1
