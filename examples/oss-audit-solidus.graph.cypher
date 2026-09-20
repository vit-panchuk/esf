// ── oss-audit-solidus.graph.cypher ─────────────────────
// The WIP graph kept beside the Solidus audit, backported at rev 28
// (2026-08-11) through the same pre-publication filter the JSON-LD
// emit runs: node-file pointers, recovery provenance and every local
// URI are stripped (a dropped local uri falls back to the public
// mirror); assertPublic verified the result carries no local topology.
// Everything else is the real thing: append-only increments from the
// 2026-07-29 backfill through the v0.7 restructure, MERGE/SET only,
// comments on their own lines, ids shared with the report item codes.
// The node bodies (nodes/*.md) stay private with the engagement; this
// file shows the topology and the event log, which is what the WIP
// Graph section of the skill defines.
// ── increment 2026-07-29-backfill ──────────────────────────────
// ── increment 2026-07-29-backfill ──────────────────────────────
// Backfilled from the published report: solidus.mdx rev 23 (2026-07-25).
// Node prose lives in nodes/<id>.md (see the file property).

MERGE (n:`risk` {id:'R1'}) SET n.title = 'Routine dependency drift between security releases', n.status = 'open', n.checked_at = '2026-07-25', n.flag = 'downgraded', n.happens = 'Stale transitive dependencies age quietly; the exposure window before a disclosed issue is noticed widens', n.likelihood = 'Low for disclosed vulnerabilities — that path is covered. Medium for drift', n.notice = 'For a disclosed CVE, yes. For gradual drift, no', n.cost = 'Moderate, not critical', n.falsifier = 'A Renovate or Dependabot version-update config landing, which would close this entirely';
MERGE (n:`risk` {id:'R2'}) SET n.title = 'Two firms are 78% of the money and most of the code', n.status = 'open', n.checked_at = '2026-07-25', n.flag = 'hard to detect', n.happens = 'Losing either firm removes ~39% of funding and a large share of throughput at once', n.likelihood = 'Medium — this has already happened twice', n.notice = 'Not for months. A departure looks exactly like a quiet quarter', n.cost = 'High', n.falsifier = 'Six consecutive months where no single party exceeds 25% of merged commits';
MERGE (n:`risk` {id:'R3'}) SET n.title = 'The half-built admin becomes a permanent third state', n.status = 'open', n.checked_at = '2026-07-25', n.flag = 'hard to detect', n.happens = 'The primary evaluation surface for new adopters stays broken, and the maintenance bill doubles indefinitely', n.likelihood = 'High — it is the current trajectory', n.notice = 'No. Every signal a maintainer looks at is green', n.cost = 'High and rising as the old admin ages', n.falsifier = 'Version 1.0 becoming the default — or a recorded decision to cancel it';
MERGE (n:`risk` {id:'R4'}) SET n.title = 'Spree takes the new-project market', n.status = 'open', n.checked_at = '2026-07-25', n.flag = 'easy to see coming';
MERGE (n:`risk` {id:'R5'}) SET n.title = 'The new storefront breaks existing extensions by design', n.status = 'open', n.checked_at = '2026-07-25';
MERGE (n:`debt` {id:'D1'}) SET n.title = 'Three unfinished rewrites', n.status = 'open', n.checked_at = '2026-07-25', n.kind = 'strategic';
MERGE (n:`debt` {id:'D2'}) SET n.title = 'Governance describes a project that no longer exists', n.status = 'open', n.checked_at = '2026-07-25', n.kind = 'organizational';
MERGE (n:`debt` {id:'D3'}) SET n.title = 'Architectural decisions are never recorded', n.status = 'open', n.checked_at = '2026-07-25', n.kind = 'knowledge';
MERGE (n:`debt` {id:'D4'}) SET n.title = 'The agent harness, and two small automation gaps', n.status = 'open', n.checked_at = '2026-07-25', n.kind = 'technical';
MERGE (n:`credit` {id:'C1'}) SET n.title = 'Test matrix including unreleased Rails 8.1 and Ruby 4.0', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`credit` {id:'C2'}) SET n.title = 'Deprecation build gate', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`credit` {id:'C3'}) SET n.title = 'Automated back-porting', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`credit` {id:'C4'}) SET n.title = 'Automated code style', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`credit` {id:'C5'}) SET n.title = 'Release and changelog automation', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`credit` {id:'C6'}) SET n.title = 'Reproducible development environment', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`credit` {id:'C7'}) SET n.title = 'The storefront', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`credit` {id:'C8'}) SET n.title = 'solidus_promotions', n.status = 'open', n.checked_at = '2026-07-25', n.realized = 'false', n.realization = 'overdue';
MERGE (n:`credit` {id:'C9'}) SET n.title = 'solidus_admin', n.status = 'open', n.checked_at = '2026-07-25', n.realized = 'false', n.realization = 'past the point of write-off';
MERGE (n:`root-cause` {id:'RC1'}) SET n.title = 'Migrations are engineered but never scheduled', n.status = 'open', n.checked_at = '2026-07-25', n.ensures = 'A migration can stall indefinitely without anyone noticing';
MERGE (n:`root-cause` {id:'RC2'}) SET n.title = 'The steward changed in the code but not in the governance', n.status = 'open', n.checked_at = '2026-07-25', n.ensures = 'That one of the stalled migrations is exactly what happens next';
MERGE (n:`decision` {id:'DEC01'}) SET n.title = 'Treat this as an existing-system audit, with single-decision depth on t…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`decision` {id:'DEC02'}) SET n.title = 'A deliberate strategy does exist — compatibility, merge authority and m…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Open with agent-harness engineering, on the grounds that no deliberate strategy exists.';
MERGE (n:`decision` {id:'DEC03'}) SET n.title = 'The policy exists at organization level and was found by widening the s…', n.status = 'withdrawn', n.checked_at = '2026-07-25', n.was = 'Report “no security policy for a payments framework” as a risk.';
MERGE (n:`decision` {id:'DEC04'}) SET n.title = 'File the governance/reality mismatch as a debt, not a risk. (Accepted —…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`decision` {id:'DEC05'}) SET n.title = '67 expenses totalling $154,612 say the mechanism works and was already…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Frame the $132,180 balance as capital nobody has a mechanism to spend.';
MERGE (n:`decision` {id:'DEC06'}) SET n.title = 'Corrected against the API — $329,677 received, $154,612 spent, and the…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Cite “$26,322 annual budget” and “$287,359 raised” from the rendered donation page.';
MERGE (n:`decision` {id:'DEC07'}) SET n.title = 'Wrong. Six of seven pull requests are drafts never submitted for review…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'The stalled 2025 admin work is finished and blocked at review; reviewer capacity is the bottleneck.';
MERGE (n:`decision` {id:'DEC08'}) SET n.title = 'Misleading — order and product editing are switched off, six controller…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Report the new admin as “64% complete by controller count.”';
MERGE (n:`decision` {id:'DEC09'}) SET n.title = 'Wrong measure. There is no package.json, no lockfile and no npm graph.…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Describe Solidus as paying polyglot costs, citing 246 JavaScript files.';
MERGE (n:`decision` {id:'DEC10'}) SET n.title = 'Count correct, implication wrong — it reads as a recent exodus. It is s…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = '“Thirty-plus sponsors have cancelled, so the base rate is not hypothetical.”';
MERGE (n:`decision` {id:'DEC11'}) SET n.title = 'Reject the theory that Nebulab\'s sponsorship was a play for voting powe…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`decision` {id:'DEC12'}) SET n.title = 'Decline to characterize the Nebulab payments as extraction. (Net contri…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`decision` {id:'DEC13'}) SET n.title = 'Reject "Spree caused the decline." (Cancellations are steady from 2019…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`decision` {id:'DEC14'}) SET n.title = 'Decline to claim new merchants are choosing Spree over Solidus. (Not me…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`decision` {id:'DEC15'}) SET n.title = 'Reframe the report from "how to recover" to "choose a role." (Accepted…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`decision` {id:'DEC16'}) SET n.title = 'Over-generalized from one case. Promotions ships a 190-line migration g…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = '“Three unfinished rewrites” as a systemic pattern, generating root cause RC1.';
MERGE (n:`decision` {id:'DEC17'}) SET n.title = 'It is written — the lead maintainer published it on 12 May 2026. This r…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Treat the project\'s technical direction as unwritten and derive it.';
MERGE (n:`decision` {id:'DEC18'}) SET n.title = 'Vector removed entirely. "Director" covers business and organizational…', n.status = 'withdrawn', n.checked_at = '2026-07-25', n.was = 'Treat the governance document\'s description of Nebulab\'s role as a finding at all (the governance-title strategy row, its bet, and its pre-mortem entry).';
MERGE (n:`decision` {id:'DEC19'}) SET n.title = 'Partly external. A job board was setting candidates Solidus issues as a…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Read the 40 open pull requests as evidence of review neglect.';
MERGE (n:`decision` {id:'DEC35'}) SET n.title = 'Wrong prescription for the mode. Unowned, undated work is the normal co…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'RC1: “the gates were built; nobody is accountable for closing them, and no calendar says when.”';
MERGE (n:`decision` {id:'DEC34'}) SET n.title = 'Metadata was misleading; the threads say more. Five chaimann drafts hav…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'All seven stalled admin PRs characterized from API metadata: “the author never returned,” “reviewers engaged wherever they were asked.”';
MERGE (n:`decision` {id:'DEC33'}) SET n.title = 'Wrong twice. The file exists and works, so marking it absent was incorr…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = '“Differentiated code ownership ✗ — CODEOWNERS is a single catch-all line.”';
MERGE (n:`decision` {id:'DEC32'}) SET n.title = 'Diagnose the admin\'s sequencing against Larson\'s migration playbook, an…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`decision` {id:'DEC31'}) SET n.title = 'A definition existed. Issue #5391 (open since Sept 2023) publishes the…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'The $45,760 admin purchase shows “the project\'s missing completion gate appearing in a purchase order rather than in code” — no definition of finished existed.';
MERGE (n:`decision` {id:'DEC30'}) SET n.title = 'Wrong, and it was the top-ranked risk. The published security policy sh…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'R1, ranked first: “no automated dependency updating and no vulnerability audit step — a vulnerable dependency reaches every store, and you would learn from a downstream report.”';
MERGE (n:`decision` {id:'DEC29'}) SET n.title = 'Every one double-counted. The count included _spec.rb, so the Ruby and…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Component table “Ruby files” figures: 855 / 328 / 278 / 193 / 166 / 98.';
MERGE (n:`decision` {id:'DEC28'}) SET n.title = 'Overstated. The document assigns the Core Team "final decision as to wh…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = '“The governance document defines no mechanism whatsoever for deciding technical direction, so no forum has the standing to decide the admin\'s fate.”';
MERGE (n:`decision` {id:'DEC27'}) SET n.title = 'Wrong, and it inverted the finding. It holds 64 spec files and 5,510 li…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'The new storefront has zero tests.';
MERGE (n:`decision` {id:'DEC26'}) SET n.title = 'Misleading — reading across a row produced false statements ("2020 · Lo…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Present spending as one table combining year-by-year totals with all-time recipient totals.';
MERGE (n:`decision` {id:'DEC24'}) SET n.title = 'Re-verify the $132,180 balance under challenge. (Survived, and strength…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`decision` {id:'DEC25'}) SET n.title = 'Softened. That figure covers the Open Collective account only. Donated…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = '“$132,180 sitting idle” as a characterization of the project\'s investment.';
MERGE (n:`decision` {id:'DEC21'}) SET n.title = 'Wrong — it already exists and is stronger. The installer workflow boots…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Recommend adding CI that verifies the installation path.';
MERGE (n:`decision` {id:'DEC22'}) SET n.title = 'Locate the real gap: CI is green on an undocumented install path. (The…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`decision` {id:'DEC23'}) SET n.title = 'Ten of the twelve are view templates responding to AJAX requests, which…', n.status = 'superseded', n.checked_at = '2026-07-25', n.was = 'Count 12 ERB asset files as Propshaft blockers.';
MERGE (n:`decision` {id:'DEC20'}) SET n.title = 'Add the Rails-generation gap as a distinct finding. (Rails 8 defaults t…', n.status = 'standing', n.checked_at = '2026-07-25';
MERGE (n:`strategy` {id:'S1'}) SET n.title = 'Reject the JavaScript-framework direction on purpose. Simplicity, one s…', n.status = 'standing', n.checked_at = '2026-07-25', n.state = 'on the lead maintainer\'s company blog', n.health = 'The project\'s actual strategy — stated, just not here';
MERGE (n:`strategy` {id:'S2'}) SET n.title = 'Never break an existing store. Deprecate before removing; back-port fix…', n.status = 'standing', n.checked_at = '2026-07-25', n.state = 'ratified', n.health = 'Holding — at a cost nobody has priced';
MERGE (n:`strategy` {id:'S3'}) SET n.title = 'Ship replacements alongside the old version as opt-in, with a written m…', n.status = 'standing', n.checked_at = '2026-07-25', n.state = 'in the gems, not the governance', n.health = 'Working — see the promotions migration guide';
MERGE (n:`strategy` {id:'S4'}) SET n.title = 'Core stays lean; capabilities live in separate extensions.', n.status = 'standing', n.checked_at = '2026-07-25', n.state = 'nowhere', n.health = 'Weakening — four official extensions dormant';
MERGE (n:`strategy` {id:'S5'}) SET n.title = 'Merge authority belongs to a self-appointing Core Team. Money buys vote…', n.status = 'standing', n.checked_at = '2026-07-25', n.state = 'ratified', n.health = 'Yes — the separation is deliberate and healthy';
MERGE (n:`strategy` {id:'S6'}) SET n.title = 'Quality is enforced by machines; style is not argued about.', n.status = 'standing', n.checked_at = '2026-07-25', n.state = 'only in CI config', n.health = 'The best-functioning rule in the project';
MERGE (n:`strategy` {id:'S7'}) SET n.title = 'All delivery is done by humans.', n.status = 'standing', n.checked_at = '2026-07-25', n.state = 'by omission', n.health = 'Untested — no agent harness exists';
MERGE (n:`bet` {id:'B2'}) SET n.title = 'Restart funded development — buying an outcome, not sprints', n.status = 'open', n.checked_at = '2026-07-25', n.verdict = 'Do', n.cost = 'one meeting agenda item';
MERGE (n:`bet` {id:'B3'}) SET n.title = 'Routine dependency-update automation (security updates already run)', n.status = 'open', n.checked_at = '2026-07-25', n.verdict = 'Cheap', n.cost = 'a config file';
MERGE (n:`bet` {id:'B4'}) SET n.title = 'Agent harness, scoped to executing →B3 (Routine dependency-update autom…', n.status = 'open', n.checked_at = '2026-07-25', n.verdict = 'Do', n.cost = '~a day';
MERGE (n:`bet` {id:'B5'}) SET n.title = 'Name the release that removes legacy promotions — a policy statement, n…', n.status = 'open', n.checked_at = '2026-07-25', n.verdict = 'Do', n.cost = 'free';
MERGE (n:`bet` {id:'B6'}) SET n.title = 'Decide the admin — by manufacturing the evidence, not deliberating with…', n.status = 'open', n.checked_at = '2026-07-25', n.verdict = 'Decide', n.cost = 'one hard screen';
MERGE (n:`bet` {id:'B7'}) SET n.title = 'Match Spree\'s React storefront', n.status = 'open', n.checked_at = '2026-07-25', n.verdict = 'Kill', n.cost = '—';
MERGE (n:`bet` {id:'B8'}) SET n.title = 'GraphQL / headless surface', n.status = 'open', n.checked_at = '2026-07-25', n.verdict = 'Wait', n.cost = '—';
MERGE (n:`bet` {id:'B9'}) SET n.title = 'Dual asset-pipeline support, with an agent-executed migration', n.status = 'open', n.checked_at = '2026-07-25', n.verdict = 'Do', n.cost = 'see template';
MERGE (n:`bet` {id:'B10'}) SET n.title = 'Publish technical decisions — restart the status posts, file forward-lo…', n.status = 'open', n.checked_at = '2026-07-25', n.verdict = 'Do', n.cost = 'an hour a month';
MERGE (n:`bet` {id:'B1'}) SET n.title = 'withdrawn — numbering keeps the gap', n.status = 'withdrawn', n.checked_at = '2026-07-25';
MERGE (n:`factor` {id:'F1'}) SET n.title = 'A definition of "finished" existed, and the money was not wired to it', n.status = 'open', n.checked_at = '2026-07-25';
MERGE (n:`factor` {id:'F2'}) SET n.title = 'Built by one organization, handed to nobody', n.status = 'open', n.checked_at = '2026-07-25';
MERGE (n:`factor` {id:'F3'}) SET n.title = 'The last developer\'s work was abandoned mid-flight', n.status = 'open', n.checked_at = '2026-07-25';
MERGE (n:`claim` {id:'c001'}) SET n.title = '| | | | Seen directly in the system — code read in the repository, a co…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c002'}) SET n.title = '| | | | Verified against an external source — a vendor\'s own site, a re…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c003'}) SET n.title = '| | | | Reasoned from evidence. Plausible, not established. Do not act…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.chips = 1;
MERGE (n:`claim` {id:'c004'}) SET n.title = '| | | | Neither checked nor verified. Everything tagged this way is lis…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'assumed', n.chips = 1;
MERGE (n:`claim` {id:'c005'}) SET n.title = '<Timeline> <Event when="February 2015">Solidus is born. Stembolt, an ag…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web+observed', n.chips = 16;
MERGE (n:`claim` {id:'c006'}) SET n.title = 'The engineering is genuinely good. Continuous integration tests every c…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c007'}) SET n.title = 'One initiative is genuinely stuck — not three. The admin, promotions an…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c008'}) SET n.title = 'What all three do share is narrower and cheaper to fix: none has a date…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c009'}) SET n.title = 'The cause is an engineering handover that never happened. Nebulab went…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c010'}) SET n.title = 'And it has happened before. Stembolt, who created Solidus, was acquired…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.chips = 1;
MERGE (n:`claim` {id:'c011'}) SET n.title = 'Meanwhile the competitor came back. Spree — the project Solidus forked…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed+web', n.chips = 2;
MERGE (n:`claim` {id:'c012'}) SET n.title = 'Solidus\'s finances are entirely public, which is unusual and useful — t…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c013'}) SET n.title = '| | Host and payment-processing fees (residual) | | ~$42,885 · ≈13% | |', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.chips = 1;
MERGE (n:`claim` {id:'c014'}) SET n.title = 'Over thirty sponsors have cancelled, including large ones: Engine Comme…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c015'}) SET n.title = 'In every year the project spent seriously, essentially all of it went t…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c016'}) SET n.title = 'Six payments of $6,000 each to Nebulab, every one labelled "Solidus Adm…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c017'}) SET n.title = 'Funded development continued after that — $32,506 to a Dutch company ac…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c018'}) SET n.title = 'How firm is the ‘unspent’ claim?', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c019'}) SET n.title = 'How firm is the ‘unspent’ claim?', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.chips = 1;
MERGE (n:`claim` {id:'c020'}) SET n.title = 'Seven people are administrators on Open Collective and can approve expe…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c021'}) SET n.title = 'On the obvious question', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c022'}) SET n.title = 'Promotions is not a stalled rewrite — it is a textbook staged migration', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c023'}) SET n.title = 'The storefront is a success — and the reason why is instructive', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c024'}) SET n.title = 'The storefront is a success — and the reason why is instructive', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c025'}) SET n.title = 'The residual cost is real but narrower than earlier stated: two promoti…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c026'}) SET n.title = 'For a commerce platform, the most persuasive evidence is a real store.…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c027'}) SET n.title = 'Jared Norman named this himself in How to Fail at Solidus, observing th…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c028'}) SET n.title = 'Solidus keeps optional capabilities in separate repositories. Of the 35…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c029'}) SET n.title = 'Nebulab supplied roughly 1,096 of 1,810 commits in 2023 — about 60% — a…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c030'}) SET n.title = 'Nebulab is still active — just elsewhere', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c031'}) SET n.title = 'Two things in the governance document are worth quoting exactly, becaus…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c032'}) SET n.title = '- The public roadmap board holds 76 items — 65 merged pull requests and…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed+web', n.chips = 2;
MERGE (n:`claim` {id:'c033'}) SET n.title = 'Limit of this finding: I did not establish whether meeting minutes exis…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.chips = 1;
MERGE (n:`claim` {id:'c034'}) SET n.title = 'The open pull request pile is partly external noise — and it was actively handled', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c035'}) SET n.title = 'Security is the best-run process in the project', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed+web', n.chips = 2;
MERGE (n:`claim` {id:'c036'}) SET n.title = 'Security is the best-run process in the project', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c037'}) SET n.title = 'Security is the best-run process in the project', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.chips = 1;
MERGE (n:`claim` {id:'c038'}) SET n.title = 'On the single-line CODEOWNERS — not a defect', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c039'}) SET n.title = 'On the single-line CODEOWNERS — not a defect', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c040'}) SET n.title = 'Rails 8 ships Propshaft as the default asset pipeline; Sprockets is the…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web+observed', n.chips = 2;
MERGE (n:`claim` {id:'c041'}) SET n.title = 'The install path is already covered by continuous integration, and thor…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c042'}) SET n.title = 'Continuous integration is green on an install path the documentation do…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c043'}) SET n.title = 'The fix Solidus is implicitly waiting on sits unmerged in a gem that ha…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed+web', n.chips = 2;
MERGE (n:`claim` {id:'c044'}) SET n.title = 'Solidus has no `package.json`, no lockfile, and no npm dependency graph…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c045'}) SET n.title = 'Spree, by contrast, carries `package.json`, `pnpm-lock.yaml`, a pnpm wo…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c046'}) SET n.title = 'The new admin\'s package definition declares a hard dependency on `solid…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c047'}) SET n.title = 'What makes this sharper is that a completion checklist already existed.…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c048'}) SET n.title = 'Note what that checklist is: the six easiest screens in the application…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c049'}) SET n.title = '2023 authorship of the admin: Elia Schito 370, Rainer Dema 132, Marc Bu…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c050'}) SET n.title = 'Seven pull requests open for a year invite the reading that finished wo…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c051'}) SET n.title = '#6295 is not abandoned — it was adopted, three weeks before this audit', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c052'}) SET n.title = 'Incidental observation: a Copilot pull-request reviewer bot left a revi…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c053'}) SET n.title = 'The 132 existing components total 7,716 lines, covering roughly ninetee…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c054'}) SET n.title = 'A second, independent measure agrees. Because both admins are server-re…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c055'}) SET n.title = 'Will Larson\'s migration playbook — the standard reference on paying tec…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c056'}) SET n.title = 'Solidus\'s porting plan states the opposite strategy in its own words. I…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c057'}) SET n.title = 'The predicted failure is exactly the observed one. The easy settings pa…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c058'}) SET n.title = 'A reasonable theory, and the evidence does not support it. The open iss…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed+web', n.chips = 2;
MERGE (n:`claim` {id:'c059'}) SET n.title = 'Spree\'s free edition includes the storefront, checkout, sales channels,…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 2;
MERGE (n:`claim` {id:'c060'}) SET n.title = 'This is structural, not circumstantial. Spree\'s open-source work is a m…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.chips = 1;
MERGE (n:`claim` {id:'c061'}) SET n.title = 'The harness gap deserves its own paragraph', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed+web', n.chips = 2;
MERGE (n:`claim` {id:'c062'}) SET n.title = 'The harness gap deserves its own paragraph', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c063'}) SET n.title = 'Spree relaunched commercially in April 2025. Solidus\'s sponsor cancella…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c064'}) SET n.title = 'Solidus\'s technical direction is not unwritten, and it is easy to miss…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c065'}) SET n.title = 'The May 2025 status update promised to "double-down on the existing Git…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c066'}) SET n.title = 'The project plainly can run a migration well. Promotions ships a 190-li…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c067'}) SET n.title = 'Nebulab went from ~60% of commits to ~1%, with no public announcement .…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed+web', n.chips = 2;
MERGE (n:`claim` {id:'c068'}) SET n.title = 'And this is the second occurrence. Stembolt was acquired in 2018 and wa…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.chips = 1;
MERGE (n:`claim` {id:'c069'}) SET n.title = 'Narrower than a repository-only reading suggests. Solidus runs a Hacker…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c070'}) SET n.title = 'What remains is the gap around it: no automated routine version bumps a…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c071'}) SET n.title = 'Code concentration and funding concentration are the same dependency se…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed+web', n.chips = 2;
MERGE (n:`claim` {id:'c072'}) SET n.title = 'Measured in →§09 (Spree, Measured). Note this ranks below →R1 (Routine…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c073'}) SET n.title = 'Its own README states that extensions relying on the old storefront "wi…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c074'}) SET n.title = 'Solidus, from its own documentation: create a Rails app, add the gem, h…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.chips = 1;
MERGE (n:`claim` {id:'c075'}) SET n.title = 'More decisively, the project\'s own largest contributor publicly disclai…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c076'}) SET n.title = 'Targeted searches for reporting on Solidus stalling, being abandoned, o…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'web', n.chips = 1;
MERGE (n:`claim` {id:'c077'}) SET n.title = 'An important timing detail', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c078'}) SET n.title = 'An important limit on what ‘idle money’ means', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c079'}) SET n.title = 'The ERB column is where the old admin actually lives. `solidus_backend`…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c080'}) SET n.title = 'The old admin is the anchor — and there is a way around it', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c081'}) SET n.title = 'The honest answer: the remaining work is a few focused months for one p…', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c082'}) SET n.title = 'If only three can be addressed', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c083'}) SET n.title = 'Red-teaming Role B, because it is the tempting one', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c084'}) SET n.title = 'B10 — the cheapest bet on the board', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c085'}) SET n.title = 'Red-team of B9', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c086'}) SET n.title = 'What makes this the right shape', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c087'}) SET n.title = 'B2, stated precisely', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c088'}) SET n.title = 'Where to ask — these channels are public and live', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c089'}) SET n.title = 'Technically healthy, strategically adrift.', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c090'}) SET n.title = 'Losing the steward is this project\'s normal condition.', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c091'}) SET n.title = 'Spree rides a business; Solidus rides a donation pot.', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;

