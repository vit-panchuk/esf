# AGENTS.md

Guidance for AI coding agents working **on this repository**. If you are looking
for the framework itself, read `SKILL.md`.

## What this repo is

A portable agent skill implemented entirely as Markdown. The runtime artifact is
`SKILL.md`: a harness reads its YAML frontmatter to decide when the skill
applies, then its body. There is no build step, and no wording here should limit
support to one or two harnesses.

## Key files

- `SKILL.md` — the contract. **The source of truth**; everything else serves it.
- `HARNESS-ENGINEERING.md`, `DSL.md`, `LINEAGE.md` — companions, linked from
  `SKILL.md`'s header. Self-contained: a reader who opens one should not need a
  fourth file to act on it.
- `examples/` — complete worked reports. Every example is cited in `SKILL.md`'s
  catalogue, and every citation resolves to a file. Both directions matter: an
  uncited example is invisible, and a citation with no file is a dead link in
  the one document a reader is most likely to follow.
- `README.md` — for humans: what this is, one install snippet per harness, and
  the version history.
- `.claude-plugin/plugin.json` — Claude Code plugin manifest.
- `.claude-plugin/marketplace.json` — single-repo marketplace entry, so
  `/plugin marketplace add vit-panchuk/esf` works.
- `agents/openai.yaml` — display metadata for the OpenAI interface.

Planning and release gates are kept outside this repository, with the working
copy of the skill. Nothing here should link to them.

## The maintenance contract

- The version appears in three places — `SKILL.md` frontmatter
  (`metadata.version`), `.claude-plugin/plugin.json`, and the README's version
  history. Change one, change all three: a release that says two different
  things about itself is worse than an unreleased one.
- Keep the frontmatter portable. Harness-specific keys (`compatibility`,
  `allowed-tools`) do not belong in a skill meant to run anywhere.
- An example is added by writing the file **and** its catalogue entry in
  `SKILL.md`. Neither half counts on its own.
