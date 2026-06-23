# Phase Ordering ML 依赖感知项目构建方案

截至 2026-06-24，本文档描述当前项目的真实设计、已实现功能、实验结果和后续计划。当前仓库已经不再使用手写 readiness token，依赖启用关系由动态 enablement probing 发现。

## 1. 研究问题

LLVM phase ordering 的核心难点是 pass 序列空间巨大，并且 pass 之间存在复杂相互作用。如果直接让 ML 从完整 pass 序列里学习，很容易遇到三个问题：

```text
1. 搜索空间过大。
2. 学到的顺序缺乏可解释性。
3. 不知道哪些 pass 可以安全重排，哪些 pass 必须保序。
```

本项目的思路是先建立一个依赖感知层：

```text
先判断 pass pair 的独立、依赖、可疑关系；
再把 ML 用在真正需要选择的局部位置。
```

这样可以把 phase ordering 从“全局盲搜”改成“依赖图约束下的局部决策”。

## 2. 当前核心假设

当前项目把 pass pair 分成三类：

```text
independent:
  在当前 benchmark 上两个 pass 都有实际行为，并且没有发现 read/write 或 enablement 依赖证据。

dependent:
  存在强 read/write 交集，或存在 strong enablement / expansion / mutation evidence。

uncertain:
  只有弱证据，或证据不足以安全判 dependent / independent。
```

这里的安全原则是：

```text
宁可把一部分真实 independent 暂时放进 dependent 或 uncertain，
也不能把真实 non-commuting 的 pair 错判成 independent。
```

因此当前最重要的指标是：

```text
false_negative = 0
```

它表示没有把黑盒 non-commuting 的 pair 错误判成 independent。

## 3. 当前工程链路

已经实现的完整链路如下：

```text
LLVM IR / SingleSource C
  -> collect_pass_footprints.py
  -> footprints.jsonl
  -> enablement_probe.py
  -> enablement_probe.json
  -> analyze_footprints.py
  -> dependency_matrix.csv
  -> commutativity_test.py
  -> commutativity_results.csv
  -> compare_validation.py
  -> validation_report.csv
  -> run_benchmark_suite.py
  -> suite_summary / attribution / rewrite direction / failed benchmark report
```

对应脚本：

```text
scripts/collect_pass_footprints.py
  自动运行单个 pass，生成对象级 read/write footprint。

scripts/enablement_probe.py
  探测 A 是否改变 B 的适用性或改写行为。

scripts/analyze_footprints.py
  合并 footprint 和 enablement evidence，生成 dependency matrix。

scripts/commutativity_test.py
  用 A->B 和 B->A 的结果做黑盒可交换性验证。

scripts/compare_validation.py
  对照 analyzer 分类和黑盒验证结果。

scripts/run_benchmark_suite.py
  批量运行 SingleSource benchmark，并聚合结果。

scripts/pass_pipeline.py
  处理 LLVM pass 名和 pipeline 写法之间的映射。
```

## 4. footprint 数据模型

当前 footprint 是对象级 token，而不是粗粒度 opcode 统计。

典型 token：

```text
func:<function>
bb:<function>:<basic-block>
inst:<function>:%<ssa-name>
inst:<function>:<basic-block>:<ordinal>:<opcode>
loop:<function>:<header-block>
```

`footprints.jsonl` 每一行表示一个 pass 在当前 IR 上的行为：

```json
{
  "pass": "simplifycfg",
  "reads": ["inst:main:%13"],
  "writes": ["inst:main:%12", "bb:main:14"]
}
```

当前语义：

```text
reads:
  本次 transformation 实际触及的 before-side IR 对象。

writes:
  pass 运行前后新增、删除或文本发生变化的 IR 对象。
```

注意：

```text
reads 不是 pass 内部所有分析读取；
它只表示这次实际 transformation 触及到的旧 IR 对象。
```

原因是如果把“pass 扫描过整个函数”都算成 read，几乎所有 pass 都会有交集，dependency matrix 会失去区分能力。

