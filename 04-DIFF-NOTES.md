# 产品范围与参考 Skills 差异说明

## 1. 输入识别

本次输入包含：

1. 四份以“中国 SaaS 出海双语 EDM Skill”为范围的旧产品文档。
2. `email-marketing`：通用 Email Marketing Skill。
3. `channels-email-marketing`：AI/SaaS Email Marketing 渠道 Skill。
4. 当前产品定义：覆盖冷开发、EDM、生命周期邮件、LinkedIn、官网及其他海外获客与客户沟通场景的双语商业英文 Skill。

当前产品定义与旧文档的“仅 Email、不得新增第三个 Skill”约束直接冲突。按当前请求优先，本次采用新建跨渠道 Skill 的方案；两份 Email Skill 作为知识来源保留，不在 Downloads 中修改。

## 2. 从参考 Skills 保留的能力

- 中文商业意图优先于逐句翻译
- 海外读者视角和客户价值表达
- 事实保护、占位符和单一主要 CTA
- 英文成稿与中文意图回译
- EDM vs Newsletter、五类邮件及生命周期策略
- 冷邮件与许可型营销的边界
- 分群、触发、节奏、A/B、UTM 和衡量
- SPF、DKIM、DMARC 及动态规则核验原则
- 打开率降为方向性指标
- 无联网、无工具、无文件访问时的降级能力

## 3. 新增能力

### 3.1 产品范围

- LinkedIn 连接邀请、私信、跟进、帖子、评论和资料页表达
- 官网、落地页、功能页、定价页和微文案
- 销售跟进、异议处理、方案沟通和 Demo 后沟通
- 客户成功、实施、支持、事件、采用、续费、扩展和流失风险沟通
- 未知渠道的通用推断规则

### 3.2 工作流

- 统一的五种任务模式：创作/本地化、理解/回复、润色、审查、规划
- 扩展商业意图对象：Situation、Objection、Voice、Constraints
- 明确区分事实、假设、推断和缺失证据
- 英文来信的请求、承诺、截止时间、歧义和风险提取
- Blocker / Major / Minor 审查严重度
- 按任务类型变化的输出契约和最终质量门

### 3.3 发布安全与治理

- 新增不可信内容、提示词注入、数据最小化和文件/凭证保护
- 新增欺骗、冒充、敏感数据营销、歧视定向和虚假高风险 claim 拒绝
- 新增普通公开内容 `REVIEW REQUIRED` 与重大风险 `BLOCKER` 的两级人工复核
- 修正事故沟通中的法律承认/否认表述
- 为“只给最终版”增加 Blocker 与安全警告例外
- 补充 MIT License、上游 MIT 归属、README、SECURITY 和版本说明
- 增加可复现 evals 与仅含 `SKILL.md` 的 WorkBuddy 打包流程

## 4. 结构变化

| 项目 | 旧方案 | 当前方案 |
|---|---|---|
| Skill 数量 | 修改两份 Email Skill | 新建一个跨渠道 Skill |
| 核心定位 | Email Marketing | SaaS 出海商业英文 |
| 渠道 | Email | Email、LinkedIn、Website、Sales、CS 等 |
| 运行时资源 | 单文件 Skill | 单文件 Skill + UI metadata |
| 开源治理 | 无 | License、Notice、README、Security、Evals、Release notes |
| 工具依赖 | 无 | 无 |
| 产品文档 | 仅 Email | 与当前跨渠道定义对齐 |

## 5. 刻意未做的扩展

- 未自动操作 CRM、ESP、LinkedIn、网站 CMS 或分析工具
- 未向运行时 Skill 新增 scripts、references、assets 或平台专属语法
- 未提供法律结论或合规保证
- 未将长篇 SEO、广告投放、视觉设计纳入核心能力
- 未编写大量固定模板，以免牺牲受众和场景判断
- 未修改 Downloads 中的六份原始文件

## 6. 主要权衡

单一跨渠道 Skill 会比 Email 专项 Skill 更长，但能共享“商业意图—海外语境—渠道表达—客户行动”的核心模型，避免为每个渠道复制事实保护、品牌语气和本地化规则。通过短渠道薄层和按任务输出契约，控制上下文长度，同时让 Skill 在没有额外参考文件的环境中独立运行。
