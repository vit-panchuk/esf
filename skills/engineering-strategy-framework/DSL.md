# The ESF DSL

> What began as a component library for publishing one report grew a
> grammar, a semantic analyzer, an intermediate representation and
> multiple compile targets. This document names the language that
> emerged, so it can be finished deliberately instead of accreting.
> The implementation is the **`esf-dsl` package**
> ([npm](https://www.npmjs.com/package/esf-dsl) ·
> [source](https://github.com/vit-panchuk/esf-dsl)); the framework it
> encodes is [SKILL.md](SKILL.md); the graph syntax's worked example is
> [examples/oss-audit-solidus.graph.cypher](examples/oss-audit-solidus.graph.cypher)
> — the Solidus engagement's real graph, sanitized for publication; its
> authoring-source counterpart is
> [examples/oss-audit-solidus.mdx](examples/oss-audit-solidus.mdx).

## Ask the language, do not trust this file

Every construct's props and per-channel promise live in the package's
dictionary, which its own test suite checks the renderers against. That
is the authority; the tables below are the framework's view of it.

```bash
esf dict                  # all 51, grouped
esf dict Risk             # props, and what it promises each channel
esf dict --json           # the whole language, for a program to read
```

Use it before authoring a construct you have not used recently. A list
written into a prompt is a list that goes stale silently; `esf dict`
cannot, because a construct that drifts from it fails the package's tests.

## One semantic model, three syntaxes

The DSL has a single semantic model — the framework's registers,
claims, and cross-references — expressed in three concrete syntaxes:

1. **MDX components** — the authoring surface. A human (or agent)
   writes `<Risk id="R3" falsifier="…">` in prose. The component props
   are the framework's mandatory fields made type-checked: you cannot
   author a risk without its falsifier slot existing, a pre-mortem
   without warning and mitigation, a decision-log entry without its
   supersession state.
2. **The WIP graph** — the working state and, in language terms, the
   AST. `graph.cypher` + `nodes/*.md` carry the same items under the
   same codes with the same properties (`R3`'s node carries
   `happens/likelihood/notice/cost/falsifier` — the `<Risk>` props,
   verbatim). The rebuild test is the round-trip proof: a report can
   be regenerated from the graph alone and diffed against the source.
3. **The channels** — compile targets. web · pdf · md · jsonld are
   *renderings* (complete, derived, no authoring input); deck ·
   thread · social are *selections* (editorial, marked in the source).
   Every construct owes a rendering to all of them before authors may
   use it.

## The vocabulary

| Framework concept | MDX surface | Graph node | Mandatory semantics |
|---|---|---|---|
| Claim provenance (the five tags) | `<Chip kind>` after the sentence | `claim` node, `tag` property | counted, never authored; legend chips announced (`legend` / `<Table legend>`) |
| Evidence meter | `<Evidence />` | tag count over claim nodes | derived from chips in both syntaxes — one count, three renderings |
| Risk register entry | `<Risk id title flag happens likelihood notice cost falsifier>` | `risk` | the falsifier — a risk nothing could disprove is an opinion |
| Debt / Credit ledger entry | `<Debt kind>` / `<Credit status realized>` | `debt` / `credit` | debts typed (strategic/organizational/knowledge/technical); credits carry realization state |
| Root cause | `<Cause id title ensures>` | `root-cause` | `ensures` — the symptom class the mechanism guarantees |
| Pre-mortem entry | `<Mortem id warning mitigation note>` | `premortem` | warning and mitigation are not optional |
| Decision-log entry | `<Decision id status was>` | `decision` (standing/superseded/withdrawn) | superseded text preserved verbatim in `was`, struck not deleted |
| Strategy-in-force | `<Strategy id state health>` inside `<Strategies>` | `strategy` | `state` answers "written?", `health` answers "working?" — same two properties both syntaxes |
| Strategic bet | `<Bet id verdict cost>` + `addresses` slot, inside `<Bets>` | `bet` | the addresses slot is the rendered projection of the bet's `DERIVED_FROM` edges |
| Easy win (fast-lane entry) | `<EasyWin id feeds day status>` inside `<EasyWins>` | `easy-win` | `feeds` — the machine-catalog item the win maps to, the admission gate made visible; one line each, outside the cut; an ejected entry names the bet/debt it became |
| Assessed binary | `<Verdict value symbol>` — the register cells and comparison tables | not a node: the assessed property itself (`bet.verdict`, `strategy.state`/`health`, `easy-win.status`) | two hues and no amber — `part` is the qualified middle, including the qualified *no*; a register derives its cell from the entry, so authoring one there is the error; travels as `data-verdict`, the way a chip travels as `data-evidence` |
| Item-code cross-reference | `<Ref id href memo>` | an edge | codes are one namespace: graph id = report anchor = Ref target; numbering gaps are content |
| Marked beat | `<Finding deck thread>` | claim with deck/thread marks | selections are authored on the block, budget-checked at build |
| Role / open judgment call | prose + `Ref` | `option` | bets are scored against a named option, re-scored when the owner decides |
| Ranked unknown | §-final list | `question` (with `rank`) | an open question `BLOCKS` the finding its answer would move |
| Primary-data table / figure | `<Table>`, `<Figures>`, charts | `data` | the numbers survive as data in both syntaxes — a chart is its table |
| Uncertain datum | `assumed` on a `<Bars>` row, `<Cols>` column, `<Event>` or `<Share>` segment; `<Callout kind="unknown">` | the `tag` vocabulary at data granularity | the provenance scale applied to a data point instead of a sentence — announced on the datum, never inferred from its value; travels as `data-epistemic`, which is why the orange on a chart is a claim about the number and not decoration |
| Section map / report metadata | headings / frontmatter | `section` / `report` | id order = section order; rev, dates, framework version live as data |

## Grammar principles

- **Announced, never inferred.** Semantics are declared where they
  hold (`legend` on a chip or its table; `status` on a decision),
  never deduced from context. Every counting bug found so far lived
  where meaning was being inferred.
- **Counted, never authored.** Derived numbers (the evidence meter,
  the JSON-LD counts) are computed from the constructs by the
  analyzer, so they cannot drift from the text.
- **Content/treatment split.** Hues, glyphs, strikethroughs and hover
  memos are treatment and come from the construct; the words and the
  tags are content and survive into every channel. Authoring a ✓ or a
  tag by hand is the error the DSL exists to prevent.
- **Semantic state is an attribute, never a class.** State travels as
  `data-evidence`, `data-epistemic`, `data-status`, `data-verdict`,
  `data-tag`; classes are reserved for pure style variants. A machine
  reader depends on the attribute, and a state encoded twice is a state
  that will disagree with itself.
- **One namespace.** `R3` is the same address in prose, in the graph,
  in the page anchor, in the .md edition and in the JSON-LD `@id`.
  Withdrawn items keep their numbers; the gap is information.
- **The graph is the model; prose is a view.** Cross-references render
  edges; the JSON-LD registers are a projection of the graph; the
  evidence bar is a projection of the claims. When they disagree, the
  derived rendering is the bug.

## Building a deck

The deck is a **selection**: it publishes only what the source marks,
in document order, between a generated title slide and a generated
evidence-meter closer. A deck must explain the whole argument to
someone who never opened the report — and every slide invites them
back into it.

| Marked source | Slide |
|---|---|
| `<Finding deck="…" tag>` | finding slide — tag chip + headline; the body sentence becomes the speaker note when the mark is a rewrite |
| `<Finding deck="…">` (no tag) | statement slide — chipless; for the primer and closing beats |
| `Bars` / `Figures` / `AxisPlot` / `Horizon` / `Table` with `deck="…"` | exhibit slide — the construct re-rendered on the deck, headlined by the mark |
| `<Bets deck="…">` / `<Strategies deck="…">` / `<EasyWins deck="…">` | exhibit slide — rows flattened to a plain table |
| `deck="…"` on any one `<Risk>` / `<Debt>` / `<Credit>` | the **whole register** on one slide; mark the first entry |

- Budget: **14 words** per mark; **240 characters** for a thread mark.
  Overflow names the block and stops the run — a sentence cut at 240
  characters reads like a finished thought and is not one.
- Exhibit marks MUST be rewrites (`deck="…"`); an exhibit has no
  sentence of its own to reuse. A `<Finding>` may opt in bare when its
  sentence genuinely travels.
- `deckSplit={n}` breaks any long exhibit table: n rows per slide,
  headline and header row repeat, caption travels once.
- Flattened exhibit text keeps inline `<Ref>`s as their ids and strips
  chips and verdict glyphs — slide tables are plain data.

**The arc that works** (all in document order, so place marks
accordingly): a chipless primer statement (what the subject even is) →
history → the thesis finding → per-section "The <topic> in one line: …"
findings, each preceded by the exhibit that asserts it → the registers
(strategies, risks, debts, credits) → roles → bets → the cheap-moves
finding → a closing "don't take the deck's word for it" statement.

## Document structure

- `h2` numbered section, `h3` sub-section, `h4` register-entry name
  (never a level jump for style — `h4` *means* entry), `h5` mono
  eyebrow.
- An italic qualifier in an entry heading — `*(most likely)*` — belongs
  in the construct's `note` or flag prop when one exists.
- Bold run-in leads (`**Sentence.**`) are the report's rhythm; italic
  run-ins (`*Limit of this finding:*`) are meta-commentary.
- Write block constructs on their own lines. A JSX element written
  inline parses as a *text* element, which nests block markup inside a
  `<p>` on the web and flattens it in markdown.

## The implementation

`esf-dsl` is a plain TypeScript package — no framework, no build step
for the offline channels. What matters when reading it:

- `lib/dictionary.ts` — every construct, its props, and what it
  promises each channel. The renderers are checked against it, so a
  construct cannot be added to one channel and forgotten in the rest.
- `lib/doc.ts` — the semantic analyzer: parses the MDX **once** into an
  mdast tree, extracts claims/marks/headings, enforces the counting
  rules. Every channel derives from that one tree.
- `lib/html.ts` + `lib/render-html.ts` — the web channel; `construct(name,
  props, slots)` is the single entry point a host embeds.
- `lib/render-md.ts` + `lib/markdown.ts` — the markdown backend;
  registers rebuild as GFM tables, refs as links, treatment dropped,
  nothing lost silently.
- `lib/graph.ts` + `lib/jsonld.ts` — the graph backend: when an
  engagement keeps `graph.cypher`, the JSON-LD derives the registers
  and their edges from it, joined to the page by anchor `@id`s.

A consumer with its own component model wraps `construct()` rather than
reimplementing it; vit-panchuk.com does that in about forty lines, which
is the whole of its coupling to the language.

## The privacy boundary

The two syntaxes have different trust levels, and the compiler
enforces the difference. **The graph is working memory** and
legitimately records private topology — local checkout URIs, session
transcript identifiers, node-file paths. **Every public projection is
sanitized**: working-state properties (`file`, `recovered_from`) never
leave the build; a `uri` survives only when it is `https?://`, with
the node's public `mirror` standing in for a dropped local address;
any value that still names local topology drops its property; and a
final `assertPublic` gate fails the run if a new leak shape gets past
the sanitizer. Redaction is a compile step, not an authoring burden —
the working graph stays fully addressed.

This matters more here than it would in a website, because the thing
driving it is an agent with a transcript and a checkout.

## Extending the language

A new construct is a language change, not a component. It lands only
with all of: the framework rule it enforces (SKILL.md), a dictionary
entry stating what it promises each channel, an emitter, a story,
renderings in every channel it can appear in, a graph node type with
the same properties, and a test pinning its semantics. The package's
test suite fails until the dictionary and the renderers agree, so most
of that list is enforced rather than remembered.

**The admission test is the `md` promise**: a construct that owes a
rendering to the channels is document vocabulary and belongs to the
language; one that renders in no channel — a loading skeleton, a nav —
is application UI and belongs to the consumer. Anything the language
does not carry cannot travel, and a report that cannot travel
standalone is not a deliverable.

There is no companion "general prose" vocabulary. The implementation
carried one until 2026-08-04 and the split did not hold: reports draw
on every construct regardless of which half it was filed under, and the
essays on the same site — the supposed clients of the general half —
use exactly two constructs, both from the framework half.

## Known gaps (deliberate, tracked)

- Prose claims and graph claims are not yet joined: the page numbers
  claims positionally (`claim-1…`) while the graph names them
  (`c007`). Until the ids align, claim→register `SUPPORTS` edges stay
  out of the JSON-LD projection.
- The graph→MDX direction is manual: the rebuild test proves the
  round-trip by hand, but nothing generates prose scaffolding from
  the graph yet.
- Selections (deck/thread) exist in MDX only; the graph does not
  record marks.
- `<Claim>` renders but is not counted — the evidence meter reads
  `<Chip>` and only `<Chip>`, which is why `<Claim>` is held in reserve
  rather than offered to documents. `esf dict Claim` says so.
