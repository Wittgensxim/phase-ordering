"""
IR metrics measurement with multi-level cost models.

Key improvements over v2:
- Level 1: IR static instruction count (fast, always available)
- Level 2: LLVM TTI-based cost model (requires opt -cost-model)
- Level 3: Compile + runtime measurement (for final evaluation)
- L1 codesize: real .text bytes via llc → llvm-size (CGO'25-compatible)
- Reported metric: IR instruction-count reduction over Oz (MeanOverOz, CGO'25).
  `compute_score` is the scheduler's internal cost-based objective, NOT the
  reported metric (it no longer mixes in file-byte size).
"""

import hashlib
import re
import subprocess
from pathlib import Path


# Opcode category → metric counter mapping (for instruction classification)
INSTRUCTION_OPCODE_MAP = {
    "load": "load_count",
    "store": "store_count",
    "call": "call_count",
    "br": "branch_count",
    "switch": "branch_count",
    "indirectbr": "branch_count",
    "phi": "phi_count",
}


def measure_ir_file(path):
    """Measure IR metrics from a .ll file. Returns a dict with raw counts."""
    ir_path = Path(path)
    text = ir_path.read_text(encoding="utf-8")
    return measure_ir_text(text)


def measure_ir_text(text):
    """Parse LLVM IR text and count instructions.

    Only counts instructions inside function bodies.
    Ignores globals, declares, attributes, metadata.
    """
    metrics = {
        "function_count": 0,
        "basic_block_count": 0,
        "instruction_count": 0,
        "load_count": 0,
        "store_count": 0,
        "call_count": 0,
        "branch_count": 0,
        "phi_count": 0,
        "ret_count": 0,
        "ir_file_size": len(text.encode("utf-8")),
    }

    in_function = False
    function_brace_depth = 0

    for raw_line in text.splitlines():
        line = _strip_comment(raw_line).strip()
        if not line:
            continue

        if line.startswith("define "):
            metrics["function_count"] += 1
            in_function = True
            function_brace_depth = line.count("{") - line.count("}")
            continue

        if in_function:
            function_brace_depth += line.count("{") - line.count("}")

            if line == "}":
                if function_brace_depth <= 0:
                    in_function = False
                continue

        if not in_function:
            continue

        if _is_basic_block_label(line):
            metrics["basic_block_count"] += 1
            continue

        opcode = _instruction_opcode(line)
        if opcode is None:
            continue

        metrics["instruction_count"] += 1
        counter = INSTRUCTION_OPCODE_MAP.get(opcode)
        if counter:
            metrics[counter] += 1
        if opcode == "ret":
            metrics["ret_count"] += 1

    metrics["ir_cost"] = ir_cost(metrics)
    metrics["score_ir"] = metrics["ir_cost"]  # backward compat
    metrics["score"] = metrics["ir_cost"]      # backward compat: default = raw cost
    return metrics


def ir_cost(metrics):
    """IR cost: instruction count (the target of MeanOverOz, our reported metric).

    The scheduler's internal objective IS the reported metric now — no more
    "optimizing A, reporting B" logical gap.  The previous formula with ad-hoc
    bb/phi density penalties and call/load/store weights was never calibrated
    against any ground truth (codesize, runtime, or TTI cost).  Removing the
    unvalidated penalties eliminates a major reviewer attack surface.

    The old penalized formula is preserved as ir_cost_penalized() for ablation.
    """
    return metrics["instruction_count"]


def ir_cost_penalized(metrics):
    """[Ablation only] Old penalized cost with CFG fragmentation & over-unroll penalties.

    base = instruction_count + 2*call + load + store + br
    penalty = 1 + bb_ratio + 0.5*phi_ratio
    cost = base * penalty

    NOTE: The weights (2×call, 1.0 bb_ratio, 0.5 phi_ratio) are uncalibrated.
    Use only for sensitivity/ablation experiments, not as the primary objective.
    """
    base = (
        metrics["instruction_count"]
        + 2.0 * metrics["call_count"]
        + metrics["load_count"]
        + metrics["store_count"]
        + metrics["branch_count"]
    )
    bb_ratio = metrics["basic_block_count"] / max(metrics["instruction_count"], 1)
    phi_ratio = metrics["phi_count"] / max(metrics["instruction_count"], 1)
    return round(base * (1.0 + bb_ratio + 0.5 * phi_ratio), 2)


