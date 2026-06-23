# Phase Ordering ML 依赖感知原型

本项目探索一种依赖感知的 LLVM phase ordering 方法：先用 footprint 和黑盒验证判断 pass pair 的独立、依赖、可疑关系，再把 ML 留给真正需要决策的局部位置，而不是一开始就让 ML 在完整 pass 序列空间里盲搜。

当前项目已经跑通的主链路是：

```text
LLVM IR / SingleSource C
  -> 自动运行单个 pass
  -> 生成对象级 read/write footprint
  -> 探测 enablement / expansion / mutation edge
  -> 生成 dependent / uncertain / independent 三分类 dependency matrix
  -> 运行 pass pair commutativity 黑盒验证
  -> 聚合 false positive / false negative / uncertain 结果
  -> 输出 batch benchmark suite 报告
```

当前最重要的实验结论是：

```text
broader SingleSource suite:
15 benchmarks
456 validation pairs
125 strict independent
196 dependent
135 uncertain
27 false_positive
0 false_negative
98 uncertain_commuting
37 uncertain_non_commuting
0 failed benchmarks
```

这说明当前版本保持了安全底线：没有把真实 non-commuting 的 pair 错判成 independent。不过 analyzer 仍然偏保守，真实黑盒 commuting 是 `250 / 456`，严格判 independent 是 `125 / 456`，中间还有大量 `uncertain` 需要进一步确认。

## 当前目录

```text
configs/
  singlesource_smoke.json     # 5 个 SingleSource smoke benchmark
  singlesource_extra.json     # 5 个额外 SingleSource benchmark
  singlesource_broader.json   # 15 个 SingleSource benchmark，当前主实验入口

examples/
  demo.c
  demo.ll
  sample_footprints.jsonl
  singlesource/

scripts/
  collect_pass_footprints.py  # 从 .ll 自动运行单个 pass，生成 footprints.jsonl
  analyze_footprints.py       # 生成 dependency matrix，支持 enablement edge 和强弱证据
  enablement_probe.py         # 一阶 enablement / expansion / mutation 探测
  commutativity_test.py       # A->B 与 B->A 黑盒可交换性验证
  compare_validation.py       # 对照 dependency matrix 和黑盒验证
  benchmark_suite.py          # benchmark 编译与调度辅助
  run_benchmark_suite.py      # 一键批量运行完整链路
  pass_pipeline.py            # LLVM pass pipeline 名称映射

results/
  benchmark_suite/            # smoke suite 结果
  benchmark_suite_extra/      # extra suite 结果
  benchmark_suite_broader/    # broader suite 结果，当前主结果

tests/
  test_*.py                   # 当前共 51 个 unittest
```

## 环境要求

默认脚本使用本机 LLVM 路径：

```text
E:\llvm\build\bin\clang.exe
E:\llvm\build\bin\opt.exe
E:\llvm\build\bin\llvm-diff.exe
```

如果需要验证工具链：

```powershell
E:\llvm\build\bin\clang.exe --version
E:\llvm\build\bin\opt.exe --version
E:\llvm\build\bin\llvm-diff.exe --version
```

从 C 生成 LLVM IR 的示例命令：

```powershell
E:\llvm\build\bin\clang.exe -S -emit-llvm -O0 -Xclang -disable-O0-optnone examples\demo.c -o examples\demo.ll
```

`-disable-O0-optnone` 很重要，否则 O0 生成的 `optnone` 属性会阻止很多 LLVM pass 改写函数。

## 一键运行当前主实验

当前推荐先跑 15 个 SingleSource benchmark：

```powershell
python scripts\run_benchmark_suite.py --manifest configs\singlesource_broader.json --out-dir results\benchmark_suite_broader --min-stable-count 3
```

它会为每个 benchmark 生成：

```text
footprints.jsonl
enablement_probe.json
enablement_probe.csv
dependency_matrix.csv
independence_analysis.json
commutativity_results.json
commutativity_results.csv
validation_report.json
validation_report.csv
```

suite 级别会生成：

```text
suite_summary.json
suite_summary.csv
false_positive_attribution.csv
stable_false_positive_pairs.csv
rewrite_direction_report.csv
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

## 当前实现边界

```text
1. footprint 来自文本 IR 差异，不是 LLVM pass 内部 instrumentation。
2. reads 表示 transformation 触及的 before-side 对象，不等于 pass 内部所有分析读取。
3. enablement probing 目前是一阶 A -> B，还没有系统覆盖 {A, C} -> B 这类高阶启用。
4. weak / strong token 分层仍是启发式规则。
5. same-direction rewrite 目前只是候选报告，还没有自动升级为 confirmed independent。
6. licm 因 LLVM 23 MemorySSA / loop pass manager 要求暂未纳入默认 pass 集合。
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
```

最新已验证结果：

```text
Ran 51 tests
OK
```

## 下一步

当前最合理的下一阶段是提高“确认独立”的能力：

```text
1. 优先排查 high-risk uncertain / order_sensitive，避免引入 false negative。
2. 对 same_direction_rewrite_candidate 做人工归因，找出可安全降权的模式。
3. 针对稳定 false positive，尤其是 gvn + simplifycfg，做 transformation-level 归因。
4. 增加 likely_independent / confirmed_independent 的分层，而不是直接把 uncertain 当 independent。
5. 在更多 SingleSource 样例上验证 false_negative 是否仍为 0。
6. 等 dependency label 稳定后，再构建 ML profitability / local ranking 数据集。
```

