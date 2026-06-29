# Phase Ordering — 迭代式依赖感知调度器

> **当前版本**: v3 | **更新**: 2026-06-28 | **Pass 集合**: 20 pass | **115 benchmark 评估完成**

## 核心成果

**核心贡献**：提出 **decision graph 驱动的决策削减框架**。将安全粒度从 pass-level 降到 pair-level：每轮构建决策图，独立 pair 的顺序决策自动消除（~40% 削减率），oracle 只在剩余 order_sensitive 子图上择优。

115 benchmark 评估：Oracle **47% 胜率**、平均分 **55**（O2=58）、vs O2 **71% 胜率**、迭代调度整体 **69% 胜率**、**false_negative = 0**。

### 当前代码 → [`v3/`](v3/)

详细文档： [`v3/docs/项目完整文档.md`](v3/docs/项目完整文档.md)
143 uncertain_commuting
68 uncertain_non_commuting

```

### 快速开始

```powershell
# 环境: Python 3.9+, LLVM 23.0.0git at E:\llvm\build\bin\

# 单元测试
cd v3 ; python -m pytest tests/ -v

# 全量 115 benchmark 对比
python v3\scripts\compare_all.py --manifest v3\configs\benchmarks_curated.json --parallel 8
```

### 目录

- `v1/` — 原始 prototype（已归档）
- `v2/` — dry-run 依赖分析（已归档）
- **`v3/`** — 当前版本：迭代执行调度器 + 115 benchmark 评估
- `configs/`、`examples/`、`results/` — v1/v2 遗留文件
independence_confirmation_pairs.csv
high_risk_uncertain_report.csv
pair_attribution_report.csv
failed_benchmarks.csv

```

如果某个 benchmark 因 LLVM 工具链或 pass pipeline 失败，runner 会写入 `failed_benchmarks.csv` 并继续跑其它样例，不会让整批实验直接中断。

## 单个 demo 的完整流程

### 1. 采集 footprint

```powershell
python scripts\collect_pass_footprints.py examples\demo.ll --passes instcombine,simplifycfg,dce --opt E:\llvm\build\bin\opt.exe --work-dir results\pass_outputs --out results\footprints.jsonl
```

`footprints.jsonl` 每行是一条 pass 记录，例如：

```json
{"pass": "simplifycfg", "reads": ["inst:main:%13"], "writes": ["inst:main:%12", "bb:main:14"]}
```

当前含义是：

```text
reads  = 本次 transformation 实际触及的 before-side IR 对象
writes = pass 运行前后新增、删除或文本发生变化的 IR 对象
```

常见 token：

```text
func:<function>
bb:<function>:<basic-block>
inst:<function>:%<ssa-name>
inst:<function>:<basic-block>:<ordinal>:<opcode>
loop:<function>:<header-block>
```

采集器会做轻量归一化，例如 SSA operand 统一为 `%v`，函数内纯数字 basic block label 归一化成稳定块名，减少纯编号漂移造成的假依赖。

如果某个 pass 在当前 IR 上没有改变结果，它的 `reads` 和 `writes` 都可能为空。这类 pass 不直接算 independent，而是先记作 `inactive`。

当前活跃度口径：

```text
active    第一轮单独运行就有 writes
enabled   第一轮 no-op，但在某个前缀 pass 后变成 active
inactive  第一轮和 enablement probing 后都没有表现出改写
```

只有 `active + enabled` 进入 pairwise dependency matrix；`inactive` 只作为覆盖率信息保留。

### 2. 生成 dependency matrix

```powershell
python scripts\analyze_footprints.py results\footprints.jsonl --out-csv results\generated_dependency_matrix.csv --out-json results\generated_independence_analysis.json
```

核心 read/write 判断是：

```text
WA ∩ RB: A 写入、B 读取，可能表示 B 依赖 A
WB ∩ RA: B 写入、A 读取，可能表示 A 依赖 B
WA ∩ WB: A 和 B 写同一对象，可能表示冲突或同方向改写
```

当前不是简单地“有交集就 dependent”，而是先分证据强弱：

```text
strong:
  loop / func
  真实语义 instruction
  强 enablement edge

weak:
  basic block 编号
  br / ret / unreachable
  纯结构或文本标签变化
```

最终分类：

```text
dependent:
  有强 read/write 交集，或 strong enablement evidence

uncertain:
  只有弱证据，或 weak expansion / mutation evidence
  这类不能当成 independent

independent:
  active/enabled pair 中没有 read/write 交集，也没有 enablement evidence
```