当前采集器还做了轻量归一化：

```text
SSA operand -> %v
函数内纯数字 basic block label -> 稳定块名
无关文本差异尽量不作为语义对象
```

## 5. active / enabled / inactive

当前不会把 no-op pass 直接算成 independent。

分类口径是：

```text
active:
  第一轮单独运行就有 writes。

enabled:
  第一轮 no-op，但在某个前缀 pass 后变成 active。

inactive:
  第一轮和 enablement probing 后都没有表现出改写。
```

只有：

```text
active + enabled
```

进入 pairwise dependency matrix。

`inactive` 只用于覆盖率统计。它表示当前 benchmark 没有触发该 pass 的优化机会，不能作为 independent 证据。

## 6. read/write 依赖判断

对 pass pair `(A, B)`，当前计算三类交集：

```text
WA ∩ RB:
  A 写入、B 读取，可能表示 B 依赖 A。

WB ∩ RA:
  B 写入、A 读取，可能表示 A 依赖 B。

WA ∩ WB:
  A 和 B 写同一对象，可能表示冲突，也可能是同方向 rewrite。
```

然后把证据分为强弱：

```text
strong evidence:
  loop / func
  真实语义 instruction
  strong enablement evidence

weak evidence:
  basic block 编号
  br / ret / unreachable
  纯结构或文本标签变化
```

最终分类：

```text
strong evidence -> dependent
weak evidence   -> uncertain
no evidence     -> independent
```

## 7. enablement / expansion / mutation

早期项目曾讨论过 readiness token，例如 `loop-unroll-ready:<function>`。当前版本已经删除这类手写 token。

现在的做法是动态探测：

```text
Round 0:
  在原始 IR 上单独运行每个 pass。

Round 1:
  对每个 active pass A 和每个 pass B，测试 original -> A -> B。
```

如果 B 的行为发生变化，就记录 edge：

```text
activation:
  B 原来 no-op，A 之后 B 开始产生 writes。

expansion:
  B 原来 active，A 之后 B 写了新的对象。

mutation:
  B 原来 active，A 之后 B 写同一对象但归一化内容不同。
```

这些 edge 会被 `analyze_footprints.py --enablement-json` 合并进 dependency matrix。

为什么保留 expansion / mutation？

```text
因为一个 pass 即使本来已经 active，
前序 pass 仍可能改变它后续能优化的范围或具体 rewrite。
这也可能造成 A->B 和 B->A 的最终结果不同。
```

当前 enablement evidence 也分强弱：

```text
strong:
  activation，或 expansion/mutation 触及强语义 token。

weak:
  expansion/mutation 只触及弱 token。
```

strong 会进入 `dependent`，weak 会进入 `uncertain` 并标记较高风险。

## 8. uncertain 的意义

`uncertain` 不是 independent。

它的作用是把证据不足的 pair 单独拿出来：

```text
不直接判 dependent，避免 false positive 过多；
也不直接判 independent，避免引入 false negative。
```

当前 `uncertainty_risk` 有：

```text
none:
  dependent 或 independent。

low:
  弱 read/write，模式较简单。

medium:
  弱 read/write，但 overlap pattern 更复杂。

high:
  弱 enablement evidence。
```

尤其是：

```text
uncertain_non_commuting
```

要优先分析。它不是 false negative，因为系统没有把它判成 independent；但它说明当前证据分层还没有解释清楚这类顺序敏感 pair。

## 9. 黑盒 commutativity validation

黑盒验证对每个 pair 执行：

```text
original -> A -> B -> result_ab.ll
original -> B -> A -> result_ba.ll
llvm-diff result_ab.ll result_ba.ll
```

结果分类：

```text
agree_dependent:
  analyzer 判 dependent，黑盒 non-commuting。

agree_independent:
  analyzer 判 independent，黑盒 commuting。

false_positive:
  analyzer 判 dependent，黑盒 commuting。

false_negative:
  analyzer 判 independent，黑盒 non-commuting。

uncertain_commuting:
  analyzer 判 uncertain，黑盒 commuting。

uncertain_non_commuting:
  analyzer 判 uncertain，黑盒 non-commuting。
```

