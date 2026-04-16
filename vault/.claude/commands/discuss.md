---
description: Open a wiki-grounded freeform discussion session on a topic
allowed-tools: Bash, Read, Write, Edit, Glob, Grep
model: sonnet
argument-hint: [topic to discuss]
---

# Discuss

## Purpose

Load all wiki notes relevant to a topic and begin a freeform conversation
grounded in that knowledge. Insights agreed during the session can be saved
as inbox/ drafts. The full transcript can be archived for future reference.

## Variables

TOPIC: $ARGUMENTS
INDEX_FILE: meta/index.md
ALIAS_FILE: meta/alias-table.json
WIKI_DIR: wiki/
CONVERSATIONS_DIR: conversations/
MAX_NOTES: 10

## Instructions

- Read CLAUDE.md before doing anything else.
- Use loaded wiki notes as PRIMARY context — cite them when relevant during discussion.
- The inbox/ gate applies here too. Never write directly to wiki/.
- When the user says "save that" or "approve this", write to inbox/ as a draft (NOT wiki/).
- Set sources to include the conversation transcript path.
- Only archive the transcript when the user explicitly ends the session.

## Workflow

1. Read CLAUDE.md to confirm invariants.
2. Read meta/index.md and meta/alias-table.json.
3. Find all wiki notes whose tags or aliases match the topic string. Load their full bodies (up to 10 notes).
4. Report which notes were loaded.
5. Begin the freeform conversation. Use loaded notes as primary context and cite them when relevant.
6. During the session:
   - When user says "save that" / "approve this" / runs /approve: write agreed content to inbox/ as a draft using frontmatter `type: concept` (or appropriate type). Set sources to include `conversations/<timestamp>.md`.
7. At session end (user says "done" or "end session"): offer to archive the transcript to `conversations/<YYYY-MM-DD>-<topic-slug>.md` with frontmatter: `type: conversation, tags: [<topic>], sources: [wiki notes used]`.

## Report

At session start, output:

```
Summary: Discussion on "<topic>" — <N> wiki note(s) loaded
Status: READY

Loaded notes:
- [[note-id]] — <title>
- ...

Notes not found: (list any topic aspects with no matching wiki notes)

Starting discussion. Say "save that" to draft an insight, or "done" to end the session.
```
