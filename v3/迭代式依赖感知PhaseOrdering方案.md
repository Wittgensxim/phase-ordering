# 迭代式依赖感知 Phase Ordering 方案

本文档描述一个新的 phase ordering 搜索框架。它不再把 ML 直接用于完整 pass 序列搜索，而是先用依赖分析自动执行安全部分，再把 ML 留给真正需要决策的非独立 pass pair。

核心目标：

```text
减少 ML 搜索空间
保留依赖分析的安全性
让优化过程可以迭代到 IR 不再变化
把 phase ordering 从全局盲搜改成依赖图驱动的局部决策
```

## 1. 基本思想

传统 phase ordering 的难点是 pass 序列组合爆炸。例如有 10 个 pass，如果直接搜索完整排列，空间会非常大，而且很多顺序其实没有必要由 ML 决定。

本方案把 pass 分成两类：

```text
safe passes:
  当前 IR 上可以安全运行的 pass。
  它们与其它 active / enabled pass 没有强依赖，也没有已知 order-sensitive 风险。

decision passes:
  当前 IR 上存在依赖、顺序敏感或证据不足的 pass。
  这些 pass 的顺序需要由规则、oracle 或 ML 决定。
```

因此流程不是：

```text
ML 直接搜索完整 pass sequence
```

而是：

```text
依赖分析先自动运行安全 pass
遇到不安全或不确定区域时，再让 ML 选择一个有方向的动作
```

## 2. 总体算法

伪代码：

```text
IR = original
history = []

while not fixed_point:

  1. 在当前 IR 上扫描所有 pass
     得到 active / inactive / enabled
     得到 dependency graph

  2. 找 safe passes
     条件是：
       - active
       - 与其它 active/enabled pass 没有 strong dependency
       - 没有 order-sensitive 证据
       - 单独运行后确实改变 IR，或者改善某个 metric

  3. 如果 safe passes 非空：
       按确定顺序运行 safe passes
       更新 IR
       记录 history
       continue

  4. 如果 safe passes 为空：
       构造候选动作：
         A -> B
         B -> A
         或小规模 pass sequence

       用规则 / oracle / ML 选择收益最大且风险最低的动作
       运行选中的动作
       更新 IR
       记录 history
       continue

  5. 如果没有任何动作能改变 IR：
       stop
```

最终输出不是“全局最优”的严格证明，而是：

```text
依赖感知的局部不动点
```

也就是说，在当前 pass 集合、当前决策策略和当前 IR 状态下，继续运行候选 pass 已经不能产生新的 IR 改变。

## 3. 每轮扫描阶段

每一轮都以当前 IR 为输入，而不是只在原始 IR 上分析一次。

扫描内容包括：

```text
1. 单 pass footprint
   每个 pass 在当前 IR 上是否 active。

2. enablement probing
   A 是否会让 B 从 no-op 变成 active。
   A 是否会扩大 B 的改写范围。
   A 是否会改变 B 的具体 rewrite。

3. dependency matrix
   根据 read/write 交集和 enablement evidence 生成 dependent / uncertain / independent。

4. commutativity validation
   对关键 pair 运行 A->B 和 B->A，判断是否 order-sensitive。

5. confirmation layer
   生成 confirmed_independent / likely_independent / needs_attribution / order_sensitive。
```

为什么要每轮重新扫描：

```text
pass 运行后 IR 结构会变化
某些 inactive pass 可能被激活
某些依赖关系可能消失
某些新的依赖关系可能出现
```

因此第一轮的 dependency graph 不能永久代表后续所有状态。

## 4. safe pass 的定义

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

## 7. 决策器设计

决策器可以逐步升级，不需要一开始就做 ML。

### 7.1 规则版

先用固定规则选择：

```text
优先选择 false_positive 少的 pair
优先选择历史上收益稳定的 pair
避免 order_sensitive 次数多的 pair
优先选择 likely_independent 支持多的方向
```

优点是实现简单，可解释性强。

### 7.2 oracle 版

在实验阶段，可以枚举候选 ordered pair：

```text
对每个 A->B：
  实际运行 A->B
  计算 metric

选择 metric 最好的动作
```

metric 可以是：

```text
IR instruction count 下降
basic block 数下降
load/store 数下降
call 数下降
estimated cost 下降
编译后运行时间下降
```

oracle 不是最终方案，但它可以回答一个关键问题：