def compute_score(original_metrics, current_metrics, penalty=0):
    """Internal driving score: instruction-count ratio relative to O0 IR.

    Score = 100 means same instruction count as O0.
    Score < 100 means fewer instructions (better).
    Score > 100 means more instructions (degradation).

    Uses instruction_count directly — the same quantity that MeanOverOz reports.
    This eliminates the "optimizing A, reporting B" logical gap.
    """
    if penalty >= 1000:
        return float(penalty)

    oi = original_metrics.get("instruction_count", 1)
    ci = current_metrics.get("instruction_count", 1)

    ratio = (ci + 1) / max(oi + 1, 1)

    return round(100.0 * ratio + penalty, 2)


def get_metric_value(metrics, metric_mode="ir"):
    """Get the optimization target value from a metrics dict.

    Args:
        metrics: dict from measure_ir_file() or measure_codesize_file()
        metric_mode: "ir" (instruction count) or "codesize" (.text bytes)

    Returns:
        The target value (int), or 0 if unavailable.
    """
    if metric_mode == "codesize":
        return metrics.get("codesize_text", metrics.get("instruction_count", 0))
    return metrics.get("instruction_count", 0)


def compute_metric_score(original_metrics, current_metrics, metric_mode="ir", penalty=0):
    """Internal driving score with configurable metric mode.

    Score = 100 means same cost as O0.
    Score < 100 means better (fewer instructions / smaller .text).
    Score > 100 means worse.
    """
    if penalty >= 1000:
        return float(penalty)

    oi = get_metric_value(original_metrics, metric_mode)
    ci = get_metric_value(current_metrics, metric_mode)

    ratio = (ci + 1) / max(oi + 1, 1)

    return round(100.0 * ratio + penalty, 2)


def reduction_pct(baseline_instr, method_instr):
    """Per-program IR instruction-count reduction relative to a baseline (e.g. Oz).

    Positive  -> method has FEWER instructions than the baseline (better).
    This is the per-program term of CGO'25 MeanOverOz:
        (I_baseline - I_method) / I_baseline * 100%
    """
    if not baseline_instr or baseline_instr <= 0:
        return 0.0
    return round(100.0 * (baseline_instr - method_instr) / baseline_instr, 4)


def mean_over_oz(pairs):
    """Aggregate MeanOverOz across programs.

    Args:
        pairs: iterable of (baseline_instr, method_instr) tuples (baseline = Oz).
    Returns:
        mean percentage reduction over the baseline, or None if no valid pairs.
    """
    vals = [reduction_pct(b, m) for b, m in pairs if b and b > 0]
    return round(sum(vals) / len(vals), 4) if vals else None


def measure_ir_with_tti(opt_path, ir_path, target_triple="x86_64-unknown-linux-gnu"):
    """Use LLVM's TargetTransformInfo via opt -cost-model to estimate cost.

    Returns a dict with tti_cost and combined score.
    Falls back to IR-level score if TTI is unavailable.
    """
    ir_path = Path(ir_path)
    metrics = measure_ir_file(ir_path)

    try:
        cost = _run_cost_model(opt_path, ir_path, target_triple)
        metrics["tti_cost"] = cost
        metrics["score_tti"] = cost
        metrics["tti_available"] = True
    except Exception:
        metrics["tti_cost"] = None
        metrics["score_tti"] = metrics["score_ir"]
        metrics["tti_available"] = False

    metrics["score"] = metrics["score_tti"]
    return metrics


# ── L1 Codesize measurement (llc → llvm-size) ─────────────────────────────

