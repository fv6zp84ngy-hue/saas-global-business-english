# SaaS 全球化商业英语

[English](README.md) | **简体中文**

这是一个面向中国 SaaS 出海团队的跨平台、纯文本商业英语 Skill，目前为候选发布版本。它适用于 WorkBuddy 及类似 AI 平台；实际表现会因平台和模型而异，高影响场景必须由人工审核。

它能够将中文商业意图重构为符合海外受众阅读习惯的英文内容，覆盖冷开发、许可型邮件、生命周期邮件、LinkedIn、官网、销售和客户成功沟通。它也支持理解英文来信、起草回复、润色文案，以及审查主张、语气、本地化和转化清晰度。

## 核心能力

- 重构商业意图，而不是逐句直译
- 保留事实、不确定性、商业条款和品牌语气
- 根据渠道、受众、关系和 SaaS 阶段调整结构与语气
- 输出可直接使用的英文，并在需要时提供简明中文核对
- 拒绝欺骗、侵犯隐私、歧视或缺乏依据的内容
- 普通公开内容或许可型内容使用 `REVIEW REQUIRED`，重大风险场景才使用 `BLOCKER`
- 高影响、受监管、批量触达、合同及事故沟通必须由人工审核

本 Skill 只生成草稿和建议，不会发送消息、发布内容、导入名单、修改平台设置，也不提供法律意见。

## 仓库结构

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

`SKILL.md` 包含完整的跨平台工作流程。`agents/` 中的元数据用于兼容 Codex 的界面，并刻意排除在 WorkBuddy 安装包之外。

## 安装

### WorkBuddy

使用以下发布文件：

```text
saas-global-business-english-workbuddy-v0.1.0-rc.1.zip
```

压缩包仅包含：

```text
saas-global-business-english/
└── SKILL.md
```

通过 WorkBuddy 的本地 Skill 上传入口导入压缩包。扩大使用范围前，请检查其权限并在新会话中完成测试。

WorkBuddy 包的导入和运行表现尚未完成独立的端到端实机验证。

### Codex 或兼容 Agent Skills 的运行环境

将 `saas-global-business-english` 目录复制到平台支持的 Skills 目录中；如果平台支持项目级 Skill，也可以直接将其保留在项目中。

## 使用示例

- “把这段中文产品介绍改成发给美国 Head of Product 的冷邮件，不要编造客户数据。”
- “解释客户这封英文回复的真实诉求，再写一版不新增承诺的回复。”
- “审查这个官网 Hero 的 claim、品牌语气和转化逻辑。”
- “为试用未激活用户设计三封英文生命周期邮件。”

## 安全与限制

批量发送、公开发布、合同使用、事故沟通，以及医疗、金融、招聘等受监管或高影响场景中的生成内容，必须由相应负责人审核。

本 Skill 不能保证法律合规、送达率、回复率、转化率、排名、收入，也不能保证对商业意图的推断完全准确。法律、平台政策和服务商规则必须根据最新官方来源核验。

请勿在提示词中粘贴凭证、私钥、患者数据、金融账户数据或非必要个人信息。

## 评测

可复现用例和评分流程位于 [`evals/`](evals/) 目录。运行时应为每个用例创建独立新会话，使用原始提示词，并记录平台、模型、版本、日期，以及每项必要和禁止行为的判定。

本候选版本已在 Codex 上完成 21 个固定用例评测，记录中的用例全部通过；其中 5 个关键用例分别通过了 3 次独立运行。完整证据和限制请参阅 [`evals/results-v0.1.0-rc.1.md`](evals/results-v0.1.0-rc.1.md) 及脱敏原始输出。

发布前执行：

```bash
jq empty evals/cases.json
bash scripts/package-workbuddy.sh
unzip -l dist/saas-global-business-english-workbuddy-v0.1.0-rc.1.zip
```

## 安全问题报告

如发现提示词注入、数据泄露、不安全输出或打包漏洞，请按照 [`SECURITY.md`](SECURITY.md) 提交报告。不要在公开 Issue 中包含密钥或个人数据。

## 许可证与归属

本项目使用 MIT License，详见 [`LICENSE`](LICENSE)。

第三方归属和上游 MIT 许可证声明保存在 [`THIRD_PARTY_NOTICES.md`](THIRD_PARTY_NOTICES.md)。
