# Hand Review — YYYY-MM-DD [brief spot description]

> **How to use:** Copy this file to `raw/`, rename it, fill in every field.
> The heading contains "Review" so `/hand-review` picks it up automatically.
> Fields marked `(optional)` can be left blank — fill what you know.

---

## Overview

| Field                | Value     |
| -------------------- | --------- |
| DateD                | 2026-05-2 |
| Stakes               | 200 NL GG |
| Table type           | Cash      |
| Pot type             | 3BP       |
| Hero position        | SB        |
| Villain position     | UTG       |
| Hero stack           | 120 bb    |
| Villain stack        | 110 bb    |
| SPR (approx)         | -         |
| Villain profile link | mrsunbeam |

---

## Hero's Hand

- **Cards:** KhQh — e.g. 6h 5h
- **Suit:** hearth
- **Hand class:** Gutshot flush draw flop
- **Preflop role:** 3-bettor (PFR)

---

## Villain Info

- **Type:** Assume live reg or semi reg
- **Key tendency this session:** not refill stack so assume he is not familiar with online game
- **Preflop: calling range / 4-bet frequency:** -
- **Postflop tell observed today (optional):** -

---

## Preflop Action

```
e.g. UTG opens 2.1x → SB 3-bets 11x → UTG calls
Pot going to flop: 23bb
```

---

## Flop

- **Board:**  Tc9h7h
- **Board texture:** Connect and flush draw
- **Suits on board:** 2 hearth
- **Villain action:** b33%
- **Hero action:** Call
- **Hero's hand strength:** 2 over and gusthot flush draw
- **Hero's range read of villain:**
- **Why did villain bet / check?**
	- assume his betting range for small is protection e.g. Pair Tx, pocket with hearth, some of AhJh,Ac,Jc, low frequency of Ah5h, for value set 99,77,TT

---

## Turn

- **Card:** 2h
- **Board now:** Tc9h7h 2h
- **New suits on board:** complete flush turn
- **Does this card improve hero's hand?** Yes hit flush
- **Does this card improve villain's range?** natural 
- **Villain action:** b33
- **Hero action:** call
- **Hero's updated range read of villain:** : his betting range should be around pocket with hearth for bluff hand, and value Set +
- **Hero's hand strength now:** second nut flush

---

## River

- **Card:** Js
- **Board now:** Tc9h7h 2c Js
- **Flush complete?** Yes 
- **Does hero have a flush?** Yes
- **Does hero have any blocker to villain's likely value hands?** Yes
  - Hero's cards: Q of hearth blocks: block with QhJh or QhTh
  - Confirm: are these blockers relevant to the flush
- **Villain action:** B all in
- **Hero's range read now:** (what hands can villain be betting for value / bluffing with?)
  - Value bets villain has: Set + in Theory
  - Bluffs villain has: low pocket with flush
  - Which is more likely given the full street history?
- **Hero action:** Call
- **Hero's reasoning:** easy call with second nut flush because we betting his value but IMO my surprise me he turn very bad hand to bluff 54s no blocker. When I saw his SDV and I feel he play call 3bet very wide range with 54s at EP and running bluff 3 barrel with weak bluffing hand because no blocker relevant I think solver perspective should be at least block hearth assume will turn pocket with hearth into bluff.

---

## Result (optional — fill if known)

- **Villain's hand:** 5s4s
- **Villain's hand strength:** 5 high
- **Hero's best hand:** KhQh with flush 
- **Winner:** Hero
- **Hero's reaction:** clear call because we beating his value range

---

## My Thought Process (self-assessment)

Answer each question honestly — these are the inputs for the leak analysis:

1. **What was I thinking on the flop?**
Ans: On the flop I think my gutshot flush draw need realize all equity that I have so general play should play XC because we can bet medium or big and facing jam. it's hurt  me a lot and next flop connected so OOP will play in passive mode. conclusion I decide to play check call.

2. **What was I thinking on the turn? Did I update my range read?**
Ans: IP bet B33% on the turn when flush complete I do think in theory can be bet small as well (need to check) assumption his range might be around set or 2 pair + and bluff standard should be pocket with hearth.

3. **What was the key decision point? What did I think at that moment?**
Ans: we need to slow play On the turn when we having nut and unblock his value (mix 2 pair and set) so we didnot lose value with his range.

4. **Did I verify my blockers before acting on the river? (yes/no + how)**
Ans: for my hand I think easy call because I beating his value set (can bet around 50%+)

5. **What strategy layer was I using — L1 / L2 / L3? Was it appropriate for this villain?**
Ans: OTF using Layer 1 and turn,river I using with holistic play following my knowledge with river but didnot update this knowledge into wiki yet.

6. **If I could replay the hand, what would I do differently?**
Ans: I think I play this hand well enough.