---
description: Scan wiki for active leaks and generate a pre-session focus list; mark a leak fixed with "fix <leak-slug>"
allowed-tools: Read, Write, Glob, Grep
model: sonnet
argument-hint: [fix <leak-slug>]
---

# Session Prep

## Purpose

Run before every session to surface your current active leaks and get a focused to-do list with concrete in-game execution cues. Keeps you from sitting down without a plan.

When you feel a leak is fixed, run `/session-prep fix <leak-slug>` to create a resolution draft that you can approve into the wiki.

## Variables

COMMAND_ARG: <!-- filled at runtime — empty or "fix <leak-slug>" -->
INBOX_DIR: inbox/
SPOTS_DIR: wiki/spots/
FRAMEWORKS_DIR: wiki/frameworks/
HANDS_DIR: wiki/hands/
TODAY: <!-- current date YYYY-MM-DD HH:MM -->

## Instructions

- Never write directly to `wiki/` — all output goes to `inbox/` as `_draft-` files
- Scan `wiki/spots/`, `wiki/frameworks/`, and `wiki/hands/` for active leaks and incomplete study modules
- Prioritize leaks by: (a) hand frequency (most hands affected), (b) incomplete study module still open
- Execution cues must be concrete and actionable: "When X → do Y" format — not theory
- Cap the focus list at 5 leaks maximum; more than 5 kills focus
- If `fix <leak-slug>` argument is provided, run the Fix Flow only — do not regenerate the full list

## Workflow

1. **Parse argument**
   - Empty → run Full Flow
   - Starts with `fix` → extract `<leak-slug>` and run Fix Flow

---

### Full Flow (no argument)

2. **Scan spots notes for mistake patterns**
   - Glob `wiki/spots/` for all `.md` files
   - For each file, grep for: `Mistake`, `mistake-`, `## Mistake`, frequency counts (e.g. "6 of", "5 of", "N hands")
   - Extract: mistake name, hand count affected, one-line rule if present

3. **Scan frameworks notes for incomplete study modules**
   - Glob `wiki/frameworks/` for all `.md` files
   - Grep for unchecked boxes: `- [ ]`
   - Note: which file, which module heading the unchecked item falls under

4. **Scan hands notes for recent patterns**
   - Glob `wiki/hands/` for the 10 most recent `.md` files (sort by filename — dates are in filenames)
   - Grep each for tags or `Mistake:` lines
   - Note any mistake category that appears more than once across recent hands

5. **Rank and select top leaks**
   - Merge findings from steps 2–4 into a unified leak list
   - Rank by: frequency first, then whether a study module is still open
   - Select top 3–5 leaks for the focus list

6. **Build execution cues**
   - For each selected leak, write one concrete trigger → action cue
   - Format: "Situation: [board type / spot] → Action: [what to do instead]"
   - Pull the "Fix:" or one-line rule from the spots note if available; otherwise derive from context

7. **Write pre-session inbox draft**
   - Filename: `inbox/_draft-pre-session-YYYYMMDD-HHMM.md`
   - Frontmatter: id, title, type: reference, tags: [session-prep, leaks], sources, created, updated
   - Sections:
     - `## Before You Sit Down` — 3–5 bullet execution cues, one per leak
     - `## Active Leaks` — ranked table: Rank | Leak | Hands Affected | Source Note | Study Module Open?
     - `## Open Study Modules` — list of unchecked `[ ]` items from frameworks notes with links
     - `## Session Goal` — one sentence: "Today focus on [top leak name]."

---

### Fix Flow (`fix <leak-slug>`)

2. **Locate relevant notes**
   - Grep `wiki/` recursively for `<leak-slug>` to find the mistake-analysis note and study-task note
   - Read both files

3. **Create resolution draft**
   - Filename: `inbox/_draft-leak-resolved-<leak-slug>-YYYYMMDD-HHMM.md`
   - Frontmatter: id, title, type: reference, tags: [leak-resolved], sources (both wiki notes), created, updated
   - Body:
     - `## Leak Resolved: <leak-slug>`
     - `**Date fixed:** YYYY-MM-DD`
     - `## Changes to Apply (pending /approve)`
     - Bullet list of specific edits to make to the study-task note (check off the module)
     - Bullet list of specific edits to make to the mistake-analysis note (add `**Resolved:** YYYY-MM-DD` line)
   - Note at bottom: "Run `/approve` to promote these changes to the wiki."

## Report

### Full Flow
```
Pre-Session Leak Focus — [DATE]

Draft: inbox/_draft-pre-session-[YYYYMMDD-HHMM].md

Top leaks today:
  1. [Leak name] ([N] hands) — [Trigger → Action cue]
  2. [Leak name] ([N] hands) — [Trigger → Action cue]
  3. ...

Open study modules: [N] unchecked across [N] notes

Session goal: Focus on [top leak name].
Open the draft in Obsidian before sitting down.
```

### Fix Flow
```
Leak Resolution Draft Created

Draft: inbox/_draft-leak-resolved-[slug]-[YYYYMMDD-HHMM].md
Covers: [study-task note] + [mistake-analysis note]

Run /approve to mark "[leak-slug]" as resolved in the wiki.
```
