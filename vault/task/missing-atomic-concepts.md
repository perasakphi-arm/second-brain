# Missing Atomic Concepts

> Created: 2026-04-26
> Source: full grep scan of wiki/ + processed.json audit.
> Total concepts identified: 23 missing wiki notes.
>
> To create a concept: add raw notes to raw/ then run /ingest,
> OR ask Claude to draft directly to inbox/ for concepts with no raw file.

---

## ⚠️ URGENT — Lost Concepts (vault reset wiped wiki notes, raw source files also gone)

These were previously ingested AND approved but no longer exist anywhere.
The fish-exploit draft in inbox/ EXTENDS `concept/playing-vs-recreation` —
that note must be re-created BEFORE approving the fish draft.

| # | Suggested ID | Concept | Previously sourced from |
|---|---|---|---|
| 1 | `concept/playing-vs-recreation` | Playing vs Recreational Players — adjustments when fish are in the game | raw/3.10 Playing vs recreation.md (GONE) |
| 2 | `concept/blocker-and-anti-blocker` | Blocker / Anti-Blocker — blocking or unblocking opponent's calling/folding range | raw/4.6 Blocker and Equity.md (GONE) |
| 3 | `concept/donk-bet` | Donk Bet — OOP bet into the preflop aggressor | raw/4.4 Donking.md (GONE) |
| 4 | `concept/merge-betting` | Merge Betting — thin value / blended range bet strategy | raw/4.5 Merge.md (GONE) |
| 5 | `concept/auto-fold` | Auto Fold / Air — hands with 0 equity vs villain's calling range; fold automatically | raw/4.7 Auto fold and Air.md (GONE) |
| 6 | `concept/bb-defend-protection-check-raise` | BB Defend — protection check-raise strategy from the big blind | raw/BB Defend Part 1..md (GONE) |

**Action:** Ask Claude to recreate these from knowledge + any mentions in existing wiki notes. No raw file needed — draft directly to inbox/.

---

## HIGH PRIORITY — Core theory concepts referenced in multiple wiki notes

These appear across 3+ notes and are prerequisites for understanding the vault.

### Equity Realization
- **Suggested ID:** `concept/equity-realization`
- **Referenced in:** mtt-vs-cash ("equity realization drives SPR-based decisions"), 3bp-oop-pfr-strategy (implicit throughout)
- **Core claim:** Ability to reach showdown and realize your equity share given position, SPR, and hand type (suited connectors realize better deep; offsuit hands realize better short).
- **Action:** Draft directly to inbox/

### Ripple Effect
- **Suggested ID:** `concept/ripple-effect`
- **Referenced in:** three-layers-poker-strategy ("Ripple effect adjustments"), poker-study-methodology ("River leaks propagate backwards"), 3bp-bu-vs-sb (cited by name)
- **Core claim:** Population leaks on later streets justify preemptive adjustments on earlier streets. If BB over-folds River in line X, IP should increase bluff frequency starting from Flop.
- **Action:** Draft directly to inbox/

### Range Advantage
- **Suggested ID:** `concept/range-advantage`
- **Referenced in:** 3bp-oop-pfr-strategy ("Range advantage → estimate cbet frequency"), remain-flop section (equity distribution framework)
- **Core claim:** The first pillar of equity distribution — comparing average equity between the two ranges. Informs who should be the aggressor and at what frequency.
- **Action:** Draft directly to inbox/

### Equity Distribution Framework
- **Suggested ID:** `concept/equity-distribution-framework`
- **Referenced in:** 3bp-oop-pfr-strategy remain-flop ("Equity Distribution Framework from Uri"), mtt-vs-cash ("equity distribution")
- **Core claim:** Three-part framework to determine street approach (aggressive / even / passive): (1) Range Advantage — who has higher avg equity, (2) Nut Right Now — who has stronger current holdings, (3) Nut in Future — who has more nut potential.
- **Action:** Draft directly to inbox/

### Blocker / Anti-Blocker
- **Suggested ID:** `concept/blocker-and-anti-blocker`  ← same id as the lost concept #2 above
- **Referenced in:** 3bp-oop-pfr-strategy ("Suit block bdfd = nutted bluff", "block call", "block top pair", "blocker สำคัญกว่า SRP"), three-layers ("blocker effects"), 3bp-bu-vs-sb ("hands that block their continuing range")
- **Core claim:** A blocker reduces combinations of a hand in villain's range (reduces their calling/raising hands). An anti-blocker maximizes those combinations (improves as a bluff vs call-heavy boards). Blockers matter more than SPR in 3BP (Tony).
- **Action:** Draft directly to inbox/ (recreate lost concept)

---

## MEDIUM PRIORITY — Tactical concepts named in wiki notes

### Make Outlive
- **Suggested ID:** `concept/make-outlive`
- **Referenced in:** 3bp-oop-pfr-strategy ("Making outlive — bet to deny equity and survive to later streets"), board 567 ("make outlive + 2 overcard + bdfd")
- **Core claim:** A betting motivation where the goal is not immediate fold equity but surviving to a turn/river where your hand improves or opponent's range weakens. Combines equity denial with barrel planning.
- **Action:** Draft directly to inbox/

