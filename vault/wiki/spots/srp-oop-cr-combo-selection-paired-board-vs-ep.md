---
id: concept/srp-oop-cr-combo-selection-paired-board-vs-ep
title: SRP OOP — Check-Raise Combo Selection on Paired Boards vs EP
type: concept
tags: [srp, oop, pfc, bb-defend, paired-board, check-raise, combo-selection, ep, spot, mistake-analysis]
sources:
  - raw/BB defend vs EP.md
aliases: [cr combo selection paired board, paired board check raise vs ep, qqx check raise combo]
created: 2026-05-03
updated: 2026-05-03
links_out: [spot/srp-oop-pfc-bb-defend-flop, spot/srp-oop-pfc-bb-defend-mistakes, hand/20260503-srp-bb-vs-ep-86s-qqx]
---

## Spot Trigger

SRP, OOP (BB defend), **paired board** (e.g., QQx, KKx), villain in **EP** c-bets small (≤33%). Hero is deciding whether to check-raise with a medium-strength hand (second pair + backdoor draw).

## Thought Process

1. **Population read:** EP c-bets small at high frequency on paired boards — XR is a reasonable protection play in principle
2. **Range adjustment vs EP:** EP's range is tighter than BU or CO. The same [[spot/srp-oop-pfc-bb-defend-flop|XR framework for BB defend]] needs a stronger combo vs EP because:
   - EP calls XR with a stronger weighted range (more top pair+, fewer air hands)
   - Hero needs more equity to withstand a turn barrel
3. **Combo strength required:** Hero needs live draw equity on the actual board suits, not just backdoor potential in the wrong suit
4. **Flush draw combos** (matching board suit) maintain equity vs calls and provide natural barrel exits on runout; a bdfd in the wrong suit does not

## Action Rule

**On paired boards vs EP small c-bet — check-raise with:**
- Flush draw combos matching board suit (e.g., Ah6h, Kh6h on QsQh6h)
- Ax suited + bdfd where the bdfd is in the board's flush suit
- Sets and trips (value)

**Do NOT check-raise with:**
- Second pair + bdfd in the wrong suit (e.g., 8s6s on a heart board — no live flush draw)
- Pure second pair with no draw equity

**The key distinction:** vs BU you can XR with wider combos; vs EP shrink to combos with direct draw equity.

## Mistake Pattern

Over-applying the "XR for protection on paired boards" rule without adjusting for villain position. The position of the c-bettor determines how tightly you should select XR combos:

| Villain | XR combo selection |
|---------|-------------------|
| BU / CO | Medium-strength OK: second pair + bdfd |
| EP | Tighter: flush draw (board suit) required |

## Examples

- **QsQh6h, hero 8s6s, villain EP b33 → Do NOT XR:** Pair of 6s only; spades bdfd has no live equity on a heart board. Check-call or check-fold.
- **QsQh6h, hero Ah6h, villain EP b33 → XR candidate:** Heart flush draw live on board + pair of 6s = sufficient equity vs EP's range
- **QsQh6h, hero Ah2h (bdfd hearts), villain EP b33 → XR candidate:** Flush draw equity compensates for no pair