输出字段包括：

```text
classification
dependency_kinds
dependency_strength
read_write_strength
enablement_strength
uncertainty_risk
intersection_token_kinds
overlap_pattern
enablement_edge_kinds
enablement_edges
```

### 3. 探测 enablement / expansion / mutation

```powershell
python scripts\enablement_probe.py examples\demo.ll --passes instcombine,simplifycfg,sroa,early-cse,gvn,sccp,dce,adce,loop-simplify,loop-rotate,loop-unroll --opt E:\llvm\build\bin\opt.exe --work-dir results\demo_enablement_probe_work --out-json results\demo_enablement_probe.json --out-csv results\demo_enablement_probe.csv
```

当前实现是一阶探测：

```text
Round 0:
  在原始 IR 上单独运行所有 pass。

Round 1:
  对每个 active pass A 和每个 pass B，测试 original -> A -> B。
```

会记录三类边：

```text
activation:
  B 原来 no-op，A 之后 B 开始产生 writes。

expansion:
  B 原来已经 active，但 A 之后 B 写了新的对象。

mutation:
  B 原来已经 active，A 之后 B 写同一对象但归一化内容不同。
```

这些边不再通过手写 `readiness token` 表达，而是由动态 probing 自动发现，再交给 `analyze_footprints.py --enablement-json` 合并进 dependency matrix：

```powershell
python scripts\analyze_footprints.py results\footprints.jsonl --enablement-json results\demo_enablement_probe.json --out-csv results\enriched_dependency_matrix.csv --out-json results\enriched_independence_analysis.json
```

### 4. 黑盒 commutativity test

```powershell
python scripts\commutativity_test.py examples\demo.ll --passes instcombine,simplifycfg,dce --opt E:\llvm\build\bin\opt.exe --llvm-diff E:\llvm\build\bin\llvm-diff.exe --work-dir results\commutativity --out-json results\commutativity_results.json --out-csv results\commutativity_results.csv
```

它会对每个 pair 测：

```text
A -> B -> result_ab.ll
B -> A -> result_ba.ll
llvm-diff result_ab.ll result_ba.ll
```

如果 `llvm-diff` 返回 0，则认为 commuting。若 `llvm-diff` 返回非 0 但两个输出 IR 文本完全相同，也按 commuting 处理，用来规避部分复杂 IR 上 llvm-diff 的误报。

### 5. 对照验证

```powershell
python scripts\compare_validation.py --dependency-json results\generated_independence_analysis.json --commutativity-json results\commutativity_results.json --out-csv results\validation_report.csv --out-json results\validation_report.json
```

对照结果含义：

```text
agree_dependent:
  analyzer 判 dependent，黑盒 non-commuting

agree_independent:
  analyzer 判 independent，黑盒 commuting

false_positive:
  analyzer 判 dependent，黑盒 commuting

false_negative:
  analyzer 判 independent，黑盒 non-commuting

uncertain_commuting:
  analyzer 判 uncertain，黑盒 commuting

uncertain_non_commuting:
  analyzer 判 uncertain，黑盒 non-commuting
```

`false_negative` 最危险，因为它表示真实顺序敏感的 pair 被错误放进 independent。当前 broader suite 中 `false_negative = 0`。

`uncertain_non_commuting` 不是 false negative，因为系统没有把它判成 independent。它表示 footprint 证据还不够强，但黑盒已经发现顺序敏感，下一步应优先归因。

## 当前实验结果

### Smoke suite

命令：

```powershell
python scripts\run_benchmark_suite.py --manifest configs\singlesource_smoke.json --out-dir results\benchmark_suite --min-stable-count 2
```

结果：

```text
benchmarks = 5
validation_pairs = 127
false_positive = 13
false_negative = 0
uncertain_commuting = 28
uncertain_non_commuting = 7
stable_false_positive_pairs = 3
```

### Extra suite

命令：

```powershell
python scripts\run_benchmark_suite.py --manifest configs\singlesource_extra.json --out-dir results\benchmark_suite_extra --min-stable-count 2
```

结果：

```text
benchmarks = 5
validation_pairs = 160
false_positive = 9
false_negative = 0
uncertain_commuting = 47
uncertain_non_commuting = 14
stable_false_positive_pairs = 1
```

### Broader suite

命令：

```powershell
python scripts\run_benchmark_suite.py --manifest configs\singlesource_broader.json --out-dir results\benchmark_suite_broader --min-stable-count 3
```

结果：

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

从 dependency matrix 角度看：

