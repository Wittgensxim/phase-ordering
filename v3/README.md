# Phase Ordering v3 — 迭代式依赖感知调度器

> **状态**: v3.4 — 139-pass (research_codesize), codesize metric, 双层并行 | **更新**: 2026-06-29

---

## 文档导航

| 文档 | 内容 |
|------|------|
| **[docs/迭代调度器完整机制.md](docs/迭代调度器完整机制.md)** | ⭐ **主文档**：Pass 集合、分析链（Stage A 先行）、决策图、控制流、对比框架、指标体系 |
| **[docs/决策图_独立对与oracle.md](docs/决策图_独立对与oracle.md)** | 专题：为什么独立对不需要 oracle（回答 reviewer 核心质疑） |
| **[docs/项目完整文档.md](docs/项目完整文档.md)** | 历史记录（v3.0–v3.1，已不再维护） |

---

## 快速开始

```powershell
# 单 benchmark 迭代调度（观察过程）
python scripts/iterative_scheduler.py --manifest configs/benchmarks_codesize_full.json --benchmark Stanford_Oscar --chooser oracle --max-rounds 5 --metric codesize

# 全量对比（论文主实验：21 benchmark, 4 并行）
python scripts/compare_all.py --manifest configs/benchmarks_codesize_full.json --metric codesize --parallel 4 --intra-parallel 3

# Pass sweep（发现哪些 pass 对 codesize 有益）
python scripts/pass_sweep.py --manifest configs/benchmarks_codesize_full.json
```

---

## 核心贡献

**独立性分析驱动的搜索空间塌缩 + 双层并行加速**：

1. **Stage A 先行**：每轮先对全部 139 pass 测 codesize，筛选 beneficial+enabling 子集（~3-13 个），然后**仅对该子集**运行重量分析链（footprint/enablement/commutativity）。非 beneficial pass 不参与 O(b²) pairwise 分析。

2. **双层并行**：inter-benchmark（`--parallel`，跨 benchmark） + intra-benchmark（`--intra-parallel`，单 benchmark 内部 fixed/oracle/random 同时跑）。

3. **多项性能优化**：预过滤器 opt 输出复用（消除双 opt）、oracle 成对评估并行化。

### 实验对比框架

| 方法 | Pass 集 | 排序方式 | 度量 |
|------|---------|---------|------|
| **oracle** | 139 (全集) | 独立性分析 + 贪心 | codesize (.text bytes) |
| **random** | 139 (全集) | 迭代 + 随机选择 | codesize |
| **fixed** | 139 (全集) | LLVM 注册顺序（客观固定序） | codesize |
| **Oz** | LLVM 全集 | LLVM -Oz 管线 | codesize |
| **O2/O3** | LLVM 全集 | LLVM -O2/-O3 管线 | codesize (参考) |

### 指标

| 指标 | 定义 | 用途 |
|------|------|------|
| **MeanReduction** over LLVM-order | (fixed − oracle)/fixed | PRIMARY：同集排序收益 |
| **MeanOverOz** | (Oz − oracle)/Oz | SECONDARY：离工业线距离 |
| **auto_resolved_rate** | 每轮独立对占比 | 搜索空间塌缩证据 |
| **Wins vs LLVM-order** | oracle 更好的 benchmark 比例 | 排序可靠性 |
| **收敛轮数** | 平均有效轮 | 效率 |

---

## 关键特性

| 特性 | 说明 |
|------|------|
| **codesize 度量** | L1：llc → llvm-size 测量真实 .text 字节（CGO'25 兼容） |
| **minsize 注入** | 给输入 IR 注入 `minsize optsize` 属性，与 Oz 公平对比 |
| **LLVM-order 基线** | 固定序从 LLVM 注册顺序自动生成（可辩护，非手写） |
| **measure_fn 工厂** | `make_measure_fn()` 统一 Stage A / oracle / scheduler 的度量入口 |
| **no-op 预过滤** | codesize 模式下跳过 ΔIR=0 的 pass（安全：ΔIR=0 ⇒ Δcodesize=0） |
| **pass sweep** | 逐 pass 测量 codesize 影响，数据驱动 pass 集选择 |
| **正确性验证** | `--correctness` 标志：编译执行 + 输出对拍 O0 |

## Pass 集: research_codesize

139 个 LLVM 变换 pass（safe subset of full LLVM 23 transform passes, 13 crash excluded），单次应用。32 条 mandatory_orders 覆盖所有 loop/vector 类 pass 的前置约束。

## Benchmark: benchmarks_cs31.json

32 个 SingleSource C 程序，覆盖 8 个类别（Stanford, Shootout, CoyoteBench, Misc, McGill, Linpack, Dhrystone, BenchmarkGame）。O2 .text 范围 ~700B–16KB。

---

## 架构

