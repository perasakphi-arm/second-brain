# Hand Review — YYYY-MM-DD [brief spot description]

> **How to use:** Copy this file to `raw/`, rename it, fill in every field.
> The heading contains "Review" so `/hand-review` picks it up automatically.
> Fields marked `(optional)` can be left blank — fill what you know.

---

## Overview

| Field | Value |
|-------|-------|
| Date | YYYY-MM-DD |
| Stakes | e.g. NL100 / 5-10 live |
| Table type | Cash / MTT / Zoom |
| Pot type | SRP / 3BP / 4BP |
| Hero position | BU / CO / SB / BB / UTG |
| Villain position | |
| Hero stack | e.g. 100bb |
| Villain stack | e.g. 87bb |
| SPR (approx) | e.g. 4.5 |
| Villain profile link | e.g. [[concept/villain-profile-fish-utg]] or "unknown" |

---

## Hero's Hand

- **Cards:** [rank][suit] [rank][suit] — e.g. 6h 5h
- **Suit:** e.g. Hearts — NOT spades (important for blocker analysis)
- **Hand class:** Suited connector / Pocket pair / Broadway / Offsuit Ax / etc.
- **Preflop role:** 3-bettor (PFR) / Caller (PFC) / Original raiser

---

## Villain Info

- **Type:** Fish / Reg / Unknown
- **Key tendency this session:** e.g. limping wide, donk-leading draws
- **Preflop: calling range / 4-bet frequency:** (paste data if known, else note any live read)
- **Postflop tell observed today (optional):** 

---

## Preflop Action

```
e.g. UTG opens 2x → BU 3-bets 7x → UTG calls
Pot going to flop: 14.5bb
```

---

## Flop

- **Board:** [rank][suit] [rank][suit] [rank][suit] — e.g. 8s 6s 8c
- **Board texture:** Paired / Flush draw / Rainbow / Monotone / Connected
- **Suits on board:** e.g. 2 spades — does this overlap with hero's suit? Yes / No
- **Villain action:** e.g. Donk 40% pot
- **Hero action:** e.g. Call
- **Hero's hand strength:** e.g. Second pair (pair of 6s) + bdfd (hearts, not spades)
- **Hero's range read of villain:**
  - Strong hands (sets, two pair):
  - Medium (overpairs, top pair):
  - Draws (flush, straight):
  - Weak / air:
- **Why did villain bet / check?** (my read at the time)

---

## Turn

- **Card:** [rank][suit] — e.g. 9s
- **Board now:** e.g. 8s 6s 8c 9s
- **New suits on board:** e.g. now 3 spades — flush draw live
- **Does this card improve hero's hand?** Yes (how) / No
- **Does this card improve villain's range?** Yes (how) / No
- **Villain action:** e.g. Block bet small (25%)
- **Hero action:** e.g. Call
- **Hero's updated range read of villain:**
- **Hero's hand strength now:** e.g. Still pair of 6s — bdfd unimproved (turn was a spade, not hearts)

---

## River

- **Card:** [rank][suit] — e.g. Js
- **Board now:** e.g. 8s 6s 8c 9s Js
- **Flush complete?** Yes / No — suit: ___
- **Does hero have a flush?** Yes / No — hero's suit vs board suit: ___
- **Does hero have any blocker to villain's likely value hands?** Yes (which cards) / No
  - Hero's cards: ___ — blocks: ___
  - Confirm: are these blockers relevant to the flush / straight / top pair?
- **Villain action:** e.g. B50%
- **Hero's range read now:** (what hands can villain be betting for value / bluffing with?)
  - Value bets villain has:
  - Bluffs villain has:
  - Which is more likely given the full street history?
- **Hero action:** e.g. RAISED / CALLED / FOLDED
- **Hero's reasoning:** (write the full thought process — this is what gets reviewed for leaks)

---

## Result (optional — fill if known)

- **Villain's hand:** e.g. Ts 9h
- **Villain's hand strength:** e.g. J-high flush (Js-Ts-9s-8s-6s)
- **Hero's best hand:** e.g. Two pair 8s/6s
- **Winner:** Villain / Hero / Split
- **Hero's reaction:** e.g. "I thought my blocker was good — it wasn't"

---

## My Thought Process (self-assessment)

Answer each question honestly — these are the inputs for the leak analysis:

1. **What was I thinking on the flop?**

2. **What was I thinking on the turn? Did I update my range read?**

3. **What was the key decision point? What did I think at that moment?**

4. **Did I verify my blockers before acting on the river? (yes/no + how)**

5. **What strategy layer was I using — L1 / L2 / L3? Was it appropriate for this villain?**

6. **If I could replay the hand, what would I do differently?**