```text
strict independent = 125 / 456
dependent = 196 / 456
uncertain = 135 / 456
```

从黑盒验证角度看：

```text
black-box commuting = 250 / 456
black-box non-commuting = 206 / 456
```

所以当前独立性并不低；低的是 analyzer 能严格确认的 independent 数量。项目下一步要提高的是“确认独立”的能力，而不是为了数字好看直接把 `uncertain_commuting` 改成 independent。

broader suite 中稳定 false positive 主要是：

```text
gvn + simplifycfg          8 / 15 benchmarks
instcombine + simplifycfg  4 / 15 benchmarks
simplifycfg + sroa         4 / 15 benchmarks
instcombine + sroa         3 / 15 benchmarks
```

这些 pair 常带有 strong read/write 或 enablement 证据，但黑盒结果 commuting，说明当前 analyzer 对同方向 rewrite、结构归一化和 transformation 语义的理解仍偏粗。

### Extended suite

入口：

```powershell
python scripts\run_benchmark_suite.py --manifest configs\singlesource_extended.json --out-dir results\benchmark_suite_extended --min-stable-count 5
```

结果：

```text
configured benchmarks = 25
successful benchmarks = 24
failed benchmarks = 1
validation_pairs = 758
strict independent = 215
dependent = 332
uncertain = 211
black-box commuting = 401
black-box non-commuting = 357
false_positive = 43
false_negative = 0
uncertain_commuting = 143
uncertain_non_commuting = 68
stable_false_positive_pairs = 3
```

新增独立性确认层结果：

```text
confirmed_independent observations = 215
likely_independent observations = 126
needs_attribution observations = 60
order_sensitive observations = 357

confirmed_independent pair recommendations = 5
likely_independent_candidate pair recommendations = 12
context_sensitive_keep_dependent pair recommendations = 32
needs_attribution pair recommendations = 4
```

这轮 extended suite 一开始暴露了 2 个 `false_negative`，都来自 `Stanford_Bubblesort` / `Stanford_Quicksort` 中的 `instcombine + sccp`。根因是旧版 `enablement_probe.py` 的 prefixed after-side 使用两次独立 `opt` 调用：

```text
original -> A
then A-output -> B
```

而黑盒 commutativity 使用单次 pass manager 管线：

```text
original -> A,B
```

对 `instcombine + sccp` 这类会依赖同一 pass manager 内属性/range/poison-fixup 传播的组合，两种运行方式不等价。现在 `OptFootprintRunner` 已改成 before-side 仍使用 `original -> A`，after-side 使用 `original -> A,B`，与 commutativity test 对齐。重跑 extended suite 后 `false_negative` 回到 0。

`Shootout_heapsort` 当前失败原因是 LLVM 23 的 `instcombine` fixpoint verify 错误，已记录在 `failed_benchmarks.csv`，不会中断整批实验。

## rewrite_direction_report.csv

`run_benchmark_suite.py` 会为 false positive 和 uncertain pair 生成：

```text
rewrite_direction_report.csv
```

它记录：

```text
A-only IR path
B-only IR path
A->B IR path
B->A IR path
AB/BA 文本是否相同
四个 IR 的 sha256
direction_classification
```

当前分类包括：

```text
same_direction_rewrite_candidate:
  黑盒 commuting，且 overlap_pattern 像 symmetric_rewrite。
  这类可能是两个 pass 朝同一方向删除或简化同类 IR。

commuting_false_positive:
  analyzer 判 dependent，但黑盒 commuting。
  这是后续削 false positive 的重点。

order_sensitive:
  analyzer 判 uncertain，但黑盒 non-commuting。
  这类不能升成 independent，应优先归因。
```

## independence_confirmation_report.csv

确认层不会改变 dependency matrix 的原始分类，而是在 validation 之后额外标记哪些 pair 可以进入后续训练或归因：

```text
confirmed_independent:
  footprint 已判 independent，黑盒也 commuting。

likely_independent:
  footprint 仍可能是 dependent/uncertain，但黑盒 commuting，且 A->B / B->A 有精确收敛或同方向 rewrite 证据。

needs_attribution:
  黑盒 commuting，但还没有足够 rewrite 解释，暂不进入 independent 训练。

order_sensitive:
  黑盒 non-commuting，或出现 false_negative，必须保留为依赖/顺序敏感。
```

对 `gvn + simplifycfg` 的 extended 归因很关键：它在 13 个 benchmark 中表现为稳定 false positive，但在另外 9 个 benchmark 中是真实 non-commuting。因此当前报告把它标为：

