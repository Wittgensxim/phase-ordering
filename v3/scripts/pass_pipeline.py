"""
Pass pipeline name resolution and mandatory ordering constraints.

Key improvements over v2:
- Config-driven pass aliases loaded from pass_sets.json
- Mandatory order validation: prevents forbidden reorderings
- Supports multiple pass sets (O1/O2/O3/research/research_27/minimal)
"""

import json
from pathlib import Path

# Built-in aliases for passes that need special opt syntax
PASS_PIPELINE_ALIASES = {
    # licm requires MemorySSA: use loop-mssa(licm).
    "licm": "loop-mssa(licm)",
    # lnicm: loop nest invariant code motion (LLVM 23+)
    "lnicm": "loop-mssa(lnicm)",
    # instcombine may fail with fixpoint verification on some IR.
    "instcombine": "instcombine<no-verify-fixpoint>",
    # loop-instsimplify: LoopPass, needs loop-mssa wrapper like licm
    "loop-instsimplify": "loop-mssa(loop-instsimplify)",
    # loop-deletion: LoopPass, needs loop() wrapper
    "loop-deletion": "loop(loop-deletion)",
    # loop-idiom: LoopPass, needs loop() wrapper
    "loop-idiom": "loop(loop-idiom)",
    # ── New: loop/vectorization passes (LLVM 23) ──
    # NOTE: In LLVM 23+, many passes that were formerly LoopPass are now
    # FunctionPass and must NOT be wrapped with loop-mssa(). Only passes
    # that are still true LoopPass wrappers need the loop-mssa() invocation.
    "loop-unroll-full": "loop-mssa(loop-unroll-full)",
    "loop-versioning-licm": "loop-mssa(loop-versioning-licm)",
    "simple-loop-unswitch": "loop-mssa(simple-loop-unswitch)",
    "loop-bound-split": "loop-mssa(loop-bound-split)",
    "loop-predication": "loop-mssa(loop-predication)",
    "loop-reduce": "loop-mssa(loop-reduce)",
    "loop-idiom-vectorize": "loop-mssa(loop-idiom-vectorize)",
    "extra-simple-loop-unswitch-passes": "loop-mssa(extra-simple-loop-unswitch-passes)",
    "loop-interchange": "loop-mssa(loop-interchange)",
    "loop-unroll-and-jam": "loop-mssa(loop-unroll-and-jam)",
}


def pipeline_name(pass_name):
    """Convert a short pass name to the full opt pipeline string."""
    return PASS_PIPELINE_ALIASES.get(pass_name, pass_name)


def pipeline_names(pass_names):
    """Convert a list of pass names to pipeline strings."""
    return [pipeline_name(pn) for pn in pass_names]


def load_pass_set(config_path, set_name="research_27"):
    """Load a pass set from config and return (passes, mandatory_orders)."""
    config = json.loads(Path(config_path).read_text(encoding="utf-8"))
    pass_sets = config.get("pass_sets", {})
    if set_name not in pass_sets:
        available = list(pass_sets.keys())
        raise KeyError(
            f"Pass set '{set_name}' not found. Available: {available}"
        )
    passes = list(pass_sets[set_name])
    mandatory_orders = config.get("mandatory_orders", [])
    return passes, mandatory_orders


def load_scheduler_defaults(config_path):
    """Load scheduler default settings from config."""
    config = json.loads(Path(config_path).read_text(encoding="utf-8"))
    return config.get("scheduler_defaults", {})


def validate_mandatory_order(before_pass, after_pass, mandatory_orders):
    """Check if a pass ordering violates mandatory constraints.

    Returns (valid: bool, reason: str).
    """
    for order in mandatory_orders:
        before = order["before"]
        after = order["after"]
        reason = order.get("reason", "")

        # Wildcard: before must come before everything (e.g., mem2reg)
        if after == "*":
            if before_pass != before and after_pass == before:
                return False, (
                    f"'{before}' must run before all other passes, "
                    f"but '{after_pass}' is being scheduled before it. {reason}"
                )

        # Specific order: before must come before after
        if before_pass == after and after_pass == before:
            return False, (
                f"'{before}' must run before '{after}'. {reason}"
            )

    return True, ""


def filter_forbidden_directions(
    pass_a, pass_b, mandatory_orders
):
    """Determine which directions (A->B, B->A) are forbidden by mandatory orders.

    Returns dict with 'a_to_b_forbidden' and 'b_to_a_forbidden' booleans.
    """
    a_to_b_ok, _ = validate_mandatory_order(pass_a, pass_b, mandatory_orders)
    b_to_a_ok, _ = validate_mandatory_order(pass_b, pass_a, mandatory_orders)
    return {
        "a_to_b_forbidden": not a_to_b_ok,
        "b_to_a_forbidden": not b_to_a_ok,
    }
