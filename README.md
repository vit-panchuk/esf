# Engineering Strategy Framework (ESF)

An operating contract for engineering strategy: reduce risk, compound the
delivery machine, and maximize the probability that the right thing gets built
under uncertainty. It is a portable agent skill — plain Markdown, no build step
— so it runs in any harness that supports skill-style instructions.

Three composable modes. A **greenfield initiative** gets the full report
structure; an **existing-system audit** (of code, a team, a business, or a
career) leads with evidence and root causes; a **single decision** scales to the
reversibility and cost of one call. The discipline they share is the point:
gather evidence before reasoning, tag every claim with where it came from, rank
then cut, red-team your own conclusion, and publish what you could not
establish.

## Installation

### Skills CLI (any harness)

```bash
npx skills add vit-panchuk/esf --global --agent '*'
```

Omit `--global` for a project-local install a team can commit. Update with
`npx skills update esf --global`.

### Claude Code plugin

```
/plugin marketplace add vit-panchuk/esf
/plugin install esf@esf
```

### Copilot CLI

The repository is its own marketplace, the same way it is for Claude Code —
both read the same `.claude-plugin/marketplace.json`:

```bash
copilot plugin marketplace add vit-panchuk/esf
copilot plugin install esf@esf
```

(`copilot plugin install vit-panchuk/esf` also works today, but GitHub has
deprecated installing straight from a repository; only `plugin@marketplace`
will be supported in a future release.)

### Codex

```bash
codex plugin marketplace add vit-panchuk/esf
codex plugin add esf@esf
```

Codex keeps its catalog at `.agents/plugins/marketplace.json` rather than the
`.claude-plugin/marketplace.json` the other two read, so this repository ships
both. The plugin itself is the same package for all three — `plugin.json` at
the root, skills under `skills/`, per
[Agent Plugins 1.0](https://agent-plugins.org).

Start a new session after installing: bundled skills only become available in a
session opened afterwards. Invoke it by mentioning the skill
(`$engineering-strategy-framework`) or by describing the task and letting Codex
route to it.

Two other routes exist if that one does not fit. A workspace admin can import
this repository for everyone under **Admin → Plugins → Add → Import
marketplace** (public and private repositories, synced daily). And once the
plugin is listed in the shared ChatGPT/Codex directory, `/plugins` in a session
will find it without any marketplace being added.

### Manual

The runtime artifact is `SKILL.md`, so any harness can use it directly — clone
the repository wherever that harness looks for skills:

```bash
git clone https://github.com/vit-panchuk/esf.git ~/src/esf
ln -s ~/src/esf/skills/engineering-strategy-framework ~/.claude/skills/
```

Point any harness that takes a skills directory at `~/src/esf/skills`. For
claude.ai and the API, zip `skills/engineering-strategy-framework` and upload
it.

## What is in here

The plugin carries one skill, at `skills/engineering-strategy-framework/`:

| File | What it is |
|---|---|
| `SKILL.md` | The contract itself, and the source of truth. Everything else serves it. |
| `HARNESS-ENGINEERING.md` | The repository-side playbook: auditing the machine a team and its agents work in, and routing the findings into the registers. |
| `DSL.md` | The typed vocabulary the report pipeline compiles a report into — constructs, graph, channels. Implemented by the [`esf-dsl`](https://github.com/vit-panchuk/esf-dsl) package. |
| `LINEAGE.md` | Prior art, component by component: what to credit, what to borrow more of, and where this framework genuinely departs. |
| `examples/` | Complete worked reports, carried inside the skill so a harness running it can open one mid-engagement — see below. |

`plugin.json` at the root is the [Agent Plugins 1.0](https://agent-plugins.org)
manifest that Codex and Copilot CLI read; `.claude-plugin/` holds the Claude
Code manifests. All three discover the skill from `skills/`.

## Worked examples

- **`oss-audit-solidus.md`** — an existing-system audit run from outside, on a
  public open-source project, unanonymised because all of it is public. Twenty-
  eight revisions under adversarial review, a 43-entry decision log, and the
  policy layer compiled from a zero-mandate position. Its authoring source
  (`.mdx`) and its WIP graph (`.graph.cypher`) ship beside it.
- **`client-audit-saas-erp.md`** — the same mode from the inside: a private
  client, anonymised for publication, where the evidence base is a 27-month chat
  export because the project keeps no tracker. Carries a risk recorded as fired
  between revisions. Authoring source ships beside it.
- **`greenfield-telemetry-portal.md`** — a greenfield initiative, fully
  synthetic. The decisive reframe is that the "greenfield" is the producer side
  of an integration contract already running in production.

## Version history

- **0.7.0** — the policy layer: a Policy register with operations as fields, the
  policies-first report opening in place of an executive summary, the Easy Wins
  fast lane, the Watchlist, and refinement fields on the top bets.

## License

MIT. See [LICENSE](LICENSE).
