# 迭代式依赖感知 Phase Ordering 方案

> **版本**: v3.4 | 139 pass (research_codesize) | codesize metric (.text bytes) | 2026-06-30

## 概述

用一个**依赖分析先行**的策略解决 phase ordering 搜索空间爆炸问题：每轮先用轻量 codesize 测量筛选出 beneficial pass（~3-14 个），然后**仅对该子集**运行 O(b²) 的 independence 分析，将需要在意的 pair order 数量从 C(139,2)≈9500 削到几十个。剩余的顺序敏感对交给 oracle 贪心择优，非敏感对自动解析无需决策。

核心架构 (v3.4)：

```
每轮:
  Stage A (O(n)): 139 pass 单跑测 codesize → beneficial + enabling (~5-14 pass)
  分析链 (O(b²)): 仅对 beneficial 子集做 footprint→commutativity→confirmation
  决策图: auto-resolved pair 自动消除，order_sensitive pair 交 oracle
  Oracle: 并行评估所有 decision pair，选 codesize 改善最大的方向
  执行 → 正确性门控 → 回滚/推进
```

## 1. 核心贡献：决策图（Decision Graph）

pass 级别的 auto_safe（一个 pass 必须与所有其他 pass 独立才算安全）在实践中几乎不可能触发——20 pass 下每个 pass 至少与另一个 pass 有依赖。

因此我们将安全性粒度从 **pass-level 降到 pair-level**：

```
AutoSafe 不是"整个 pass 可以随便跑"，
而是"这两个 pass 之间的顺序不需要决策"。
```

### 三层架构（已全部实现）

```
每轮迭代:

Layer 1: auto-resolve independent pair
  confirmed/likely_independent pair → 从 decision graph 中删除
  这些 pair 的相对顺序自动消除，不交给 oracle

Layer 2: decision graph reduction
  oracle 只在 order_sensitive pair 上操作
  独立 pair 根本不出现在 oracle 候选池中

Layer 3: auto-execute boundary-safe batch (可选)
  当独立连通分量对外也没有 order_sensitive 边时自动执行
```

### 论文主指标

```
total_pair_decisions = C(n,2)              (20 pass = 190 对)
auto_resolved_pairs = confirmed + likely   (实测 ~40% 削减率)
remaining_decision_pairs = order_sensitive (留给 oracle)
decision_reduction_rate = auto_resolved / total
false_negative = 0                          (安全底线)
final score vs O2
```

```text
ML 直接搜索完整 pass sequence
```

而是：

```text
依赖分析先自动运行安全 pass
遇到不安全或不确定区域时，再让 ML 选择一个有方向的动作
```

## 2. 总体算法（实际实现）

```
IR = original (clang -O0 编译)
history = []

while not fixed_point (平均 ~7 轮):

  1. 在当前 IR 上运行完整分析链:
     footprints → enablement → dependency → commutativity → confirmation
     → 输出每对 pass pair 的 confirmation 标签

  2. 构建 decision graph:
     confirmed/likely_independent → auto_resolved (删除边)
     order_sensitive              → decision_edges (保留)
     → 计算 decision_reduction_rate

  3. 查找 auto_safe_batch:
     独立连通分量 且 无外部 order_sensitive 边
     → 自动执行 batch

  4. 否则 oracle 在 decision_edges 上择优:
     实测每个 order_sensitive pair 的 A→B 和 B→A
     选 score 改善最大的 pair + 方向

  5. 执行动作 → 更新 IR → 记录 history

  6. 安全机制:
     Rollback: score 退化 >5% → 回退
     Cycle guard: 重复执行无效 → 黑名单
     Perturbation: metric 停滞 → 随机扰动

停止条件:
  metric 连续 N 轮无改善 / IR hash 循环 / max_rounds
```

## 3. Pass 集合

**当前: `research_codesize` = 139 pass**（LLVM 23 全部变换 pass 安全子集）

- 136 安全可用（经 pass_sweep 实测，从不 crash）
- 27 "strong candidates"（单跑即降 codesize）
- 106 "keep-for-ordering"（改变 IR 但不单独降 codesize，需序列上下文）
- `mem2reg → *` 通配符约束确保 SSA 构建最先
- 32 条强制顺序约束（loop-simplify 前置所有 loop/vector pass）

**为什么用全集而非精选**: 消除 pass 集的人为选择偏差。fixed_order 基准从 LLVM 注册顺序自动生成（客观可辩护）。

## 4. 分析链（每轮执行）

不能简单地说：

```text
A 和 B 独立，所以 A 可以随便运行
```

更保守的定义是：