当前为了处理少数复杂 IR，脚本还加入了兜底：

```text
如果 llvm-diff 返回非 0，但 A->B 和 B->A 的文本 IR 完全相同，
仍然记录为 commuting。
```

## 10. 当前 pass 集合

默认实验使用 11 个 pass：

```text
instcombine
simplifycfg
sroa
early-cse
gvn
sccp
dce
adce
loop-simplify
loop-rotate
loop-unroll
```

`licm` 当前没有纳入默认集合，原因是 LLVM 23 下涉及 MemorySSA / loop pass manager 要求，需要单独处理 pipeline。

`loop-rotate` 已在 `pass_pipeline.py` 中做必要包装：

```text
loop-rotate -> function(loop(loop-rotate))
```

## 11. 当前 benchmark 配置

当前有三组 manifest：

```text
configs/singlesource_smoke.json
  5 个 SingleSource smoke benchmark。

configs/singlesource_extra.json
  5 个额外 SingleSource benchmark。

configs/singlesource_broader.json
  15 个 SingleSource benchmark，当前主实验入口。
```

broader suite 包含 UnitTests、BenchmarkGame、Misc、Shootout 中的样例。当前默认 broader manifest 已避开在本机 LLVM 构建下会触发 `instcombine` fixpoint verify 错误的 `BenchmarkGame_spectral_norm`，改用 `BenchmarkGame_puzzle`。

即使未来某个 benchmark 失败，runner 也会写入：

```text
failed_benchmarks.csv
```

并继续跑其它 benchmark。

## 12. 当前实验结果

### 12.1 Smoke suite

```text
benchmarks = 5
validation_pairs = 127
false_positive = 13
false_negative = 0
uncertain_commuting = 28
uncertain_non_commuting = 7
stable_false_positive_pairs = 3
```

### 12.2 Extra suite

```text
benchmarks = 5
validation_pairs = 160
false_positive = 9
false_negative = 0
uncertain_commuting = 47
uncertain_non_commuting = 14
stable_false_positive_pairs = 1
```

### 12.3 Broader suite

```text
benchmarks = 15
failed_benchmarks = 0
validation_pairs = 456
false_positive = 27
false_negative = 0
uncertain_commuting = 98
uncertain_non_commuting = 37
stable_false_positive_pairs = 4
```

broader suite 中 analyzer 的三分类统计：

```text
strict independent = 125 / 456
dependent = 196 / 456
uncertain = 135 / 456
```

黑盒验证统计：

```text
black-box commuting = 250 / 456
black-box non-commuting = 206 / 456
```

结论：

```text
LLVM pass pair 的真实独立性并不低；
当前 analyzer 能严格确认的 independent 偏少。
```

因此下一步重点是提高确认 independent 的能力，而不是简单把 uncertain 全部升成 independent。

## 13. 稳定 false positive

broader suite 中稳定 false positive：

```text
gvn + simplifycfg          8 / 15 benchmarks
instcombine + simplifycfg  4 / 15 benchmarks
simplifycfg + sroa         4 / 15 benchmarks
instcombine + sroa         3 / 15 benchmarks
```

这说明剩余误报不是随机噪声，而是集中在几个 pass pair 上。

当前解释：

```text
1. 这些 pair 经常触及同一批 IR 对象，所以 footprint 保守判 dependent。
2. 但黑盒结果 commuting，说明很多情况下它们可能是同方向 rewrite。
3. 例如两个 pass 都在消除冗余表达式或简化 CFG，谁先做都能得到等价结果。
```

下一步应该对这些 pair 做 transformation-level 归因，而不是继续全局放松规则。

## 14. rewrite direction report

当前批量脚本会输出：

```text
rewrite_direction_report.csv
```

用于分析 false positive 和 uncertain pair。

主要字段：

