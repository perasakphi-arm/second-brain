---
id: spot/srp-oop-pfc-bb-defend-mistakes
title: SRP OOP PFC (BB Defend) — Key Mistakes on the Flop
type: concept
tags: [srp, oop, pfc, bb-defend, flop-strategy, mistake-analysis, spot, tony]
sources:
  - raw/SRP OOP PFR (BB defend).md
aliases: [srp bb defend mistakes, BB defend flop errors, srp oop pfc mistakes]
created: 2026-05-01
updated: 2026-05-01
links_out: [spot/srp-oop-pfc-bb-defend-flop, tasks/srp-oop-pfc-bb-defend-study-tasks, spots/3bp-oop-pfr-flop-key-mistakes, concept/srp-oop-cr-combo-selection-paired-board-vs-ep]
---

# SRP OOP PFC (BB Defend) — Key Mistakes on the Flop

Summarized from Tony coaching session on [[spot/srp-oop-pfc-bb-defend-flop|BB defend vs BU flop strategy]]. Four recurring mistake patterns identified across 10 hand examples.

---

## Summary Table

| # | Mistake | Hands Affected | Key Cue |
|---|---------|----------------|---------|
| 1 | Not check-raising for protection when bdfd present | 1, 2, 6, 9, 11 (5 hands) | bdfd + protection need + bluff ability = check-raise |
| 2 | Value hand placed in bluff-catch instead of check-raise | 3 (1 hand) | Strong mid-pair or better on connected board → check-raise |
| 3 | Not check-raising with perfect bluff candidate (bdfd) | 4, 10 (2 hands) | bdfd alone = ideal check-raise bluff combo |
| 4 | Incorrect hand selection / no plan | 7, 8 (2 hands) | Over-calling without plan; wrong combo chosen for check-raise |

---

## Mistake 1: Not Check-Raising for Protection (bdfd Present)

**Pattern:** Hero has a hand with backdoor flush draw (bdfd) on a board that needs protection — but chose check-call instead of check-raise.

**Why it's wrong:** bdfd gives bluff ability on later streets. If IP over-cbets with equity hands (pool tendency), check-raising denies equity, builds pot, and has fold equity. Check-calling concedes initiative and lets IP realize equity for free.

**Correct approach:** When holding bdfd + protection needed + bluff ability → check-raise.

| Hand | Board | Hero | Error | Fix |
|------|-------|------|-------|-----|
| 1 | 954 flush draw | 64 with bdfd | Check-called | Check-raise for protection |
| 2 | T73 | 63 with bdfd | Check-called | Check-raise for protection |
| 6 | A85 flush draw | 86 (no bdfd) | Check-called | Check for protection (note: no bdfd here — still needed protection check) |
| 9 | J56 flush draw | 53 with bdfd | Check-called | Check-raise for protection |
| 11 | J43 flush draw | 64 with bdfd | Check-called | Check-raise for protection |

![[Pasted image 20260501095235.png]]
Hand 1 (954 fd / 64 bdfd): General leak — pool knows 954 needs big size, but we still failed to apply check-raise protection.

![[Pasted image 20260501095455.png]]
Hand 2 (T73 / 63 bdfd): Same pattern — 3-question check confirms check-raise.

![[Pasted image 20260501100636.png]]
Hand 6 (A85 fd / 86 no bdfd): Even without bdfd, hand needs protection.

![[Pasted image 20260501101522.png]]
Hand 9 (J56 fd / 53 bdfd): Also note — check-calling this line leads to J65-2-J where IP's river range is bloated with bluffs (they over-cbet turn with equity).

![[Pasted image 20260501101842.png]]
Hand 11 (J43 fd / 64 bdfd): Same as Hand 1 — correct answer is check-raise for protection.

**Rule:** bdfd + protection need + pool over-cbets → check-raise. Do not check-call and concede.

---

## Mistake 2: Value Hand Placed in Bluff-Catch

**Pattern:** Hero has a strong value hand (mid-pair+, top pair) on a board where check-raising for value+protection is correct — but instead placed it in the bluff-catch (check-call) range.

**Why it's wrong:** Value hands on connected boards often need to build the pot now and deny equity. Check-calling with them risks: (a) letting draws realize equity cheaply, (b) losing value when checked behind on turn.

**Correct approach:** Strong made hands that need protection → check-raise for value+protection.

