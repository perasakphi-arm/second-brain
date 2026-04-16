---
description: Process raw Markdown files and create inbox drafts for review
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
model: sonnet
argument-hint: [path to raw file, or empty to scan all unprocessed files]
---

# Ingest

## Purpose

Process raw Markdown files from raw/ into atomic concept drafts in inbox/.
Each draft awaits user review before promotion via /approve. This command
never writes to wiki/ — the inbox gate is what keeps the wiki trustworthy.

## Variables

INPUT_FILE: $ARGUMENTS
RAW_DIR: raw/
INBOX_DIR: inbox/
INDEX_FILE: meta/index.md
PROCESSED_FILE: meta/processed.json

## Instructions

- Read CLAUDE.md before doing anything else to understand the invariants.
- If INPUT_FILE is empty, find all files under raw/ whose SHA-256 hash is NOT already a key in meta/processed.json.
- If the file is already in processed.json, skip it and report so.
- Do NOT write to wiki/. Do NOT update meta/processed.json — that is /approve's responsibility.
- One concept = one draft. If a raw file contains multiple atomic concepts, create one draft per concept.
- Image handling: carry Obsidian image embeds (![[filename.png]]) into the draft at the section where they appeared. Preserve the original ![[filename]] syntax exactly — do not alter paths. Only include images directly relevant to the concept being drafted.

## Workflow

1. Read CLAUDE.md to confirm invariants.
2. Resolve input: use INPUT_FILE if provided; otherwise scan raw/ for files not in meta/processed.json.
3. For each file to process:
   a. Read the file.
   b. Read meta/index.md to know existing wiki titles and aliases.
   c. Identify atomic concepts. For each concept decide: extends an existing wiki note (match by id or alias) OR is a new concept requiring a new note.
   d. Write one draft per concept to inbox/ with filename: `_draft-<slug>-<YYYYMMDD-HHMM>.md`
      - Use the full frontmatter contract from CLAUDE.md.
      - Set sources to include the raw file path.
      - Carry over relevant images using original ![[filename]] syntax.
4. After all files processed, compile the report.

## Report

After completing the workflow, output:

```
Summary: Ingested <N> file(s), created <N> draft(s)
Status: SUCCESS / PARTIAL / FAILED

Details:
- <draft filename> — <concept title> [NEW note | EXTENDS <existing-id>] [<N> image(s) carried]
- ...

Skipped (already processed):
- <filename> — already in processed.json

Next Steps: Run /approve <draft-filename> to promote each draft to wiki/
```
