---
id: concept/villain-profile-fish-utg
title: Villain Profile — Fish (UTG Regular)
type: concept
tags: [poker, villain, fish, exploit, profiling, preflop-range, postflop-tendencies]
sources:
  - raw/Hand Review vs fish.md
  - raw/Fish Data.md
aliases: [fish utg profile, villain fish profile, fish calling range, fish tendencies]
created: 2026-04-30
updated: 2026-04-30
links_out: [hand/20260430-fish-utg-3bp-65s-vs-t9o, concept/three-layers-poker-strategy, concept/fish-exploit-data-srp-ip-pfr]
---

# Villain Profile — Fish (UTG Regular)

**Profile type:** Individual villain read database — accumulate data here across sessions.

---

## Identity

- **Seat tendency:** Likes to open from UTG (or early position)
- **Stack:** Unknown — add per session
- **Classification:** Fish / Recreational player

---

## Preflop Tendencies

### 3-Bet Calling Range (vs BU 3-bet)

Confirmed wide calling range. Under-4bets — folds equity preflop infrequently.

Full combo-frequency table (frequency = fraction of combos called):

```
AA:0.08, KK:0.18, QQ:0.355, AKs:0.275, JJ:0.545, AKo:0.36,
TT:0.7, AQs:0.63, 99:0.77, AJs:0.705, AQo:0.63, KQs:0.755,
88:0.795, ATs:0.715, KJs:0.71, 77:0.775, AJo:0.61, KTs:0.665,
QJs:0.765, 66:0.725, A9s:0.625, KQo:0.62, QTs:0.635, JTs:0.7,
55:0.695, A8s:0.59, ATo:0.47, 44:0.705, A5s:0.58, KJo:0.52,
33:0.64, A4s:0.53, K9s:0.52, A7s:0.53, A6s:0.545, 22:0.54,
A3s:0.545, Q9s:0.48, A2s:0.515, QJo:0.44, T9s:0.605, J9s:0.535,
KTo:0.33, K8s:0.325, QTo:0.275, JTo:0.325, K7s:0.29, K6s:0.245,
K5s:0.225, 87s:0.5, 76s:0.47, 65s:0.42, 54s:0.34, 98s:0.6,
K4s:0.155, Q8s:0.305, T8s:0.39, J8s:0.35, K3s:0.145, K2s:0.145,
A9o:0.235, Q7s:0.185, Q6s:0.145, Q5s:0.115, 97s:0.355, T7s:0.26,
Q4s:0.095, 86s:0.295, 75s:0.265, J7s:0.215, 64s:0.215, 53s:0.195,
Q3s:0.09, Q2s:0.07, 96s:0.2, A8o:0.175, J6s:0.11, T6s:0.14,
T9o:0.155, 43s:0.235, J5s:0.08, J9o:0.105, Q9o:0.09, J4s:0.065,
85s:0.155, 74s:0.145, J3s:0.06, 52s:0.11, A5o:0.14, 63s:0.135,
J2s:0.06, A7o:0.145, Q8o:0.035, T5s:0.065, 95s:0.1, K9o:0.105,
42s:0.105, T4s:0.055, 32s:0.14, A4o:0.11, A6o:0.12, T3s:0.045,
A3o:0.1, T2s:0.04, T8o:0.045, 84s:0.075, J8o:0.045, K8o:0.045,
A2o:0.085, 98o:0.105, 73s:0.055, K7o:0.03, K6o:0.02, 94s:0.05,
93s:0.035, 87o:0.08, 76o:0.06, 65o:0.05, 54o:0.04, 62s:0.065,
97o:0.04, T7o:0.025, J7o:0.015, Q7o:0.015, Q6o:0.01, Q5o:0.005,
K5o:0.01, 92s:0.035, 83s:0.04, 82s:0.03, 72s:0.045, 86o:0.03,
75o:0.02, 64o:0.02, 43o:0.02, 53o:0.015, 96o:0.02, K4o:0.01,
K3o:0.01, K2o:0.01, 42o:0.01, 32o:0.015, 85o:0.01, 74o:0.005,
63o:0.01, 52o:0.005, J6o:0.01, Q4o:0.005, Q3o:0.005, Q2o:0.005,
T6o:0.005, J5o:0.005, J4o:0.005, J3o:0.005, T5o:0.005, 95o:0.005,
T3o:0.005, T2o:0.005, 84o:0.005, 93o:0.005, 62o:0.005, 83o:0.005,
73o:0.005, 72o:0.005
```

