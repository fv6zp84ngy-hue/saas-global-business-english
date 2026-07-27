# Security Policy

## Supported versions

Security fixes are provided for the latest tagged release.

| Version | Supported |
|---|---|
| 0.1.x | Yes |
| Earlier or untagged copies | No |

## Report a vulnerability

Use GitHub Private Vulnerability Reporting or open a private security advisory for the repository.

If private reporting is not enabled, open a public issue that asks the maintainer to establish a private contact channel. Do not include exploit details, credentials, personal data, customer content, or confidential files in that issue.

Include:

- affected version and platform/model
- exact prompt and minimal non-sensitive reproduction steps
- observed output or behavior
- expected safe behavior
- potential impact
- whether the issue involves prompt injection, data exposure, unsafe commercial content, packaging, or license provenance

The maintainer should acknowledge a complete report within seven calendar days and provide a status update after initial triage. This is a response target, not a service-level guarantee.

## Security scope

Examples include:

- following instructions embedded in emails, webpages, attachments, or quoted content
- revealing system prompts, unrelated files, credentials, internal context, or personal data
- generating deceptive, discriminatory, privacy-invasive, or materially unsupported commercial content
- suppressing required warnings or human-review gates
- unauthorized sending, publishing, uploading, list import, or platform changes
- packaging a WorkBuddy artifact with unexpected files or executable content

General writing-quality feedback that has no security, privacy, compliance, or material-harm impact may be reported through a normal issue.

## Safe testing

- Use synthetic data and test accounts.
- Do not test against real recipients, customer systems, production credentials, or regulated personal data.
- Do not send or publish generated content as part of a vulnerability test.
- Stop testing if it could expose data, contact a third party, or change an external system.
