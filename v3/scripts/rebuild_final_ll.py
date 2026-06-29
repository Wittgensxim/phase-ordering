"""Rebuild final.ll from schedule_trace.csv pass order, then validate."""
import csv, json, subprocess
from pathlib import Path

BASE = Path("results/research_codesize_benchmarks_cs5")
ORACLE = BASE / "cmp_oracle_O2"
CLANG = r"E:\llvm\build\bin\clang.exe"
OPT = r"E:\llvm\build\bin\opt.exe"
LLC = r"E:\llvm\build\bin\llc.exe"
LLVM_SIZE = r"E:\llvm\build\bin\llvm-size.exe"

from pass_pipeline import pipeline_names
from ir_metrics import measure_codesize


def rebuild(bm_dir):
    name = bm_dir.name
    trace_f = bm_dir / "schedule_trace.csv"
    if not trace_f.exists():
        return False, "no trace"

    passes_in_order = []
    with open(trace_f) as f:
        for row in csv.DictReader(f):
            sel = row.get("selected_action", "")
            if not sel:
                continue
            kind = row.get("selected_action_kind", "")
            if "fixed_point" in kind.lower() or sel == "stop":
                continue
            for p in sel.split(","):
                p = p.strip()
                if p and p not in passes_in_order:
                    passes_in_order.append(p)

    if not passes_in_order:
        return False, "no passes in trace"

    # Find input IR: try oracle dir, ir_cache, or compile from source
    ir_file = None
    for candidate in [
        bm_dir / (name + "_minsize.ll"),
        bm_dir / (name + ".ll"),
        BASE / "ir_cache" / (name + "_minsize.ll"),
        BASE / "ir_cache" / (name + ".ll"),
    ]:
        if candidate.exists():
            ir_file = candidate
            break

    if not ir_file:
        with open("configs/benchmarks_codesize_full.json") as f:
            manifest = json.load(f)
        for b in manifest["benchmarks"]:
            if b["name"] == name and "source" in b:
                from run_benchmark_suite import compile_to_ir
                ir_file = BASE / "ir_cache" / (name + ".ll")
                ir_file.parent.mkdir(parents=True, exist_ok=True)
                ir_file = compile_to_ir(CLANG, b["source"], ir_file)
                # Inject minsize
                from baseline_pipelines import _inject_attrs
                text = Path(ir_file).read_text(encoding="utf-8")
                minsize_text = _inject_attrs(text, "minsize optsize")
                minsize_ir = BASE / "ir_cache" / (name + "_minsize.ll")
                minsize_ir.write_text(minsize_text, encoding="utf-8")
                ir_file = minsize_ir
                break

    if not ir_file or not ir_file.exists():
        return False, "no input IR"

    pline = ",".join(pipeline_names(passes_in_order))
    final_ll = bm_dir / "final.ll"
    cmd = [OPT, "-S", "-passes=function(" + pline + ")", str(ir_file), "-o", str(final_ll)]
    r = subprocess.run(cmd, capture_output=True, text=True)
    if r.returncode != 0:
        return False, "opt failed: " + r.stderr.strip()[-120:]

    cs = measure_codesize(final_ll, LLC, LLVM_SIZE)
    return True, f"{len(passes_in_order)} passes, codesize={cs}B"


def validate_correctness(bm_dir):
    name = bm_dir.name
    with open("configs/benchmarks_codesize_full.json") as f:
        manifest = json.load(f)
    source_map = {b["name"]: b["source"] for b in manifest["benchmarks"]}

    if name not in source_map:
        return None, "no source in manifest"
    src = source_map[name]
    if not Path(src).exists():
        return None, "source not found"

    final_ll = bm_dir / "final.ll"
    if not final_ll.exists():
        return None, "no final.ll"

    work = BASE / "_correctness" / name
    work.mkdir(parents=True, exist_ok=True)

    o0_exe = work / "ref.exe"
    r0 = subprocess.run([CLANG, src, "-O0", "-w", "-o", str(o0_exe)],
                        capture_output=True, text=True)
    if r0.returncode != 0:
        return None, "O0 compile failed"

    try:
        r0_run = subprocess.run([str(o0_exe)], capture_output=True, text=True, timeout=30)
        ref_out = r0_run.stdout.rstrip()
    except Exception as e:
        return None, "O0 run failed: " + str(e)

    opt_exe = work / "opt.exe"
    r1 = subprocess.run([CLANG, str(final_ll), "-O0", "-w", "-o", str(opt_exe)],
                        capture_output=True, text=True)
    if r1.returncode != 0:
        return False, "compile failed"

    try:
        r1_run = subprocess.run([str(opt_exe)], capture_output=True, text=True, timeout=30)
        opt_out = r1_run.stdout.rstrip()
    except Exception as e:
        return False, "run failed: " + str(e)

    if ref_out.splitlines() == opt_out.splitlines():
        return True, "output_match"
    return False, f"mismatch ({len(ref_out.splitlines())} vs {len(opt_out.splitlines())} lines)"


def main():
    for bm_dir in sorted(ORACLE.glob("*")):
        if not bm_dir.is_dir():
            continue
        name = bm_dir.name
        ok, msg = rebuild(bm_dir)
        print(f"{name}: {msg}")
        if ok:
            ok2, msg2 = validate_correctness(bm_dir)
            tag = "OK" if ok2 is True else ("FAIL" if ok2 is False else "SKIP")
            print(f"  correctness: {tag} ({msg2})")
        else:
            print(f"  correctness: SKIP (no final.ll)")


if __name__ == "__main__":
    main()
