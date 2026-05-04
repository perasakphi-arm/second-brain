---
id: hand/20260503-3bp-bb-vs-sb-aac-qc9c6h
title: Hand Review — 3BP BB vs SB (AsAc on Qc9c6h) — Overpair Call vs Check-Jam
type: concept
tags: [hand-review, 3bp, bb, sb, ip, pfr, overpair, check-jam, equity-call, flush-blocker, 200nl]
sources:
  - raw/3BP IP BBvSB.md
aliases: [3bp bb vs sb aac qc9c6h, overpair check jam call 3bp, aac qc9c6h checkjam]
created: 2026-05-03
updated: 2026-05-03
links_out: [concept/3bp-oop-pfr-strategy, concept/3bp-ip-pfr-overpair-flush-blocker-vs-checkjam, spots/3bp-oop-pfr-flop-key-mistakes]
---

## Overview

| Field | Value |
|-------|-------|
| Date | 2026-05-03 |
| Stakes | 200 NL |
| Pot type | 3BP |
| Hero | BB (3-bettor, **IP** postflop) |
| Villain | SB (caller, OOP postflop) |
| Hero's Hand | AsAc (overpair; Ac blocks club flush draws) |
| Board | Qc9c6h |
| SPR | ~3.5 |
| Villain | Clementinus (Average reg) |

## Preflop

SB opens 3x → BB 3-bets to 10bb → SB calls. Pot ~24bb.

## Flop: Qc9c6h (draw-heavy — flush + OESD)

- Villain checks (OOP)
- Hero bets
- Villain **check-jams**
- Hero **calls**

**Hero's range read of villain's check-jam:**
- Value: AQ, KQ (top pair strong kicker) — estimated ~10–20% of check-jam combos
- Sets: 99 (3 combos), 66 (3 combos)
- Draws: KcJc, KcTc, JcTc (flush draw + OESD) + other club flush draws

**Hero's blockers:** AsAc
- Ac removes AcKc, AcQc from villain's value combos (impossible)
- Ac reduces villain's pure club flush draw combos
- Net: villain's check-jam range is draw-weighted

**Equity analysis:**
- Pot odds required: ~38%
- Hero's equity vs realistic check-jam range: **51.55%**
- Call is mathematically correct

![[Pasted image 20260503222248.png]]

## Result

- Villain showed KsQs (top pair — no flush draw)
- Winner: Villain (ran out badly on later streets)

## Self-Assessment

**Flop:** Thought we're beating AQo and some KQ (~20%) + sets of 99/66 (3+3 combos each) + mostly flush draws → correct read for a call.

**Replay:** Would still call — pot odds require 38%, we have 51.55% equity. Losing the hand doesn't make the call wrong.

## Key Lesson

With overpair + flush blocker on a [[concept/3bp-oop-pfr-strategy|draw-heavy 3BP board]] vs a check-jam, **call when equity (51%+) exceeds pot odds (~38%)**. The result (villain hitting top pair) doesn't invalidate the decision — the equity math is what matters over time.

→ See [[concept/3bp-ip-pfr-overpair-flush-blocker-vs-checkjam]] for the extracted decision pattern.
