# Phase Ordering v3 — Iterative Dependency-Aware Scheduler

## What's New in v3

v3 is a major upgrade from v2, implementing the full executive scheduler with all improvements discussed for the limitations of the dependency-aware phase ordering approach.

### Key Improvements

| Area | v2 | v3 |
|------|----|----|
| **Scheduler** | Dry-run only (analyzes, no execution) | Executive: actually runs passes, iterates to fixed point |
| **Automation rate** | 0 auto_safe (too conservative) | Relaxed mode promotes `likely_independent` → `auto_safe` |
| **Scheduler modes** | Only strict | 3 modes: strict / relaxed / threshold (ratio-based) |
| **Cost model** | Simple IR weighted formula | Multi-level: IR + TTI + runtime (pluggable) |
| **Stopping condition** | IR hash only | Metric convergence + IR hash cycle + max rounds |
| **Pass config** | Hardcoded 11 passes | JSON-driven pass sets (O1/O2/O3/research) |
| **Mandatory orders** | None | Config-driven mandatory ordering constraints |
| **Decision mechanism** | Manual pair enumeration | Oracle ordered-pair chooser (auto-selects best direction) |
| **Batch safety** | No check | Batch commutativity spot-checking |
| **Perturbation** | None | Metric stagnation → perturbation to escape local optima |
| **Multi-start** | None | Multi-start search (original, random, O2 pipeline) |
| **Baseline** | None | O2/O3 baseline comparison built-in |
| **Test suite** | E:\Phase Ordering\examples\ | E:\llvm-test-suite (30+ real benchmarks) |

## Architecture

```
v3/
├── configs/
│   ├── pass_sets.json           # Pass sets for O1/O2/O3/research + mandatory orders
│   ├── benchmarks_smoke.json    # 30+ benchmarks from llvm-test-suite
│   └── benchmarks_quick.json    # 5 quick smoke-test benchmarks
├── scripts/
│   ├── pass_pipeline.py         # Pass name resolution + mandatory order validation
│   ├── ir_metrics.py            # Multi-level IR metrics (IR + TTI)
│   ├── collect_pass_footprints.py  # Single-pass footprint collection
│   ├── enablement_probe.py      # Enablement edge detection
│   ├── analyze_footprints.py    # Pairwise dependency analysis
│   ├── commutativity_test.py    # Black-box commutativity + batch spot-check
│   ├── compare_validation.py    # Cross-validation (static vs. black-box)
│   ├── confirm_independence.py  # Confirmation layer (4 labels)
│   ├── scheduler_policy.py      # Scheduler policy (3 modes + ablation)
│   ├── oracle_chooser.py        # Oracle ordered-pair selector
│   ├── iterative_scheduler.py   # Executive iterative scheduler (core)
│   ├── baseline_runner.py       # O0/O1/O2/O3 baseline runner
│   └── run_benchmark_suite.py   # Full analysis chain orchestrator
├── tests/
│   ├── test_pass_pipeline.py
│   ├── test_ir_metrics.py
│   ├── test_collect_pass_footprints.py
│   ├── test_scheduler_policy.py
│   ├── test_confirm_independence.py
│   ├── test_oracle_chooser.py
│   └── test_iterative_scheduler.py
└── results/                     # Output directory
```

## Quick Start

### 1. Install dependencies

```powershell
# Python 3.9+ required. No external packages needed (stdlib only).
# LLVM binaries expected at E:\llvm\build\bin\ (opt.exe, clang.exe, llvm-diff.exe)
```

### 2. Run tests

```powershell
cd v3
python -m pytest tests/ -v
# Or individually:
python tests\test_pass_pipeline.py
python tests\test_scheduler_policy.py
```

### 3. Run single benchmark analysis (dry-run)

```powershell
python scripts\run_benchmark_suite.py --ir examples\demo.ll --name demo --out-dir results\demo_analysis
```

### 4. Run iterative scheduler (executive mode)

```powershell
# Single benchmark
python scripts\iterative_scheduler.py --ir examples\demo.ll --name demo --scheduler-mode relaxed --max-rounds 20

# From test suite
python scripts\iterative_scheduler.py --manifest configs\benchmarks_quick.json --scheduler-mode relaxed

# With O2 baseline comparison
python scripts\iterative_scheduler.py --manifest configs\benchmarks_quick.json --baseline-pipeline O2
```

### 5. Run full benchmark suite analysis

```powershell
# Analyze all benchmarks (dependency + commutativity + confirmation)
python scripts\run_benchmark_suite.py --manifest configs\benchmarks_smoke.json --out-dir results\suite

# Analyze specific benchmark
python scripts\run_benchmark_suite.py --manifest configs\benchmarks_smoke.json --benchmark Misc_flops_1
```

### 6. Run baselines

```powershell
python scripts\baseline_runner.py examples\demo.ll --out-dir results\baselines
```

## Scheduler Modes

| Mode | `likely_independent` | Auto-safe condition |
|------|---------------------|---------------------|
| **strict** | `candidate_safe` (not auto) | All edges must be `confirmed_independent` |
| **relaxed** | `auto_safe` (promoted) | All edges must be `confirmed_independent` or `likely_independent` |
| **threshold** | Configurable ratio | ≥X% of edges safe (`--independence-threshold 0.9`) |

## Output Files

Each benchmark run produces:

```
results/iterative_scheduler/<benchmark>/
├── <benchmark>.ll              # Original IR
├── round_000/
│   ├── input.ll                # IR at start of round
│   ├── output.ll               # IR after executing action
│   ├── selected_action.json    # What was chosen and why
│   └── analysis/               # Full analysis chain results
│       ├── footprints.jsonl
│       ├── enablement_probe.json
│       ├── dependency_matrix.csv
│       ├── commutativity_results.json
│       ├── validation_report.csv
│       └── ...
├── schedule_trace.csv          # Round-by-round trace
├── schedule_trace.json
├── scheduler_policy_report.csv # Per-pass classifications
├── final.ll                    # Final optimized IR
├── final_metrics.json          # Final IR metrics
└── baseline_comparison.json    # vs O2 (if enabled)
```

## Configuration

### Pass Sets (`configs/pass_sets.json`)

```json
{
  "pass_sets": {
    "research": ["instcombine", "simplifycfg", "sroa", ...]
  },
  "mandatory_orders": [
    {"before": "mem2reg", "after": "*", "reason": "mem2reg must run first"},
    {"before": "loop-simplify", "after": "loop-rotate"}
  ],
  "scheduler_defaults": {
    "mode": "relaxed",
    "independence_threshold": 0.9,
    "max_rounds": 50
  }
}
```

### Benchmarks (`configs/benchmarks_smoke.json`)

Points to `E:\llvm-test-suite\SingleSource\Benchmarks\` for real-world test programs.

## Algorithm

```
IR = original
while not fixed_point:
    1. Scan all passes on current IR → footprints, enablement, dependency
    2. Validate independence → confirmation labels
    3. Classify passes → auto_safe / decision_required
    4. If auto_safe exists → execute safe pass, update IR, re-scan
    5. If no auto_safe → oracle picks best ordered pair, execute, re-scan
    6. Stop if: metric stagnates OR IR hash cycles OR max rounds reached
```