# Module-level codesize cache: {sha256_of_ll_file: text_bytes}
_CODESIZE_CACHE = {}


def _file_sha256(path):
    """SHA-256 hash of file contents (used for codesize cache key)."""
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(65536), b""):
            h.update(chunk)
    return h.hexdigest()


def measure_codesize(ir_path, llc_path, llvm_size_path,
                     target_triple="x86_64-unknown-linux-gnu",
                     mcpu="generic", use_cache=True):
    """Measure real object-file .text bytes: .ll → llc → .o → llvm-size.

    This is the CGO'25-compatible codesize metric:
      (I_baseline_text - I_method_text) / I_baseline_text * 100%

    Uses Berkeley llvm-size output (first column = text).
    Caches results by SHA-256 of the .ll file to avoid re-compilation.

    Args:
        ir_path: path to .ll file
        llc_path: path to llc executable
        llvm_size_path: path to llvm-size executable
        target_triple: LLVM target triple (default: x86_64-unknown-linux-gnu)
        mcpu: target CPU (default: generic)
        use_cache: whether to use the module-level cache

    Returns:
        text_bytes (int), or None on failure
    """
    ir_path = Path(ir_path)
    if not ir_path.exists():
        return None

    # Cache lookup
    if use_cache:
        fhash = _file_sha256(ir_path)
        if fhash in _CODESIZE_CACHE:
            return _CODESIZE_CACHE[fhash]

    import tempfile
    with tempfile.NamedTemporaryFile(suffix=".o", delete=False) as tmp:
        obj_path = tmp.name

    try:
        # Step 1: .ll → .o
        llc_cmd = [
            str(llc_path), "-filetype=obj",
            f"-mtriple={target_triple}", f"-mcpu={mcpu}",
            str(ir_path), "-o", obj_path,
        ]
        llc_result = subprocess.run(llc_cmd, text=True, capture_output=True, check=False)
        if llc_result.returncode != 0:
            return None

        # Step 2: .o → text bytes (Berkeley format, first column)
        size_cmd = [str(llvm_size_path), "--radix=10", obj_path]
        size_result = subprocess.run(size_cmd, text=True, capture_output=True, check=False)
        if size_result.returncode != 0:
            return None

        # Parse: "   725       0       0     725     2d5 filename.o"
        # First number = text
        text_bytes = _parse_llvm_size_text(size_result.stdout)
        if text_bytes is not None and use_cache:
            _CODESIZE_CACHE[fhash] = text_bytes
        return text_bytes

    finally:
        try:
            Path(obj_path).unlink()
        except Exception:
            pass


def _parse_llvm_size_text(stdout):
    """Parse Berkeley llvm-size output. Returns text column (int) or None."""
    for line in stdout.strip().splitlines():
        # Skip section headers from -A format
        if line.startswith("section") or line.startswith("Total"):
            continue
        parts = line.split()
        if len(parts) >= 4:
            try:
                return int(parts[0])
            except ValueError:
                continue
    return None


def clear_codesize_cache():
    """Clear the module-level codesize cache."""
    _CODESIZE_CACHE.clear()


def measure_codesize_file(ir_path, llc_path, llvm_size_path,
                          target_triple="x86_64-unknown-linux-gnu",
                          mcpu="generic", use_cache=True):
    """Convenience: measure codesize and return a metrics-compatible dict."""
    text_bytes = measure_codesize(ir_path, llc_path, llvm_size_path,
                                  target_triple, mcpu, use_cache)
    if text_bytes is None:
        return None
    return {
        "codesize_text": text_bytes,
        "instruction_count": text_bytes,  # alias for compatibility
        "ir_cost": text_bytes,
        "score_ir": text_bytes,
        "score": text_bytes,
    }


