# Release Notes

## v0.1.0-rc.1 — 2026-07-27

Initial public-release candidate.

### Included

- Cross-channel Chinese-to-English commercial-intent reconstruction
- Cold outreach, EDM/newsletter, lifecycle, transactional, LinkedIn, website, sales, and customer-success guidance
- English understanding, reply drafting, polishing, and severity-based audit
- Fact preservation, brand voice, single-CTA, and Chinese intent verification
- Safety, privacy, prompt-injection, sensitive-data, and regulated-content boundaries
- Two-level human review: normal review for ordinary public or permissioned content, and blocking review for unresolved bulk, binding, incident, regulated, deceptive, or materially harmful content
- 21 reproducible evaluation cases with sanitized primary outputs
- Three independent runs each for five critical regression cases
- Minimal WorkBuddy package containing only `SKILL.md`
- Separate `REVIEW REQUIRED` and `BLOCKER` levels to avoid over-blocking ordinary public content

### Known limitations

- Output quality varies by model and platform.
- The Skill provides drafts, not legal, compliance, medical, financial, employment, or security advice.
- Current laws, platform policies, and deliverability requirements require official-source verification.
- The release does not automate sending, publishing, CRM, ESP, DNS, or platform changes.
- WorkBuddy package import and runtime behavior have not yet been independently verified end to end.
- Promotion to `v0.1.0` requires WorkBuddy import, invocation, mixed-language, repeated-session, and fixed-suite verification.
