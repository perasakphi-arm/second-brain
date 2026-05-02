---
description: Answer questions grounded in wiki notes, with source citations and gap detection
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
model: sonnet
argument-hint: [your question, optionally prefixed with --tag <tag>]
---

# Ask

## Purpose

Answer the user's question using wiki notes as the primary source. Retrieves
the most relevant notes, reasons over them, cites every note used, logs the
Q&A, and flags any topics not covered by the wiki as gaps to address.

## Variables

QUESTION: $ARGUMENTS
INDEX_FILE: meta/index.md
ALIAS_FILE: meta/alias-table.json
QA_LOG: meta/qa-log.md
WIKI_DIR: wiki/
MAX_NOTES: 8

## Instructions

- Read CLAUDE.md before doing anything else.
- Use wiki notes as PRIMARY source — quote or paraphrase before drawing on training knowledge.
- Never contradict a wiki note without explicitly flagging the conflict.
- If no notes are retrieved, answer from general knowledge and state so clearly.
- Do NOT write to wiki/ or inbox/ unless the user explicitly says "save this" or "approve".
- Only write automatically to meta/qa-log.md.
- Optional `--tag <tag>` prefix: filter retrieval to notes matching that tag only.
- For strategy/coaching questions, prioritize retrieval of notes that contain reusable in-game decision patterns (trigger -> reasoning -> action), not just matching terminology.
- Treat "atomic concept" as a pattern visible in real hand/board situations. Prefer notes with concrete examples over abstract summaries when both are available.

## Workflow

1. Read CLAUDE.md to confirm invariants.
2. Parse argument: if it starts with `--tag <tag>`, extract the tag and the remainder as the question; otherwise use full argument as question.
3. **Retrieve** — read meta/index.md and meta/alias-table.json. Tokenize the question into keywords. Match against (in order):
   a. Exact tag match
   b. Alias match (term appears in any note's aliases list)
   c. Title substring match
   d. If fewer than 3 notes matched, full-text grep of wiki/ bodies
   If `--tag` was provided, restrict all matches to notes with that tag.
   Prefer ranking notes higher when they include spot-trigger language, thought-process steps, and action rules tied to hand/board contexts.
   Load the full body of the top 8 most relevant matching notes.
4. **Reason** — answer the question using the retrieved notes. Ground explanations in real in-game spots and recurring patterns from the notes, then generalize into atomic concept form only when supported by those examples. Flag any conflict between retrieved notes and training knowledge explicitly.
5. **Cite** — end the answer with a `## Sources` section listing every wiki note used with a one-sentence relevance note. If none used, write `(none — answered from general knowledge)`.
6. **Log** — append one line to meta/qa-log.md:
   `| YYYY-MM-DD | "<question truncated to 80 chars>" | [id1, id2, ...] | no |`
7. **Gap check** — if any part relied on general knowledge, append a `## Gaps` section with one bullet per missing topic suggesting `/ingest` with a source file.

## Report

The answer itself is the report. Structure:

```
[Answer grounded in wiki notes]

## Sources
- [[note-id]] — one sentence on why it was relevant
- ...

## Gaps  (omit if fully covered by wiki)
- <topic> — consider running /ingest with a source file on this topic
```