**Key patterns from the range:**
- Calls 3-bets with medium pocket pairs at high frequency (88=0.795, 77=0.775, 66=0.725)
- Calls with suited broadways broadly (KJs=0.71, QJs=0.765, JTs=0.7)
- Calls with speculative trash at non-zero frequency (T9o=0.155, 87o=0.08, 76o=0.06)
- Does NOT 4-bet — even premium hands (AA=0.08 call, KK=0.18 call) call frequently rather than 4-betting

**Exploit implication (preflop):** Fish almost never 4-bets. When fish does 4-bet, weighted heavily toward premiums. Hero can 3-bet wider vs this player since the response is mostly call, not 4-bet.

---

## Postflop Tendencies (3BP OOP vs BU Hero)

### Flop Donk-Lead Pattern
- **Observed:** Donks 40% pot on connected/draw-heavy flop (8s6s8c)
- **Holding:** T9o with Ts — overcards + gutshot + bdfd (weak semi-bluff hand for a fish)
- **Interpretation:** Fish donks with medium/speculative hands for protection and pot control. Does NOT check-raise sets (as expected — fish fast-plays or traps with sets, not donk-leads).

### Turn Continuation (after donk-flop)
- **Observed:** Blocks again (second bet) after flop donk
- **Holding:** Ts9h after 9s fall = pair of 9s + 4-to-flush (strong hand by turn)
- **Interpretation:** Fish escalates bets as hand improves. Turn block = hand has strengthened, not weakened.

### River Continuation
- **Observed:** Bets 50% river after two streets of leading
- **Holding:** J-high flush (Js-Ts-9s-8s-6s) — made hand
- **Interpretation:** Fish bets river for value with made flushes. Three-street donk-lead = almost always a made hand on river, not a bluff.

### General Postflop Read
- Fish's 3-street donk line is a VALUE pattern, not a bluffing pattern
- Fish does not appear to fold made hands vs aggression (wide call range confirmed preflop)
- Do NOT attempt river bluffs vs this fish after 3 streets of fish-led aggression

---

## Exploit Framework (Strategy Layer per Wakko)

**Correct layer vs this fish:** [[concept/three-layers-poker-strategy|L2 — Offensive Population Exploit]]

| When | Action |
|------|--------|
| Hero has strong made hand | Bet for value — fish calls wide |
| Hero has a draw | Bet/semi-bluff selectively — fish over-calls so equity matters |
| Fish leads 3 streets | Give up with non-nut hands — fish's 3-street pattern = value |
| Fish bets on spade-heavy board | Fold unless hero has a flush or better |
| Hero wants to bluff fish | Do not use large jams — fish does not fold made hands |

**Do NOT apply L3 creative bluffs vs this fish.** Fish's defining trait = wide calls. GTO indifference logic does not apply to a player who always calls.

---

## Linked Hand Reviews

- [[hand/20260430-fish-utg-3bp-65s-vs-t9o]] — 3BP BU 65s vs Ts9h, board 8s6s8c-9s-Js; hero river-jammed two pair into J-high flush (6 leaks documented)

---

## Fields to Update Each Session

- [ ] Date / hand count
- [ ] Any new lines observed (check-raise frequency, probe bets, 4-bet range if ever seen)
- [ ] Any positional adjustments (does fish play differently from BB vs BTN?)
- [ ] Session win/loss vs this fish

## See Also
- [[concept/fish-exploit-data-srp-ip-pfr|Fish Exploit Data — SRP IP PFR]] — pool-level data that corroborates this villain's wide-call tendencies
