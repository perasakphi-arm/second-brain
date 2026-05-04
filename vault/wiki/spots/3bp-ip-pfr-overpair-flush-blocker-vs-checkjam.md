---
id: concept/3bp-ip-pfr-overpair-flush-blocker-vs-checkjam
title: 3BP IP PFR — Overpair + Flush Blocker vs Check-Jam on Draw-Heavy Board
type: concept
tags: [3bp, ip, pfr, overpair, check-jam, equity-call, flush-blocker, draw-heavy-board, spot]
sources:
  - raw/3BP IP BBvSB.md
aliases: [overpair check jam 3bp, flush blocker check jam call, overpair vs check jam draw board, 3bp checkjam equity]
created: 2026-05-03
updated: 2026-05-03
links_out: [concept/3bp-oop-pfr-strategy, spots/3bp-oop-pfr-flop-key-mistakes, hand/20260503-3bp-bb-vs-sb-aac-qc9c6h]
---

## Spot Trigger

[[concept/3bp-oop-pfr-strategy|3BP]], IP as PFR, **draw-heavy board** (flush draw + straight draw present, e.g., Qc9c6h). Villain OOP **check-jams** the flop. Hero holds **overpair with flush blocker** (e.g., Ac on a club board).

## Thought Process

1. **Villain's check-jam range on draw-heavy 3BP board:**
   - Weighted toward semi-bluffs: flush draws (KcJc, KcTc, JcTc), combo draws
   - Some value: top pair strong kicker (AQ, KQ), sets (99, 66)
   - This range is draw-heavy — villain is semi-bluffing the majority of the time
2. **Blocker impact of holding the Ace of the board's flush suit:**
   - Removes AcKc, AcQc from villain's possible value combos
   - Reduces villain's pure flush draw combos (e.g., AcXc impossible)
   - Net: villain's range skews even more toward draws → hero's equity improves
3. **Pot odds threshold with SPR ~3.5:** effective stacks go in on flop → need ~38% equity
4. **Overpair equity vs realistic check-jam range:** ~51.55% — well above threshold
5. **Conclusion:** Call is profitable over time, even if villain occasionally shows up with top pair

## Action Rule

**Call the check-jam with overpair + flush blocker on draw-heavy 3BP board when:**
- Pot odds needed ≤ 40%
- Hero equity vs realistic range ≥ 50%
- Flush blocker reduces villain's best draw combos

**Do NOT over-fold** overpairs here — villain's check-jam range contains too many draws for folding to be correct with 51%+ equity.

## Why This Is Counterintuitive

Villain sometimes shows up with top pair (KQ) and wins, making the call feel like a mistake. It is not. The decision is evaluated against the *full distribution* of villain's check-jam range, not the single hand they turn over. Losing to KQ once does not make the fold correct — the equity math over many repetitions is what matters.

## Examples

| Hand | Board | Equity vs Check-Jam Range | Pot Odds | Decision |
|------|-------|--------------------------|----------|----------|
| AsAc | Qc9c6h | ~51.5% | ~38% | **Call ✓** |
| AsAc | Tc7c2c (all-club) | Lower (fewer draws can jam) | ~38% | Narrower — assess |
| KdKh | Qc9c6h (no blocker) | ~48% | ~38% | Marginal — still likely call |

## Connection to Blocker Theory

This spot is a direct application of flush blockers improving a call: holding Ac removes villain's best bluff combos from the check-jam range, increasing hero's equity beyond what a non-blocker holding would have. See note on blocker and anti-blocker concepts when available.

## See Also
- [[concept/3bp-oop-pfr-strategy|3BP OOP PFR Strategy]] — foundational strategy for 3BP spots; draw-heavy flop handling
- [[spots/3bp-oop-pfr-flop-key-mistakes|3BP OOP PFR Key Mistakes]] — Mistake 1 is the opposite leak: not getting stacks in when value is strong enough; this spot shows the correct call side