```
v3/
├── configs/
│   ├── pass_sets.json              # Pass 集（research_codesize: 139 pass, 32 orders）
│   ├── benchmarks_cs31.json        # 32 SingleSource benchmark
│   └── benchmarks_curated.json     # 115 benchmark（旧 curated set）
├── docs/
│   ├── 迭代调度器完整机制.md        # 主文档
│   ├── 决策图_独立对与oracle.md     # 专题
│   └── 项目完整文档.md              # 历史
├── scripts/
│   ├── iterative_scheduler.py      # ★ 核心：迭代调度器
│   ├── compare_all.py              # ★ 统一对比（chooser + LLVM baselines + LLVM-order）
│   ├── exact_optimum.py            # ★ 精确全局最优（trace 等价类枚举）
│   ├── ir_metrics.py               # ★ codesize 测量 + make_measure_fn 工厂
│   ├── baseline_pipelines.py       # 真实 LLVM 管线 + minsize 注入
│   ├── pass_sweep.py               # Pass sweep（codesize 影响分析）
│   ├── pass_pipeline.py            # Pass 管线名称映射（30+ alias）
│   ├── measure_beneficial_independence.py  # Stage A+B 独立性测量
│   ├── oracle_chooser.py           # Oracle 决策器（支持 measure_fn）
│   ├── scheduler_policy.py         # 调度策略 + 决策图构建
│   ├── commutativity_test.py       # 黑盒交换性验证
│   ├── rule_chooser.py             # 规则决策器
│   └── ...                         # 更多辅助脚本
├── results/                        # 实验结果
└── tests/                          # 单元测试
```

│   ├── compare_validation.py       # 交叉验证
│   ├── confirm_independence.py     # 确认层
│   ├── run_benchmark_suite.py      # 全分析链编排
│   └── quantify_search.py          # 搜索空间量化
├── tests/                          # 单元测试
└── results/
    ├── beneficial_independence_v31/  # Stage A+B 测量（115 bench）
    ├── exact_optimum/                # 精确最优实验（115 bench）
    └── compare_all_115/              # 调度器 vs baseline 对比

```

## 快速开始

### 环境要求

```powershell
# Python 3.9+, 无需外部包（仅 stdlib）
# LLVM 23.0.0git: E:\llvm\build\bin\opt.exe, clang.exe, llvm-diff.exe
```

### 运行

```powershell
# 单元测试
cd v3 ; python -m pytest tests/ -v

# 测量 beneficial pass + 独立性 + trace 等价类（核心实验）
python scripts\measure_beneficial_independence.py --parallel 8

# 精确最优 vs LLVM 基线（核心实验）
python scripts\exact_optimum.py --manifest configs\benchmarks_curated.json --parallel 8

# 调度器全量对比（oracle + rule + random vs 真实 O0/O1/O2/O3/Oz）
python scripts\compare_all.py --manifest configs\benchmarks_curated.json --parallel 8

# 单个 benchmark（oracle chooser）
python scripts\iterative_scheduler.py --ir examples\demo.ll --name demo
```

## Pass 集合（20 pass）

15 基础 + 5 经 oracle 使用率筛选的新 pass：`correlated-propagation`、`loop-instsimplify`、`loop-deletion`、`loop-idiom`、`aggressive-instcombine`。

试验的另外 5 个（bdce/jump-threading/sink/tailcallelim/constraint-elimination）从未被 oracle 选中，已移除。

## Chooser 对比

> ⚠️ 旧 numbers（71% vs O2 等）基于有缺陷的度量和非真实基线，已弃用。
> 当前建议使用 exact_optimum 作为 ground truth，而非 greedy oracle 作为 "upper bound"。
> 详见 [精确最优 vs LLVM 基线](#精确最优-vs-llvm-基线meanoverozcgo25-标准) 和 `results/exact_optimum/summary.json`。

## 调度模式

| 模式 | likely_independent | 适用 |
|------|-------------------|------|
| **strict** | candidate_safe（不自动） | 最安全 |
| **relaxed** | 升级为 auto_safe（推荐） | 平衡 |
| **threshold** | 达阈值才升级 | 可调节 |

## 算法

```
IR = 原始输入（clang -O0）

Stage A: beneficial+enabling pass 过滤
  → 从 15 pass 中筛出 |B| 个有效 pass（中位 7 个）

Stage B: 黑盒交换性分析
  → 对 |B| 中每对 pass 运行 llvm-diff(A→B, B→A)
  → 可交换 → independent（不需要顺序决策）
  → 不可交换 → order_sensitive（唯一需要决策的 pair）

Stage C: 枚举 trace 等价类 → 精确全局最优
  → 79/115 benchmark (68.7%) 可在 trace_cap=8 内精确穷举
  → Random(k=30) 以 93.7% 概率命中精确最优

安全保证: false_negative = 0（绝不误判独立 pair）
强制顺序约束: mem2reg-first、loop-simplify 在 loop 优化之前
```

## 详细文档

参见 [`docs/项目完整文档.md`](docs/项目完整文档.md)
