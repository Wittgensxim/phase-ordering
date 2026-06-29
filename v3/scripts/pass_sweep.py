"""
Pass sweep: run every LLVM transformation pass individually on benchmark IRs,
measure codesize (.text bytes) impact, and classify passes for inclusion.

Outputs:
  results/pass_sweep/pass_sweep.csv   — one row per (benchmark, pass)
  results/pass_sweep/summary.json     — aggregated per-pass stats
"""

import argparse, csv, json, subprocess, sys, tempfile
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from ir_metrics import measure_ir_file, measure_codesize

# ── Pass discovery ──────────────────────────────────────────────────────────

def list_transform_passes(opt_path):
    """Parse `opt --print-passes` and return unique base transform pass names."""
    result = subprocess.run(
        [str(opt_path), "--print-passes"],
        text=True, capture_output=True, check=False,
    )
    lines = result.stdout.splitlines() + result.stderr.splitlines()
    
    passes = set()
    in_section = False
    for line in lines:
        # Section headers: "Function passes:", "Function passes with params:",
        # "Loop passes:", "Loop passes with params:", "CGSCC passes:"
        if not line.startswith(" ") and not line.startswith("\t"):
            in_section = any(kw in line for kw in [
                "Function passes", "Loop passes", "CGSCC passes",
            ]) and "analyses" not in line.lower() and "alias" not in line.lower()
            continue
        
        if not in_section:
            continue
        
        p = line.strip()
        if not p:
            continue
        
        # Strip parameters: "instcombine<...>" → "instcombine"
        if "<" in p:
            p = p.split("<")[0]
        p = p.lstrip("-")
        
        # Skip analysis/print/debug/internal passes
        skip_prefixes = [
            "print<", "print-", "view-", "verify", "debug",
            "dot-", "invalidate<", "check-",
        ]
        if any(p.startswith(sp) for sp in skip_prefixes):
            continue
        
        skip_exact = {
            "aa", "aa-eval", "assumptions", "basic-aa", "block-freq",
            "branch-prob", "demanded-bits", "domtree", "globals-aa",
            "loops", "lazy-block-freq", "lazy-branch-prob",
            "lazy-value-info", "lint", "memdep",
            "module-summary", "no-op-function", "no-op-module",
            "opt-remark-emitter", "postdomtree",
            "regions", "scalar-evolution", "stack-safety",
            "targetlibinfo", "uniformity", "no-op-loop",
            "no-op-cgscc", "count-visits", "func-properties-stats",
            "transform-warning", "add-discriminators",
            "annotation-remarks", "instnamer", "helloworld",
            "kernel-info", "print", "pa-eval",
            "no-op-loopnest", "invalidate",
        }
        
        if p in skip_exact:
            continue
        
        passes.add(p)
    
    return sorted(passes)


# ── Single-pass test ────────────────────────────────────────────────────────

def test_pass(opt_path, llc_path, lsize_path, ir_path, pass_name, triple, mcpu):
    """Run a single pass on ir_path, measure before/after codesize.

    Returns dict with results, or None if the pass crashes.
    """
    import tempfile
    with tempfile.NamedTemporaryFile(suffix=".ll", delete=False) as tmp:
        out_path = tmp.name
    
    try:
        # Run the pass
        cmd = [
            str(opt_path), "-S",
            f"-passes=function({pass_name})",
            str(ir_path), "-o", out_path,
        ]
        r = subprocess.run(cmd, text=True, capture_output=True, check=False)
        if r.returncode != 0:
            return {"status": "crash", "error": r.stderr.strip()[:200]}
        
        # Measure before (original IR)
        before_cs = measure_codesize(ir_path, llc_path, lsize_path, triple, mcpu)
        before_ir = measure_ir_file(ir_path)
        
        # Measure after
        after_cs = measure_codesize(out_path, llc_path, lsize_path, triple, mcpu)
        after_ir = measure_ir_file(out_path)
        
        if before_cs is None or after_cs is None:
            return {"status": "crash", "error": "codesize measurement failed"}
        
        delta_text = after_cs - before_cs
        delta_instr = after_ir["instruction_count"] - before_ir["instruction_count"]
        
        # Read IR texts for byte-level comparison (validates no-op pre-filter claim)
        before_ir_text = Path(ir_path).read_text(encoding="utf-8")
        after_ir_text = Path(out_path).read_text(encoding="utf-8")
        ir_text_changed = before_ir_text != after_ir_text
        
        return {
            "status": "ok",
            "before_text": before_cs,
            "after_text": after_cs,
            "delta_text": delta_text,
            "before_instr": before_ir["instruction_count"],
            "after_instr": after_ir["instruction_count"],
            "delta_instr": delta_instr,
            "ir_text_changed": ir_text_changed,
        }
    finally:
        try:
            Path(out_path).unlink()
        except Exception:
            pass


