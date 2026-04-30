# Linking Tasks — Orphan & Connection Work

> Generated: 2026-04-26 after /graph run.
> Last graph: 6 notes · 5 edges · 2 orphans.

---

## Orphan Notes (0 inbound links)

These notes have no other wiki notes pointing to them yet.
The goal is to add backlinks by either:
- Mentioning them in related notes (via /link or manual edit + /approve)
- Running /discuss to surface natural connection points

### 1. `concept/mtt-vs-cash-poker-is-poker`
**Title:** MTT vs Cash — Poker Is Poker (Wakko)

**Why it's isolated:** Newly approved 2026-04-26. Covers ingredient-based strategy derivation. No existing note references it yet.

**Likely connection points:**
- `concept/poker-strategy-framework` — both are Wakko framework notes; mtt-vs-cash is a direct extension of WHY strategy differs by format
- `concept/three-layers-poker-strategy` — ingredient thinking (WHY mindset) supports Layer 2 (Offensive Adjustment) logic
- `concept/poker-study-methodology` — the "cook ingredients into strategy" analogy maps to the study-first approach

**To-do:**
- [ ] Run `/discuss mtt-vs-cash-poker-is-poker` to identify connection language
- [ ] Add a reference in `concept/poker-strategy-framework` body pointing to mtt-vs-cash as the "ingredient derivation" expansion
- [ ] Add a reference in `concept/three-layers-poker-strategy` where WHY mindset is discussed
- [ ] Run `/link` after edits → /approve any changes

---

### 2. `concept/3bp-bu-vs-sb-t-high-exploit`
**Title:** 3BP BU vs SB — T-High Flop Exploit Strategy

**Why it's isolated:** Approved 2026-04-26. It links OUT to 3 notes but nothing links back IN to it.

**Likely connection points:**
- `concept/3bp-oop-pfr-strategy` — this is the SB playbook that BU-vs-SB directly exploits; the existing note should reference the exploit note as a "how IP responds" companion
- `concept/poker-study-methodology` — the exploit note exemplifies Layer 2 population-read application

**To-do:**
- [ ] Add a reference in `concept/3bp-oop-pfr-strategy` body: "See [[concept/3bp-bu-vs-sb-t-high-exploit]] for how IP exploits population deviations from this baseline."
- [ ] Optionally add a reference in `concept/three-layers-poker-strategy` Layer 2 section pointing to this as a worked example
- [ ] Run `/approve` on any edits, then `/link` + `/graph`

---

## Other Pending Link Work

### Under-linked notes (1 inbound only)
These are connected but thin — worth enriching:

| Note | Inbound | Gap |
|------|---------|-----|
| `concept/poker-strategy-framework` | 1 | Only three-layers links to it; mtt-vs-cash and study-methodology should reference it |
| `concept/three-layers-poker-strategy` | 1 | Only BU-vs-SB links to it; study-methodology and mtt-vs-cash should reference it |
| `concept/poker-study-methodology` | 1 | Only BU-vs-SB links to it; other Wakko notes should reference it |

### Notes with no outbound links
| Note | Links Out | Action Needed |
|------|-----------|---------------|
| `concept/poker-strategy-framework` | 0 | Add forward link to three-layers (its direct continuation) |
| `concept/3bp-oop-pfr-strategy` | 0 | Add forward link to BU-vs-SB exploit note |
| `concept/mtt-vs-cash-poker-is-poker` | 0 | Add links to poker-strategy-framework and poker-study-methodology |

---

## Workflow to Resolve

1. Edit the wiki notes listed above (add body references)
2. Run `/approve` for each edited note (any wiki/ edit requires approve)
3. Run `/link` to catch any bare mentions created by the edits
4. Run `/graph` to verify orphan count drops to 0
