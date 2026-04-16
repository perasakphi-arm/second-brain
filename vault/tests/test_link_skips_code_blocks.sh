#!/usr/bin/env bash
# Test: /link must not rewrite aliases inside fenced code blocks or inline code.
#
# Usage: run from vault/ root after /link has been run on a test fixture.
# This script checks a known fixture file for the invariant.

set -euo pipefail

VAULT="${1:-$(pwd)}"
FIXTURE="$VAULT/wiki/concepts/link-test-fixture.md"

if [ ! -f "$FIXTURE" ]; then
  echo "SKIP: Fixture file not found: $FIXTURE"
  echo "Create a wiki note with aliases inside code blocks to test /link."
  exit 0
fi

echo "Checking link rewriting in: $FIXTURE"
FAIL=0

# The fixture should have raw alias text inside ``` blocks that was NOT rewritten.
# We check that no [[...]] links appear inside fenced code sections.
IN_CODE=0
LINE_NUM=0
while IFS= read -r line; do
  LINE_NUM=$((LINE_NUM + 1))
  if [[ "$line" =~ ^\`\`\` ]]; then
    IN_CODE=$((1 - IN_CODE))
  fi
  if [ "$IN_CODE" -eq 1 ] && [[ "$line" =~ \[\[ ]]; then
    echo "FAIL line $LINE_NUM: wiki-link found inside fenced code block:"
    echo "  $line"
    FAIL=1
  fi
done < "$FIXTURE"

[ "$FAIL" -eq 0 ] && echo "PASS: No wiki-links inside code blocks" || exit 1