# ── Main sweep ──────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="Sweep all LLVM passes for codesize impact")
    parser.add_argument("--manifest", default="configs/benchmarks_ut10.json")
    parser.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe")
    parser.add_argument("--llc", default=r"E:\llvm\build\bin\llc.exe")
    parser.add_argument("--llvm-size", default=r"E:\llvm\build\bin\llvm-size.exe")
    parser.add_argument("--clang", default=r"E:\llvm\build\bin\clang.exe")
    parser.add_argument("--triple", default="x86_64-unknown-linux-gnu")
    parser.add_argument("--mcpu", default="generic")
    parser.add_argument("--out-dir", default="results/pass_sweep")
    parser.add_argument("--limit-passes", type=int, default=0, help="Cap number of passes to test")
    parser.add_argument("--limit-benchmarks", type=int, default=0)
    args = parser.parse_args()
    
    # Load benchmarks
    manifest = json.loads(Path(args.manifest).read_text())
    benchmarks = manifest["benchmarks"]
    if args.limit_benchmarks:
        benchmarks = benchmarks[:args.limit_benchmarks]
    
    # Discover passes
    all_passes = list_transform_passes(args.opt)
    print(f"Discovered {len(all_passes)} candidate passes")
    if args.limit_passes:
        all_passes = all_passes[:args.limit_passes]
    
    # Compile all benchmarks to O0 IR
    ir_paths = {}
    tmp_dir = Path(tempfile.gettempdir()) / "pass_sweep_ir"
    tmp_dir.mkdir(parents=True, exist_ok=True)
    for bench in benchmarks:
        name = bench["name"]
        ir = tmp_dir / f"{name}.ll"
        r = subprocess.run([
            args.clang, "-S", "-emit-llvm", "-O0",
            "-Xclang", "-disable-O0-optnone",
            bench["source"], "-o", str(ir),
        ], capture_output=True, check=False)
        if ir.exists():
            ir_paths[name] = ir
    
    print(f"Compiled {len(ir_paths)}/{len(benchmarks)} benchmarks to O0 IR")
    
    # Sweep
    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    csv_path = out_dir / "pass_sweep.csv"
    
    rows = []
    total = len(all_passes) * len(ir_paths)
    done = 0
    
    with open(csv_path, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=[
            "pass", "benchmark", "status",
            "before_text", "after_text", "delta_text",
            "before_instr", "after_instr", "delta_instr",
            "ir_text_changed", "error",
        ])
        writer.writeheader()
        
        for pass_name in all_passes:
            for bench_name, ir_path in ir_paths.items():
                done += 1
                result = test_pass(
                    args.opt, args.llc, args.llvm_size,
                    ir_path, pass_name, args.triple, args.mcpu,
                )
                row = {"pass": pass_name, "benchmark": bench_name, **result}
                writer.writerow(row)
                rows.append(row)
                
                if done % 50 == 0 or done == total:
                    print(f"[{done}/{total}] {pass_name} on {bench_name}: "
                          f"{result.get('status','?')} "
                          f"Δtext={result.get('delta_text','?')} "
                          f"Δinstr={result.get('delta_instr','?')}")
        
        f.flush()
    
    # ── Aggregate ───────────────────────────────────────────────────────────
    pass_stats = defaultdict(lambda: {
        "total": 0, "ok": 0, "crash": 0, "noop": 0,
        "improves_text": 0, "degrades_text": 0,
        "ir_text_changed": 0, "ir_text_unchanged": 0,
        "mean_delta_text": 0.0, "mean_delta_instr": 0.0,
        "total_delta_text": 0,
    })
    
    for row in rows:
        p = row["pass"]
        stats = pass_stats[p]
        stats["total"] += 1
        if row["status"] == "crash":
            stats["crash"] += 1
        else:
            stats["ok"] += 1
            dt = row.get("delta_text", 0) or 0
            di = row.get("delta_instr", 0) or 0
            stats["total_delta_text"] += dt
            if dt < 0:
                stats["improves_text"] += 1
            elif dt > 0:
                stats["degrades_text"] += 1
            else:
                stats["noop"] += 1
            # Track IR text changes
            changed = row.get("ir_text_changed")
            if changed is True or str(changed).lower() == "true":
                stats["ir_text_changed"] += 1
            elif changed is False or str(changed).lower() == "false":
                stats["ir_text_unchanged"] += 1
    
    for p, s in pass_stats.items():
        if s["ok"] > 0:
            s["mean_delta_text"] = round(s["total_delta_text"] / s["ok"], 1)
    
    # Sort: passes that most consistently improve codesize first
    ranked = sorted(pass_stats.items(),
                    key=lambda kv: (kv[1]["improves_text"] - kv[1]["degrades_text"],
                                    kv[1]["mean_delta_text"]))
    
    # Print summary
    print(f"\n{'='*100}")
    print(f"PASS SWEEP SUMMARY ({len(ir_paths)} benchmarks, {len(all_passes)} passes)")
    print(f"{'='*100}")
    print(f"{'Pass':35s} {'OK':>4s} {'CRASH':>5s} {'-TX':>5s} {'+TX':>5s} {'noop':>5s} {'IRΔ':>4s} {'meanΔT':>7s}")
    print("-" * 80)
    
    for pass_name, stats in ranked:
        s = stats
        print(f"{pass_name:35s} {s['ok']:>4d} {s['crash']:>5d} "
              f"{s['improves_text']:>5d} {s['degrades_text']:>5d} {s['noop']:>5d} "
              f"{s['ir_text_changed']:>4d} "
              f"{s['mean_delta_text']:>+7.1f}")
    
    # Write summary JSON
    summary = {
        "benchmarks": len(ir_paths),
        "passes_tested": len(all_passes),
        "pass_stats": {p: dict(s) for p, s in pass_stats.items()},
    }
    (out_dir / "summary.json").write_text(
        json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    
    print(f"\nSaved {csv_path} and {out_dir / 'summary.json'}")
    
    # ── Recommendations ─────────────────────────────────────────────────────
    print(f"\n{'='*100}")
    print("RECOMMENDATIONS: Two categories")
    print(f"{'='*100}")
    
    # Category 1: Strong candidates (single-pass codesize improvers)
    strong = [p for p, s in pass_stats.items()
              if s["crash"] == 0 and s["improves_text"] > 0]
    print(f"\n  1) STRONG CANDIDATES ({len(strong)}): single-pass reduces codesize")
    print(f"     {', '.join(strong[:40])}{'...' if len(strong) > 40 else ''}")
    
    # Category 2: Keep-for-ordering (changes IR, single-pass doesn't harm enough to exclude)
    keep = [p for p, s in pass_stats.items()
            if s["crash"] == 0 and s["improves_text"] == 0 and s["ir_text_changed"] > 0]
    print(f"\n  2) KEEP-FOR-ORDERING ({len(keep)}): changes IR, needs sequence context (Group B)")
    for p in keep[:20]:
        s = pass_stats[p]
        print(f"     {p:35s} ΔT={s['mean_delta_text']:>+6.1f}  "
              f"(changed on {s['ir_text_changed']}/{s['ok']} benchmarks)")
    if len(keep) > 20:
        print(f"     ... and {len(keep)-20} more")
    
    # Category 3: No-op (never changes IR) — safe to exclude from pass set
    noop_passes = [p for p, s in pass_stats.items()
                   if s["crash"] == 0 and s["ir_text_changed"] == 0]
    print(f"\n  3) TRUE NO-OP ({len(noop_passes)}): never changes IR text → skip")
    print(f"     {', '.join(noop_passes[:30])}{'...' if len(noop_passes) > 30 else ''}")
    
    # Validate no-op pre-filter claim: ΔIR=0 ⇒ Δcodesize=0
    noop_with_cs_change = [p for p in noop_passes
                           if pass_stats[p]["improves_text"] > 0 or pass_stats[p]["degrades_text"] > 0]
    if noop_with_cs_change:
        print(f"\n  ⚠️  PRE-FILTER VIOLATION: {len(noop_with_cs_change)} passes change codesize without changing IR!")
        for p in noop_with_cs_change:
            print(f"     {p}: improves={pass_stats[p]['improves_text']} degrades={pass_stats[p]['degrades_text']}")
    else:
        print(f"\n  ✓ No-op pre-filter validated: ΔIR=0 ⇒ Δcodesize=0 (no violations)")
    
    # All safe passes = strong + keep (what should go into the pass set)
    all_safe = sorted(set(strong + keep))
    print(f"\n  TOTAL for pass set: {len(all_safe)} passes ({len(strong)} strong + {len(keep)} keep-for-ordering)")
    
    existing_27 = {
        "mem2reg","instcombine","simplifycfg","dce","sroa","early-cse","gvn",
        "sccp","adce","loop-simplify","loop-rotate","licm","indvars","reassociate",
        "correlated-propagation","loop-instsimplify","loop-deletion","loop-idiom",
        "aggressive-instcombine","jump-threading","tailcallelim","bdce","memcpyopt",
        "dse","mergeicmps","instsimplify","loop-load-elim",
    }
    new_in_safe = [c for c in all_safe if c not in existing_27]
    print(f"  New vs 27-pass: {len(new_in_safe)} passes")
    if new_in_safe:
        print(f"  {', '.join(sorted(new_in_safe)[:30])}")


if __name__ == "__main__":
    main()
