"""
IR metrics measurement with multi-level cost models.

Key improvements over v2:
- Level 1: IR static instruction count (fast, always available)
- Level 2: LLVM TTI-based cost model (requires opt -cost-model)
- Level 3: Compile + runtime measurement (for final evaluation)
- V4 (ratio-based): normalized score relative to original IR, cross-benchmark comparable
"""

import subprocess
from pathlib import Path


# Default opcode categories and their IR-level weights
IR_LEVEL_WEIGHTS = {
    "load": 1.0,
    "store": 1.0,
    "call": 2.0,
    "br": 1.0,
    "switch": 1.0,
    "indirectbr": 1.0,
    "phi": 0.25,
    "ret": 0.25,
}

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
    """IR complexity cost with CFG fragmentation and over-unrolling penalties.

    Combines instruction-weighted cost with bb/phi density ratios
    to penalize structurally problematic IR (fragmented CFG, excessive unrolling).

    Returns a raw cost value (absolute, not normalized).
    """
    base = (
        metrics["instruction_count"]
        + IR_LEVEL_WEIGHTS["call"] * metrics["call_count"]
        + IR_LEVEL_WEIGHTS["load"] * metrics["load_count"]
        + IR_LEVEL_WEIGHTS["store"] * metrics["store_count"]
        + IR_LEVEL_WEIGHTS["br"] * metrics["branch_count"]
    )
    # BB density penalty: high BB/instruction ratio = CFG fragmentation
    bb_ratio = metrics["basic_block_count"] / max(metrics["instruction_count"], 1)
    # Phi density penalty: high phi/instruction ratio = over-unrolling
    phi_ratio = metrics["phi_count"] / max(metrics["instruction_count"], 1)
    return round(base * (1.0 + bb_ratio + 0.5 * phi_ratio), 2)


def compute_score(original_metrics, current_metrics, penalty=0):
    """Compute normalized score relative to original IR.

    Score = 100 means same as original IR.
    Score < 100 means improvement over original.
    Score > 100 means degradation.

    Formula: 100 × cost_ratio^0.6 × size_ratio^0.4 + penalty
    """
    if penalty >= 1000:
        return float(penalty)

    oc = original_metrics.get("ir_cost", original_metrics.get("score_ir", 0))
    cc = current_metrics.get("ir_cost", current_metrics.get("score_ir", 0))
    osize = original_metrics.get("ir_file_size", 1)
    csize = current_metrics.get("ir_file_size", 1)

    cost_ratio = (cc + 1) / max(oc + 1, 1)
    size_ratio = (csize + 1) / max(osize + 1, 1)

    return round(100.0 * (cost_ratio ** 0.6) * (size_ratio ** 0.4) + penalty, 2)


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