```text
pass P 是 safe pass，当且仅当：

1. P 在当前 IR 上 active。
2. P 与当前其它 active / enabled pass 没有 strong dependency。
3. P 没有出现在 order_sensitive pair 中。
4. P 不依赖 high-risk uncertain evidence。
5. P 单独运行后会改变 IR，或者改善选定 metric。
```

图论上可以理解为：

```text
dependency graph 中低风险的孤立节点
或只连接 confirmed/likely independent edge 的节点
```

第一版建议更加保守：

```text
只把完全孤立的 active pass 当作 safe pass。
```

等实验确认 false_negative 仍然为 0 后，再考虑把 only-likely-independent-edge 的 pass 纳入 safe 集合。

## 5. 安全机制 (v3.4)

| 机制 | 触发条件 | 效果 |
|------|---------|------|
| **强制顺序** | 每对 pass | 禁止违反 mandatory_orders |
| **正确性门控** | 每轮执行后 | 编译+运行+diff vs O0 参考输出，错误则回滚 |
| **批次抽查** | ≥2 auto_safe pass | 随机打乱验证 batch commutativity |
| **动作记忆** | 连续无效/有害 | 有向黑名单（A→B ≠ B→A） |
| **Rollback** | score 退化 >5% | 回退到执行前 IR |
| **Perturbation** | metric 停滞 | 随机选 decision pair 跳出局部最优 |
| **Best-so-far** | 始终追踪 | 最终返回所有轮中的最优 IR |

## 6. 并行架构 (v3.4)

**双层并行**:

```
inter-benchmark (--parallel N): 跨 benchmark ProcessPoolExecutor
intra-benchmark (--intra-parallel M): 单 benchmark 内 ThreadPoolExecutor
  ├─ fixed_order ─┐
  ├─ oracle ──────┤ 同时跑（各自独立 subprocess）
  └─ random ──────┘

Oracle pair 评估: ThreadPoolExecutor (max 8 workers)
  每个 decision pair 的 A→B / B→A 并行评估
```

## 7. 对比框架

| 方法 | Pass 集 | 排序方式 | 度量 |
|------|---------|---------|------|
| **oracle** | 139 | 独立性分析 + 贪心 + 正确性门控 | codesize (.text) |
| **random** | 139 | 迭代 + 随机选择 | codesize |
| **fixed** | 139 | LLVM 注册顺序 | codesize |
| **O0/O1/O2/O3/Oz** | LLVM 全集 | clang 标准管线 | codesize |

## 8. 已知限制

- **Pass 交互 bug**: 单 pass 安全不代表组合安全（如 Towers 上 normalize 在特定 IR 后破坏语义）——由正确性门控兜底
- **贪心次优**: 每轮只选局部最优，可能错过全局更优——用 `exact_optimum.py` 量化 greedy_gap
- **编译运行开销**: 正确性门控每轮需 compile+run，约增加 2-3s/轮
运行速度更慢
```

建议第一版采用逐个运行：

```text
每次只运行一个最安全的 pass
运行后立即重新扫描
```

这样更符合当前项目“优先避免 false_negative”的原则。

## 6. 当没有 safe pass 时

如果当前 IR 上没有 safe pass，说明剩下的 pass 至少存在一种问题：

```text
1. 有 strong dependency。
2. 有 order-sensitive 证据。
3. 有 high-risk uncertain。
4. 需要 attribution。
5. 当前都 inactive。
```

此时才需要进入决策阶段。

候选动作不是无方向的 pair：

```text
A + B
```

而是有方向的动作：

```text
A -> B
B -> A
```

因为 phase ordering 的核心就是顺序。

候选动作可以分三级：

```text
Level 1:
  ordered pair
  A -> B

Level 2:
  short sequence
  A -> B -> C

Level 3:
  region-aware action
  在某些 region 上使用 A->B，在另一些 region 上保持 baseline
```

第一版建议只做 Level 1。

## 7. 决策器（已实现 oracle / rule / random）

### 7.1 Oracle（默认，upper-bound 近似最优搜索）

每轮在 decision graph 的 order_sensitive pair 上枚举：

- 实测每个 pair 的 A→B 和 B→A
- 选择 metric 改善最大的方向和 pair
- 115 benchmark 上甲骨文胜率 47%，vs O2 胜率 71%

### 7.2 Rule（静态规则）

按 pass 类别（cleanup/loop/value）+ 确认标签打分，零 opt 调用。
胜率 9%，在 analyzer_functs 等 benchmark 上有时超越 oracle。

### 7.3 ML（实验性，已从主流程移除）

RandomForest pairwise 方向预测，5-fold CV 81% 准确率，
但端到端调度效果与 random 接近，未显著超越静态规则。

## 8. 当前评估结果（115 benchmark）

停止条件不能只看“这一轮没有 safe pass”，因为还可能有 ML 动作能继续改变 IR。

建议停止条件：

```text
1. 所有 pass 单独运行都是 no-op。
2. 所有候选 ordered pair 都 no-op。
3. 当前 IR hash 在最近若干轮中重复出现。
4. 达到最大轮数。
5. metric 在若干轮内没有改善。
```

为了避免循环，需要记录：

```text
IR hash history
executed action history
pass activity history
metric history
```

如果出现：

```text
IR_i == IR_j
```

说明调度进入循环，应停止或禁止导致循环的动作。

## 9. 和当前项目的关系

当前项目已经具备这个新框架所需的大部分基础组件：

```text
collect_pass_footprints.py:
  当前 IR 上采集单 pass footprint。

