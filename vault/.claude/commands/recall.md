---
description: Spaced repetition recall sessions for poker knowledge and population reads — init, quiz, log results, and view upcoming calendar
allowed-tools: Read, Write, Edit, Glob, Grep, Bash
model: sonnet
argument-hint: [empty = today's session | init | log | schedule]
---

# Recall

## Purpose

Run spaced repetition recall sessions against the vault's poker knowledge and population data.
Splits items into two categories: **Population Data** (pool reads, villain profiles) and
**Poker Knowledge** (spots, frameworks, concepts). Tracks intervals per item and keeps a
running results log so you can see retention trends over time.

## Variables

COMMAND_ARG:            <!-- filled at runtime — empty, "init", "log", or "schedule" -->
TODAY:                  <!-- current date YYYY-MM-DD -->
SCHEDULE_FILE:          meta/recall-schedule.json
LOG_FILE:               meta/recall-log.md
WIKI_DIR:               wiki/
POPULATION_DIR:         wiki/population/
VILLAINS_DIR:           wiki/villains/
SPOTS_DIR:              wiki/spots/
FRAMEWORKS_DIR:         wiki/frameworks/
CONCEPTS_DIR:           wiki/concepts/
HANDS_DIR:              wiki/hands/
TASKS_DIR:              wiki/tasks/

## Instructions

- `meta/recall-schedule.json` is the single source of truth for all item state — never lose entries
- Write recall session notes directly to `wiki/tasks/` (auto-approve — same as session-todo)
- Never write to `wiki/spots/`, `wiki/frameworks/`, or any source note — read only
- Spaced repetition intervals (days): Pass → interval × 2 (cap 30); Partial → keep interval; Fail → reset to 1 AND re-queue in the same session
- **Fail re-queue rule:** A failed item is not deferred to tomorrow — it is shown again before the session ends. This is core to spaced retrieval: failed items must be successfully retrieved in the same sitting to count as processed. The re-queue uses a forced `application` question regardless of interval.
- New items always start at interval = 1 (review next day)
- Extract items at the atomic-rule level: one item = one in-game trigger → action rule
- Population Data items come from `wiki/population/` and `wiki/villains/`
- Poker Knowledge items come from `wiki/spots/`, `wiki/frameworks/`, `wiki/concepts/`

### Question Depth Strategy

Every item carries **three question types**. During a session, one is selected based on the item's current interval:

| Interval | Question Type | Goal |
|----------|--------------|------|
| 1–2 | `application` | Force scenario recognition — apply the rule in a concrete spot before it's memorized |
| 3–7 | `why` | Test causal understanding — explain why the rule is correct, not just what it is |
| 8+ | `recall` | Efficient maintenance — pure retrieval of the rule in one sentence |

**Question type definitions:**

- `application` — A concrete scenario in the exact spot context: "You're OOP in a 3BP with [hand] on [board]. IP checked. Turn blanks. What do you do?" — forces recognition and action, not theory.
- `why` — Causal reasoning: "Why is checking better than betting a set/overpair when IP will bet Kx/Ax regardless? What breaks if you bet?" — forces understanding of the mechanism.
- `recall` — Pure rule retrieval: "State the Mistake 2 rule in one sentence." — fast, efficient, surface check.

For Population Data items, the same three types apply:
- `application` — "Fish UTG bets 3/4 pot on a blank river. How do you adjust and why?"
- `why` — "Why does this pool tendency exist? What are they failing to exploit?"
- `recall` — "State the pool tendency for [villain/spot] in one sentence."

**Generating good application and why questions:**
When extracting items during `/recall init`, read the full section around each Rule/Fix line (up to 10 lines of context) to generate the application scenario and why question. The scenario must use a real board/hand example from the source note if one exists. If no example exists, construct a representative scenario from the rule's trigger condition.

## Workflow

### 1. Parse argument
- Empty → **Session Flow** (today's due items)
- `init` → **Init Flow** (seed schedule from wiki scan)
- `log` → **Log Flow** (process today's recall note results)
- `schedule` → **Schedule Flow** (show upcoming calendar)

---

### Init Flow (`init`)

2. **Scan Population Data sources**
   - Glob `wiki/population/` and `wiki/villains/` for all `.md` files
   - For each file, extract recall items:
     - Grep for lines matching: `Tendency`, `Read:`, `When .*→`, `Pool:`, `Exploit:`, `Bet sizing`, `Frequency`, `^\| ` (table rows with tendency data)
     - For each distinct tendency or read: read up to 8 lines of surrounding context to get the full scenario and exploit
     - Generate all three question types:
       - `application`: "You're in [exact spot]. [Villain/pool] makes [action]. What does this signal and how do you adjust?"
       - `why`: "Why does [pool/villain] exhibit this tendency? What are they failing to account for?"
       - `recall`: "State the [pool/villain] tendency for [spot] in one sentence."
     - Format each item the same as poker-knowledge items but with `"category": "population-data"`

3. **Scan Poker Knowledge sources**
   - Glob `wiki/spots/`, `wiki/frameworks/`, `wiki/concepts/` for all `.md` files
   - For each file, extract recall items:
     - Grep for lines matching: `\*\*Rule:\*\*`, `\*\*Fix:\*\*`, `Key Cue`, `Execution Cue`, `\*\*Correct approach:\*\*`
     - For each matched line: read up to 10 lines of surrounding context from the source file to gather the full scenario (board, hand, mistake pattern, example hands if present)
     - Generate all three question types using the context:
       - `application`: embed a concrete hand/board example from the note (use real example hands from the note's table if present); if none, construct one from the trigger condition
       - `why`: ask why the rule is correct and what breaks if the opposite is done
       - `recall`: ask for the rule in one sentence, referencing the mistake/concept name
     - Format each item as:
       ```json
       {
         "id": "poker/<source-slug>-<sequence>",
         "title": "<concept name> — <mistake or rule label>",
         "category": "poker-knowledge",
         "source": "<wiki path>",
         "questions": {
           "application": "<scenario question with real board/hand>",
           "why": "<causal question — why is the rule correct?>",
           "recall": "<one-sentence rule retrieval question>"
         },
         "answer": "<the rule/fix in full>",
         "interval": 1,
         "next_review": "<TODAY>",
         "history": []
       }
       ```

4. **Build schedule JSON**
   - Assign each item a stable slug ID: `<category>/<source-slug>-<sequence>` (e.g. `population/fish-utg-001`)
   - Set `next_review` = TODAY, `interval` = 1, `history` = []
   - Read existing `meta/recall-schedule.json` if it exists — preserve any items already present (do not overwrite existing entries; only add new ones)
   - Write updated JSON to `meta/recall-schedule.json`

5. **Write recall calendar**
   - Generate `wiki/tasks/recall-calendar.md` showing items grouped by `next_review` date for the next 30 days
   - Format: table per date — Date | Category | Item | Interval

---

### Session Flow (empty argument)

2. **Read schedule**
   - Read `meta/recall-schedule.json`
   - Filter items where `next_review` <= TODAY — these are due
   - If no items due: report "Nothing due today" and show next due date

3. **Select question type per item**
   - For each due item, pick the active question type based on current `interval`:
     - interval 1–2 → use `questions.application`
     - interval 3–7 → use `questions.why`
     - interval 8+ → use `questions.recall`
   - Label the question type in the note so the user knows what depth is expected

4. **Build recall note**
   - Filename: `wiki/tasks/recall-YYYYMMDD.md`
   - Frontmatter: id, title, type: concept, tags: [recall, spaced-repetition], sources (list source notes), created, updated
   - Open with a one-line legend: `> **Q types:** Application = apply in a scenario · Why = explain the mechanism · Recall = state the rule`
   - Group items: `## Population Data (N due)` then `## Poker Knowledge (N due)`
   - Open with a legend line and how-to instruction:
     ```
     > **Q types:** Application = apply in a scenario · Why = explain the mechanism · Recall = state the rule
     > **How to use:** Write your answer in "Your answer:" *before* expanding the correct answer. Run `/recall log` when done — Claude grades each response automatically.
     ```
   - For each item:
     ```
     ### [sequence]. [Item title]
     *[Application | Why | Recall]*

     **Q:** [selected question text]

     **Your answer:** 


     <details><summary>Correct answer</summary>

     [answer — full rule/fix/tendency]

     </details>
     ```
   - The `<details>` block hides the correct answer in Obsidian reading mode — user writes in "Your answer:" first, then expands to compare
   - Footer: "Write your answer for each item above. Then run `/recall log` — Claude will grade each response (Pass / Partial / Fail) and update your schedule."

5. **Write directly to `wiki/tasks/`** (auto-approve)

---

### Log Flow (`log`)

2. **Find today's recall note**
   - Glob `wiki/tasks/recall-YYYYMMDD.md` for TODAY
   - If not found: report error, suggest running `/recall` first

3. **Read and auto-grade written answers**
   - For each item block in the note, read the text written under "**Your answer:**"
   - Compare it against the correct answer inside the `<details>` block for that item
   - Grade automatically using these criteria:
     - **Pass** — covers the key rule correctly and completely; no significant gaps or errors
     - **Partial** — gets the main idea but misses key details, a sub-rule, or contains a minor error
     - **Fail** — wrong, blank, or significantly incomplete
   - If "Your answer:" field is blank or says only whitespace: grade as Fail, warn user
   - Append the grade verdict inline after each item's `</details>` block in the note: `**Grade: Pass / Partial / Fail**` followed by one sentence of feedback (what was missing or well done)

4. **Update schedule**
   - Read `meta/recall-schedule.json`
   - For each item with a result:
     - Pass → `interval = min(interval * 2, 30)`, `next_review = TODAY + interval`
     - Partial → `next_review = TODAY + interval` (no change to interval)
     - Fail → `interval = 1`, `next_review = TODAY + 1`; add to retry list (see step 5)
   - Append `{ "date": TODAY, "result": "pass|partial|fail", "question_type": "<application|why|recall>" }` to the item's `history` array
   - Write updated JSON back to `meta/recall-schedule.json`

5. **Re-queue failed items (Fail re-queue)**
   - Collect all items marked Fail in this log run
   - If any exist: append a `## Retry Queue (N items — answer these before closing)` section to today's recall note (`wiki/tasks/recall-YYYYMMDD.md`)
   - For each failed item in the retry section, always use the `application` question type (forced — the hardest, most grounding question type)
   - Format identical to the main session items but with a `*Retry — Application*` label instead of the regular type label (includes `**Your answer:**` field and `<details>` block)
   - Add a note at the top of the section: "These were graded Fail. Write your answer from memory, then expand the correct answer. Run `/recall log` again to grade."
   - The retry answers are graded on the next `/recall log` run — detected by the `## Retry Queue` section header
   - Retry result handling: Pass retry → history entry `"result": "retry-pass"`; Fail retry → history entry `"result": "retry-fail"`, item stays at `next_review = TODAY + 1`

6. **Append to results log**
   - Append a session block to `meta/recall-log.md`:
     ```
     ## [TODAY]
     | Item | Result | Q Type | New Interval | Next Review |
     |------|--------|--------|-------------|-------------|
     | ...  | Pass   | why    | 4 days      | YYYY-MM-DD  |
     | ...  | Fail → Retry | application | 1 day | YYYY-MM-DD |
     ```

7. **Regenerate recall calendar**
   - Overwrite `wiki/tasks/recall-calendar.md` with updated schedule for next 30 days

---

### Schedule Flow (`schedule`)

2. **Read schedule**
   - Read `meta/recall-schedule.json`
   - Group items by `next_review` date, sorted ascending

3. **Print upcoming calendar**
   - Show next 14 days: date → list of items due
   - Highlight today and any overdue items (next_review < TODAY)

---

## Report

### Init
```
Recall Schedule Initialized

Items seeded: N total
  Population Data: N items (wiki/population/ + wiki/villains/)
  Poker Knowledge: N items (wiki/spots/ + wiki/frameworks/ + wiki/concepts/)

Schedule: meta/recall-schedule.json
Calendar: wiki/tasks/recall-calendar.md

First session due: TODAY (all items start at interval = 1)
Run /recall to start your first session.
```

### Session
```
Recall Session — [TODAY]

Note: wiki/tasks/recall-[YYYYMMDD].md

Items due: N total
  Population Data: N
  Poker Knowledge: N

Open the note in Obsidian. Write your answer in each "Your answer:" field before expanding the correct answer.
Then run /recall log — Claude will grade each response and update your schedule.
```

### Log
```
Results Logged — [TODAY]

N items processed:
  Pass: N    Partial: N    Fail: N

Next session: [date of earliest next_review]
Log: meta/recall-log.md
Calendar updated: wiki/tasks/recall-calendar.md
```

### Schedule
```
Upcoming Recall Schedule

[TODAY] — N due (or overdue)
  - [item title] (interval: N days)
  ...
[YYYY-MM-DD] — N due
  ...
```
