---
description: Review poker hands from raw/ notes tagged with "review" — dual analysis from Coach Tony and Wakko
allowed-tools: Glob, Grep, Read
model: opus
---

# Hand Review

## Purpose

Scan `raw/` for notes containing "review" in a heading or content. For each found hand, produce a dual coaching analysis — one from **Tony's** exploitative flop-strategy lens and one from **Wakko's** strategic-framework lens — grounded in the wiki knowledge base.

## Variables

- RAW_DIR: raw/
- WIKI_DIR: wiki/
- TONY_WIKI: wiki/spots/3bp-oop-pfr-strategy.md
- WAKKO_STRATEGY_WIKI: wiki/frameworks/poker-strategy-framework.md
- WAKKO_LAYERS_WIKI: wiki/frameworks/three-layers-poker-strategy.md
- VILLAIN_DIR: wiki/villains/
- HANDS_DIR: wiki/hands/

## Instructions

- Only review notes in `raw/` that contain "review" (case-insensitive) in any heading (`#` lines) or anywhere in the body
- Read the Tony and Wakko wiki notes before producing any analysis — every claim must trace back to those sources
- Do not invent ranges, solver outputs, or bet frequencies — only reference what is documented in the wiki
- Produce one Tony section and one Wakko section per hand reviewed
- Tony's perspective focuses on: board texture identification (BLL/BML/BBx/BBB/ABx/AMx), bet sizing (33% / 50% / 87%), value vs bluff vs check range composition, suit/blocker effects, population reads (over-fold / over-call tendencies)
- Wakko's perspective focuses on: which strategy layer applies (L1 defensive / L2 population exploit / L3 in-game exploit), GTO vs exploit framing, whether the line taken is defensive or offensive, and concrete Layer 2/3 adjustments based on villain reads provided in the note
- If the raw note includes villain hand-range data or tendencies, Wakko must reference those in his assessment
- End each hand with a unified "Action Item" — one concrete change to study or apply at the table

## Workflow

1. **Discover review notes**
   - Glob `raw/**/*.md` to list all raw files
   - Grep each for "review" (case-insensitive) in headings or body
   - Collect the list of matching files

2. **Load coaching knowledge**
   - Read TONY_WIKI (`wiki/spots/3bp-oop-pfr-strategy.md`)
   - Read WAKKO_STRATEGY_WIKI (`wiki/frameworks/poker-strategy-framework.md`)
   - Read WAKKO_LAYERS_WIKI (`wiki/frameworks/three-layers-poker-strategy.md`)
   - Check VILLAIN_DIR (`wiki/villains/`) for a profile matching the villain in the review note; load it if found
   - Internalize: board texture → strategy table, bet sizing rules, value/bluff/check split, three-layer model, defensive vs offensive framing

3. **Process each review note**
   - Read the full file
   - Extract: position, stack depth, board(s), action on each street, villain reads/data, hero decision
   - Identify the key decision point and the line taken

4. **Tony Analysis**
   - Classify the board texture using Tony's table (BLL, BML, BMM, BBx, BBB, ABx, AMx)
   - Apply the flop strategy for that texture: range bet vs split, sizing options
   - Evaluate hero's cbet/check decision against Tony's framework
   - Comment on suit and blocker selection if relevant
   - Note any population read adjustments Tony would make (over-fold flop, over-stab, etc.)

5. **Wakko Analysis**
   - Identify which layer (L1 / L2 / L3) the hero was operating in
   - Assess whether the line is GTO-aligned (defensive) or exploitative (offensive) and whether that was appropriate given available information
   - Use villain data from the note to frame Layer 2 or Layer 3 adjustments
   - Call out any strategic mismatch — e.g., using L1 strategy against a known fish, or attempting L3 without reliable data

6. **Produce the report**
   - One review block per hand found (use the file name as the header)
   - Unified Action Item at the end of each block

## Report

```
HAND REVIEW REPORT
==================
Files reviewed: [n] raw notes containing "review"

---

## [filename]

### Situation
[Position | Board(s) | Action summary | Villain reads if any]

---

### Tony's Read
Board Type: [BLL / BML / BMM / BBx / BBB / ABx / AMx / other]

Flop Strategy for this texture:
[What Tony's framework prescribes — sizing, value/bluff/check split]

Assessment:
[Hero's line vs Tony's framework — correct, deviation, or mistake]

Blocker / Suit note:
[Relevant if the note or wiki covers it]

Population adjustment:
[Over-fold / over-call / over-stab read applied]

---

### Wakko's Read
Layer Applied: [L1 / L2 / L3]
Approach: [Defensive (GTO-aligned) / Offensive (exploit)]

Assessment:
[Is the layer choice appropriate given villain information? Is the line logical under that layer?]

Villain data used:
[How the range data or tendencies in the note inform the decision]

Strategic note:
[Any layer mismatch or Sun Tzu "avoid strong / strike weak" principle at play]

---

### Action Item
[One concrete change — a study task, sizing adjustment, or population exploit to implement next session]

---
```
