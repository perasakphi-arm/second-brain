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
- Ground every concept in a real in-game situation from the source note. Never create abstract "theory-only" concepts with no spot context.
- Prioritize concept extraction from thought process patterns:
  - Tony classes: board strategy explanations + in-game thought process are primary signals.
  - Other coaches: in-game thought process is the primary signal.
- Extract only recurring patterns. A single isolated line should stay as an example, not become its own concept unless the note clearly marks it as a core principle.
- Treat "atomic concept" as one reusable decision pattern that can be recognized in-game (trigger -> reasoning -> action), not a broad topic.
- Concept linking rule: when extending an existing concept, link by the same decision pattern in similar game situations (not by similar wording alone). Prefer matching by id/alias plus spot context.
- Each concept draft must make the pattern visible:
  - Name the in-game trigger/spot.
  - Capture the coach's reasoning sequence.
  - State the resulting action rule.
  - Include at least one concrete hand/board example from the raw note.
- If a recurring pattern appears to be a new atomic concept, create a new concept draft for it instead of burying it inside a broader note.
- Treat names like "Outlive" as examples only. Do not force that exact concept name; find and extract whichever recurring pattern is actually present in the current raw notes.
- Image handling: carry Obsidian image embeds (![[filename.png]]) into the draft at the section where they appeared. Preserve the original ![[filename]] syntax exactly — do not alter paths. Only include images directly relevant to the concept being drafted.

## Workflow

1. Read CLAUDE.md to confirm invariants.
2. Resolve input: use INPUT_FILE if provided; otherwise scan raw/ for files not in meta/processed.json.
3. For each file to process:
   a. Read the file.
   b. Read meta/index.md to know existing wiki titles and aliases.
   c. Identify atomic concepts by scanning for repeated in-game decision patterns (trigger -> reasoning -> action), especially in board-strategy breakdowns and thought-process narration. For each concept decide: extends an existing wiki note (match by id/alias + spot context) OR is a new concept requiring a new note.
   d. Write one draft per concept to inbox/ with filename: `_draft-<slug>-<YYYYMMDD-HHMM>.md`
      - Use the full frontmatter contract from CLAUDE.md.
      - Set sources to include the raw file path.
      - Carry over relevant images using original ![[filename]] syntax.
      - In the body, include sections that keep the concept grounded:
        1. Spot Trigger (when this pattern appears in-game)
        2. Thought Process (coach reasoning sequence)
        3. Action Rule (what to do)
        4. Examples (specific hand/board snippets from raw notes)
   e. **Mistake extraction (hand-review files):** Scan the file for lines starting with `Mistake:`. If any are found:
      - Group the mistakes by pattern/theme across all hand samples in the file.
      - Create one additional draft: `_draft-<slug>-mistakes-<YYYYMMDD-HHMM>.md`
      - The mistakes draft must contain:
        1. A summary table listing each mistake category, which hands it appeared in, and a one-line rule.
        2. For each category: the pattern (what was done), why it is wrong, the correct approach, and a table of hand examples from the file.
        3. Tags must include `mistake-analysis` and `hand-review` plus any spot tags from the source file.
      - Also create a companion task-list draft: `_draft-<slug>-study-tasks-<YYYYMMDD-HHMM>.md`
        - One study module per mistake category.
        - Each module: goal, 3–5 actionable tasks with checkboxes, "Done when" criterion.
        - Append a Session Review Protocol section and a Progress Milestones table.
4. After all files processed, compile the report.

## Report

After completing the workflow, output:

```
Summary: Ingested <N> file(s), created <N> draft(s)
Status: SUCCESS / PARTIAL / FAILED

Details:
- <draft filename> — <concept title> [NEW note | EXTENDS <existing-id>] [<N> image(s) carried]
- <draft filename> — Mistake Analysis [<N> mistake categories, <N> hand examples] (if applicable)
- <draft filename> — Study Task List [<N> modules] (if applicable)
- ...

Skipped (already processed):
- <filename> — already in processed.json

Next Steps: Run /approve <draft-filename> to promote each draft to wiki/
```