### Un-natural Bluff
- **Suggested ID:** `concept/un-natural-bluff`
- **Referenced in:** 3bp-oop-pfr-strategy remain-flop (×8 — "un-natural bluff: low pockets, low suited", "SB need to create un-natural bluff", "find un-natural bluffs")
- **Core claim:** Bluffing with hands that don't naturally want to bluff (e.g., low pockets, low suited connectors in BBx spots). Used when natural bluff candidates (draws, overcards) are unavailable or would lose value by folding.
- **Action:** Draft directly to inbox/

### Capped Range
- **Suggested ID:** `concept/capped-range`
- **Referenced in:** 3bp-bu-vs-sb ("betting range is capped — AA, top set are folded into the 50% bet"), ("maximum pressure on capped range")
- **Core claim:** A range with no absolute nuts. A capped range cannot re-raise (3-bet) back because the nuts are in the checking range, not the betting range. Raises against a capped range are extremely powerful.
- **Action:** Draft directly to inbox/

### Aggression Protocol
- **Suggested ID:** `concept/aggression-protocol`
- **Referenced in:** three-layers-poker-strategy ("Build aggression protocols — hotspots where the pool consistently over-folds")
- **Core claim:** A pre-planned betting decision for known over-fold spots. Instead of deciding on the fly, an aggression protocol says "in spot X when pool over-folds, always bet at Y% frequency." Part of Layer 2 Offensive Adjustment.
- **Action:** Draft directly to inbox/

### Bluff Catcher
- **Suggested ID:** `concept/bluff-catcher`
- **Referenced in:** 3bp-oop-pfr-strategy ("value hand ไปอยู่ที่ bluff catcher", "AKo check → 0 EV scenario; OOP must protect hand from becoming bluff catcher"), 3bp-bu-vs-sb ("they cannot call with medium hands that are now bluff catchers")
- **Core claim:** A medium-strength hand with little showdown improvement that calls specifically to catch opponent bluffs. Hand is too strong to fold but too weak to value bet. Key: unblock opponent's bluffing range.
- **Action:** Draft directly to inbox/

### Check-Shove / Check-Jam
- **Suggested ID:** `concept/check-shove`
- **Referenced in:** 3bp-oop-pfr-strategy ("check jam หรือ check fold", "check shove ด้วย K,A flush draw", "check shove turn"), 3bp-bu-vs-sb (check shove dynamic after calling flop bet)
- **Core claim:** Check then raise all-in on a street. A powerful line after upsize flop bet — denies opponent the ability to bet small to see a cheap card, maximizes pressure.
- **Action:** Draft directly to inbox/

---

## LOWER PRIORITY — Fundamental building blocks

These are used everywhere implicitly but would benefit from dedicated notes.

### Backdoor Flush Draw (bdfd)
- **Suggested ID:** `concept/bdfd`
- **Referenced in:** 3bp-oop-pfr-strategy (×15+), 3bp-bu-vs-sb ("Pair + bdfd")
- **Core claim:** A hand that needs two running cards (turn + river) to complete a flush. Important as a blocker (block bdfd = block opponent's equity) and as a semi-bluff qualifier (adds equity when called, enables barrel on flush-completing turns).
- **Action:** Draft directly to inbox/

### Polarized Range
- **Suggested ID:** `concept/polarized-range`
- **Referenced in:** 3bp-oop-pfr-strategy ("87% pot (polarized/protection)", "polarize strategy", "turn play polarize")
- **Core claim:** A range containing only strong value hands and bluffs, with no medium-strength hands. Used in later streets or with large sizing. Opponent cannot exploit because calling is wrong vs nuts and folding is wrong vs bluffs.
- **Action:** Draft directly to inbox/

### Range Bet
- **Suggested ID:** `concept/range-bet`
- **Referenced in:** 3bp-oop-pfr-strategy (×20+), three-layers ("range bet, range check per board texture")
- **Core claim:** Betting with 100% (or near-100%) of one's range at a small size. Appropriate when one player has a significant range advantage and the board connects well with their range. Contrast with split-sizing or check-heavy strategies.
- **Action:** Draft directly to inbox/

### Pot Odds
- **Suggested ID:** `concept/pot-odds`
- **Referenced in:** mtt-vs-cash ("Antes improve pot odds", "Pot odds have more impact than opponent range width", "better pot odds → defend wider")
- **Core claim:** The ratio of the current pot to the cost of a call. Determines the minimum equity required to call profitably. Central to all preflop defending decisions and postflop call/fold choices.
- **Action:** Draft directly to inbox/

### ICM (Independent Chip Model)
- **Suggested ID:** `concept/icm`
- **Referenced in:** mtt-vs-cash ("ICM tournament specific — affects both preflop and postflop decisions", appears in solver inputs list)
- **Core claim:** Tournament-specific equity model that values chips non-linearly based on payout structure. Changes optimal preflop and postflop decisions vs cash game. Makes folding better hands correct near money/final table bubbles.
- **Action:** Draft directly to inbox/

---

## DEPENDENCY NOTE

Before approving `inbox/_draft-fish-exploit-data-srp-ip-pfr-20260426-1430.md`:
→ **Re-create `concept/playing-vs-recreation` first** (lost concept #1 above).
→ The fish draft's `links_out` points to that note as its parent concept.

---

## Workflow to clear this list

1. For lost concepts (Group A): ask Claude — "please draft concept/playing-vs-recreation to inbox/" etc.
2. For new concepts (Groups B/C): ask Claude — "please draft concept/ripple-effect to inbox/" etc.
3. `/approve` each draft
4. `/link` to wire up references
5. `/graph` to verify orphan count drops
6. Check this file — mark `[x]` as each concept is approved
