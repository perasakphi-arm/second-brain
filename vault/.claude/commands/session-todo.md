---
description: Create a session to-do checklist for a live session — auto-approves to wiki/tasks/, no /approve needed
allowed-tools: Read, Write, Glob, Grep
model: sonnet
argument-hint: [session-number e.g. s1, s2]
---

# Session To-Do

## Purpose

Create a concrete, checkbox-format to-do list for a specific live session. Based on the current top leak from `wiki/spots/` and any open study modules. Auto-approves directly to `wiki/tasks/` — no manual `/approve` step required.

Run before sitting down. Fill in the Mistake Tally and Session Notes after the session ends.

## Variables

COMMAND_ARG: <!-- session number, e.g. "s1" or "s2" — defaults to "s1" -->
TODAY: <!-- current date YYYY-MM-DD -->
WIKI_TASKS_DIR: wiki/tasks/
SPOTS_DIR: wiki/spots/
HANDS_DIR: wiki/hands/

## Instructions

- Auto-approve: write directly to `wiki/tasks/` and update `meta/index.md` — skip inbox/approve
- Session number defaults to `s1` if no argument provided
- Pull today's top leak from `wiki/spots/` (highest hand-frequency mistake)
- Pull the execution cue from the relevant mistake note's **Rule:** line
- Keep the to-do short — 3 sections max (Before / During / After)
- Mistake Tally rows = top 3 leaks only

## Workflow

1. **Parse argument**
   - Empty → session number = `s1`
   - Provided (e.g. `s2`) → session number = that value

2. **Determine today's top leak**
   - Glob `wiki/spots/` for all mistake-analysis files (files with `mistake-analysis` in tags)
   - For each, count hands affected (scan Summary Table rows)
   - Pick the mistake with the highest hand count as the focus leak
   - Extract its one-line **Rule:** as the execution cue

3. **Pull top 3 leaks for Mistake Tally**
   - Same scan as step 2 — rank top 3 by hand count across all spots notes

4. **Build the note**
   - Filename: `wiki/tasks/session-todo-YYYYMMDD-<session-number>.md`
   - Frontmatter: id, title, type: concept, tags: [task-list, session-todo, session-prep], sources (spots notes used), aliases, created, updated, links_out
   - Sections:
     - Focus leak + execution cue (header block)
     - `## Before Sitting Down` — 3 checkboxes: run /session-prep (pre-checked), read cue, scan mistake table
     - `## During the Session` — 3 checkboxes: apply cue, run 3-question BB defend check, flag unsure hands
     - `## After the Session` — 4 checkboxes: add flagged hands, update villain profile, check off modules, Mistake Tally table
     - `## Session Notes` — empty block for post-session freewrite

5. **Write directly to `wiki/tasks/`**

6. **Update `meta/index.md`**
   - Add entry under Tasks section: `- [[tasks/session-todo-YYYYMMDD-<sN>]] — Session To-Do — YYYY-MM-DD Session N (task-list, session-todo)`

## Report

```
Session To-Do Created

File: wiki/tasks/session-todo-[YYYYMMDD]-[sN].md
Focus: [top leak name] ([N] hands)
Cue: [execution cue one-liner]

Open the note in Obsidian. Fill in Mistake Tally after the session.
To create a second session today: /session-todo s2
```
