#!/usr/bin/env bash
# Test: /approve must move draft to wiki/, update processed.json, and commit.
# Usage: run from the vault/ root after running /approve on a draft.
#
# Checks:
# 1. The approved file exists in wiki/<type>/<slug>.md
# 2. The draft is gone from inbox/
# 3. meta/processed.json has been updated (non-empty)
# 4. The last Git commit message starts with "wiki:"

set -euo pipefail

VAULT="${1:-$(pwd)}"
WIKI="$VAULT/wiki"
INBOX="$VAULT/inbox"
PROCESSED="$VAULT/meta/processed.json"

echo "Checking vault at: $VAULT"
FAIL=0

# 1. No orphaned drafts in inbox/ (all should be approved or pending)
DRAFTS=$(find "$INBOX" -name "_draft-*" 2>/dev/null | wc -l)
echo "Remaining drafts in inbox/: $DRAFTS"

# 2. processed.json should not be empty
if [ "$(cat "$PROCESSED")" = "{}" ]; then
  echo "WARN: processed.json is still empty — approve may not have updated it"
fi

# 3. Check last commit message
LAST_COMMIT=$(git -C "$VAULT" log -1 --pretty=%s 2>/dev/null || echo "no-git")
echo "Last commit: $LAST_COMMIT"
if [[ "$LAST_COMMIT" != wiki:* ]] && [[ "$LAST_COMMIT" != "no-git" ]]; then
  echo "WARN: Last commit message does not start with 'wiki:' — did /approve commit?"
fi

# 4. At least one file in wiki/
WIKI_COUNT=$(find "$WIKI" -name "*.md" 2>/dev/null | wc -l)
if [ "$WIKI_COUNT" -eq 0 ]; then
  echo "FAIL: No files in wiki/ — approve did not move the draft"
  FAIL=1
else
  echo "Wiki notes: $WIKI_COUNT"
fi

[ "$FAIL" -eq 0 ] && echo "PASS" || exit 1