def make_measure_fn(metric_mode="ir", opt_path=None, llc_path=None,
                    llvm_size_path=None, target_triple="x86_64-unknown-linux-gnu",
                    mcpu="generic", use_tti=False, use_cache=True):
    """Build the single measurement callback used by ALL measurement points.

    The returned `measure_fn(ir_path) -> metrics_dict` guarantees one consistent
    optimization target across the scheduler, oracle, Stage A, exact_optimum and
    compare_all — so switching metric never leaves a call site on the wrong one.

    The returned dict always preserves the real `instruction_count` (needed for
    MeanOverOz-IR reporting) and sets a single comparison key `score`:
      - metric_mode == "ir":       score = instruction_count
      - metric_mode == "codesize": score = .text bytes (codesize_text)

    In codesize mode `ir_cost` is ALSO aligned to codesize_text so Stage A's
    existing `ir_cost`-based delta comparison transparently optimizes codesize.

    If codesize measurement fails (llc/llvm-size error), the metrics fall back to
    the IR-level dict (score = instruction_count) rather than crashing.
    """
    def measure_fn(ir_path):
        if use_tti and target_triple:
            metrics = measure_ir_with_tti(opt_path, ir_path, target_triple)
        else:
            metrics = measure_ir_file(ir_path)

        if metric_mode == "codesize" and llc_path and llvm_size_path:
            text_bytes = measure_codesize(
                ir_path, llc_path, llvm_size_path,
                target_triple=target_triple, mcpu=mcpu, use_cache=use_cache,
            )
            if text_bytes is not None:
                metrics["codesize_text"] = text_bytes
                # Align all comparison keys to codesize; keep instruction_count intact.
                metrics["ir_cost"] = text_bytes
                metrics["score_ir"] = text_bytes
                metrics["score"] = text_bytes
                return metrics
            # codesize failed → fall through to IR-level score below

        # ir mode (or codesize fallback): score is the raw instruction count.
        metrics["score"] = metrics["instruction_count"]
        return metrics

    return measure_fn


def _run_cost_model(opt_path, ir_path, target_triple):
    """Run opt -cost-model -mtriple=... to get estimated cost."""
    result = subprocess.run(
        [
            str(opt_path),
            "-cost-model",
            "-analyze",
            f"-mtriple={target_triple}",
            str(ir_path),
        ],
        text=True,
        capture_output=True,
        check=False,
    )
    if result.returncode != 0:
        raise RuntimeError(f"opt -cost-model failed: {result.stderr.strip()}")

    # Parse the total cost from output
    # Format: "Cost Model: Found an estimated cost of N for instruction: ..."
    total_cost = 0.0
    for line in result.stdout.splitlines():
        # Newer LLVM format
        if "Cost Model:" in line:
            continue
        # Parse lines like "Cost Model: ... cost of X for ..."
        if "estimated cost of" in line:
            try:
                cost_str = line.split("estimated cost of")[1].split("for")[0].strip()
                total_cost += float(cost_str)
            except (ValueError, IndexError):
                pass

    return total_cost if total_cost > 0 else None


def compare_metrics(before_metrics, after_metrics):
    """Compare two metric dicts and return a delta summary."""
    deltas = {}
    for key in ["instruction_count", "basic_block_count", "load_count",
                 "store_count", "call_count", "branch_count", "phi_count",
                 "function_count", "score", "score_ir"]:
        if key in before_metrics and key in after_metrics:
            before_val = before_metrics[key]
            after_val = after_metrics[key]
            if before_val is not None and after_val is not None:
                deltas[key] = after_val - before_val

    deltas["improved"] = deltas.get("score", 0) < 0
    return deltas


def _strip_comment(line):
    return line.split(";", 1)[0]


def _is_basic_block_label(line):
    return line.endswith(":") and not line.startswith(("!", "#", "declare", "attributes"))


def _instruction_opcode(line):
    if line in {"{", "}"}:
        return None
    if line.startswith(("declare ", "attributes ", "source_filename", "target ")):
        return None
    if "=" in line:
        right = line.split("=", 1)[1].strip()
        if not right:
            return None
        return right.split(None, 1)[0] if right.split(None, 1) else None
    parts = line.split(None, 1)
    return parts[0] if parts else None
