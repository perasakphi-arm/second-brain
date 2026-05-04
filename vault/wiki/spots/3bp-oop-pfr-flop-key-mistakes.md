---
id: spots/3bp-oop-pfr-flop-key-mistakes
title: 3BP OOP PFR — Key Mistakes on the Flop & Turn
type: concept
tags: [3bp, oop, pfr, remain, flop, mistake-analysis, spot, tony]
sources:
  - raw/3BP OOP PFR remain flop.md
aliases:
  - 3bp oop pfr mistakes
  - 3bet pot oop pfr flop errors
created: 2026-04-30
updated: 2026-04-30
links_out: [concept/3bp-oop-pfr-strategy, tasks/3bp-oop-pfr-study-tasks, hand/20260502-3bp-sb-kqhh-tc9h7h, concept/3bp-ip-pfr-overpair-flush-blocker-vs-checkjam, hand/20260503-3bp-bb-vs-sb-aac-qc9c6h]
---

# 3BP OOP PFR — Key Mistakes on the Flop & Turn

Summarized from Tony coaching session on [[concept/3bp-oop-pfr-strategy|3BP OOP PFR strategy]]. Five recurring mistake patterns identified across 20 hand samples.

---

## Mistake 1: Bet Small with Strong Value on Drawy Boards

**Pattern:** Strong top pair or better on flush draw / connected board → chose small bet size.

**Why it's wrong:** Drawy boards need to build pot now. Value needs to be extracted before the draw completes. Small bet loses stack building and lets draws realize equity cheaply.

**Correct approach:** Bet big (87%+ pot) on flop, plan jam / shove on turn.

| Hand | Board | Hero | Error | Fix |
|------|-------|------|-------|-----|
| 2 | K93 flush draw | AK | Bet small flop, then B75 turn | Bet big flop + jam turn |
| 6 | AJ4 flush draw | AQo | Bet small flop | Bet big + shove turn |
| 9 | AJ6 flush draw | AJ | Bet small flop | Bet big + shove turn |

**Rule:** On drawy boards with strong value → bet big + plan jam.

---

## Mistake 2: Fast Play Value Hand That Needs No Protection

**Pattern:** Strong hand (set, overpair, top pair) on a turn where Kx or Ax will bet anyway → bet for value when checking is better.

**Why it's wrong:** When IP will bet Kx/Ax regardless, checking costs no EV. Betting blocks their bluffing and folds out 0-equity hands that would otherwise put money in on future streets.

**Correct approach:** Check to keep 0-equity bluffs in. Extract full value on river.

| Hand | Board | Hero | Error | Fix |
|------|-------|------|-------|-----|
| 4 | KT9 flush draw → Kd | 99 (mid set) | Bet B75 turn | Check — Kx bets anyway |
| 5 | Q44 → 5s | AQo | Fast play turn | Check back — unblock KT/KJ bluffs |
| 7 | Q72 → turn | 77 (set) | Bet B75 turn | Check — unblock KT/KJ |
| 8 | A94 | AA | Fast play top set | Check — IP underbluffs Ax |
| 10 | A78 → turn | AA | Value B75 | Check — block call, keep cooler in |
| 12 | A53 rainbow | AA | Fast play | Slow play |

**Rule:** Ask "does my hand need protection here?" If no → check and let bluffs come.

---

## Mistake 3: Not Blocking to Prevent 0 EV Scenario

**Pattern:** Medium-strong hand in a spot where opponent's region is 0-equity or near 0-equity → check instead of using small block bet.

**Why it's wrong:** Without a block bet, opponent's pocket pairs or marginal holdings play 0 EV — they can just fold or check back. A small bet (block) forces them to call and put money in with marginal hands.

**Correct approach:** Use 33–50% block bet to extract value and prevent hands from having zero EV in the pot.

| Hand | Board | Hero | Error | Fix |
|------|-------|------|-------|-----|
| 14 | QQ7 → 7 | 88 | No block | Block to prevent 0 EV for opponent |
| 16 | AA3 → 8 | 66 | Folded to bet | Check-call — unblock flush draw bluffs |
| 18 | J73 → Ah | TT | No block | Block to get value from weak pairs |
| 19 | A92 → 6h | QQ | No block | Block or check-call |
| 20 | JJ6 → 7h | pocket | No block | Bet 50% — get flush draw + pocket calls |

**Rule:** When holding medium-strong hand against a region with lots of 0-equity hands → use small block bet to deny free equity and build pot.

---

## Mistake 4: Big Draw — Wrong Equity Realization Line

**Pattern:** Holding a big draw (gutshot + flush draw) → straight bet without planning the full equity realization line.

**Why it's wrong:** If the bet-call-jam line is not achievable (stack depth, sizing), betting out creates a leak. The full value of a big draw is captured through check-raise all-in, which forces fold equity + retains full draw equity when called.

**Correct approach:** If you cannot bet → call a jam → check-raise all-in instead.

| Hand | Board | Hero | Error | Fix |
|------|-------|------|-------|-----|
| 11 | QT7 flush → turn | J9 (gutshot + FD) | Bet B75 | Check-raise all-in if can't bet-call jam |

**Rule:** Big draw equity realization = check-raise all-in if the bet-call line is not viable.

---

## Mistake 5: Not C-Betting Turn with Equity Hand

**Pattern:** Holding a gutshot or equity hand on a favorable turn (one that improves the range) → skip the c-bet.

**Why it's wrong:** Equity hands on good turns can pressure the pocket pair region to fold and retain pot odds when called. Missing this c-bet loses pressure + EV.

**Correct approach:** C-bet ~50% pot with gutshot on favorable turns to attack pocket region.

| Hand | Board | Hero | Error | Fix |
|------|-------|------|-------|-----|
| 15 | A73 → T | J9 gutshot | No c-bet turn | Bet 50% pot — pressure pocket pairs |

**Rule:** Favorable turn + equity hand + opponent has weak pocket region → c-bet to realize equity.

---

## Summary Table

| # | Mistake | Hands | Key Cue |
|---|---------|-------|---------|
| 1 | Bet small on drawy board with strong value | 2, 6, 9 | Flush draw on board + strong top pair |
| 2 | Fast play value that needs no protection | 4, 5, 7, 8, 10, 12 | Set/overpair on safe turn; Kx/Ax bets anyway |
| 3 | Not blocking to prevent 0 EV | 14, 16, 18, 19, 20 | Mid-strength vs 0-equity region |
| 4 | Big draw equity realization | 11 | Big draw + can't bet-call jam |
| 5 | No c-bet turn with equity hand | 15 | Gutshot + favorable turn + weak pocket region |

## See Also
- [[concept/3bp-oop-pfr-strategy|3BP OOP PFR Strategy]] — the foundational strategy each mistake violates
- [[tasks/3bp-oop-pfr-study-tasks|3BP OOP PFR Study Tasks]] — structured drills to fix each mistake category
- [[hand/20260502-3bp-sb-kqhh-tc9h7h|Hand 2026-05-02 KhQh slow play]] — live example of correctly NOT fast-playing value (2nd nut flush, no protection needed; contrast with Mistake 2)
- [[concept/3bp-ip-pfr-overpair-flush-blocker-vs-checkjam|Overpair + Flush Blocker vs Check-Jam in 3BP]] — related spot: when villain check-jams a draw-heavy flop, overpair + Ac blocker justifies a call (flip-side of Mistake 1: value that needs to get stacks in)
- [[hand/20260503-3bp-bb-vs-sb-aac-qc9c6h|Hand 2026-05-03 AsAc vs Check-Jam]] — live example of equity call vs check-jam on Qc9c6h; correct call despite villain showing top pair