```text
benchmark
pass_a
pass_b
footprint_classification
agreement
commute
direction_classification
overlap_pattern
read_write_strength
enablement_edge_kinds
uncertainty_risk
a_only_path
b_only_path
ab_path
ba_path
ab_equals_ba_text
sha256
```

当前 direction 分类：

```text
same_direction_rewrite_candidate:
  可能是同方向 rewrite，可作为未来 confirmed independent 的候选。

commuting_false_positive:
  当前仍被判 dependent，但黑盒 commuting，是下一步降低 false positive 的重点。

order_sensitive:
  uncertain 但黑盒 non-commuting，不能升为 independent。
```

## 15. 当前测试状态

运行：

```powershell
python -W error -m unittest discover tests
```

最新验证：

```text
Ran 51 tests
OK
```

测试覆盖：

```text
IR token 提取和归一化
read/write 依赖分析
enablement / expansion / mutation probing
pass pipeline 映射
commutativity validation
validation report
benchmark suite 调度
stable false positive 聚合
rewrite direction report
failed benchmark 记录
```

## 16. 后续设计计划

### 16.1 提高确认 independent 的能力

当前不要直接把 `uncertain_commuting` 升为 independent。更合适的路线是增加分层：

```text
independent:
  当前规则已经能证明没有依赖证据。

likely_independent:
  黑盒在多个 benchmark 上 commuting，且只存在弱证据或同方向 rewrite 候选。

confirmed_independent:
  经过 transformation-level 归因，确认交集是无害的同方向 rewrite。
```

这样可以逐步扩大可确认 independent 的数量，同时避免引入 false negative。

### 16.2 针对 stable false positive 做专项归因

优先对象：

```text
gvn + simplifycfg
instcombine + simplifycfg
simplifycfg + sroa
instcombine + sroa
```

建议做法：

```text
1. 从 rewrite_direction_report.csv 找出对应 pair。
2. 对比 A-only、B-only、A->B、B->A 的 IR。
3. 判断重叠对象是同方向删除、同方向替换，还是实际冲突。
4. 把可解释模式写成新的降权规则或 confirmed-independent rule。
5. 重跑 broader suite，确认 false_negative 仍为 0。
```

### 16.3 处理 high-risk uncertain

优先排查：

```text
direction_classification = order_sensitive
uncertainty_risk = high
```

目标不是把它们降权，而是找出为什么 footprint 证据没能升成 dependent。

可能修复方向：

```text
1. 增强 token_strength 规则。
2. 增强 enablement evidence token。
3. 引入更细的 CFG / loop structure fingerprint。
4. 引入 transformation-level instrumentation。
```

### 16.4 更高阶 enablement

当前只覆盖一阶：

```text
A -> B
```

后续可以扩展到：

```text
A -> C -> B
{A, C} -> B
```

但这会扩大实验成本，建议等一阶 stable false positive 和 high-risk uncertain 处理完后再做。

### 16.5 ML 数据集建设

只有当 dependency label 更稳定后，才适合构建 ML 数据集。

未来数据可以分成：

```text
independent / confirmed_independent:
  用于 profitability prediction 或 local ranking。

dependent:
  用于学习局部 pass order decision。

uncertain:
  暂时不作为正负标签，优先用于主动学习或人工归因。
```

目标是让 ML 使用更干净的标签，避免把当前 analyzer 的保守偏差直接学进去。

## 17. 当前结论

当前项目已经从 demo 级原型推进到可批量验证的依赖感知分析框架。

最重要的当前结论：

```text
1. broader suite 上 false_negative = 0，说明当前安全边界有效。
2. strict independent = 125 / 456，black-box commuting = 250 / 456，说明可确认 independent 还有提升空间。
3. false_positive 集中在少数稳定 pass pair 上，适合做专项归因。
4. uncertain 已经把一批证据不足的 pair 从 dependent 中拆出来，但不能直接当 independent。
5. 下一阶段重点是 confirmed independent 和 transformation-level 归因，而不是马上进入 ML。
```

