---
description: Promote a reviewed inbox draft into the canonical wiki or qa/
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
model: sonnet
argument-hint: [draft filename from inbox/, e.g. _draft-prompt-caching-20260416-1430.md]
---

# Approve

## Purpose

Promote a validated inbox/ draft into the canonical wiki/ (or qa/ for Q&A
notes). Updates meta/processed.json and meta/index.md, then deletes the draft.
This is the only command that writes to wiki/ — the user's explicit approval
is what keeps the knowledge base trustworthy.

## Variables

DRAFT_FILE: $ARGUMENTS
INBOX_DIR: inbox/
WIKI_DIR: wiki/
QA_DIR: qa/
PROCESSED_FILE: meta/processed.json
INDEX_FILE: meta/index.md

## Instructions

- Read CLAUDE.md before doing anything else.
- If DRAFT_FILE is empty, list all files in inbox/ for the user to choose, then stop.
- Validate frontmatter before any write — stop and report errors if invalid.
- Never delete existing content when merging into an existing note; append only.
- Do NOT commit to Git. The user controls commits.

## Workflow

1. Read CLAUDE.md to confirm invariants.
2. If no argument, list inbox/ contents and stop.
3. Read the draft file from inbox/.
4. Validate frontmatter — all fields must be present and correct:
   - id, title, type, tags, sources, aliases, created, updated are all present.
   - id follows the pattern `<type>/<slug>`.
   - sources lists at least one file.
   - If validation fails: report errors and STOP.
5. Determine destination:
   - type: `qa` → `qa/<slug>-<YYYYMMDD>.md`
   - all others → `wiki/<type>/<slug>.md`
6. Check if destination already exists:
   - YES → show a diff of what will change. Ask the user to confirm before merging. Merge by appending new sections; never delete existing content.
   - NO → proceed to create.
7. Write the file to its destination.
8. Update meta/processed.json:
   - Compute SHA-256 of each file listed in sources.
   - Add entry: `{ "<hash>": { "file": "<source path>", "ingested": "<YYYY-MM-DD>", "wiki_id": "<id>" } }`
9. Update meta/index.md:
   - Add or update the entry for this note under the correct type section.
   - Format: `- [[<id>]] — <title> (<tags joined by comma>)`
10. Delete the draft from inbox/.

## Report

After completing the workflow, output:

```
Summary: Approved <title> → <destination path>
Status: SUCCESS / FAILED

Details:
- Draft: <draft filename>
- Destination: <wiki or qa path>
- Action: CREATED / MERGED INTO EXISTING
- processed.json: updated with <N> source hash(es)
- meta/index.md: updated

Next Steps: Run /link to add wiki-links to the new note, or /graph to refresh the link graph
```
