---
id: tasks/session-prep-todo
title: Session Prep — Recurring Checklist
type: concept
tags: [task-list, study, session-prep, methodology]
sources:
  - wiki/tasks/master-todo.md
aliases: [session checklist, pre-session todo, session workflow]
created: 2026-05-02
updated: 2026-05-02
links_out:
  - tasks/master-todo
  - tasks/3bp-oop-pfr-study-tasks
  - tasks/srp-oop-pfc-bb-defend-study-tasks
---

# Session Prep — Recurring Checklist

Reusable workflow to run before, during, and after every live session. Generates a focused game plan and captures learning from each session.

---

## Before the Session

- [ ] Run `/session-prep` → read the 5-leak focus list in `inbox/_draft-pre-session-*.md`
- [ ] Pick **one** leak as the primary focus (top of the list = highest frequency)
- [ ] Recall the execution cue for that leak: "Situation → Action"
- [ ] Review the relevant mistake table in `wiki/spots/` for that leak (1 min scan)
- [ ] Open `wiki/tasks/master-todo.md` — note which study module is next

---

## During the Session

- [ ] For every hand in the focus spot — pause before acting and apply the execution cue
- [ ] Flag any hand where you are unsure (mental note: "review this")
- [ ] Track: did you commit the mistake you were focused on? (yes/no — count occurrences)

---

## After the Session

- [ ] Add any flagged hands to `wiki/hands/` (one note per hand, use `/ingest` if raw notes exist)
- [ ] Update villain profile in `wiki/villains/` if new reads on a known villain
- [ ] Update task checkboxes in:
  - `wiki/tasks/3bp-oop-pfr-study-tasks.md` — if you ran 3BP OOP hands
  - `wiki/tasks/srp-oop-pfc-bb-defend-study-tasks.md` — if you ran BB defend hands
- [ ] If a leak felt resolved: run `/session-prep fix <leak-slug>` and `/approve` the resolution draft
- [ ] If new coaching raw files arrived: run `/ingest <file>` → review drafts → `/approve` each

---

## Weekly Review (end of week)

- [ ] Count mistakes per category across the week's hands
- [ ] Highest-count category → mark as Module priority in `wiki/tasks/`
- [ ] Run `/session-prep` and compare leak rankings to prior week
- [ ] Run `/graph` to verify no new orphan notes

---

## See Also

- [[tasks/master-todo|Master To-Do List]] — full consolidated study task tracker
- [[tasks/3bp-oop-pfr-study-tasks|3BP OOP PFR Study Tasks]] — module drills for 3BP OOP spot
- [[tasks/srp-oop-pfc-bb-defend-study-tasks|BB Defend Study Tasks]] — module drills for BB defend spot