| Hand | Board | Hero | Error | Fix |
|------|-------|------|-------|-----|
| 3 | 853 rainbow | A8o | Put in bluff-catch | Check-raise for value + protection |

![[Pasted image 20260501095619.png]]
Hand 3 (853r / A8o): Top pair on an unconnected board with medium kicker — check-raising extracts value and denies equity from overcards.

**Rule:** Top pair or strong mid-pair with protection need → check-raise, not check-call.

---

## Mistake 3: Not Check-Raising with Perfect Bluff Candidate (bdfd)

**Pattern:** Hero holds a bdfd combo that is a perfect check-raise bluff (deny equity + pick up bluff equity) but chose to check-call or not act on the bluff potential.

**Why it's wrong:** Backdoor flush draw is Tony's standard "perfect bluff candidate" for check-raises because: (a) it blocks IP's flush draw holdings, (b) it has equity when called (picks up flush draw on turn), (c) it can barrel later streets with equity.

**Correct approach:** If the 3-question check confirms protection needed or bluff ability → bdfd combo = check-raise bluff.

| Hand | Board | Hero | Error | Fix |
|------|-------|------|-------|-----|
| 4 | 993 flush draw | J7 with bdfd | Didn't check-raise as bluff | Check-raise — perfect bluff candidate |
| 10 | 972 rainbow | Q3 with bdfd | Didn't check-raise as bluff | Check-raise — hand should be in bluff check-raise range |

![[Pasted image 20260501095749.png]]
Hand 4 (993 fd / J7 bdfd): Overcard + gutshot potential + bdfd = perfect bluff combo.

![[Pasted image 20260501101321.png]]
Hand 10 (972r / Q3 bdfd): If defending this hand at all → must be in check-raise. check-call is the wrong line.

**Rule:** bdfd + overcard/gutshot on pool-over-cbet board = check-raise bluff. Not check-call.

---

## Mistake 4: Incorrect Hand Selection / No Plan

**Pattern:** Hero either (a) called preflop with a hand that doesn't have a clear flop plan, or (b) selected the wrong combo for a check-raise (check-raised a hand that shouldn't, instead of a proper candidate).

**Why it's wrong:** Every hand needs a defined plan before seeing the flop. Check-raising the wrong combo wastes the check-raise range on hands that don't benefit; calling with hands that have no plan leads to aimless streets.

**Correct approach:**  
- For check-raise bluffs: use the canonical combo list (53, A4, A3, 65, 75, 43, K3 — GTO combos Tony defined)
- Before calling preflop: know what you will do on the most common flop textures

| Hand | Board | Hero | Error | Fix |
|------|-------|------|-------|-----|
| 7 | Q82 flush draw | K9o (no bdfd) | Over-called without a plan | Fold pre or have a defined line; KTo with bdfd is the minimum check-raise candidate |
| 8 | Q52 rainbow | J6 with bdfd | Check-raised incorrect combo | Use 53, A4, A3, 65, 75, 43, K3 instead — proper bluff combos for this texture |

![[Pasted image 20260501100753.png]]
Hand 7 (Q82 fd / K9o): K9o without backdoor equity is a loose call. KTo with bdfd is minimum candidate.

![[Pasted image 20260501101012.png]]
Hand 8 (Q52 rb / J6 bdfd): Tony's proper check-raise combos for aggressive range on Q52 are 53, A4, A3, 65, 75, 43, K3 — GTO-aligned and concept-matching.

**Rule:** Have a pre-defined hand plan. Use the correct combo list. Avoid calling or check-raising with hands that don't fit the strategy architecture.

## See Also
- [[spot/srp-oop-pfc-bb-defend-flop|BB Defend Flop Strategy]] — the foundational strategy these mistakes violate
- [[tasks/srp-oop-pfc-bb-defend-study-tasks|BB Defend Study Tasks]] — structured drills to fix each mistake
- [[spots/3bp-oop-pfr-flop-key-mistakes|3BP OOP PFR Key Mistakes]] — parallel mistake analysis for the 3BP OOP PFR spot
- [[concept/srp-oop-cr-combo-selection-paired-board-vs-ep|CR Combo Selection on Paired Boards vs EP]] — extension of Mistake 4: on paired boards vs EP, check-raise only with flush draw combos (matching board suit); wrong suit bdfd = insufficient vs tighter EP range
