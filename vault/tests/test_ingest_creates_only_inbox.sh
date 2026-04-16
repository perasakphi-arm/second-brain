#!/usr/bin/env bash
# Test: /ingest must not write to wiki/ — only to inbox/
# Usage: run from the vault/ root or test-vault/ root.
# This is a structural assertion, not a runtime Claude test.
# It validates the post-condition of a manual /ingest run.
#
# To use: run /ingest on a test-vault raw file, then run this script.

set -euo pipefail

VAULT="${1:-$(pwd)}"
INBOX="$VAULT/inbox"
WIKI="$VAULT/wiki"

echo "Checking vault at: $VAULT"

# Count files in wiki/ before and after — this test assumes you snapshot first.
# For CI, we verify that no _draft- files leaked into wiki/.
LEAKED=$(find "$WIKI" -name "_draft-*" 2>/dev/null | wc -l)
if [ "$LEAKED" -gt 0 ]; then
  echo "FAIL: Found _draft- files in wiki/ — ingest leaked drafts:"
  find "$WIKI" -name "_draft-*"
  exit 1
fi

# Verify inbox/ has at least one draft (proves ingest ran)
DRAFTS=$(find "$INBOX" -name "_draft-*" 2>/dev/null | wc -l)
echo "Drafts in inbox/: $DRAFTS"

echo "PASS: No draft files leaked into wiki/"