```text
recommendation = context_sensitive_keep_dependent
safe_for_independent_training = false
```

也就是说，不能全局降权；只能在具体 benchmark 上根据 `exact_convergence_to_single_pass_result` 或 `same_direction_rewrite_candidate` 这类证据局部标为 likely independent。

## 当前实现边界

```text
1. footprint 来自文本 IR 差异，不是 LLVM pass 内部 instrumentation。
2. reads 表示 transformation 触及的 before-side 对象，不等于 pass 内部所有分析读取。
3. enablement probing 目前是一阶 A -> B，还没有系统覆盖 {A, C} -> B 这类高阶启用。
4. weak / strong token 分层仍是启发式规则。
5. same-direction rewrite 目前只是候选报告，还没有自动升级为 confirmed independent。
6. likely_independent 仍是候选标签，不直接等同 confirmed independent。
7. licm 因 LLVM 23 MemorySSA / loop pass manager 要求暂未纳入默认 pass 集合。
```

## 测试

```powershell
python -W error -m unittest discover tests
```

当前测试覆盖：

```text
footprint token 提取与 IR 归一化
read/write dependency 分析
enablement / expansion / mutation probing
pass pipeline 映射
commutativity test
validation report
benchmark suite 批量调度
false positive attribution
rewrite direction report
failed benchmark 记录
独立性确认层
pipeline-aligned enablement probing
```

最新已验证结果：

```text
Ran 57 tests
OK
```

## 本轮已完成和下一步

本轮已经完成：

```text
1. 增加 high-risk uncertain / order_sensitive 报告。
2. 增加 same-direction / exact-convergence 独立性候选确认。
3. 对 gvn + simplifycfg 做 pair-level attribution，确认它是 context-sensitive，不能全局降权。
4. 增加 confirmed_independent / likely_independent / needs_attribution / order_sensitive 分层。
5. 扩展到 25 个 SingleSource benchmark，并修复 extended suite 暴露的 instcombine + sccp false_negative。
6. 重跑后 extended suite 保持 false_negative = 0。
```

下一步建议：

```text
1. 针对 60 个 needs_attribution observation 做更细的 IR rewrite 归因。
2. 对 12 个 likely_independent_candidate pair 做跨 benchmark 稳定性检查。
3. 对 context_sensitive_keep_dependent pair 建立条件化规则，而不是全局降权。
4. 等 confirmed/likely 标签稳定后，再构建 ML profitability / local ranking 数据集。
```

## 下一阶段设计：局部化独立性判断

当前 benchmark 级 pair 判断有一个长期问题：代码越长，函数、basic block、loop、load/store 越多，两个 pass 在某个局部区域发生交集的概率就越高。如果仍然只输出一个全局标签，就容易出现：

```text
某个 pass pair 只有一个 loop 顺序敏感
  -> 整个 benchmark 上都被标成 dependent / context-sensitive
```

下一阶段应把问题从“这个 pass pair 是否全局独立”改成：

```text
这个 pass pair 在哪些 region 独立？
在哪些 region 顺序敏感？
哪些 region 还需要 attribution？
```

推荐先新增 region-level 报告，而不是替换现有 dependency matrix：

```text
region_dependency_matrix.csv
local_independence_summary.csv
```

region 可以先分三层：

```text
function region:    func:<function>
loop region:        loop:<function>:<header-block>
basic-block region: bb:<function>:<basic-block>
```

目标输出从单个全局标签升级为：

```text
gvn + simplifycfg:
  global = context_sensitive_keep_dependent
  confirmed_independent_regions = ...
  likely_independent_regions = ...
  order_sensitive_regions = ...
  needs_attribution_regions = ...
  local_independence_rate = ...
```

实施顺序建议：

```text
1. 给现有 footprint token 增加 region extractor。
2. 新增 region_dependency_matrix.csv，不改变原 dependency matrix。
3. 聚合 local independence summary，统计每个 pair 的局部独立率和 unsafe region 比例。
4. 优先对 gvn + simplifycfg、instcombine + sccp 这类 context-sensitive pair 做局部归因。
5. 再引入 transformation instance，把一个 pass 的 writes 拆成多个 rewrite instance。
6. 最后增加 CFG / dominance / memory object 等更强的局部约束。
```

这条路线的目标不是简单提高全局 independent 数字，而是解决“大程序里一处冲突导致整个 pair 被判死”的问题。最终 ML 也应学习局部决策：

```text
在哪些 region 可以重排 pass？
在哪些 region 必须保序？
哪些 region 需要继续归因？
```
