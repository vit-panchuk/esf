# Harness Engineering

> The repository-side playbook for the harness assessment: how to audit
> the machine a team and its agents actually work in, and how the
> findings become rows in this framework's registers rather than a
> second, parallel report. Run it whenever an engagement's system is a
> repository. Self-contained — everything needed is here; the framework
> it serves is [SKILL.md](SKILL.md).
>
> Origin: Ryan Lopopolo's **harness-engineering** framework, compiled
> into this contract on 2026-08-08.

## Ground a contested finding in the source

This file is enough to run the audit. When a finding will be argued
with — a thesis a team disputes, a practice you are about to call debt
— fetch the original rather than paraphrase it from here:

```bash
# GitHub: lopopolo/harness-engineering — default branch `trunk`, not `main`
https://raw.githubusercontent.com/lopopolo/harness-engineering/trunk/<path>
# fall back to `gh api` if the raw fetch 404s
```

Key paths: `README.md`, `docs/README.md` (the twelve theses),
`playbooks/repository-review.md`, `playbooks/improve-harness.md`, and
`docs/<concept>/README.md` — most actionable: `just-in-time-context`,
`feedback`, `proof`, `continuous-maintenance`.

## The core thesis

Treat the model and the coding agent as **fixed**. Output improves
through the two external levers you actually control: **context** and
**tools**. Every thesis below pulls one of those two, and a harness
finding that pulls neither is not a harness finding.

## The twelve theses

1.  Hold the worker constant per adoption cycle.
2.  Surface the private process-data iceberg — the org knowledge that
    never entered training.
3.  Give one agent the whole job: decompose → execute → prove → close.
4.  Route context just-in-time: terse root map, nested guides, skills
    and runbooks; keep the active working set task-sized.
5.  Make tools legible and operable: discover → invoke → interpret →
    repair → verify.
6.  Make the repository teach the agent — executable constraints,
    canonical examples.
7.  Maximize autonomy inside explicit authority: pre-approve safe
    commands, gate consequential ones.
8.  Prove outcomes at the user's boundary, not just green unit tests.
9.  Turn recurring feedback into its **earliest durable owner** —
    prompt → doc/runbook/skill → reviewer → type/API →
    lint/test/policy → architecture. Remove downstream validators an
    upstream owner makes redundant.
10. Preserve coherence and own lifetime risk: dependency ownership,
    release identity.
11. Run settled maintenance as repository-owned loops, each with
    durable state, approval gates and a retirement condition. The five
    questions: what stays true · what signals departure · what proves
    restoration · what needs approval · what records the result.
12. Optimize outcomes per unit of **scarce human attention**, not per
    token and not per line.

## Phase 1 — survey the repository

Inventory, before judging anything:

-   `CLAUDE.md` / `AGENTS.md` at every level, not just the root.
-   `.claude/` — settings, hooks, skills, commands; and what is
    committed versus what sits in `settings.local.json`.
-   CI jobs: lint, types, security scans, test sharding, flaky
    handling, coverage.
-   One-command flows: `bin/setup`, `bin/dev`, `bin/ci`, Makefile.
-   Test infrastructure, factories, seeds.
-   Issue and PR templates; git hooks.
-   Dependabot/Renovate ecosystem coverage against the lockfiles
    actually present.
-   Purpose-built agent feedback tooling: failure diagnostics, browser
    evidence, anything that turns a broken run into a readable answer.

A parallel exploration agent per area works well here, and the
strategist synthesizes — the sweep is fan-out evidence-gathering, not
fan-out reasoning.

**The system includes its in-flight changes.** Report every finding
three-valued: merged · in an open branch · nowhere. A capability
sitting in an unmerged branch is neither present nor absent, and
booking it as either is the most common error in this phase.

## Phase 2 — classify into three buckets

Lead with the **standout asymmetry** — most repositories come out
lopsided, commonly a strong verification harness against a weak context
harness, and that sentence is worth more than the list beneath it.

-   **Already works** — map each strength to its thesis, so the reader
    sees what *not* to touch.
-   **Easy wins** — days, high leverage.
-   **Requires effort** — weeks, deliberate investment. Name them;
    do not start them.

Rank inside each bucket by leverage. **Report and stop** — do not fix
until asked.

The standing catalog below is a sweep list, and its entries name
**capabilities, not artefacts**: apply the absence-claim rule from the
Operating Contract before booking a gap, because the usual artefact
missing from its canonical place is not the capability missing.

-   Pipeline: CI on every push, one-command deploy, deploy previews,
    rollback.
-   Verification: a test suite to a meaningful bar, flaky-test
    quarantine, fast feedback through parallelization and caching.