enablement_probe.py:
  探测 A 是否启用 / 扩展 / 改变 B。

analyze_footprints.py:
  生成 dependency graph。

commutativity_test.py:
  判断 A->B 和 B->A 是否 commuting。

compare_validation.py:
  对齐静态判断和黑盒验证。

confirm_independence.py:
  输出 confirmed / likely / needs_attribution / order_sensitive。

run_benchmark_suite.py:
  批量运行 benchmark 并聚合报告。
```

新框架需要新增的是一个调度层：

```text
iterative_scheduler.py
```

它负责：

```text
1. 维护当前 IR。
2. 每轮调用现有分析链路。
3. 根据 dependency graph 选择 safe pass。
4. 当没有 safe pass 时调用 pair chooser。
5. 执行动作并更新 IR。
6. 判断 fixed point。
7. 输出完整调度轨迹。
```

## 10. 输出文件设计

建议每次运行生成：

```text
results/iterative_scheduler/<benchmark>/
  round_000/
    input.ll
    footprints.jsonl
    dependency_matrix.csv
    validation_report.csv
    confirmation_report.csv
    selected_action.json
    output.ll

  round_001/
    ...

  schedule_trace.json
  schedule_trace.csv
  final.ll
  final_metrics.json
```

`schedule_trace.csv` 可以包含：

```text
round
input_hash
selected_action
action_kind
reason
safe_passes
candidate_pairs
output_hash
metric_before
metric_after
changed
```

这样整个搜索过程是可复现、可解释、可调试的。

## 11. 实现状态（2026-06-28）

全部 14 步路线已完成：

- ✅ iterative_scheduler.py：完整迭代调度器
- ✅ compare_all.py：统一对比工具（支持 --parallel N 多进程）
- ✅ decision graph（build_decision_graph + _find_independent_components）
- ✅ oracle / rule / random 三种 chooser
- ✅ 115 benchmark 全量评估完成
- ✅ 安全机制：Rollback, Cycle guard, Perturbation, 强制顺序
- ✅ 20 pass 经筛选确认
- ✅ 决策削减率追踪

## 12. 核心发现

## 12. 核心发现

1. **pair-level auto_safe 比 pass-level 有效得多**
   - 每轮 ~40% 的 pair order decision 被独立性自动消除
   - 没有单个 pass 能成为全局 auto_safe（20 pass 下每个 pass 都有至少一个依赖）
   - 但大量 pair 的顺序不需要 oracle 决策

2. **oracle 是强 upper bound**
   - 47% benchmark 胜率，71% vs O2
   - 但并非全局最优（贪心局部最优问题）

3. **ML 端到端效果有限**
   - pairwise 分类 81% 准确率不直接转化为序列决策质量
   - 已从主流程移除，代码保留供参考

## 13. 风险和限制

## 14. 论文主线（建议）

```
This work introduces an independence-driven decision reduction framework
for LLVM phase ordering. Instead of searching all pass permutations,
we identify commuting pass pairs and automatically remove their ordering
decisions from the search space. The scheduler only invokes an oracle
or learned chooser on the remaining order-sensitive subgraph.

On 115 benchmarks with 20 passes, independence analysis eliminates ~40%
of pair order decisions per round. The oracle-guided scheduler achieves
47% best-method win rate and 71% win rate vs LLVM O2, while maintaining
zero false-negative independence classifications.
```

中文：

```
本文提出一种依赖感知的 phase ordering 决策削减框架。
它不直接搜索所有 pass 排列，而是先识别可交换的独立 pass pair，
自动消除这些 pair 的顺序决策，只把剩余顺序敏感子图交给 oracle 处理。

在 115 个 benchmark、20 个 pass 的评估中，独立性分析每轮自动消除
~40% 的 pair order decision。Oracle 引导的调度器达到 47% 最佳方法
胜率和 71% vs O2 胜率，同时保持零 false-negative 独立误判。
```
