# Lineage & Influences

How this framework relates to established engineering-strategy, risk, and
analysis methodologies. Almost every component has a well-known parent;
knowing the lineage tells you what to credit, what to borrow more of, and
where the framework genuinely departs.

---

## Component-by-component lineage

| Component here | Closest established method | What this framework adds / changes |
|---|---|---|
| Decision Template (Decision, Alternatives, Trade-offs, Exit, Review date) | **ADR** — Architecture Decision Records (Michael Nygard) | Enriched with **Falsifier**, **Exit strategy**, and **ROI** — from "record the decision" to "make it revisitable and killable" |
| Quality Attributes table | **ATAM** + Quality Attribute Workshops (SEI/CMU) | ATAM's attribute taxonomy, minus the scenario-tree workshop machinery — a checklist, not a multi-day session |
| Cost / ROI fields | **CBAM** — Cost-Benefit Analysis Method (SEI) | Same intent (economics of architecture decisions), but qualitative rather than CBAM's full utility math |
| Risk Register ranked by impact × probability × detectability × cost-of-failure | **FMEA** — Failure Mode & Effects Analysis (RPN = severity × occurrence × detectability) | Faithful to FMEA's three axes **including detectability**, plus a fourth (cost of failure); stated, not scored |
| "Most likely reason this fails in a year" | **Pre-mortem** (Gary Klein) | Embedded verbatim as a cognitive trap |
| Red-team your own conclusion | **Devil's advocacy / red teaming**; **ACH** — Analysis of Competing Hypotheses (Richards Heuer) | Structured self-refutation as a mandatory pre-finalize gate |
| Optionality; delay irreversible decisions | **Real options theory**; **one-way vs. two-way doors** (Bezos); **Wardley Mapping** | States the principle; Wardley gives it a visual position this framework does not |
| Evolution (1yr/3yr); Build / Buy / Wait / Kill | **Wardley Mapping** (evolution axis + build/buy/outsource) | Same strategic moves, expressed as prose instead of a map |
| Smallest useful experiment; measure before scaling | **Lean Startup** (Eric Ries); hypothesis-driven development | Applied to engineering risk, not only product-market risk |
| Sequence investments | **WSJF / Cost of Delay** (Reinertsen, SAFe); RICE / ICE | Forces *ordering* but does not score it — lighter, less defensible to finance |
| Create owners, not dependencies | **Team Topologies** (Skelton & Pais); Conway's Law | A one-line nod to a whole org-design discipline |
| Report Structure (executive summary first) | **Minto Pyramid Principle** (Barbara Minto, McKinsey) | Standard consulting deliverable shape |
| Risk Register + Assumptions + Missing Information | **RAID log** (Risks / Assumptions / Issues / Dependencies) | This version **prunes**; RAID logs notoriously just accumulate |
| Find root cause; treat symptoms as evidence | **Five Whys / RCA**; first-principles reasoning | Standard root-cause discipline |
| Claim-provenance tags `[observed]`/`[web]`/`[user]`/`[inferred]`/`[assumed]` | **Intelligence-analysis tradecraft** — Heuer's structured analytic techniques; calibrated-confidence language (IPCC, intelligence "confidence levels") | The freshest import: epistemic hygiene from *analysis*, which architecture/strategy methods lack |
| Operating Contract (evidence gate, tagging, rank-then-cut, red-team, ask/search) | *(no direct software-methodology parallel)* | A new artifact category: structured-analysis methodology compiled into an **AI-agent execution contract** |
| Visualizations — risk heat map, roadmap timeline, dependency DAG | **Risk matrix / PPM bubble charts**; **Gantt / roadmap**; **dependency graphs** | Markdown-native (Mermaid + Unicode), kept strictly ordinal to avoid false precision |
| Evidence-provenance bar | *(no parent — enabled only by the claim tags)* | A report-wide trust meter no other listed method can render |
| Debt Ledger (event risk vs recurring drag; four typed debts) | **Technical debt** (Cunningham, OOPSLA '92); **organizational debt** (Blank 2015; Dignan 2016); academic TD taxonomies (Li et al. 2015 — 10 types; Rios et al. 2018 — 15 types incl. process/people); **social debt** (Tamburri et al. 2013); **dark debt** (SNAFUcatchers STELLA 2017) | Separates *event risk* (might happen) from *recurring drag* (probability 1.0, low detectability), ranks drag by cost-per-cycle × remaining cycles, and prunes — the parent taxonomies enumerate; none route or rank |
| "Credit produced" + confirmed-only-by-reuse rule | **Technical credit** (Berenbach 2014; Gorton, CACM); **technical wealth** (Whelan via Goulet, 2016); **tech capital** (Ben-Yosef 2025); **compound engineering** (Klaassen, Every 2025) | Adds the forcing function the parents lack: credit must name its **first expected reuse** and carries a reclassification date — unreused credit is re-booked as an expensive experiment |
| Phase 6 Loop 2 — Improve the machine | **Kaizen** (Imai 1986); **hansei** (Liker 2004, Principle 14); **Improvement/Coaching Kata** (Rother 2009); **double-loop learning** (Argyris & Schön 1974/1978); **PDSA** (Shewhart/Deming); Deming's Point 5 | The double-loop retrospective compiled into a mandatory gate: name the friction removed from the delivery system, reclassify credit by actual reuse, account for ledger movement |
| Compounding thesis (Core Philosophy) | **Flywheel** (Collins 2001); **1% better** (Clear 2018); Ward's LPPD learning-speed claim; **compound engineering** (Klaassen/Every 2025) | Lifted from the code/agent level to the strategy level: what compounds is decision quality and removed friction across delivery cycles, not code output |
| Agent-harness entries in the "Improve the Delivery Machine" catalog | **Harness engineering** (Ryan Lopopolo, v1.0.0 Jul 2026, CC BY 4.0): "the practice of improving agent output by shaping the environment around it," holding model and agent constant and improving "the two external levers—context and tools" | Imported as one catalog family among nine; this framework adds the routing (missing item = Debt Ledger drag) and the agent-era re-pricing rule. v0.5 elevates it to **first among the easy wins** on a double-compounding argument: every agent-executed task flows through the harness, and the agent that would build every other machine improvement is itself governed by it — shortest payback in the catalog, and the lead item of the empty-inventory default. The 2026-08-08 import compiles the twelve theses in (via the companion `harness-engineering` skill, which keeps the digest and audit loop): repository audits delegate the harness assessment and route its three buckets into existing registers (already-works → Credit Ledger + Observed Strategy Inventory rows; easy wins → the Phase 4 fast lane; requires-effort → bets or Debt Ledger); thesis 9's earliest-durable-owner hierarchy becomes the enforcement ladder's fine rungs plus the retire-redundant-validators rule; thesis-derived capabilities (JIT context routing, legible tools, committed allowlist, proof at the user's boundary) expand the catalog entry; and the recurring-corrections question lands in Loop 2 |
| Policy Addressing / dual-addressability (Phase 5) | **Rules as Code**: NZ Better Rules (2018, "human and machine consumable rules"), OECD *Cracking the Code: Rulemaking for humans and machines* (Mohun & Roberts 2020 — co-drafted renderings, "isomorphism"); **NIST OSCAL** (machine formats "easily reformatted so humans can read"); **AGENTS.md/CLAUDE.md/llms.txt** practice (2024–25); Jyoti's "agentic constitution" (CIO.com 2026: "Humans are no longer the primary users of their own manuals") | Raises the pattern from rules/docs/SOPs to the strategy artifact, adds the governing-force claim (a strategy only humans can read no longer governs the work), the Accepted-by/Executed-by fields, and the delegation-drift rule (executor is not a stable property — partition by accountability) |
| Enforcement ladder (prose → harness → deterministic check) | **Policy as code** (OPA 2016; Sentinel; Chef InSpec's "human- and machine-readable language for specifying… policy requirements"); *SWE at Google* ch. 8 (automated enforcement = "a single, unchanging definition of the rule") + Beyoncé Rule; **fitness functions** (Ford/Parsons/Kua 2017); **BDD/Specification by Example** (North 2006; Adzic 2011) as the dual-audience proof-of-existence | Compiled into a per-policy field; the climb is motivated by observed agent behavior — in-context instruction compliance "degrades as context grows" (2025 practitioner reports) |
| Shadow policy (Loop 2 sweep) | **Larson's implicit strategy** ("there's *always* an engineering strategy, even if there's nothing written down"; "ask yourself where the strategy lives if you can't find it"); naming lineage: shadow IT → shadow AI (unsanctioned *agents*, CSA/CIO.com 2025–26) | The agent-era mutation: implicit strategy was unwritten but humanly-judged; shadow policy is written and machine-enforced yet unratified — and now `grep`-able. Distinct from "shadow AI": unsanctioned *rules the sanctioned agents follow* |
| Credit Ledger (assets view; projected / confirmed / written-off realization states) | Same parents as "Credit produced" (Berenbach 2014; Whelan/Goulet 2016; Ben-Yosef 2025); the balance-sheet framing completes the accounting metaphor technical *debt* started (Cunningham '92) — debt without an assets column | Aggregates the per-bet credit fields into one report artifact (v0.5); adds realization states with mandatory review dates and a realization rate, wired to Loop 2's reuse test — designed against the "wishlist of unrealized credit" failure mode |
| Estimation Discipline (agent-era two-regime rule; decision-latency sequencing) | *(no methodology parent found — derived from field data: 2026-07-23 coverage-roadmap fan-out, ~2–3 estimated agent-days executed in ~1 wall-clock hour)* | Delegable, parallelizable work estimated in agent wall-clock under fan-out — an order-of-magnitude correction, not a discount; judgment-gated work is *not* compressed (symmetric trap); when execution collapses, sequencing shifts from tasks to decisions (v0.5) |
| Observed Strategy Inventory (state: ratified / shadow / unwritten; altitude × stance columns) | **Larson's implicit strategy** ("there's always an engineering strategy, even if there's nothing written down"), **"strategy archaeology"** / "naming the implicit strategy", and **strategy altitude** — all verified verbatim against the primary text 2026-07-25, see the v0.5 imports table below | Compiled into a mandatory audit artifact with evidence-tagged rows; the three states route to existing machinery (shadow → Loop 2 sweep, load-bearing unwritten → knowledge debt); prescriptive-requires-an-address ties stance to the enforcement ladder; stance mismatch (prescriptive on paper, permissive in practice) becomes a drag detector; new bets must name any strategy-in-force they contradict |
| Altitude × permissive–prescriptive axes | **Larson's strategy altitude**: "how permissive a given strategy is and where it's implemented"; cost model "Permissive strategies are less expensive than prescriptive strategies, because they require little-to-no enforcement"; formula "reduce altitude or increase permisiveness" [sic]; escape hatches with graduated override authority (Navigator vs CTO escalation) | Kept strictly ordinal (company/org/team; permissive↔prescriptive), consistent with the no-false-precision rule; Larson's cost model becomes two forcing functions — the acceptance-theater check on prescriptive rows, and "reduce altitude or increase permissiveness" as the prescribed fix when strategy isn't sticking |
| WIP Graph (`graph.cypher` + `nodes/*.md`; append-only MERGE/SET; frontier resume; scoped invalidation) | **openCypher** (opencypher.org; ISO GQL) as the runtime-neutral serialization; **event sourcing** (append-only log as source of truth, replay rebuilds state); **Zettelkasten**/knowledge-graph note systems (one idea per node, typed links, prose lives in the note); the claim→source topology mirrors intelligence-analysis link charts — same tradecraft family as the provenance tags; in-house prior art: the published-report pipeline's typed item codes (R/D/S/RC/B, stable anchors, withdrawn ids keep their gap) and JSON-LD claims emit (Solidus audit) — the graph adopts that vocabulary rather than minting a parallel one | Compiles them into an agent working-memory contract (v0.6, field-derived: the 2026-07 market-audit "rev 2, verified" blanket re-verification and the Larson-sweep raw data dying in `/tmp`): topology-in-Cypher / prose-in-Markdown split; runtime optional and user-chosen (commit to the format, not the engine); session resume = frontier query, not report re-read; corrections become `DISPUTES` edges that scope re-verification to the `DERIVED_FROM` subtree; settledness enforced by the data model; end-of-increment append gate ("WIP not in the graph is lost" is the definition) |
| Empty-inventory default (harness engineering + standing kaizen + WIP reduction as opening bets) | Harness: Lopopolo (above). Kaizen: the Toyota/Deming line (below). WIP: **Little's Law** (Little 1961, queueing theory; Cycle Time = WIP / Throughput), **kanban WIP limits** (Anderson 2010 — attributed, book text not fetched), **Reinertsen 2009** ("In product development, our greatest waste is not unproductive engineers, but work products sitting idle in process queues" — verified via Goodreads quotes page), **DORA small batches** (dora.dev capability page, verified), and **Larson's own systems model** (lethain.com/limiting-wip/, cited by the book's appendix: WIP limit took 12 → 198 finished projects per 100 rounds — verified; the book itself applies limit-WIP to strategy development) | The composite appears original: when the inventory finds no deliberate strategy, these three open the betting because each pays back within a few cycles regardless of which product bets later prove right — they improve the machine every future cycle runs through |

---

## What is genuinely distinctive

1. **Claim-provenance tagging.** ADR, ATAM, and Wardley all silently
   trust their inputs. Tagging every claim by how it was established —
   and quarantining anything unverified in Missing Information — has its
   real cousins in intelligence analysis, not software architecture.
   Importing that into engineering strategy is the framework's most
   original move. Its visual form — the **evidence-provenance bar** — is a
   report-wide trust meter no other listed method can render, because none
   of them track provenance to begin with.

2. **The Operating Contract as an agent-execution spec.** Every parent
   method above was designed for humans in rooms. This framework is built
   to be *run by an LLM*, and its forcing functions target LLM failure
   modes specifically:
   - evidence gate + provenance tags → defend against **confident fabrication**
   - mandatory red-team → defend against **sycophancy**
   - rank-then-cut → defend against **over-generation / false completeness**

3. **The credit/debt forcing functions (v0.3).** The components have
   parents (see the compounding lineage below), but three moves appear
   to be original as *executable rules*: (a) engineering credit is
   confirmed **only by reuse** — every credit claim names its first
   expected beneficiary and carries a reclassification date; (b) risk
   vs. recurring drag are **routed to different artifacts** and ranked
   by different formulas; (c) the double-loop retrospective is a
   **mandatory gate**, not a suggestion — a cycle must account for what
   it did to the delivery machine, not only to the product.

4. **Dual-addressability (v0.4).** Every ingredient has verified prior
   art one level down (Rules as Code for legislation, OSCAL for
   controls, AGENTS.md/CLAUDE.md for repos, Jyoti's agentic
   constitution for SOPs — see the table above), but the composite was
   not found stated anywhere (searched 2026-07-23): **the strategy
   artifact itself is dual-audience — accepted by humans, executed by
   agents — and a strategy only humans can read no longer governs the
   work.** Larson approached it three times (AI Companion, AGENTS.md
   at Imprint, compound-engineering review) without crossing into it.
   The executable rules: Accepted-by/Executed-by on every policy ("a
   policy with no address is a wish"), the enforcement ladder, the
   delegation-drift rule (executor is not a stable property), and the
   two-way Loop 2 sweep (acceptance theater / shadow policy).

---

## Continuous-improvement & compounding lineage (v0.3 extension)

The v0.3 additions — the compounding thesis in Core Philosophy, the
Debt Ledger, "Credit produced" in the Decision Template, and Phase 6's
two loops — stand on the Toyota/Deming continuous-improvement tradition
and the technical-credit literature. Every claim below was verified
against primary sources (per the Operating Contract's prior-art rule);
⚠ marks widely-circulated quotes that turned out apocryphal or
misattributed during verification.

### The improvement tradition (Loop 2's ancestry)

| Source | Verified claim |
|---|---|
| Masaaki Imai, *Kaizen* (1986) | Kaizen is "continuing improvement involving everyone – managers and workers alike"; "Kaizen generates process-oriented thinking, since processes must be improved before we get improved results" |
| Taiichi Ohno, *Toyota Production System* (1978 jp / 1988 en) | "The basis of the Toyota production system is the absolute elimination of waste." ⚠ "Without standards, there can be no kaizen" is **attributed, not sourced** — it appears nowhere in Ohno's books |
| Shewhart (1939) / Deming | The learning cycle is Shewhart's; Deming taught **PDSA** and rejected the popular label — "Be sure to call it PDSA, not the corruption PDCA" (letter to Moen, 1990). ⚠ "Deming's PDCA" is a double misattribution |
| Deming, *Out of the Crisis* (MIT, 1986) | Point 5: "Improve constantly and forever the system of production and service"; "94% belongs to the system (responsibility of management)" (p. 315 — his stated *estimate*, not a measured statistic) |
| Spear & Bowen, "Decoding the DNA of the Toyota Production System", HBR (1999) | TPS "creates a community of scientists"; Rule 4: any improvement "in accordance with the scientific method, under the guidance of a teacher, at the lowest possible level" |
| Liker, *The Toyota Way* (2004) | Principle 14: "Become a Learning Organization Through Relentless Reflection (Hansei) and Continuous Improvement (Kaizen)" |
| Rother, *Toyota Kata* (2009) | Advantage lies "not so much in the solutions themselves… but in the ability of the organization to understand conditions and create fitting, smart solutions"; Improvement Kata + Coaching Kata ("improving the improver" is our paraphrase, not his term) |
| Argyris & Schön (*Theory in Practice*, Jossey-Bass 1974; *Organizational Learning*, Addison-Wesley 1978; Argyris, HBR 1977) | Single-loop = the thermostat correcting within its setting; double-loop = "questioning the underlying policies and goals." **Phase 6's Loop 1/Loop 2 is exactly this distinction**, applied to delivery |
| Ward & Sobek, *Lean Product and Process Development* (2nd ed.) | "If you learn 20% faster than your competitors, 30 projects later you will be 60% ahead"; "usable knowledge is the basic value created during development." ⚠ "Every project should start ahead of the previous one" is apocryphal; "front-loading" is Thomke & Fujimoto (2000) / Morgan & Liker (2006), not Ward |
| Collins, *Good to Great* (2001) | "Good to great comes about by a cumulative process—step by step, action by action, decision by decision, turn by turn of the flywheel—that adds up to sustained and spectacular results" |
| Clear, *Atomic Habits* (2018) | 1% better daily → 1.01^365 = 37.78× in a year (his own boxed math, ch. 1) |
| Meadows, "Leverage Points" (1999) | Places in a system "where a small shift in one thing can produce big changes in everything"; the self-organization leverage point is the theoretical warrant for improving the machine, not the output |
| Lopopolo, *Harness Engineering* (github.com/lopopolo/harness-engineering, 2026) | "Because work is an iterative game, a harness can make organizational judgment cumulative. Lessons from accepted work, corrections, failures, and user responses become context, boundaries, tools, examples, and checks that shape later trajectories" — the agent-era instance of Loop 2, where the repository itself is the machine being improved |

### The credit/debt line (Debt Ledger & "Credit produced" ancestry)

| Term | Status | Nearest prior art |
|---|---|---|
| Technical debt | Taken — the root | Cunningham, OOPSLA '92: "Shipping first time code is like going into debt… Every minute spent on not-quite-right code counts as interest." His 2009 clarification: debt = shipping to learn, repaid by refactoring — "never in favor of writing code poorly" |
| Engineering credit | **Free — defined here** | Technical credit (Berenbach, Procedia CS 2014: investment "over and above the minimum necessary effort, in anticipation of emergent properties paying dividends"; revived by Gorton, CACM); technical wealth (coined by Declan Whelan, popularized by Andrea Goulet, First Round Review 2016); tech capital (Ben-Yosef, Refactoring.fm 2025) |
| Compound engineering | Taken — cite | Klaassen, Every (Aug 2025; canonical definition Feb 2026): "each unit of engineering work should make subsequent units easier—not harder." Compounds the **AI-agent dev loop** (tools, prompts, learnings); this framework compounds **strategy decisions across delivery cycles** and adds the reuse falsifier |
| Organizational debt | Taken — cite | Blank (2015): "all the people/culture compromises made to 'just get it done'"; generalized by Dignan (2016): "the interest companies pay when their structure and policies stay fixed and/or accumulate as the world changes" |
| Strategic debt | Open — defined here | Nearest: Parang (2024), accumulates "not in our code, but in our business trajectory" |
| Knowledge debt | Open — defined here | Rachum (2016) uses it for an *individual's* deliberately deferred learning — a different sense; nearest academic concept is documentation debt |
| Decision debt | Open | Folk term; no coiner found |
| Dark debt | Taken — cite | SNAFUcatchers STELLA report (2017), popularized by Allspaw: "not recognizable at the time of creation… generate[s] anomalies" — the pure low-detectability case, kin to this framework's detectability axis |
| Academic taxonomies | — | Li, Avgeriou & Liang (JSS 2015): 10 TD types; Rios et al. (IST 2018): 15 types incl. **process** and **people** debt; social debt (Tamburri et al., CHASE 2013); process debt formalized by Martini et al. (2020/2025) |

---

## Closest sibling framework — Will Larson's *Crafting Engineering Strategy* (2025)

The table above maps individual *components* to their parents. Larson's book
is different in kind: it is the closest **whole-framework sibling** — a
general-audience engineering-strategy method published the same year, by the
CTO of Carta.

- **Structure:** adapts Rumelt's *diagnosis → guiding policy → coherent
  actions* into a five-step method — his one-line enumeration is
  "**explore, diagnose, refine (map & model), policy, and operation**"
  (chapter titles: Exploring, Diagnosis, Refinement, Setting policy,
  Operations) — with **Wardley mapping and systems modeling as
  first-class tools** (in *refine*), real case studies (Uber, Stripe, Calm),
  and an LLM-adoption case study.
- **On compounding (verified against the full book text):** the book
  contains **no** compounding/flywheel thesis. The only substantive
  "compounding" passage *retracts* the criterion from his earlier
  executive book — "Create Leverage: create compounding or
  multiplicative impact … probably doesn't make as much sense here …
  what's important isn't necessarily creating leverage, but that a
  policy solves for part of the diagnosis." Kaizen, PDCA/PDSA, and
  Toyota appear nowhere in it; his stated lineage is Rumelt + Wardley +
  Meadows. This framework's compounding extension grew in precisely
  that gap. (Larson covers Every's "compound engineering" on his blog,
  Jan 2026, as an external idea — not part of his method.)
- **On AI:** ships an **"AI Companion"** — an LLM-optimized copy of the text
  plus guidance for a *human* to co-pilot with an LLM (query the book,
  co-write, review, generate systems models / Wardley maps).
- **Overlap:** the Rumelt spine, root-cause diagnosis, trade-offs,
  decisions-over-documentation, iteration.
- **Where this framework departs — the *medium*, not the message:** Larson
  teaches a *human* to do strategy (and to prompt an LLM as an assistant);
  this framework is an **operating contract an agent executes**, with
  **claim-provenance tagging** and anti-LLM-failure forcing functions
  Larson's book does not formalize. Larson is the textbook; this is the
  runnable harness.
- **What to keep importing from Larson:** the **set-policy / operate**
  half of the lifecycle — the area where this framework is thinnest (it
  is diagnosis- and prioritisation-heavy). His **strategy altitude**
  (with the permissive–prescriptive stance) and the
  **implicit-strategy / strategy archaeology** material were imported
  in v0.5 as the Observed Strategy Inventory — see the verified quotes
  below. His **exploration** step was imported 2026-07-28 as Phase 1 —
  Explore, and the **diagnosis** residue 2026-07-29 as Phase 2's
  opening rules (see the quote tables below). His **refinement** step —
  strategy testing, systems modeling, Wardley mapping — was imported
  2026-08-04 as Phase 4's Strategy Refinement gate and Refinement
  Toolkit, in minimum ordinal form: the testing loop compiled as
  forcing functions, stocks-and-flows at sketch grade (with a
  weakest-input-tag rule this framework adds — the book runs numeric
  simulations), and the Wardley evolution axis as four buckets wired
  into Build/Buy/Wait/Kill, full maps optional and text-DSL only
  (OnlineWardleyMaps — the DSL his own AI Companion lands on after
  direct image generation fails). Deliberately not imported:
  sponsor/guide roles and the weekly-meeting mechanics
  (human-workshop ergonomics; the accountability split is already
  covered by dual-addressability), and Wardley's doctrine/gameplay
  (excluded by Larson himself as business-strategy specialized).

Naming Larson explicitly is itself the evidence gate applied to prior art:
characterize a rival method against the primary source, not from memory.

### Larson imports — verified concept map

Five import batches, each verified verbatim against the primary text
before landing (v0.5 altitude/implicit-strategy 2026-07-25;
exploration 2026-07-28; diagnosis 2026-07-29; refinement 2026-08-04;
policy & operations 2026-08-06, read from the 2026-07-25 mirrors
inside the sweep graph's 180-day staleness window).
Full verbatim quotes, the mirrors they were checked against, and the
verification records live in the **private Larson-sweep WIP graph**
(claims c01–c82, `res-*-verify.json`) — LINEAGE keeps the concept map
and a dozen short anchors, not the roster (roster compacted
2026-08-04 `[user]`: the graph is the canonical verbatim store).

**v0.5 → Observed Strategy Inventory** (/is-useful/,
/who-does-strategy/, /when-write-strategy/, /policy/,
/getting-better/):

- Implicit strategy: "there's always an engineering strategy, even if
  there's nothing written down" (/is-useful/) — and if you can't find
  one, ask where it lives.
- "Strategy archaeology" — naming the implicit strategy needs no
  mandate: "you're just describing what's already happening"
  (/who-does-strategy/).
- Strategy altitude: permissiveness × where it's implemented; the
  cost model (permissive cheaper than prescriptive, low altitude
  cheaper than high); escape hatches per strategy; and the formula —
  "the formula to increase strategy volume, is to either reduce
  altitude or increase permisiveness. Or both."
  ("permisiveness" sic, /when-write-strategy/).
- WIP limits on strategy work itself: develop one or two strategies
  at a time (/when-write-strategy/). The delivery-WIP lineage
  (kanban, Little's Law, Reinertsen, DORA) is external prior art —
  the book does not cite it.

**Exploration → Phase 1** (/explore/):

- Search the problem and solution spaces before committing: "you'll
  inadvertently frame yourself into whatever approach you focus on
  first."
- Stopping criterion: ~3 internal + ~3 external precedents with the
  thinking behind them (his human-wall-clock timebox re-priced here:
  suspicion attaches to breadth, not hours).
- The judgment quarantine; the mind-change completion test; internal
  decision precedent as a strategy form; practitioner-only topics
  (security, compliance, true scale).

**Diagnosis → Phase 2** (/diagnosis/; Larson anchors the chapter in
Rumelt's *The Crux*):

- Stakes: "It's very challenging to fail with a proper diagnosis, and
  almost impossible to succeed without one."
- The evidence web — a diagnosis hard to argue against is "a web of
  interconnected observations, facts, and data" (already native here
  via the claim tags).
- Priors on their own sheet; the disagreeing perspective represented,
  not agreed; directional correctness first; data speaks louder than
  the verdict; politics without omission; blockers as diagnosis rows;
  self-implication.

**Refinement → Phase 4** (/refine/, /strategy-testing/,
/systems-modeling/, /wardley-mapping/, AI Companion):

- The waterfall-strategy trap: "prematurely applying pressure to a
  strategy's rollout prevents evaluating whether the strategy is
  effective"; and "essentially all failing strategies skip the
  testing phase to move directly into implementation."
- The testing loop: narrowest-deepest slice, impact-not-adoption
  metrics, friction-first attribution (refuted vs resisted), the
  learning-rate signal; mandate is what lets refinement be skipped;
  skeptics are right but often out-of-date.
- Stance wiring: a cheap permissive strategy is itself "a test of
  whether it's effective to implement a similar, but less permissive,
  strategy in the future" (/strategy-testing/).
- Systems modeling at sketch grade: "When your model and reality
  conflict, reality is always right"; models are an input, never a
  sole backer; a model's scope is its author's frame. The
  **weakest-input-tag rule** for model outputs is this framework's
  addition, not Larson's — his models run numeric simulations with
  estimated rates.
- Wardley: the evolution axis (genesis → custom → product →
  commodity) as ordinal buckets; the static-ecosystem failure mode;
  doctrine/gameplay excluded by Larson himself as business-strategy
  specialized; maps serialized as text DSLs (OnlineWardleyMaps — the
  DSL his own AI Companion lands on after direct image generation
  fails). Anti-patterns imported as Cognitive Traps: manufactured
  consent, side-goal refinement.

**Policy & operations → Phase 5 + Report Structure** (/policy/,
/operations/, /readable-strategy/; the v0.7 batch that completes his
five-step lifecycle):

- Policy defined: "Policy is interpreting your diagnosis into a
  concrete plan" — a subset of strategy, meaningless without its
  diagnosis; "Any strategy without a policy is useless, but you'll
  also find policies without context aren't worth much either."
- The coverage rule: "An effective policy solves the entirety of the
  strategy's diagnosis"; "Explicitly match each policy to one or more
  diagnoses that it addresses. Continue adding policies until every
  diagnoses is covered" (sic).
- Four kinds — approvals ("define the process for making a recurring
  decision"), allocations ("the most concrete statement of
  organizational priority"), direction, guidance. Backtesting
  "particularly effective if you maintain a decision log"; competing
  policy bundles reframed as "exposing gaps in your diagnosis";
  unfundable policy "bad policy, even if it would work in an
  alternate universe"; a missing peer strategy goes into the
  diagnosis. Criteria: applicable + enforced, with leverage demoted —
  "what's important isn't necessarily creating leverage, but that a
  policy solves for part of the diagnosis."
- Operations: "Operations are how a policy is implemented and
  reinforced. Effective operations ensure that your policies actually
  accomplish something." Mechanism taxonomy (nudges "the most
  effective operational mechanism"; inspection whose bar is "it
  cannot silently fail"; forums with a concrete address; automation;
  deferment; documentation at "informational herd immunity";
  meetings "almost always the most expensive mechanism"), the
  six-criterion rubric (measurability, adoption cost, user/provider
  burden, reliance on authority, cultural fit), pooling ("How might
  these mechanisms be pooled together to avoid redundancy?"), and the
  non-executive translation: "there's always a related mechanism that
  can be implemented with less authority."
- The inverted report (/readable-strategy/): reading order Policy →
  Operation → Refine → Diagnose → Explore; "The vast majority of
  strategy readers want the answer, not to understand the thinking
  behind the answer"; the transient-alignment guard (omit the
  diagnosis and new readers conclude "the previous engineers here
  were just dumb"); his LLM-adoption refactor "discards the Operation
  section entirely, and includes the relevant details with the
  policies they apply to" — the primary-source license for
  operations-as-policy-fields; the ask-here metadata field ("a clear,
  durable place to ask questions is the most important"); the
  fresh-eyes reader. Field driver `[user]` 2026-08-06: two
  independent readers (a CTO friend; a Solidus-community reader) both
  reported the v0.5-era published report TL;DR — the inversion's
  motivating evidence.
- This framework's own wiring, not the book's: PL as a register
  separate from the Observed Strategy Inventory with explicit
  reinforces/amends/replaces/fills-a-void relations (as-is vs to-be);
  policy-as-credit (uninvoked by review date = expensive experiment,
  Loop 2); acceptance reserved to the human running the skill; the
  agent-era mechanism translation (nudge = harness hook, inspection =
  scheduled sweep, automation = deterministic rung).
- Mandate nuances (/who-does-strategy/, same batch): "Mandates only
  matter if there are consequences. If an executive is unwilling to
  enforce consequences for non-compliance with a mandate, the ability
  to issue a mandate isn't meaningful. This is also true if they
  can't enforce a mandate because of lack of support from their peer
  executives." → the Phase 0 Mandate & Enforcement block (asked
  `[user]` at engagement start) and the Phase 5 enforcement ceiling.
  "Neither access nor mandates improve an executive's ability to
  diagnose problems. However, both often create the appearance of
  progress. This is why executive strategies can fail so
  spectacularly and endure so long despite failure." → the
  mandate-masking audit signature and Cognitive Trap. "Model,
  document, and share" (from *An Elegant Puzzle*, restated here) →
  the zero-authority mechanism. "If another part of your organization
  is already working on the same problem, do your best to work with
  them directly rather than generating competing work." → the
  join-don't-compete check. Left in LINEAGE as career advice, not
  compiled: don't-wait-for-promotion framing, the patience/emotional-
  need caution, the Karpman Drama Triangle aside; take-five-then-
  synthesize and the low-trust reframing were already imported (v0.5
  Observed Strategy Inventory; Phase 2 politics-without-omission).

Terminology note: in the altitude chapter Larson mostly spells the strict
pole "**proscriptive**" (4 occurrences; "prescriptive" appears exactly
once, in the cost-model sentence). This framework standardizes on
**prescriptive**. And a scope note: "batch size" appears nowhere in the
book; Little's Law, kanban, Reinertsen, Anderson's *Kanban* (2010), and
DORA/Accelerate are uncited by it (a different David Anderson — *The
Value Flywheel Effect* — is cited in its Wardley-mapping material) — the
delivery-WIP lineage above is external prior art, not book content.

---

## Honest gaps vs. the mature methods

- **Lightweight visualization only.** The Visualizations section adds
  Markdown-native charts (evidence-provenance bar, risk heat map, roadmap
  timeline, dependency DAG) — enough to give a report a shared picture.
  But these are simple derived ordinal charts, not rich models: the
  v0.6 refinement import adds the Wardley evolution axis as ordinal
  buckets and sketch-grade stocks-and-flows, but full-map positioning
  stays optional and there is still no C4 structural view or numeric
  simulation practice. It closes the gap for *reporting*; it does not
  make this a modeling discipline.
- **Deliberately un-quantified.** FMEA yields a number, CBAM yields
  dollars, WSJF/RICE yield scores. This framework names impact ×
  probability × detectability × cost but does not compute it — faster and
  avoids false precision, but weaker when comparing dozens of items or
  defending a call to finance.
- **Single-analyst, not multi-stakeholder.** ATAM/QAW are workshops that
  surface disagreement *between people*. The red-team here is
  self-red-team — it catches a lone analyst's blind spots less reliably
  than several humans who genuinely disagree.

---

## Bottom line

A well-synthesized, lightweight successor to ATAM/CBAM, with a RAID
discipline that actually prunes, pre-mortem + red-team baked in, and —
the distinctive part — intelligence-analysis-grade epistemic tagging
compiled into an AI-agent contract. Against the field's canonical 2025 text
(Larson's *Crafting Engineering Strategy*), its niche is the *medium*: the
runnable, agent-executed sibling to a human-taught method. Being derivative
is not a criticism:
every parent method is battle-tested, and combining them into something
an agent can execute correctly in one sitting is a legitimate
contribution. The v0.3 compounding extension follows the same pattern:
it stands on the Toyota/Deming continuous-improvement tradition and the
technical-credit literature, and its own contributions are the
executable rules — credit confirmed only by named reuse, risk routed
apart from recurring drag, and the double-loop retrospective as a
mandatory gate. If writing it up publicly, lead with the three
distinctive claims (epistemic tagging + agent operationalization + the
credit/debt forcing functions) and cite the lineage for the rest — the
lineage makes the framework more credible, not less.
