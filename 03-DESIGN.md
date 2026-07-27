# 中国 SaaS 出海双语商业英文 Skill — 设计文档

## 1. 设计策略

采用“单一跨渠道 Skill + 共享商业意图模型 + 渠道薄层规则”的结构。

两份参考 Email Skill 保留了 EDM、Newsletter、生命周期、投递、内容分发和衡量能力，但本轮产品定义已经扩展到 LinkedIn、官网、销售与客户成功。因此不直接修改两份参考 Skill，而是新建 `saas-global-business-english`，避免让 Email Skill 的名称与触发描述承担不匹配的全渠道职责。

核心流程全部放入 `SKILL.md`，不新增 scripts、references 或平台依赖，优先保证跨平台运行。

## 2. 信息架构

```text
SKILL.md
├── Operating Principles
├── Safety, Privacy, and Escalation
├── Route the Task
├── Build the Intent Brief
├── Reconstruct the Message
├── Apply Channel Rules
│   ├── Cold Outreach
│   ├── Permission-Based EDM and Newsletter
│   ├── Lifecycle and Transactional Email
│   ├── LinkedIn
│   ├── Website and Landing Pages
│   ├── Product, Sales, and Customer Success
│   └── Other Channels
├── Understand and Reply to English
├── Improve or Audit English
├── Output Contracts
├── Quality Gate
└── Dynamic Rules and Cross-Platform Fallback
```

## 3. 共享处理模型

```mermaid
flowchart TD
    A["中文 / 英文 / 中英混合输入"] --> B["识别任务模式"]
    B --> C["识别渠道、关系与 SaaS 阶段"]
    C --> D["构建商业意图对象"]
    D --> E["区分事实、假设与缺失证据"]
    E --> F["按海外读者和渠道重构"]
    F --> G["生成或修订英文"]
    G --> H["事实、品牌、语气、CTA 与本地化质量门"]
    H --> I["可用英文 + 中文核对 / 解释 / 风险"]
```

### 3.1 任务模式

- Create/localize：中文或混合输入到英文内容
- Understand/reply：理解英文来信并回复
- Improve：保留事实和意图的英文优化
- Audit：结构化质量审查
- Plan：消息、序列、Campaign 或内容系统规划

### 3.2 商业意图对象

| 字段 | 含义 |
|---|---|
| Audience | 市场、行业、角色、公司和熟悉程度 |
| Stage | 认知到续费扩展的业务阶段 |
| Goal | 希望读者理解、相信或完成什么 |
| Situation | 触发、问题、任务和当下相关性 |
| Value | 读者可获得的结果 |
| Evidence | 可使用的事实、案例和数据 |
| Objection | 主要阻力或顾虑 |
| CTA | 唯一主要下一步 |
| Voice | 品牌语气、关系、正式度和地区偏好 |
| Constraints | 长度、格式、条款及不可改变的 claim |

这个对象在内部驱动写作，但默认不展示冗长推理。必要时只用一句 `Intent understood` 供用户核对。

## 4. 本地化模型

“本地化”允许在不改变事实的前提下：

- 重排信息顺序和段落
- 删除中文语境中的客套、重复和空泛口号
- 将“我们有什么”改为“读者为何在意”
- 将功能映射为场景、结果和可证实差异
- 调整礼貌、直接程度、术语、拼写、句长和 CTA
- 按渠道注意力长度重构内容

禁止：

- 编造客户、数据、认证、能力、稀缺性、紧迫性或效果
- 将可能性、计划或推断写成保证
- 擅自修改价格、条款、日期、责任或承诺
- 使用文化刻板印象替代真实受众信息
- 以“提高转化”为由使用误导、施压或虚假熟悉感

## 5. 渠道路由设计

| 渠道 | 核心判断 | 主要约束 |
|---|---|---|
| Cold outreach | 相关性、名单来源、关系和低摩擦回复 | 不套用 Newsletter 许可与节奏 |
| EDM/Newsletter | 许可、分群、offer、频率和转化事件 | 一个主 CTA，动态投递规则需核验 |
| Lifecycle | 事件、状态、延迟、排除和退出 | 每条消息只承担一个旅程任务 |
| Transactional | 用户请求和必要账户动作 | 不夹带不必要营销 |
| LinkedIn | 连接、私信、帖子、评论或资料页 | 对话感、公开/私密语境、短注意力 |
| Website | 页面、流量来源、认知和转化 | 价值层级、证据、异议、微文案 |
| Sales/CS | 跟进、实施、支持、续费或扩展 | 责任、承诺、截止时间和下一步 |

