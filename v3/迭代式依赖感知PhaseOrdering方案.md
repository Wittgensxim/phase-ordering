# 迭代式依赖感知 Phase Ordering 方案

> **实现状态**: v3 已完整实现 | 115 benchmark 评估完成 | 2026-06-28

## 概述

本文档描述一个**已完整实现**的 phase ordering 搜索框架。它先用依赖分析自动消除大量 pair order decision，再把剩余的顺序敏感子图交给 oracle/rule 决策。

核心思想（已实现）：

```text
不是: ML 直接搜索完整 pass 序列
不是: 找"全局安全的 pass"自动执行
而是: 用独立性分析把需要决策的 pair order 数量削下来
      只把真正顺序敏感的 pair 交给 oracle
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

**当前配置: 20 pass**（15 基础 + 5 经 oracle 使用率筛选）

```
基础 (15):
  mem2reg, instcombine, simplifycfg, dce, sroa, early-cse,
  gvn, sccp, adce, loop-simplify, loop-rotate, licm,
  indvars, loop-unroll, reassociate

经筛选新增 (5):
  correlated-propagation, loop-instsimplify, loop-deletion,
  loop-idiom, aggressive-instcombine

未采用 (5): bdce, jump-threading, sink, tailcallelim, constraint-elimination
  原因: oracle 从未选中，仅增加噪声候选（190→300 对）
```

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

## 5. safe passes 如何运行

如果一轮中找到多个 safe pass，有两种策略：

### 5.1 批量运行

```text
IR -> safe_pass_1,safe_pass_2,...,safe_pass_k
```

优点：

```text
速度快
更接近 LLVM pass pipeline
```

风险：

```text
pairwise independent 不一定保证 batch independent
可能存在三阶 enablement 或高阶交互
```

### 5.2 逐个运行

```text
IR -> safe_pass_1 -> rescan
IR -> safe_pass_2 -> rescan
...
```

优点：

```text
更安全
每次 IR 变化后都会重新判断
更容易定位错误
```

风险：

```text
实验成本更高
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
