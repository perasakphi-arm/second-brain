---
id: hand/20260430-fish-utg-3bp-65s-vs-t9o
title: 3BP BU 65s vs Fish UTG T9o (Board 8s6s8c-9s-Js)
type: concept
tags: [poker, hand-review, 3bp, bu, fish, leak-flush-blocker, leak-river-jam, leak-range-notation, leak-l3-vs-fish]
sources:
  - raw/Hand Review vs fish.md
aliases: [fish utg jam hand 20260430, 65s vs t9o flush board, hand review fish 3bp spade board]
created: 2026-04-30
updated: 2026-04-30
links_out:
  - concept/three-layers-poker-strategy
  - concept/villain-profile-fish-utg
  - concept/fish-exploit-data-srp-ip-pfr
---

# 3BP BU 65s vs Fish UTG T9o (Board 8s6s8c-9s-Js)

**Session:** 2026-04-30 | **Spot:** 3BP IP (Hero BU) vs OOP (Fish UTG)

---

## Hand Summary

| Field | Detail |
|-------|--------|
| Spot | 3BP BU (Hero) vs UTG (Fish) |
| Hero hand | 6h5h (non-spade suited, bdfd on flop) |
| Fish hand | Ts9h |
| Flop | 8s 6s 8c — Fish donks 40% pot |
| Turn | 9s — Fish blocks |
| River | Js — Fish bets 50%, Hero jams, Fish calls |
| Result | Fish wins — J-high flush (Js-Ts-9s-8s-6s) > Hero two pair (8s/6s) |

---

## Street-by-Street

**Flop 8s6s8c:**
- Hero: pair of 6s + bdfd (hearts, not spades)
- Fish: Ts9h — overcards + gutshot (needs 7 for 6-7-8-9-T) + bdfd (3 to spade flush)
- Fish donk-leads 40%. Hero calls.

**Turn 9s:**
- Board: 8s 6s 8c 9s — three spades
- Hero: pair of 6s, bdfd unimproved (heart turn needed, not 9s)
- Fish: pairs 9s (9h + 9s on board) AND upgrades to live 4-to-flush (Ts + 9s + 8s + 6s)
- Fish blocks again. Hero calls.

**River Js:**
- Board: 8s 6s 8c 9s Js — four spades on board
- Hero: two pair 8s/6s — no spades, no flush
- Fish: J-high flush made (Ts + Js + 9s + 8s + 6s = five spades)
- Fish bets 50%. Hero jams. Fish calls and wins.

---

## Leaks Identified

### Leak 1 — False Blocker Claim [CRITICAL]

Hero wrote: *"we block strong hand in his range."*

Hero holds 6h5h — zero spades. On a 5-spade board, every strong hand is a flush (requires one spade in hand). Hero's 6h and 5h block nothing relevant. The entire river-jam justification was built on a premise that was factually false.

**Fix:** Before citing blockers, name your suit and confirm it is the suit relevant to the board threat. Spade-flush board → only spade holdings are blockers.

---

### Leak 2 — T9o Type Missing from Flop Range

Hero's flop buckets: TT/99 (overpairs), Ax with spade (bdfd+overcard), low pockets (55/77/44/A6), weak FD/SD.

Fish's actual hand (Ts9h) is in none of those buckets cleanly. T9o with one spade on 8s6s8c is: overcards + gutshot + bdfd. This "speculative draw" hand type was never named, so its escalation street-to-street was never tracked.

**Fix:** Add the "overcards + gutshot + bdfd" bucket explicitly on paired boards with a live flush draw. These hands change shape dramatically per street.

---

### Leak 3 — Turn Range Update Underestimates 9s

Hero's turn update: "1 pair type — TT/66/55/A6 + 1-card flush + some flush."

When 9s fell, T9o went from a weak speculative hand to: pair of 9s + 4-to-flush (live). This is not "1 pair type" — it is a strong drawing hand with both made and potential flush value. Labelling it as plain "1 pair" missed its real trajectory.

**Fix:** On any turn card that adds a 3rd board spade, separate: (a) hands that already had a spade FD on flop and are now confirmed draws, vs (b) hands that just became 4-to-flush this street. Group (b) is stronger and more likely to continue.

---

### Leak 4 — Two Pair Has Zero Showdown Value on 5-Spade Board

Hero's two pair (8s/6s) loses to every hand with one spade in it. On a board of 8s-6s-8c-9s-Js, any holding with one spade = at minimum a 6-high flush. The only hand hero beats is a fish with zero spades and a bluff — against a fish who donk-led three streets, this scenario is essentially zero.

Correct river options in order of preference:
1. **Fold** — fish 3-street donk + 5-spade board + hero non-spade two pair = almost always crushed
2. **Call** — marginally defensible if fish can have non-flush three-street bluffs (they generally can't here)
3. **Jam** — worst option; turns a bluff-catcher into a bluff against a fish who will not fold a flush

---

### Leak 5 — Notation Error: 88 and 66 as Trap Hands

Hero listed "88" as a trap hand. Board has two 8s already — fish can only have ONE 8 in hand (trips), not a pocket pair. Correct notation: "8x" or "trips-8." "66" has the same problem (board has 6s; fish has pair of 6s using one card in hand, not pocket pair 66 using two). Imprecise notation leads to wrong combo counts.

**Fix:** When board cards are paired, audit range notation to reflect physical possibility — pocket pair vs trips are different combo counts.

---

### Leak 6 — Applied L3 Bluff Logic Against a Fish Who Never Folds

Hero used "make weak flush indifferent" — a GTO Layer-3 concept. Applied against a fish whose defining trait (confirmed by preflop calling-range data) is wide calls and minimal folding. GTO indifference logic does not function against a player who always calls regardless.

Per Wakko's [[concept/three-layers-poker-strategy|Three Layers]]:
- L2 (population exploit) is the correct layer vs this fish: value-bet when ahead, give up when fish shows multi-street aggression
- L3 creative bluffs are valid only when the read supports the idea that villain will fold — fish explicitly doesn't fold

**Fix:** Against fish, run L2 logic. Sun Tzu: "Avoid strong, strike weak." Fish 3-street donk on a 5-spade board = strong signal. Correct response is to avoid, not attack.

---

## Correct Line (River)

- Fish bets 50% pot
- Hero has two pair (8s/6s), no spades
- Fish has demonstrated 3-street value aggression
- **Fold.** Save the stack for the next hand.

---

## Inconsistencies Summary

| # | Inconsistency |
|---|---|
| 1 | Blocker claim + non-spade hand on spade board — mutually contradictory facts in the same decision |
| 2 | Acknowledged "fish could be trapping with FH/quad" then jammed into that range anyway |
| 3 | Turn: called T9o type "1 pair" after 9s improved it to pair + live flush draw |
| 4 | Used "88" and "66" notation where board already shows these as impossible pocket pairs |

## See Also
- [[concept/villain-profile-fish-utg|Villain Profile — Fish (UTG)]] — the villain database this hand informs
- [[concept/fish-exploit-data-srp-ip-pfr|Fish Exploit Data — SRP IP PFR]] — pool-level data that corroborates this analysis