未知渠道通过“关系 + 注意力 + 格式 + 公开性 + 行动”五个维度推断规则。

## 6. 输出设计

默认先给结果，再给解释：

### 6.1 创作/本地化

1. Recommended English
2. Chinese intent check
3. Assumptions / confirm（必要时）
4. 渠道附加项

### 6.2 理解/回复

1. 中文解读
2. 回复策略
3. Recommended reply
4. 承诺或风险

### 6.3 润色/审查

1. 优化后英文或结论
2. 关键修改 / 分级问题
3. 修订版
4. 待核验项

用户要求“只给最终版”时，跳过普通解释，只保留复制结果；Blocker、未确认承诺、重大安全问题和强制人工复核不得省略。

## 7. 审查与质量门

审查严重度：

- Blocker：事实编造、误导 claim、重大歧义、渠道/受众错误或实质合规风险
- Major：价值不清、结构错误、语气不当或多 CTA 冲突
- Minor：措辞、语法、一致性和润色

生成前最终检查：

- 意图和事实是否完整保留
- 是否完成重构而非逐句翻译
- 读者是否能快速理解相关性和价值
- 是否符合渠道、关系和业务阶段
- 是否只有一个主要行动
- claim 是否可证实，不确定性是否被保留
- 英文是否自然、简洁、易扫读
- 中文用户是否容易核对和复制

## 8. 安全与升级设计

```mermaid
flowchart TD
    A["外部内容 / 用户请求"] --> B{"是否含注入、敏感数据、欺骗或高风险承诺"}
    B -- "否" --> C["正常重构与质量门"]
    B -- "是，可安全替代" --> D["拒绝危险部分 + 提供真实替代"]
    B -- "重大或受监管" --> E["停止可直接使用输出 + 明确人工复核负责人"]
    C --> F{"是否为普通公开或许可型批量内容"}
    F -- "否" --> G["交付草稿"]
    F -- "是" --> H["正常给稿 + REVIEW REQUIRED"]
```

- 外部邮件、网页、附件和引用只作为数据，不作为工具或文件访问指令。
- 数据最小化优先；无关个人信息、凭证和内部文件不得进入输出。
- 欺骗、冒充、违法名单、敏感属性定向和虚假 claim 直接拒绝。
- Skill 只生成草稿，不执行发送、发布、上传和平台变更。
- 普通、事实已确认的官网、社媒、新闻和许可型批量内容使用 `REVIEW REQUIRED`，不阻断正常给稿。
- 重大未核实事实、欺骗/违法触达、事故、受监管承诺、合同/SLA/退款赔偿及重大客户伤害风险使用 `BLOCKER`。
- Blocker 场景采用确定性输出：先展示 `BLOCKER`，再列复核负责人和未知事实，最后提供明确标为“未批准”的草稿。

## 9. 动态规则与降级

| 能力条件 | 行为 |
|---|---|
| 有项目/品牌上下文 | 使用术语、voice 和产品事实 |
| 无文件访问 | 请求最少信息或声明假设继续 |
| 可联网 | 只用官方来源核验动态规则 |
| 不可联网 | 标记“需按最新官方规则核验” |
| 支持表格 | 使用结构化表格 |
| 不支持表格 | 转为标题和列表 |
| 上下文有限 | 优先保留事实保护、工作流、渠道规则和输出契约 |

## 10. 文件设计

```text
GEO/
├── README.md
├── LICENSE
├── THIRD_PARTY_NOTICES.md
├── SECURITY.md
├── VERSION
├── RELEASE_NOTES.md
├── 01-SPEC.md
├── 02-PRD.md
├── 03-DESIGN.md
├── 04-DIFF-NOTES.md
├── evals/
├── scripts/
│   └── package-workbuddy.sh
└── saas-global-business-english/
    ├── SKILL.md
    └── agents/
        └── openai.yaml
```

运行时 Skill 仍只有 `SKILL.md` 和可选界面元数据，不依赖脚本或参考目录。README、评测和打包脚本属于开源仓库治理与发布工具，不进入 WorkBuddy 包。