-   Static gates: linters, formatters, type checking, security
    scanners, schema/API contract checks.
-   Dependency hygiene: automated update PRs across every ecosystem.
-   Context: a root map, nested guides, committed agent settings.

## Phase 3 — the easy wins, on request

Implement in this order; each step's leverage comes before its size.

1.  **Root map.** A terse `AGENTS.md`: what the repo is, the domain
    ontology in sixty seconds, a commands table, task routing to nested
    guides, proof expectations, universal conventions. Plus `CLAUDE.md`
    containing only `@AGENTS.md`. Follow the repo's existing naming if
    nested `AGENTS.md` files already exist.
2.  **Promote personal agent memory into the repository.** The
    highest-leverage and most distinctive step. Conventions that have
    accumulated in one person's per-project agent memory are sitting at
    the weakest durable owner there is. Move them into nested
    `AGENTS.md` files at the layer where the decision happens — `app/`,
    `spec/` — and afterwards record that the repo files are now the
    preferred home for them.
3.  **Committed team allowlist.** `.claude/settings.json` with
    team-generic safe commands — tests, linters, read-only `git`/`gh`,
    documentation fetch domains — carved out of the ignore with
    `.claude/*` plus `!.claude/settings.json`. Personal entries stay in
    `settings.local.json`.
4.  **Nested `AGENTS.md`** for the main code layers, short and
    decision-relevant.
5.  **Dependency update coverage** — every lockfile ecosystem, plus
    `github-actions`.
6.  **PR template carrying only what CI cannot verify**: unit tests
    added for new behaviour, manual verification of UI-visible changes,
    rollout considerations (migrations, env flags, backwards
    compatibility). Never restate what CI already enforces — a template
    that repeats "lint passes" is noise, and readers learn to skip the
    whole thing.

Verify as you go: `git check-ignore -v` proves a gitignore negation
actually works, JSON parses, files end with a trailing newline. Expect
the owner to edit generated files before accepting them — read what
changed, and treat those edits as corrections worth keeping.

## Phase 4 — ARCHITECTURE.md, later and separately

Do **not** bundle this with the easy wins. When it is asked for, write
it in this framework's discipline:

-   **Evidence gate.** Verify every claim in code or config *this
    session*. Prior reports and remembered infrastructure are
    `[observed/doc]` at best; stale infra memory is a classic source of
    false claims.
-   **Mine the existing artifacts first.** Earlier audits and reports
    carry the risk register and the classifications, and the owner's
    corrections in them are `[user]` facts.
-   **Cover the whole platform.** Sister repositories by their **git
    remotes**, never by local paths; the infrastructure-as-code repo;
    Helm charts; the deploy configuration of every app.
-   **As-is conventions.** The header states the verified-on date and
    that code is authoritative; exceptions are tagged `[user]`/`[web]`;
    in-flight work gets three-valued status; git-pinned dependencies get
    an ownership table; the document ends with a "Maintaining this
    document" section binding updates to the same PR as the change.
-   **Finish with an adversarial fact-check pass** over the finished
    document: re-verify every count and every claim not personally
    anchored. The classic false claims are file counts from a
    non-recursive `ls` that counted directories, truncated grep output
    hiding items, grep hits that matched comments, a "nightly" cron
    summary that missed the hourly jobs, and a config described beyond
    what was actually read. Fix them, then report what was false and
    what survived.

## Routing the findings into the registers

The audit's three buckets route into this framework's registers, not
into a parallel report:

| Bucket | Register |
|---|---|
| **Already works** | Credit Ledger entries confirmed by use; ratified or shadow rows in the Observed Strategy Inventory |
| **Easy wins** | the Easy Wins lane, verbatim — same leverage claim, same day-scale cost |
| **Requires effort** | Strategic Bets, or the Debt Ledger where the cost is already being paid every cycle, priced at agent-era cost |

Thesis 9 — the earliest-durable-owner hierarchy — is the policy
register's enforcement ladder read from the other end. A correction that
keeps arriving is a policy whose owner sits too far downstream: a
convention enforced by a linter is a policy that does not ask
permission; one enforced by a reviewer is a policy that does. Where the
harness audit and the policy register disagree about where a rule
belongs, amend the register — it is the artifact the project accepts.

## Standing style rules

-   Checklists and templates list only what automation cannot verify.
-   Root maps stay terse; detail routes just-in-time to nested files.
-   When an owner corrects an `[observed]` claim, widen the search
    rather than defend or fold, and ground the corrected claim in code
    before rewriting.
-   Report outcomes honestly, including the false claims found in your
    own work.