MATCH (a {id:'R4'}), (b {id:'R1'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'R4'}), (b {id:'R3'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'D3'}), (b {id:'S3'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'RC2'}), (b {id:'S2'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC13'}), (b {id:'B7'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC16'}), (b {id:'RC1'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC18'}), (b {id:'RC2'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC18'}), (b {id:'F2'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC35'}), (b {id:'B5'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC32'}), (b {id:'B6'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC30'}), (b {id:'R1'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC30'}), (b {id:'R3'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC30'}), (b {id:'R2'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC28'}), (b {id:'B10'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC22'}), (b {id:'B9'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B2'}), (b {id:'R3'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B2'}), (b {id:'D1'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B3'}), (b {id:'R1'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B4'}), (b {id:'D4'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B4'}), (b {id:'S7'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B4'}), (b {id:'B3'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B4'}), (b {id:'B5'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B5'}), (b {id:'D1'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B5'}), (b {id:'RC1'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B6'}), (b {id:'R3'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B6'}), (b {id:'D1'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B7'}), (b {id:'R4'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B8'}), (b {id:'R4'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B9'}), (b {id:'R1'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B9'}), (b {id:'D3'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B9'}), (b {id:'D4'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B10'}), (b {id:'D2'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B10'}), (b {id:'D3'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B10'}), (b {id:'S1'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B10'}), (b {id:'R4'}) MERGE (a)-[:DERIVED_FROM]->(b);
// withdrawal recorded in the Decision Log
MATCH (a {id:'DEC18'}), (b {id:'B1'}) MERGE (a)-[:SUPERSEDES]->(b);
MATCH (a {id:'c047'}), (b {id:'F1'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c048'}), (b {id:'F1'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c049'}), (b {id:'F2'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c050'}), (b {id:'F3'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c051'}), (b {id:'F3'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c052'}), (b {id:'F3'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c066'}), (b {id:'RC1'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c067'}), (b {id:'RC2'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c068'}), (b {id:'RC2'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c069'}), (b {id:'R1'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c070'}), (b {id:'R1'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c071'}), (b {id:'R2'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c072'}), (b {id:'R4'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c073'}), (b {id:'R5'}) MERGE (a)-[:SUPPORTS]->(b);

// ── increment 2026-07-29b ──────────────────────────────
// Source recovery from ../esf-corpus: the audited checkout survives.
// Commit-precision only — per-file/line anchors were never captured.
MERGE (n:`source` {id:'src-checkout'}) SET n.title = 'solidusio/solidus @ cdcdfaf (audited checkout)', n.uri = 'https://github.com/solidusio/solidus/tree/cdcdfaf333c196c746d538c155762d0237189444', n.commit = 'cdcdfaf333c196c746d538c155762d0237189444', n.mirror = 'https://github.com/solidusio/solidus/tree/cdcdfaf333c196c746d538c155762d0237189444', n.status = 'settled', n.checked_at = '2026-07-21';
// commit-precision backfill
MATCH (a {id:'c001'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c005'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c006'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c007'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c008'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c009'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c011'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c012'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c014'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c015'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c016'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c017'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c018'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c020'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c021'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c022'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c023'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c024'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c025'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c026'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c028'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c031'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c032'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c034'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c035'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c036'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c038'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c040'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c041'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c042'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c043'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c044'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c045'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c046'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c047'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c049'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c050'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c051'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c052'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c053'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c054'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c056'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c058'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c061'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c063'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c065'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c066'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c067'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c070'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c071'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c072'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c073'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
// commit-precision backfill
MATCH (a {id:'c074'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);

// ── increment 2026-07-29c ──────────────────────────────
// [web] sources recovered from the audit session transcript
// Per-claim attribution is NOT recoverable — no DERIVED_FROM edges;
// these enumerate the [web] evidence base, nothing more.
MERGE (n:`source` {id:'src-slack-solidus-io'}) SET n.title = 'slack.solidus.io', n.uri = 'http://slack.solidus.io', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-github-com-solidusio-solidus'}) SET n.title = 'github.com/solidusio/solidus', n.uri = 'https://github.com/solidusio/solidus', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-github-com-solidusio-solidus-commits-mai'}) SET n.title = 'github.com/solidusio/solidus/commits/main', n.uri = 'https://github.com/solidusio/solidus/commits/main', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-github-com-solidusio-solidus-releases'}) SET n.title = 'github.com/solidusio/solidus/releases', n.uri = 'https://github.com/solidusio/solidus/releases', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-guides-solidus-io-policies-security'}) SET n.title = 'guides.solidus.io/policies/security', n.uri = 'https://guides.solidus.io/policies/security', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-jardo-dev-how-to-fail-at-solidus'}) SET n.title = 'jardo.dev/how-to-fail-at-solidus', n.uri = 'https://jardo.dev/how-to-fail-at-solidus', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-nebulab-com-services'}) SET n.title = 'nebulab.com/services', n.uri = 'https://nebulab.com/services', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-nebulab-com-team'}) SET n.title = 'nebulab.com/team', n.uri = 'https://nebulab.com/team', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-opencollective-com-solidus'}) SET n.title = 'opencollective.com/solidus', n.uri = 'https://opencollective.com/solidus', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-githubusercontent-com-solidusio-solidus-'}) SET n.title = 'raw.githubusercontent.com/solidusio/solidus/main/GOVERNANCE.md', n.uri = 'https://raw.githubusercontent.com/solidusio/solidus/main/GOVERNANCE.md', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-rubygems-org-gems-solidus'}) SET n.title = 'rubygems.org/gems/solidus', n.uri = 'https://rubygems.org/gems/solidus', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-solidus-io'}) SET n.title = 'solidus.io/', n.uri = 'https://solidus.io/', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-solidus-io-blog'}) SET n.title = 'solidus.io/blog', n.uri = 'https://solidus.io/blog', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-solidus-io-blog-project-status-may-2025'}) SET n.title = 'solidus.io/blog/project-status-may-2025', n.uri = 'https://solidus.io/blog/project-status-may-2025', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-solidus-io-community'}) SET n.title = 'solidus.io/community/', n.uri = 'https://solidus.io/community/', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-solidus-io-security'}) SET n.title = 'solidus.io/security', n.uri = 'https://solidus.io/security', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-spreecommerce-org-enterprise'}) SET n.title = 'spreecommerce.org/enterprise/', n.uri = 'https://spreecommerce.org/enterprise/', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-spreecommerce-org-pricing'}) SET n.title = 'spreecommerce.org/pricing/', n.uri = 'https://spreecommerce.org/pricing/', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`source` {id:'src-supergood-software-solidus-versus-spree'}) SET n.title = 'supergood.software/solidus-versus-spree/', n.uri = 'https://supergood.software/solidus-versus-spree/', n.status = 'settled', n.checked_at = '2026-07-25';

// ── increment 2026-07-29d ──────────────────────────────
// Correction: c001–c004 are the tag-legend example rows (mdx lines
// 57–60), not claims. The published JSON-LD and evidence bar share
// this bug (counts include the legend; the sole [assumed] chip is
// legend text). Real evidence base: 97 chips = 61/29/7/0.
MATCH (n {id:'c001'}) SET n.status = 'withdrawn', n.legend = true;
MATCH (n {id:'c002'}) SET n.status = 'withdrawn', n.legend = true;
MATCH (n {id:'c003'}) SET n.status = 'withdrawn', n.legend = true;
MATCH (n {id:'c004'}) SET n.status = 'withdrawn', n.legend = true;
// c001 (legend, tag observed) wrongly received a checkout edge in 29b
MATCH (a {id:'c001'})-[r:DERIVED_FROM]->(b {id:'src-checkout'}) DELETE r;

// ── increment 2026-07-29e ──────────────────────────────
// Rebuild-test findings fixed (see rebuild-comparison.md). The backfill
// only minted nodes for chip-tagged claims and register items — "no chip,
// no node" — so the report synthesis layer and primary-data tables were
// unrecoverable. This increment adds the missing semantics:
// report metadata, the section map, pre-mortem entries (P codes already
// existed in the report vocabulary), role options, ranked open questions
// (§20), data nodes for tables/figures, and backfilled claims c092–c104
// for chip-free synthesis. Also restores three bodies truncated by the
// backfill 1200-char body cap (cap removed from backfill.rb).

// report metadata (was frontmatter-only: publish date, framework version)
MERGE (n:`report` {id:'report'}) SET n.title = 'Solidus — engineering strategy audit (published report metadata)', n.status = 'settled', n.checked_at = '2026-07-25', n.rev = 23, n.published = '2026-07-18', n.updated = '2026-07-25', n.framework = 'ESF v0.5', n.mode = 'existing-system audit', n.report_status = 'live', n.stakeholders = 'none reached';

// section map — id order = published section order; anchors from the mdx
MERGE (n:`section` {id:'sec-01'}) SET n.title = 'Start Here', n.anchor = '#start-here', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-02'}) SET n.title = 'Timeline', n.anchor = '#timeline', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-03'}) SET n.title = 'Executive Summary', n.anchor = '#executive-summary', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-04'}) SET n.title = 'The Money', n.anchor = '#the-money', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-05'}) SET n.title = 'The Product', n.anchor = '#the-product', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-06'}) SET n.title = 'The People', n.anchor = '#the-people', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-07'}) SET n.title = 'The Machine', n.anchor = '#the-machine', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-08'}) SET n.title = 'Admin Autopsy', n.anchor = '#admin-autopsy', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-09'}) SET n.title = 'Spree, Measured', n.anchor = '#spree-measured', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-10'}) SET n.title = 'The Strategy Already in Force', n.anchor = '#the-strategy-already-in-force', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-11'}) SET n.title = 'Root Causes', n.anchor = '#root-causes', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-12'}) SET n.title = 'Risk Register', n.anchor = '#risk-register', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-13'}) SET n.title = 'Debt Ledger', n.anchor = '#debt-ledger', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-14'}) SET n.title = 'Credit Ledger', n.anchor = '#credit-ledger', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-15'}) SET n.title = 'Who Solidus Can Still Serve', n.anchor = '#who-solidus-can-still-serve', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-16'}) SET n.title = 'Choose a Role', n.anchor = '#choose-a-role', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-17'}) SET n.title = 'Bets — for you to set', n.anchor = '#bets--for-you-to-set', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-18'}) SET n.title = 'Pre-Mortem', n.anchor = '#pre-mortem', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-19'}) SET n.title = 'Decision Log', n.anchor = '#decision-log', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`section` {id:'sec-20'}) SET n.title = 'What I Could Not Establish', n.anchor = '#what-i-could-not-establish', n.status = 'settled', n.checked_at = '2026-07-25';

// pre-mortem entries — how the PLAN fails; P codes from the published report
MERGE (n:`premortem` {id:'P1'}) SET n.title = 'The hard screen gets deferred for an easy one', n.status = 'open', n.checked_at = '2026-07-25', n.note = 'most likely', n.warning = 'The first screen attempted is one already on the #5391 checklist', n.mitigation = 'Name the screen before starting, in public; treat "we learned it does not work" as a successful outcome';
MERGE (n:`premortem` {id:'P2'}) SET n.title = 'Nobody puts the funding decision on an agenda', n.status = 'open', n.checked_at = '2026-07-25', n.warning = 'Two stakeholder meetings pass with no agenda item', n.mitigation = 'Send it as a one-page multiple-choice ballot over the three migrations';
MERGE (n:`premortem` {id:'P3'}) SET n.title = 'The harness gets built and nobody uses it', n.status = 'open', n.checked_at = '2026-07-25', n.warning = 'No pull request references it within two release cycles', n.mitigation = 'Scope it narrowly to B3 and B5; if those land, it paid for itself';
MERGE (n:`premortem` {id:'P4'}) SET n.title = 'The funded migration is chosen by money, not readiness', n.status = 'open', n.checked_at = '2026-07-25', n.warning = 'A single-choice ballot', n.mitigation = 'Multiple choice, producing a ranked list';
MERGE (n:`premortem` {id:'P5'}) SET n.title = 'The diagnosis is wrong and the constraint is attention, not money', n.status = 'open', n.checked_at = '2026-07-25', n.note = 'partly observed already', n.warning = 'A second, outcome-shaped funding round also fails to ship', n.mitigation = 'If money tied to a completion criterion fails too, cancel the admin';
MATCH (a {id:'P1'}), (b {id:'B6'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'P2'}), (b {id:'B2'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'P3'}), (b {id:'B4'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'P4'}), (b {id:'B2'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'P5'}), (b {id:'B2'}) MERGE (a)-[:DERIVED_FROM]->(b);

// role options (§16) — the judgment call the bets are scored against
MERGE (n:`option` {id:'Role-A'}) SET n.title = 'Role A — Steward the installed base', n.status = 'open', n.checked_at = '2026-07-25';
MERGE (n:`option` {id:'Role-B'}) SET n.title = 'Role B — Contest the agent channel', n.status = 'open', n.checked_at = '2026-07-25';
MERGE (n:`option` {id:'Role-C'}) SET n.title = 'Role C — Converge with Spree', n.status = 'open', n.checked_at = '2026-07-25';
MATCH (a {id:'Role-A'}), (b {id:'DEC15'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'Role-B'}), (b {id:'DEC15'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'Role-C'}), (b {id:'DEC15'}) MERGE (a)-[:DERIVED_FROM]->(b);
// B4 published address list includes Role B — now representable
MATCH (a {id:'B4'}), (b {id:'Role-B'}) MERGE (a)-[:DERIVED_FROM]->(b);

// §20 open questions, impact-ranked (rank property)
MERGE (n:`question` {id:'q01'}) SET n.title = 'Why was the 2025 engagement not renewed?', n.status = 'open', n.checked_at = '2026-07-25', n.rank = 1;
MERGE (n:`question` {id:'q02'}) SET n.title = 'Why did Nebulab wind down?', n.status = 'open', n.checked_at = '2026-07-25', n.rank = 2;
MERGE (n:`question` {id:'q03'}) SET n.title = 'Who are Logicielle B.V. and e.c441?', n.status = 'open', n.checked_at = '2026-07-25', n.rank = 3;
MERGE (n:`question` {id:'q04'}) SET n.title = 'Is the balance reserved against something?', n.status = 'open', n.checked_at = '2026-07-25', n.rank = 4;
MERGE (n:`question` {id:'q05'}) SET n.title = 'Does the Core Team consider the new admin alive?', n.status = 'open', n.checked_at = '2026-07-25', n.rank = 5;
MERGE (n:`question` {id:'q06'}) SET n.title = 'Branch-protection settings and core-team membership', n.status = 'open', n.checked_at = '2026-07-25', n.rank = 6;
MERGE (n:`question` {id:'q07'}) SET n.title = 'Does Spree\'s commit volume reflect human or generated work?', n.status = 'open', n.checked_at = '2026-07-25', n.rank = 7;
// open questions gate re-verification of the findings they could move
MATCH (a {id:'q01'}), (b {id:'RC1'}) MERGE (a)-[:BLOCKS]->(b);
MATCH (a {id:'q05'}), (b {id:'R3'}) MERGE (a)-[:BLOCKS]->(b);
MATCH (a {id:'q07'}), (b {id:'R4'}) MERGE (a)-[:BLOCKS]->(b);

// data nodes — tables and figures the prose cites; bodies hold the rows
MERGE (n:`data` {id:'tbl-money-position'}) SET n.title = 'Position at audit date (Open Collective)', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-sponsors-active'}) SET n.title = 'Active recurring sponsors — nine, totalling $1,931/month', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-spending-by-year'}) SET n.title = 'Spending by year — and who received the bulk of it', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-recipients-alltime'}) SET n.title = 'All-time totals by recipient', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-components'}) SET n.title = 'Components at commit cdcdfaf3', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-rewrites'}) SET n.title = 'Three parallel components — but three different stories', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-dev-volume'}) SET n.title = 'Development volume by year (commits)', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-contribs-12mo'}) SET n.title = 'Contributions over the last twelve months — 493 commits, 27 people', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-withdrawal'}) SET n.title = 'The withdrawal, year by year', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-interfaces'}) SET n.title = 'Where decisions get made — interface map', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-machine'}) SET n.title = 'The Machine — capability checklist', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-rails-way'}) SET n.title = 'The Rails-way edge — audit against Rails 8 defaults', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-sprockets-upstream'}) SET n.title = 'Waiting for upstream is not available', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-coupling'}) SET n.title = 'How deep does the Sprockets coupling actually go?', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-spree-metrics'}) SET n.title = 'Spree vs Solidus — repository metrics (GitHub API, 25 July 2026)', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-spree-features'}) SET n.title = 'Feature comparison — Solidus v4.7.0 vs Spree v5.6.0', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'tbl-admin-work'}) SET n.title = 'What it would take to close the admin gap — work sizing', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'fig-summary'}) SET n.title = 'Executive-summary figures', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'fig-admin'}) SET n.title = 'Admin Autopsy figures', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'chart-risk'}) SET n.title = 'Risk exposure plot — ordinal coordinates', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'chart-horizon'}) SET n.title = 'Sequenced investments — Now / Next quarter / Horizon 2', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'ref-anatomy'}) SET n.title = 'What Solidus actually is — the gems that matter', n.status = 'settled', n.checked_at = '2026-07-25';
MERGE (n:`data` {id:'ref-cast'}) SET n.title = 'Who\'s involved — cast of characters', n.status = 'settled', n.checked_at = '2026-07-25';
// provenance for the data nodes
MATCH (a {id:'tbl-money-position'}), (b {id:'src-opencollective-com-solidus'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-sponsors-active'}), (b {id:'src-opencollective-com-solidus'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-spending-by-year'}), (b {id:'src-opencollective-com-solidus'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-recipients-alltime'}), (b {id:'src-opencollective-com-solidus'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-components'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-rewrites'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-dev-volume'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-contribs-12mo'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-withdrawal'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-machine'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-rails-way'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-sprockets-upstream'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-coupling'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-admin-work'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-interfaces'}), (b {id:'src-githubusercontent-com-solidusio-solidus-'}) MERGE (a)-[:DERIVED_FROM]->(b);

