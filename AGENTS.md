# AGENTS.md

Guidance for AI coding agents working **on this repository**. If you are looking
for the framework itself, read `SKILL.md`.

## What this repo is

A portable agent skill implemented entirely as Markdown, packaged as a plugin.
The runtime artifact is `skills/engineering-strategy-framework/SKILL.md`: a
harness reads its YAML frontmatter to decide when the skill applies, then its
body. There is no build step, and no wording here should limit support to one
or two harnesses.

The layout follows [Agent Plugins 1.0](https://agent-plugins.org) — `plugin.json`
at the root, skills under `skills/<name>/` — which Codex and Copilot CLI both
read, and which Claude Code also discovers. Claude Code's own manifests live in
`.claude-plugin/` beside it.

## Key files

Everything the skill needs lives inside `skills/engineering-strategy-framework/`,
because a plugin ships that directory and nothing above it:

- `SKILL.md` — the contract. **The source of truth**; everything else serves it.
- `HARNESS-ENGINEERING.md`, `DSL.md`, `LINEAGE.md` — companions, linked from
  `SKILL.md`'s header. Self-contained: a reader who opens one should not need a
  fourth file to act on it.
- `examples/` — complete worked reports, part of the skill rather than
  documentation about it: a harness mid-engagement opens one to calibrate depth.
  Every example is cited in `SKILL.md`'s catalogue, and every citation resolves
  to a file. Both directions matter: an uncited example is invisible, and a
  citation with no file is a dead link in the one document a reader is most
  likely to follow.

At the repository root:

- `plugin.json` — the Agent Plugins 1.0 manifest (Codex, Copilot CLI).
- `.claude-plugin/plugin.json` — Claude Code plugin manifest.
- `.claude-plugin/marketplace.json` — single-repo marketplace entry for Claude
  Code and Copilot CLI, which read the same file and the same schema. Copilot
  has deprecated installing directly from a repository, so this file is the
  supported route rather than a convenience.
- `.agents/plugins/marketplace.json` — the same idea for Codex, which looks in
  a different place and uses a different schema (`interface.displayName`, and a
  `source` object with `policy` and `category`). Two catalogs, one plugin:
  every harness installs the package at the repository root.

  Keep them in step. A plugin renamed or a version bumped in one catalog and
  not the other gives two harnesses different answers about the same release.
- `agents/openai.yaml` — display metadata for the OpenAI interface.
- `README.md` — for humans: what this is, one install snippet per harness, and
  the version history.

Planning and release gates are kept outside this repository, with the working
copy of the skill. Nothing here should link to them.

## The maintenance contract

- The version appears in four places — `SKILL.md` frontmatter
  (`metadata.version`), `plugin.json`, `.claude-plugin/plugin.json`, and the
  README's version history. Change one, change all four: a release that says
  two different things about itself is worse than an unreleased one.
- Keep the frontmatter portable. Harness-specific keys (`compatibility`,
  `allowed-tools`) do not belong in a skill meant to run anywhere.
- An example is added by writing the file **and** its catalogue entry in
  `SKILL.md`. Neither half counts on its own.
