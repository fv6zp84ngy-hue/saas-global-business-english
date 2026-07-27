# SaaS Global Business English

**English** | [简体中文](README.zh-CN.md)

A cross-platform, text-only release candidate for Chinese-speaking teams at SaaS companies expanding overseas. It is designed for WorkBuddy and similar AI platforms; actual behavior varies by platform and model and requires human review for high-impact use.

It turns Chinese business intent into audience-ready English and supports cold outreach, permission-based email, lifecycle messages, LinkedIn, websites, sales, and customer-success communication. It can also explain inbound English, draft replies, polish copy, and audit claims, tone, localization, and conversion clarity.

## What it does

- Reconstructs business intent instead of translating sentence by sentence
- Preserves facts, uncertainty, commercial terms, and brand voice
- Adapts structure and tone to channel, audience, relationship, and SaaS stage
- Returns usable English with concise Chinese verification when helpful
- Rejects deceptive, privacy-invasive, discriminatory, or unsupported content
- Uses `REVIEW REQUIRED` for normal public or permissioned content and reserves `BLOCKER` for material-risk cases
- Requires human review for high-impact, regulated, bulk, contractual, and incident communication

The Skill produces drafts and recommendations only. It does not send messages, publish content, import lists, change platform settings, or provide legal advice.

## Repository structure

```text
.
├── LICENSE
├── README.md
├── README.zh-CN.md
├── RELEASE_NOTES.md
├── SECURITY.md
├── THIRD_PARTY_NOTICES.md
├── VERSION
├── saas-global-business-english/
│   ├── SKILL.md
│   └── agents/openai.yaml
├── evals/
│   ├── cases.json
│   ├── results-v0.1.0-rc.1.md
│   ├── workbuddy-runtime-v0.1.0-rc.1.md
│   └── outputs/
├── dist/
│   └── saas-global-business-english-workbuddy-v0.1.0-rc.1.zip
├── scripts/package-workbuddy.sh
├── 01-SPEC.md
├── 02-PRD.md
├── 03-DESIGN.md
└── 04-DIFF-NOTES.md
```

`SKILL.md` contains the complete cross-platform workflow. The `agents/` metadata is for Codex-compatible interfaces and is deliberately excluded from the WorkBuddy package.

## Install

### WorkBuddy

Use the release artifact named:

```text
saas-global-business-english-workbuddy-v0.1.0-rc.1.zip
```

The archive contains only:

```text
saas-global-business-english/
└── SKILL.md
```

Import the archive through WorkBuddy's local Skill upload flow. Review its permissions and test it in a new conversation before wider use.

WorkBuddy package import and runtime behavior have not yet been independently verified end to end.

### Codex or compatible Agent Skills runtimes

Copy the `saas-global-business-english` directory into the platform's supported Skills directory, or keep it as a project-level Skill where supported.

## Example requests

- “把这段中文产品介绍改成发给美国 Head of Product 的冷邮件，不要编造客户数据。”
- “解释客户这封英文回复的真实诉求，再写一版不新增承诺的回复。”
- “审查这个官网 Hero 的 claim、品牌语气和转化逻辑。”
- “为试用未激活用户设计三封英文生命周期邮件。”

## Safety and limitations

Generated content must be reviewed by a responsible human before bulk sending, public publication, contractual use, incident communication, or use in healthcare, finance, employment, and other regulated or high-impact contexts.

The Skill cannot guarantee legal compliance, deliverability, response rate, conversion, ranking, revenue, or the accuracy of inferred intent. Laws, platform policies, and provider rules must be checked against current official sources.

Do not paste credentials, private keys, patient data, financial account data, or unnecessary personal information into prompts.

## Evaluation

The reproducible cases and scoring procedure are in [`evals/`](evals/). Run each case in a fresh conversation using the exact prompt, record platform/model/version/date, and score every required and prohibited behavior.

Evaluated on Codex against 21 fixed cases; all passed in the recorded release-candidate run. Five critical cases also passed three independent runs each. See [`evals/results-v0.1.0-rc.1.md`](evals/results-v0.1.0-rc.1.md) and the sanitized raw outputs for the exact evidence and limitations.

Before release:

```bash
jq empty evals/cases.json
bash scripts/package-workbuddy.sh
unzip -l dist/saas-global-business-english-workbuddy-v0.1.0-rc.1.zip
```

## Security

Report suspected prompt-injection, data-exposure, unsafe-output, or packaging vulnerabilities according to [`SECURITY.md`](SECURITY.md). Do not include secrets or personal data in a public issue.

## License and attribution

This project is released under the MIT License. See [`LICENSE`](LICENSE).

Third-party attribution and the upstream MIT notice are preserved in [`THIRD_PARTY_NOTICES.md`](THIRD_PARTY_NOTICES.md).