// chip-free synthesis, minted as backfilled claims (excluded from the
// evidence bar via backfilled_tag, same convention as c077–c091)
MERGE (n:`claim` {id:'c092'}) SET n.title = 'The one conclusion to take away', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c093'}) SET n.title = 'Admin Finding 1 — the two key screens do not work by default', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c094'}) SET n.title = 'Admin Finding 2 — most of what exists is partial', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c095'}) SET n.title = 'Admin Finding 3 — 27 screens have no replacement at all', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'observed', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c096'}) SET n.title = 'Why no alarm ever sounded', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c097'}) SET n.title = 'The credit-ledger asymmetry is the key to the whole report', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c098'}) SET n.title = 'Read the last three rows together', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c099'}) SET n.title = 'Positioning, if Role A or A+B is chosen', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c100'}) SET n.title = 'The sequencing argument — decisions first, tasks second', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c101'}) SET n.title = 'The structural limit of this entire report', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c102'}) SET n.title = 'The storefront worked because it was not a rewrite', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c103'}) SET n.title = 'Who Solidus can still serve — the real segment is the merchants it already has', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MERGE (n:`claim` {id:'c104'}) SET n.title = 'What else the strategy table catches', n.status = 'settled', n.checked_at = '2026-07-25', n.tag = 'inferred', n.backfilled_tag = true;
MATCH (a {id:'c092'}), (b {id:'Role-A'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c093'}), (b {id:'R3'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c094'}), (b {id:'R3'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c095'}), (b {id:'R3'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c096'}), (b {id:'R3'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c097'}), (b {id:'RC1'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c098'}), (b {id:'Role-A'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c099'}), (b {id:'Role-A'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c100'}), (b {id:'B6'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c100'}), (b {id:'B10'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c102'}), (b {id:'C7'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c103'}), (b {id:'Role-A'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c104'}), (b {id:'S5'}) MERGE (a)-[:SUPPORTS]->(b);
// observed backfilled claims derive from the audited checkout
MATCH (a {id:'c093'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c094'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c095'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);

// body restorations: the backfill capped factor bodies at 1200 chars and
// segmented one claim mid-callout. F1/F3/c064 restored to full published
// text; c015, c016, c021, c034, c042, c051 completed to their full
// callouts (chip counts unchanged). Cap removed from backfill.rb.
MATCH (n {id:'F1'}) SET n.body_restored = '2026-07-29e';
MATCH (n {id:'F3'}) SET n.body_restored = '2026-07-29e';
MATCH (n {id:'c064'}) SET n.body_restored = '2026-07-29e';
// B9 carries its full Decision Template in nodes/B9.md; review date lifted
// to a property so the Watchlist query can find it
MATCH (n {id:'B9'}) SET n.review_date = '2027-01-25';

// ── increment 2026-07-29f ──────────────────────────────
// Round-2 rebuild test residue (rebuilt-from-graph-v2.md, blind
// subagent rebuild): two callout bodies were still partial and the
// report lede was missing. c022 completed with the promotions README
// intent quote and the missing-date paragraph; c026 completed with the
// categorized public-repos survey list; report node body gains the
// lede. No topology changes.
MATCH (n {id:'c022'}) SET n.body_restored = '2026-07-29f';
MATCH (n {id:'c026'}) SET n.body_restored = '2026-07-29f';
MATCH (n {id:'report'}) SET n.body_restored = '2026-07-29f';

// ── increment 2026-07-29g ──────────────────────────────
// Source reconstruction pass (skill TODO): web URIs minted
// deterministically from identifiers the node prose names verbatim.
// Bare #NNNN numbers are unambiguously solidusio/solidus (the audited
// repo); the /pull/ path redirects when the number is an issue.
// rails/sprockets-rails #546 is repo-qualified in the text itself.
// These nodes are reconstructed provenance, never observed; no
// existing tag is touched. DERIVED_FROM edges are added only where a
// node file explicitly names that exact identifier.
// Skipped as ambiguous: the HackerOne program (no handle named in any
// node) and the Q2 2023 blog post in DEC31 (no deterministic URL).
// OpenCollective and rubygems pages already exist as recovered sources
// from increment 2026-07-29c and are not re-minted.
MERGE (n:`source` {id:'src-recon-solidus-5391'}) SET n.title = 'solidusio/solidus #5391 — new admin porting checklist, open since Sept 2023', n.uri = 'https://github.com/solidusio/solidus/pull/5391', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-5410'}) SET n.title = 'solidusio/solidus #5410 — new admin breaks asset compilation when the host app has Tailwind', n.uri = 'https://github.com/solidusio/solidus/pull/5410', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-6035'}) SET n.title = 'solidusio/solidus #6035 — installer may fail silently', n.uri = 'https://github.com/solidusio/solidus/pull/6035', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-6228'}) SET n.title = 'solidusio/solidus #6228 — store create/edit draft PR', n.uri = 'https://github.com/solidusio/solidus/pull/6228', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-6232'}) SET n.title = 'solidusio/solidus #6232 — shipping methods draft PR', n.uri = 'https://github.com/solidusio/solidus/pull/6232', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-6236'}) SET n.title = 'solidusio/solidus #6236 — option types draft PR', n.uri = 'https://github.com/solidusio/solidus/pull/6236', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-6295'}) SET n.title = 'solidusio/solidus #6295 — confirmation dialog PR, adopted July 2026', n.uri = 'https://github.com/solidusio/solidus/pull/6295', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-6296'}) SET n.title = 'solidusio/solidus #6296 — product categories draft PR', n.uri = 'https://github.com/solidusio/solidus/pull/6296', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-6298'}) SET n.title = 'solidusio/solidus #6298 — tax rate create/edit draft PR', n.uri = 'https://github.com/solidusio/solidus/pull/6298', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-6302'}) SET n.title = 'solidusio/solidus #6302 — payment methods create/edit draft PR', n.uri = 'https://github.com/solidusio/solidus/pull/6302', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-6327'}) SET n.title = 'solidusio/solidus #6327 — installer fails with a Sprockets error', n.uri = 'https://github.com/solidusio/solidus/pull/6327', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-solidus-6516'}) SET n.title = 'solidusio/solidus #6516 — align the install instructions with the storefront', n.uri = 'https://github.com/solidusio/solidus/pull/6516', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
MERGE (n:`source` {id:'src-recon-sprockets-rails-546'}) SET n.title = 'rails/sprockets-rails #546 — warn instead of raising on missing manifest.js', n.uri = 'https://github.com/rails/sprockets-rails/pull/546', n.reconstructed = true, n.status = 'settled', n.checked_at = '2026-07-29';
// deterministic attribution: node file names the exact identifier
MATCH (a {id:'B10'}), (b {id:'src-recon-solidus-5391'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B6'}), (b {id:'src-recon-solidus-5391'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c047'}), (b {id:'src-recon-solidus-5391'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c056'}), (b {id:'src-recon-solidus-5391'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c084'}), (b {id:'src-recon-solidus-5391'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC31'}), (b {id:'src-recon-solidus-5391'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC32'}), (b {id:'src-recon-solidus-5391'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'F1'}), (b {id:'src-recon-solidus-5391'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'P1'}), (b {id:'src-recon-solidus-5391'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'RC1'}), (b {id:'src-recon-solidus-5391'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B9'}), (b {id:'src-recon-solidus-5410'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c042'}), (b {id:'src-recon-solidus-5410'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-sprockets-upstream'}), (b {id:'src-recon-solidus-5410'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B9'}), (b {id:'src-recon-solidus-6327'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c042'}), (b {id:'src-recon-solidus-6327'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-sprockets-upstream'}), (b {id:'src-recon-solidus-6327'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'B9'}), (b {id:'src-recon-solidus-6516'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c042'}), (b {id:'src-recon-solidus-6516'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-sprockets-upstream'}), (b {id:'src-recon-solidus-6516'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c042'}), (b {id:'src-recon-solidus-6035'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-sprockets-upstream'}), (b {id:'src-recon-solidus-6035'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c051'}), (b {id:'src-recon-solidus-6295'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC34'}), (b {id:'src-recon-solidus-6295'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'F3'}), (b {id:'src-recon-solidus-6295'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c052'}), (b {id:'src-recon-solidus-6232'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC34'}), (b {id:'src-recon-solidus-6232'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'F3'}), (b {id:'src-recon-solidus-6232'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'F3'}), (b {id:'src-recon-solidus-6228'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'F3'}), (b {id:'src-recon-solidus-6236'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'F3'}), (b {id:'src-recon-solidus-6296'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'F3'}), (b {id:'src-recon-solidus-6298'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'F3'}), (b {id:'src-recon-solidus-6302'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'tbl-sprockets-upstream'}), (b {id:'src-recon-sprockets-rails-546'}) MERGE (a)-[:DERIVED_FROM]->(b);
// ── increment 2026-08-03a ──────────────────────────────
// Courtesy window answered: the draft posted to the project Slack drew
// a Core Team reply (Jared Norman, Super Good) within about an hour.
// Five user-tagged claims minted from the exchange. q01 and q05
// settled. R3 and B6 gain DISPUTES edges scoping re-verification.
// report metadata bumped to rev 24, stakeholders partial. The next
// outgoing ledger expense is the observable confirming the candidate.
MERGE (n:`source` {id:'src-slack-courtesy-2026-08'}) SET n.title = 'Solidus Slack — courtesy-window thread: draft posted, Core Team reply', n.uri = 'http://slack.solidus.io', n.status = 'settled', n.checked_at = '2026-08-03';
MERGE (n:`claim` {id:'c105'}) SET n.title = 'Core Team verdict on the draft: not 100% accurate, helpful in aggregate', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-03', n.chips = 1;
MERGE (n:`claim` {id:'c106'}) SET n.title = 'No candidate since July 2025; a new candidate is in the works', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-03', n.chips = 1;
MERGE (n:`claim` {id:'c107'}) SET n.title = 'The new admin is alive and deliberately paced; real stores run it incomplete', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-03', n.chips = 1;
MERGE (n:`claim` {id:'c108'}) SET n.title = 'Sequencing conceded in part; viability of the new admin is not a concern', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-03', n.chips = 1;
MERGE (n:`claim` {id:'c109'}) SET n.title = 'Fork history: post-split collaboration, no particular drama', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-03', n.chips = 1;
MERGE (n:`decision` {id:'DEC36'}) SET n.title = 'Record the courtesy-window answers; stakeholders none reached to partial (rev 24)', n.status = 'standing', n.checked_at = '2026-08-03';
MATCH (a {id:'c105'}), (b {id:'src-slack-courtesy-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c106'}), (b {id:'src-slack-courtesy-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c107'}), (b {id:'src-slack-courtesy-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c108'}), (b {id:'src-slack-courtesy-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c109'}), (b {id:'src-slack-courtesy-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC36'}), (b {id:'src-slack-courtesy-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c107'}), (b {id:'R3'}) MERGE (a)-[:DISPUTES]->(b);
MATCH (a {id:'c108'}), (b {id:'B6'}) MERGE (a)-[:DISPUTES]->(b);
// q01 answered by c106
MATCH (q {id:'q01'}) SET q.status = 'settled', q.checked_at = '2026-08-03';
// q05 answered by c107
MATCH (q {id:'q05'}) SET q.status = 'settled', q.checked_at = '2026-08-03';
MATCH (r {id:'R3'}) SET r.checked_at = '2026-08-03';
MATCH (b {id:'B6'}) SET b.checked_at = '2026-08-03';
MATCH (rep {id:'report'}) SET rep.rev = 24, rep.updated = '2026-08-03', rep.stakeholders = 'partial', rep.checked_at = '2026-08-03';
// ── increment 2026-08-03b ──────────────────────────────
// Compile reconciliation: rev 24 prose placed the new user chips.
// c105 appears twice (Timeline event, structural-limit callout) and
// c107 twice (R3 row, §20 item 5). Others stay at one chip each.
MATCH (c {id:'c105'}) SET c.chips = 2;
MATCH (c {id:'c107'}) SET c.chips = 2;
// ── increment 2026-08-03c ──────────────────────────────
// The follow-up answered in the same thread, second Core Team reply.
// Three more user-tagged claims. The admin is a priority and the
// third-party funding model is deliberate (c110, SUPPORTS R3). The
// funds-to-agencies standard is stated (c112, SUPPORTS DEC12). Spree
// relations closed out (c111, SUPPORTS c109). Report bumped to rev 25.
MERGE (n:`claim` {id:'c110'}) SET n.title = 'The admin is a priority and funding independent third parties is deliberate', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-03', n.chips = 2;
MERGE (n:`claim` {id:'c111'}) SET n.title = 'Solidus and Spree: no beef these days, different directions', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-03', n.chips = 1;
MERGE (n:`claim` {id:'c112'}) SET n.title = 'Agencies taking funds: fine when transparent and fairly priced', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-03', n.chips = 1;
MERGE (n:`decision` {id:'DEC37'}) SET n.title = 'Record the follow-up answers: admin a priority, funding model deliberate (rev 25)', n.status = 'standing', n.checked_at = '2026-08-03';
MATCH (a {id:'c110'}), (b {id:'src-slack-courtesy-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c111'}), (b {id:'src-slack-courtesy-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c112'}), (b {id:'src-slack-courtesy-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC37'}), (b {id:'src-slack-courtesy-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c110'}), (b {id:'R3'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c111'}), (b {id:'c109'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c112'}), (b {id:'DEC12'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (s {id:'src-slack-courtesy-2026-08'}) SET s.checked_at = '2026-08-03';
MATCH (rep {id:'report'}) SET rep.rev = 25, rep.checked_at = '2026-08-03';
// ── increment 2026-08-08a ──────────────────────────────
// Rev-26 targeted re-verification, evidence window 2026-08-08. One
// correction (blog silence, DEC38 — disputes the blog bullet inside
// c005 and c032), one advance (PR 6528 delivers the adoption, c115),
// and the R3 observable confirmed NOT fired (c114). Meta-gem,
// checklist, harness re-confirmed (c116-c118). Spree at v5.6.1 (c119).
MERGE (n:`source` {id:'src-gh-recheck-2026-08'}) SET n.title = 'GitHub API re-verification sweep 2026-08-08', n.uri = 'https://api.github.com/repos/solidusio/solidus', n.status = 'settled', n.checked_at = '2026-08-08';
MERGE (n:`source` {id:'src-oc-ledger-2026-08'}) SET n.title = 'Open Collective ledger re-check 2026-08-08', n.uri = 'https://opencollective.com/solidus/transactions?type=DEBIT', n.status = 'settled', n.checked_at = '2026-08-08';
MERGE (n:`source` {id:'src-blog-v47'}) SET n.title = 'solidus.io blog — status update Solidus v4.7, 5 May 2026', n.uri = 'https://solidus.io/blog/project-status-solidus-v4-7', n.status = 'settled', n.checked_at = '2026-08-08';
MERGE (n:`claim` {id:'c113'}) SET n.title = 'A blog post exists after October 2025: status update for v4.7, published 5 May 2026', n.tag = 'web', n.status = 'settled', n.checked_at = '2026-08-08', n.chips = 3;
MERGE (n:`claim` {id:'c114'}) SET n.title = 'Re-check 2026-08-08: no outgoing expense since July 2025; balance $133,750; sponsors unchanged', n.tag = 'observed', n.status = 'settled', n.checked_at = '2026-08-08', n.chips = 4;
MERGE (n:`claim` {id:'c115'}) SET n.title = 'forkata delivered the 6295 adoption as fresh PR 6528 on 2026-07-30, without the disputed dependency', n.tag = 'observed', n.status = 'settled', n.checked_at = '2026-08-08', n.chips = 1;
MERGE (n:`claim` {id:'c116'}) SET n.title = 'Meta-gem unchanged at 2026-08-08: backend and legacy promotions default; admin and promotions absent', n.tag = 'observed', n.status = 'settled', n.checked_at = '2026-08-08', n.chips = 1;
MERGE (n:`claim` {id:'c117'}) SET n.title = 'Issue 5391 checklist still has zero boxes ticked at 2026-08-08', n.tag = 'observed', n.status = 'settled', n.checked_at = '2026-08-08', n.chips = 2;
MERGE (n:`claim` {id:'c118'}) SET n.title = 'No agent instruction file in the repo root at 2026-08-08', n.tag = 'observed', n.status = 'settled', n.checked_at = '2026-08-08', n.chips = 1;
MERGE (n:`claim` {id:'c119'}) SET n.title = 'Spree at v5.6.1 (2026-07-28); six platform releases in July 2026', n.tag = 'web', n.status = 'settled', n.checked_at = '2026-08-08', n.chips = 0, n.backfilled_tag = true;
MERGE (n:`decision` {id:'DEC38'}) SET n.title = 'Superseded: last blog post October 2025 / nine months of silence', n.status = 'superseded', n.checked_at = '2026-08-08';
MERGE (n:`decision` {id:'DEC39'}) SET n.title = 'Record the rev-26 re-verification, evidence window 2026-08-08', n.status = 'standing', n.checked_at = '2026-08-08';
MATCH (a {id:'c113'}), (b {id:'src-blog-v47'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c114'}), (b {id:'src-oc-ledger-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c115'}), (b {id:'src-gh-recheck-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c116'}), (b {id:'src-gh-recheck-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c117'}), (b {id:'src-gh-recheck-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c118'}), (b {id:'src-gh-recheck-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c119'}), (b {id:'src-gh-recheck-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC38'}), (b {id:'src-blog-v47'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC39'}), (b {id:'src-gh-recheck-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC39'}), (b {id:'src-oc-ledger-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c113'}), (b {id:'c005'}) MERGE (a)-[:DISPUTES]->(b);
MATCH (a {id:'c113'}), (b {id:'c032'}) MERGE (a)-[:DISPUTES]->(b);
MATCH (a {id:'c114'}), (b {id:'R3'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c114'}), (b {id:'c106'}) MERGE (a)-[:DISPUTES]->(b);
MATCH (a {id:'c115'}), (b {id:'F3'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (r {id:'R3'}) SET r.checked_at = '2026-08-08';
MATCH (f {id:'F3'}) SET f.checked_at = '2026-08-08';
MATCH (d {id:'D4'}) SET d.checked_at = '2026-08-08';
MATCH (s {id:'S7'}) SET s.checked_at = '2026-08-08';
// ── increment 2026-08-08b ──────────────────────────────
// Framework v0.7 restructure at rev 26 (DEC40). Policy register PL1-PL5
// born proposed. Easy Wins lane E1-E5. Bets B3 and B4 superseded into
// the lane. New sections minted as sec-21 to sec-23. Executive Summary
// section superseded. Section order for rev 26 lands as an order
// property on every live section node.
MERGE (n:`policy` {id:'PL1'}) SET n.title = 'Every replacement names the release that removes what it replaces', n.kind = 'direction', n.state = 'proposed', n.status = 'open', n.review_date = '2027-02-08', n.checked_at = '2026-08-08';
MERGE (n:`policy` {id:'PL2'}) SET n.title = 'Collective money buys named outcomes, not time', n.kind = 'allocation', n.state = 'proposed', n.status = 'open', n.review_date = '2027-02-08', n.checked_at = '2026-08-08';
MERGE (n:`policy` {id:'PL3'}) SET n.title = 'Decisions are published where adopters can read them', n.kind = 'guidance', n.state = 'proposed', n.status = 'open', n.review_date = '2027-02-08', n.checked_at = '2026-08-08';
MERGE (n:`policy` {id:'PL4'}) SET n.title = 'Every parallel initiative gets a quarterly disposition, recorded publicly', n.kind = 'approval', n.state = 'proposed', n.status = 'open', n.review_date = '2027-02-08', n.checked_at = '2026-08-08';
MERGE (n:`policy` {id:'PL5'}) SET n.title = 'Departing contributor in-flight work is adopted or closed within a release cycle', n.kind = 'guidance', n.state = 'proposed', n.status = 'open', n.review_date = '2027-02-08', n.checked_at = '2026-08-08';
MERGE (n:`easywin` {id:'E1'}) SET n.title = 'Tick the already-done boxes on issue 5391', n.feeds = 'knowledge', n.day = 'minutes', n.status = 'open', n.checked_at = '2026-08-08';
MERGE (n:`easywin` {id:'E2'}) SET n.title = 'Renovate or Dependabot config for routine version bumps', n.feeds = 'dependency hygiene', n.day = 'an hour', n.status = 'open', n.checked_at = '2026-08-08';
MERGE (n:`easywin` {id:'E3'}) SET n.title = 'A bundler-audit job in CI', n.feeds = 'static gates', n.day = 'an hour', n.status = 'open', n.checked_at = '2026-08-08';
MERGE (n:`easywin` {id:'E4'}) SET n.title = 'In-repo agent harness: AGENTS.md, CLAUDE.md, committed permissions', n.feeds = 'agent harness', n.day = 'about a day', n.status = 'open', n.checked_at = '2026-08-08';
MERGE (n:`easywin` {id:'E5'}) SET n.title = 'Republish the strategy statement in project artifacts', n.feeds = 'knowledge', n.day = 'an hour', n.status = 'open', n.checked_at = '2026-08-08';
MERGE (n:`decision` {id:'DEC40'}) SET n.title = 'Restructure to framework v0.7 at rev 26', n.status = 'standing', n.checked_at = '2026-08-08';
MATCH (a {id:'PL1'}), (b {id:'RC1'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL1'}), (b {id:'D1'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL1'}), (b {id:'S3'}) MERGE (a)-[:SUPERSEDES]->(b);
MATCH (a {id:'PL1'}), (b {id:'S2'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'PL2'}), (b {id:'RC1'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL2'}), (b {id:'R3'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL2'}), (b {id:'F1'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL2'}), (b {id:'c112'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'PL3'}), (b {id:'D2'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL3'}), (b {id:'D3'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL3'}), (b {id:'R4'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL3'}), (b {id:'S1'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'PL3'}), (b {id:'S5'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'PL4'}), (b {id:'R3'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL4'}), (b {id:'D1'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL4'}), (b {id:'RC2'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL4'}), (b {id:'S5'}) MERGE (a)-[:SUPERSEDES]->(b);
MATCH (a {id:'PL5'}), (b {id:'RC2'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL5'}), (b {id:'F2'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL5'}), (b {id:'F3'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'PL5'}), (b {id:'c115'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'E1'}), (b {id:'F1'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'E2'}), (b {id:'R1'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'E3'}), (b {id:'R1'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'E4'}), (b {id:'D4'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'E4'}), (b {id:'S7'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'E5'}), (b {id:'S1'}) MERGE (a)-[:ADDRESSES]->(b);
MATCH (a {id:'E2'}), (b {id:'B3'}) MERGE (a)-[:SUPERSEDES]->(b);
MATCH (a {id:'E3'}), (b {id:'B3'}) MERGE (a)-[:SUPERSEDES]->(b);
MATCH (a {id:'E4'}), (b {id:'B4'}) MERGE (a)-[:SUPERSEDES]->(b);
MATCH (b {id:'B3'}) SET b.status = 'superseded', b.checked_at = '2026-08-08';
MATCH (b {id:'B4'}) SET b.status = 'superseded', b.checked_at = '2026-08-08';
MERGE (n:`section` {id:'sec-21'}) SET n.title = 'Policies & Operations', n.anchor = '#policies--operations', n.status = 'settled', n.checked_at = '2026-08-08';
MERGE (n:`section` {id:'sec-22'}) SET n.title = 'Easy Wins', n.anchor = '#easy-wins', n.status = 'settled', n.checked_at = '2026-08-08';
MERGE (n:`section` {id:'sec-23'}) SET n.title = 'Watchlist', n.anchor = '#watchlist', n.status = 'settled', n.checked_at = '2026-08-08';
MATCH (s {id:'sec-03'}) SET s.status = 'superseded', s.checked_at = '2026-08-08';
MATCH (a {id:'sec-21'}), (b {id:'sec-03'}) MERGE (a)-[:SUPERSEDES]->(b);
MATCH (s {id:'sec-01'}) SET s.order = 1;
MATCH (s {id:'sec-02'}) SET s.order = 2;
MATCH (s {id:'sec-21'}) SET s.order = 3;
MATCH (s {id:'sec-04'}) SET s.order = 4;
MATCH (s {id:'sec-05'}) SET s.order = 5;
MATCH (s {id:'sec-06'}) SET s.order = 6;
MATCH (s {id:'sec-07'}) SET s.order = 7;
MATCH (s {id:'sec-08'}) SET s.order = 8;
MATCH (s {id:'sec-09'}) SET s.order = 9;
MATCH (s {id:'sec-10'}) SET s.order = 10;
MATCH (s {id:'sec-11'}) SET s.order = 11;
MATCH (s {id:'sec-12'}) SET s.order = 12;
MATCH (s {id:'sec-13'}) SET s.order = 13;
MATCH (s {id:'sec-14'}) SET s.order = 14;
MATCH (s {id:'sec-15'}) SET s.order = 15;
MATCH (s {id:'sec-16'}) SET s.order = 16;
MATCH (s {id:'sec-22'}) SET s.order = 17;
MATCH (s {id:'sec-17'}) SET s.order = 18;
MATCH (s {id:'sec-18'}) SET s.order = 19;
MATCH (s {id:'sec-19'}) SET s.order = 20;
MATCH (s {id:'sec-23'}) SET s.order = 21;
MATCH (s {id:'sec-20'}) SET s.order = 22;
MATCH (rep {id:'report'}) SET rep.rev = 26, rep.updated = '2026-08-08', rep.framework = 'ESF v0.7', rep.checked_at = '2026-08-08';
// ── increment 2026-08-08c ──────────────────────────────
// Still rev 26, pre-publication: Policies & Operations moves ahead of
// the Timeline (the decided layer reads first), and the deck now
// carries each PL row as its own detailed slide (esf-dsl 0.3.0 policy
// cards; deck marks added to PL1-PL5). Only two order values change.
MATCH (s {id:'sec-21'}) SET s.order = 2, s.checked_at = '2026-08-08';
MATCH (s {id:'sec-02'}) SET s.order = 3, s.checked_at = '2026-08-08';
// ── increment 2026-08-09a ──────────────────────────────
// Owner dispute against the workflow file kills the unreleased-versions
// framing: both versions shipped months before Solidus adopted them.
// c120 disputes the timeline claim inside c005 and credit C1; C1 title
// corrected by SET. First correction moving against the flattering
// direction. Report to rev 27.
MERGE (n:`source` {id:'src-release-dates'}) SET n.title = 'Rails and Ruby release dates plus Solidus CI adoption commits', n.uri = 'https://endoflife.date/rails', n.status = 'settled', n.checked_at = '2026-08-09';
MERGE (n:`claim` {id:'c120'}) SET n.title = 'Rails 8.1 (2025-10-22) and Ruby 4.0 (2025-12) were released before Solidus adopted them in CI (2026-01)', n.tag = 'web+observed', n.status = 'settled', n.checked_at = '2026-08-09', n.chips = 3;
MERGE (n:`decision` {id:'DEC41'}) SET n.title = 'Superseded: tested against unreleased Rails and Ruby versions', n.status = 'superseded', n.checked_at = '2026-08-09';
MATCH (a {id:'c120'}), (b {id:'src-release-dates'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c120'}), (b {id:'src-checkout'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC41'}), (b {id:'src-release-dates'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c120'}), (b {id:'c005'}) MERGE (a)-[:DISPUTES]->(b);
MATCH (a {id:'c120'}), (b {id:'C1'}) MERGE (a)-[:DISPUTES]->(b);
MATCH (c {id:'C1'}) SET c.title = 'Test matrix current to the newest Rails and Ruby', c.checked_at = '2026-08-09';
MATCH (rep {id:'report'}) SET rep.rev = 27, rep.updated = '2026-08-09', rep.checked_at = '2026-08-09';
// ── increment 2026-08-11a ──────────────────────────────
// Second stakeholder exchange: Alberto Vena (Core Team, Nebulab) corrects the money reading. c121 disputes c021 and the payee-as-beneficiary framing dies; the widened search finds the misread was structural (c122). q02 settled by c124. Report to rev 28.
MERGE (n:`source` {id:'src-slack-money-2026-08'}) SET n.title = 'Solidus Slack — post-publication reply: Alberto Vena corrects the money reading', n.uri = 'http://slack.solidus.io', n.status = 'settled', n.checked_at = '2026-08-11';
MERGE (n:`source` {id:'src-oc-expenses-faq'}) SET n.title = 'Open Collective expenses page FAQ — what is public on an expense', n.uri = 'https://opencollective.com/solidus/expenses', n.status = 'settled', n.checked_at = '2026-08-11';
MERGE (n:`claim` {id:'c121'}) SET n.title = 'Nebulab retained USD 0; the 2023 invoices were money fronted to third parties', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-11', n.chips = 4;
MERGE (n:`claim` {id:'c122'}) SET n.title = 'Open Collective exposes only expense amount and description publicly; attachments are admin-only', n.tag = 'web', n.status = 'settled', n.checked_at = '2026-08-11', n.chips = 3;
MERGE (n:`claim` {id:'c123'}) SET n.title = 'Nebulab bootstrapped the collective, is the top donor, and staffed 1-3 senior devs full-time for multiple years', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-11', n.chips = 4;
MERGE (n:`claim` {id:'c124'}) SET n.title = 'The wind-down cause: unpaid full-time work became unsustainable; succession is pointed at the collective funds', n.tag = 'user', n.status = 'settled', n.checked_at = '2026-08-11', n.chips = 2;
MERGE (n:`decision` {id:'DEC42'}) SET n.title = 'Superseded: the 2023 ledger as a related-party payment to an insider', n.status = 'superseded', n.checked_at = '2026-08-11';
MERGE (n:`decision` {id:'DEC43'}) SET n.title = 'Record the second stakeholder exchange (rev 28)', n.status = 'standing', n.checked_at = '2026-08-11';
MATCH (a {id:'c121'}), (b {id:'src-slack-money-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c123'}), (b {id:'src-slack-money-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c124'}), (b {id:'src-slack-money-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c122'}), (b {id:'src-oc-expenses-faq'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC42'}), (b {id:'src-slack-money-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'DEC43'}), (b {id:'src-slack-money-2026-08'}) MERGE (a)-[:DERIVED_FROM]->(b);
MATCH (a {id:'c121'}), (b {id:'c021'}) MERGE (a)-[:DISPUTES]->(b);
MATCH (a {id:'c122'}), (b {id:'c121'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c123'}), (b {id:'c078'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c124'}), (b {id:'RC1'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (a {id:'c124'}), (b {id:'RC2'}) MERGE (a)-[:SUPPORTS]->(b);
MATCH (q {id:'q02'}) SET q.status = 'settled', q.checked_at = '2026-08-11';
MATCH (c {id:'c021'}) SET c.checked_at = '2026-08-11';
MATCH (c {id:'c016'}) SET c.checked_at = '2026-08-11';
MATCH (c {id:'c078'}) SET c.checked_at = '2026-08-11';
MATCH (rc {id:'RC2'}) SET rc.checked_at = '2026-08-11';
MATCH (rep {id:'report'}) SET rep.rev = 28, rep.updated = '2026-08-11', rep.checked_at = '2026-08-11';
