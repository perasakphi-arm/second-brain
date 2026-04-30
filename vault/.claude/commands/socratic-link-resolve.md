---
description: Read link tasks, Socratic-explore orphan notes to find connections, create inbox drafts or 2-week deferred tasks
allowed-tools: Read, Write, Glob, Edit
model: opus
argument-hint: [optional: specific concept id to process, e.g. concept/mtt-vs-cash-poker-is-poker]
---

# Socratic Link Resolve

## Purpose

Work through orphan and under-linked notes by applying Socratic questioning to
uncover conceptual relationships. For each target note:
- If connections are found → write an inbox/ draft proposing the link additions
  to relevant existing notes (awaits /approve like all drafts)
- If no strong connections emerge → write a deferred task in task/ with a
  2-week revisit date and the reasoning for why linking was inconclusive

Run this after /graph reveals orphans, or whenever task/ contains pending link tasks.

## Variables

ARGUMENT: 
TASK_DIR: task/
INBOX_DIR: inbox/
WIKI_DIR: wiki/
INDEX_FILE: meta/index.md
TODAYS_DATE: (read from system context or meta)
REVISIT_WEEKS: 2

## Instructions

- Read CLAUDE.md before doing anything else.
- If ARGUMENT is provided, process only that concept id. Otherwise read all
  .md files in task/ and extract orphan/link-task entries.
- Never write directly to wiki/. All proposed link additions go to inbox/ as
  _draft- files for /approve.
- A "connection" is valid only if the relationship can be expressed as a
  natural sentence that would appear in the note body — not a forced mention.
- Deferred task files must include: concept id, today's date, revisit date
  (today + 14 days), the Socratic questions explored, and the specific gap
  that remains unresolved.
- Do not delete existing task files — only append or create new ones.
- One inbox draft per source note that receives proposed link text additions.

## Workflow

1. Read CLAUDE.md to confirm invariants.

2. Resolve target list:
   - If ARGUMENT given: target = [ARGUMENT].
   - Else: read all files in task/, extract concept ids marked as orphans or
     with open [ ] checkboxes. Deduplicate.

3. Read meta/index.md to get the full list of existing wiki notes and their
   titles/aliases.

4. For each target concept id:

   a. Read the target wiki note.
   b. Read all other wiki notes to understand the existing knowledge graph.

   c. **Socratic exploration** — ask and reason through these questions:
      - What is the core claim or insight of this note?
      - Which existing notes address a problem this note helps solve?
      - Which existing notes assume knowledge this note explains?
      - If a student read this note first, which note would they naturally
        reach for next? Which note would they have needed before?
      - Does this note contradict, qualify, or extend anything already in wiki/?
      - What phrase or sentence in an existing note could naturally be followed
        by "see also: [[this note]]"?

   d. **Evaluate connection strength:**
      - STRONG: a natural sentence can be written that meaningfully links the
        two notes (not just "both are about poker").
      - WEAK / NONE: relationship is only thematic; forcing a link would add
        noise, not signal.

   e. **Branch on result:**

      → If STRONG connections found:
        - For each existing note that should link TO or FROM the target:
          Draft a short addition (1–3 sentences) to insert into that note's
          body at the appropriate section.
        - Write one inbox draft per source note:
          Filename: `inbox/_draft-link-<source-slug>-<YYYYMMDD-HHMM>.md`
          Frontmatter: id = source note's id, type = concept, sources = [],
          action = "LINK_ADDITION" (note in title).
          Body: full updated section showing where the new link sentence fits,
          with surrounding context for the reviewer.

      → If WEAK / NO connections:
        - Write a deferred task file:
          Filename: `task/deferred-<slug>-<YYYYMMDD>.md`
          Content: concept id, today's date, revisit date (today + 14 days),
          the Socratic questions explored, the gap statement explaining why
          no strong link was found, and a suggested question to revisit.
        - Do NOT create an inbox draft.

5. If task/ source file had checkboxes for this concept, note in the report
   that those items are now handled (resolved or deferred) — but do NOT edit
   the task file itself.

## Report

After completing all targets, output:

```
Summary: Processed <N> concept(s) — <N> linked, <N> deferred
Status: SUCCESS / PARTIAL / FAILED

Results:
- <concept id>
    Status: LINKED / DEFERRED
    [If LINKED]   Draft(s): <inbox filenames>
                  Links proposed: <source note> → mentions <target note>
    [If DEFERRED] Task: <task filename>
                  Revisit: <YYYY-MM-DD>
                  Gap: <one-sentence reason>

Next Steps:
  Linked   → Run /approve <draft> for each proposed link addition, then /link + /graph
  Deferred → Tasks saved in task/; revisit on scheduled date or run /socratic-link-resolve again
```
