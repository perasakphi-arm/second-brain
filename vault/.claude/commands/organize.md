---
description: Full organization pass — draft new content, relink notes, regenerate meta indexes
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
model: sonnet
argument-hint: [no argument needed]
---

# Organize

## Purpose

Run a full vault organization pass: detect unprocessed content in raw/ and
inbox/, create drafts for new or extended concepts, run a link pass over all
wiki/ notes, and regenerate meta/index.md and meta/alias-table.json. Safe to
run repeatedly — already-processed files are skipped via hash check.

## Variables

RAW_DIR: raw/
INBOX_DIR: inbox/
WIKI_DIR: wiki/
PROCESSED_FILE: meta/processed.json
INDEX_FILE: meta/index.md
ALIAS_FILE: meta/alias-table.json

## Instructions

- Read CLAUDE.md before doing anything else.
- Never write directly to wiki/. All new content goes to inbox/ as _draft- files.
- meta/ files are the only exception — they may be overwritten freely.
- Skip any file whose SHA-256 hash already appears in processed.json.
- The link pass follows the same rules as /link: skip code blocks, first-occurrence only per line.

## Workflow

1. Read CLAUDE.md to confirm invariants.
2. Read meta/processed.json to get the hash log.
3. Enumerate all .md files under raw/, inbox/, wiki/.
4. Skip any file whose SHA-256 hash appears in processed.json.
5. For new/changed content:
   a. Read meta/index.md to get existing wiki titles and aliases.
   b. Cluster new content by topic. For each cluster:
      - Maps to existing wiki note (by id or alias match)? → generate a diff/extension draft in inbox/
      - No match? → generate a new draft in inbox/
   c. Write drafts to inbox/ with `_draft-` prefix and full frontmatter from CLAUDE.md.
6. Run the link pass on all wiki/ notes (same logic as /link):
   - Build alias map from wiki frontmatter + meta/alias-table.json.
   - For each wiki note: replace first occurrence per line of known aliases/titles with [[id]] links (skipping code blocks and existing links).
   - Update links_out in frontmatter.
7. Regenerate meta/index.md: group all wiki notes by type, format each as `- [[<id>]] — <title> (<tags>)`.
8. Regenerate meta/alias-table.json: one pass over all wiki frontmatter → `{ "<alias>": "<id>", "<title>": "<id>" }`.

## Report

After completing the workflow, output:

```
Summary: Organize pass complete — <N> draft(s) created, meta indexes regenerated
Status: SUCCESS / PARTIAL / FAILED

Details:
- Files skipped (already processed): <N>
- Drafts created: 
  - <draft filename> — <concept> [NEW | EXTENDS <id>]
- meta/index.md regenerated: YES / NO
- meta/alias-table.json regenerated: YES / NO
- Links added across wiki/: <N>
- Orphan notes (zero inbound links):
  - [[id]] — <title>

Next Steps: Run /approve on each new draft, then /graph to refresh the link graph
```
