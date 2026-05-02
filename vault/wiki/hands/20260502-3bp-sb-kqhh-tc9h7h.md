---
id: hand/20260502-3bp-sb-kqhh-tc9h7h
title: Hand Review — 3BP SB KhQh vs UTG (Tc9h7h-2h-Js) — Slow Play Flush Turn
type: concept
tags: [hand-review, 3bp, sb, utg, flush, slow-play, villain-bluff-no-blocker, blocker, equity-realization, 200nl]
sources:
  - raw/3BP OOP PFR Review.md
aliases: [KhQh slow play flush, 3bp sb utg flush call, slow play second nut flush, villain no blocker bluff]
created: 2026-05-02
updated: 2026-05-02
links_out: [concept/3bp-oop-pfr-strategy, spots/3bp-oop-pfr-flop-key-mistakes]
---

## Hand Overview

| Field | Value |
|-------|-------|
| Date | 2026-05-02 |
| Stakes | 200 NL GG |
| Pot type | 3BP |
| Hero position | SB (3-bettor / OOP PFR) |
| Villain position | UTG |
| Hero stack | 120bb |
| Villain stack | 110bb |
| Hero cards | KhQh |
| Villain cards | 5s4s (revealed) |
| Villain profile | Semi-reg; not refilling stack (unfamiliar with online) |

---

## Street-by-Street

### Preflop
UTG opens → SB (hero) 3-bets → UTG calls. Pot going to flop: ~23bb.

### Flop — Tc9h7h

Hero's hand: KhQh = 2 overcards + gutshot (J) + flush draw (2 hearts in hand, 2 on board).

**Hero action: Check-Call** (villain bets 33%)

**Why:** OOP on a connected, draw-heavy board. Hero has a strong draw but raising risks a shove from villain's value range (sets, 2-pair, strong draws). Check-calling preserves equity realization with maximum hands in villain's range still in.

Villain's assumed betting range (small size): Pairs with heart (Tx, pocket pair with Ah), AhJh, AcJc (low freq), value sets (99, 77, TT).

### Turn — 2h (board: Tc9h7h 2h)

**Hero's hand improves:** KhQh completes to K-high flush (2nd nut flush — only AhXh beats).

**Hero action: Call** (villain bets 33% again)

**Why — Slow Play:**
- Hero does NOT block villain's value sets (hero holds Kh, Qh — does not hold T, 9, 7 or pocket pair with hearts).
- Villain's continued betting range includes sets (TT, 99, 77) and value 2-pair — all hands hero *wants* to stay in.
- Raising the turn would fold out villain's bluffs cheaply and reveal hero's flush strength early.
- Slow play (call) keeps villain's entire range (value + bluffs) continuing to river.

**Villain's updated range read:** Pocket pairs with heart (bluff direction), sets/2-pair (value).

### River — Js (board: Tc9h7h 2h Js)

**Hero's hand:** KhQh — K-high flush (best possible flush with this board's hearts: Kh, Qh, 9h, 7h, 2h).

Blocker check: Hero holds Qh — blocks QhJh and QhTh combos. Js hits the board, so JT (two-pair) strengthens. River opens straights (QJ, J8).

**Villain jams all-in.**

**Hero action: Call**

**Why — Clear Call:**
Hero has 2nd nut flush. Villain's jam for value requires a better flush (Ah + heart) or a set that filled up. Given the hand history (villain bet 33% twice, hit flush-completing card on turn, jammed river with Js coming), villain's most likely value is sets or strong made hands. Hero beats all sets with a flush.

**Result:** Villain shows 5s4s. Pure bluff — no flush, no pair, just a missed gutshot.

---

## Key Learning Points

### 1. Slow Play Turn with 2nd Nut Flush When Unblocking Villain's Value

**Pattern:** When you hold 2nd nut flush, do not hold cards that block villain's value range (sets, 2-pair), and villain is betting small → slow play by calling.

**Reason:** Calling keeps villain's entire range (value + bluffs) in for the river. Raising the turn folds out bluffs and weak made hands, costing value on the river when villain would have committed more.

**In-game trigger:** You have 2nd nut flush, you do NOT hold cards that block villain's likely sets/2-pair, villain has bet 2 streets small → call, don't raise. (Contrast: [[spots/3bp-oop-pfr-flop-key-mistakes|Mistake 2]] is fast-playing value that needs no protection — this hand is the correct application of that rule.)

### 2. River Call with 2nd Nut Flush vs Jam

**Pattern:** Facing a river jam, the only hands that beat K-high flush are A-high flush. If villain's betting range was defined as small bets on flop/turn, the range of Ah-high flushes in villain's line is narrow. Strong made hands (sets that didn't full-house) lose to the flush.

**In-game trigger:** You have 2nd nut flush, villain jams river after two streets of small bets → call and assess only whether Ah + heart is plausible given villain's preflop range and action.

### 3. Population Read — Villain Bluff with No Blocker

**Observation:** Villain (semi-reg, not refilling stack) called a 3-bet from UTG with 5s4s, then ran 3 barrels as a bluff on a completed flush board with **no heart blocker**.

**Why this is theoretically incorrect:** When bluffing into a flush-completing board, bluffs should hold the key blocker (in this case, Ah or another heart) to reduce the probability that hero has the flush.

**In-game application:** When a semi-reg / recreational-leaning player runs multi-barrel on a flush board without a heart, their bluffs are weighted toward hands without blockers. This makes calling with strong flushes even clearer.

---

## Self-Assessment (Summary)

| Street | Hero's Action | Correct? | Notes |
|--------|--------------|----------|-------|
| Flop | Check-call | Yes | Correct OOP passive play with draw on connected board |
| Turn | Call (slow play 2nd nut flush) | Yes | Correctly kept villain's range in; unblocks value |
| River | Call all-in | Yes | Clear call; villain had no blocker and ran pure air |

**Overall:** Hero played the hand well. The slow play on the turn was the key decision — justified by not holding blockers to villain's value range.