```text
这个迭代式框架有没有潜在收益？
```

如果 oracle 都没有收益，就不值得训练 ML。

### 7.3 ML 版

当规则版和 oracle 版跑通后，再训练 ML 模型预测：

```text
给定当前 IR 特征 + dependency graph + pair attribution
预测哪个 ordered pair 最可能带来收益且风险最低
```

输入特征可以包括：

```text
pass_a
pass_b
direction
current IR metrics
dependency kinds
dependency strength
enablement edge kinds
confirmation class
historical benchmark support
rewrite direction class
region-level local independence rate
```

输出可以是：

```text
expected_improvement
risk_score
action_score = expected_improvement - lambda * risk_score
```

ML 的角色不是替代依赖分析，而是：

```text
只在依赖分析无法自动决定时，选择下一步最值得尝试的动作。
```

## 8. fixed point 停止条件

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

## 11. 第一阶段最小实验

不要一开始就上 ML。建议先做一个最小实验：

```text
benchmark:
  examples/demo.ll
  Misc_flops_1
  Stanford_Quicksort

pass set:
  instcombine
  simplifycfg
  sroa
  early-cse
  gvn
  sccp
  dce
  adce
  loop-rotate
  loop-unroll

scheduler:
  safe pass 逐个运行
  没有 safe pass 时使用 oracle ordered-pair chooser

metric:
  IR instruction count
  basic block count
  load/store count
```

目标不是证明全局最优，而是回答：

```text
1. 迭代过程中是否会不断发现新的 safe pass？
2. 与固定 pipeline 相比，最终 IR metric 是否更好？
3. 是否仍能保持 false_negative = 0？
4. ML 决策点数量是否明显少于完整 pass ordering 搜索空间？
```

## 12. 风险和限制

### 12.1 不保证全局最优

这个算法是 greedy / iterative 的，不保证找到所有可能 pass 序列中的全局最优。

正确表述是：

```text
依赖感知近似搜索
依赖感知局部不动点
```

### 12.2 pairwise independent 不等于 batch independent

如果一次运行多个 safe pass，可能存在三阶交互。因此第一版应逐个运行 safe pass，并在每次运行后重新扫描。

### 12.3 ML 可能选择高风险动作

ML 输出不能直接无条件执行。应设置硬约束：

```text
禁止选择已知 order_sensitive 且风险过高的方向
禁止选择曾导致 IR hash 循环的动作
禁止选择 metric 长期退化的动作
```

### 12.4 fixed point 依赖 pass 集合

IR 不再变化只表示：

```text
当前 pass 集合下不再变化
```

如果加入新的 pass，fixed point 可能被打破。

## 13. 预期贡献

如果实现成功，这个方案可以形成一个更完整的研究叙事：

```text
1. 用 dependency analysis 自动消解安全 pass。
2. 用 commutativity validation 防止错误独立。
3. 用 iterative rescan 捕捉 pass 之间的动态启用关系。
4. 用 ML 只处理真正需要顺序选择的非独立 pair。
5. 用 fixed point 判断当前 pass 集合下的优化终止。
```

相比直接 ML phase ordering，它的优势是：

```text
搜索空间更小
安全边界更清楚
每一步都有解释
可以复用当前 dependency matrix / validation / confirmation 结果
```

## 14. 推荐路线

建议按以下顺序实施：

```text
Step 1:
  写 iterative_scheduler.py 的 dry-run 版本。
  只扫描，不真正修改 IR，输出每轮可能的 safe pass 和候选 pair。

Step 2:
  实现 safe pass 逐个执行。
  每运行一个 pass 就重新扫描。

Step 3:
  加入 metric 统计。
  比较每轮 IR instruction count / basic block count。

Step 4:
  加入 oracle ordered-pair chooser。
  没有 safe pass 时，枚举少量候选 pair，选择 metric 最好的方向。

Step 5:
  用 oracle 产生训练样本。
  每个样本记录当前 IR 特征、dependency graph、候选动作和实际收益。

Step 6:
  训练 ML pair chooser。
  让 ML 替代 oracle 做快速预测。
```

一句话总结：

```text
先让依赖分析自动完成确定安全的部分；
再让 ML 只在真正不独立的局部决策点上选择方向；
每次决策后重新扫描，直到当前 pass 集合下 IR 不再变化。
```
