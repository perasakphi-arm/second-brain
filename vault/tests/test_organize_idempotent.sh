#!/usr/bin/env bash
# Test: running /organize twice produces no diff on the second run.
# This is a structural post-condition test.
#
# Usage:
#   1. Run /organize once (initial pass).
#   2. Snapshot git state: git stash or git commit.
#   3. Run /organize again.
#   4. Run this script — it checks git diff is clean.

set -euo pipefail

VAULT="${1:-$(pwd)}"

echo "Checking idempotency at: $VAULT"

DIFF=$(git -C "$VAULT" diff --name-only 2>/dev/null || echo "no-git")

if [ "$DIFF" = "no-git" ]; then
  echo "SKIP: Not a git repo — cannot check idempotency without git diff"
  exit 0
fi

# Ignore qa-log.md and meta/ timestamps that always change
MEANINGFUL=$(echo "$DIFF" | grep -v "meta/qa-log.md" | grep -v "meta/index.md" || true)

if [ -n "$MEANINGFUL" ]; then
  echo "FAIL: Second /organize run produced changes:"
  echo "$MEANINGFUL"
  exit 1
fi

echo "PASS: Second /organize run produced no meaningful diff"
