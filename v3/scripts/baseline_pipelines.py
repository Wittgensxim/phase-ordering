"""
Real LLVM optimization-level baselines (the literature-standard reference).

The project's previous "O1/O2/O3" baselines were hand-picked single-shot pass
lists in pass_sets.json -- NOT the real `opt -O2` pipeline (~hundreds of passes,
tuned ordering, repetition). Comparing against those overstates "beats O2".

This module runs the REAL pipelines via the new pass manager:

    O1/O2/O3   ->  -passes='default<Ox>'                       (direct)
    Oz/Os      ->  inject minsize/optsize attrs + default<O2>  (Oz/Os were removed
                   as standalone levels in recent LLVM: "use O2 with the minsize
                   attribute instead" -- which is exactly what clang's -Oz does)

All baselines start from the SAME O0 .ll the scheduler starts from, so the
comparison is fair (same input, different optimization strategy).

`Oz` is the codesize baseline used by CGO'25 MeanOverOz and is the recommended
reference for this project's IR-instruction-count metric.
"""

import re
import subprocess
from pathlib import Path

DIRECT_LEVELS = {"O1", "O2", "O3"}
ATTR_LEVELS = {"Oz": "minsize optsize", "Os": "optsize"}

_ATTR_GROUP_RE = re.compile(r"(attributes #\d+ = \{ )(.*?)( \})")


def _inject_attrs(ir_text, attrs):
    """Add the given function attributes to every attribute group in the IR."""
    wanted = attrs.split()

    def repl(m):
        body = m.group(2)
        for a in wanted:
            if a not in body.split():
                body = a + " " + body
        return m.group(1) + body + m.group(3)

    return _ATTR_GROUP_RE.sub(repl, ir_text)


def run_real_pipeline(opt_path, ir_path, level, out_path):
    """Run a real LLVM optimization level on `ir_path`, write to `out_path`.

    Returns out_path on success. Raises RuntimeError on opt failure.
    """
    out_path = Path(out_path)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    src = str(ir_path)

    if level in ATTR_LEVELS:
        text = Path(ir_path).read_text(encoding="utf-8")
        injected = _inject_attrs(text, ATTR_LEVELS[level])
        tmp = out_path.with_suffix(".attr.ll")
        tmp.write_text(injected, encoding="utf-8")
        src = str(tmp)
        pipeline = "default<O2>"
    elif level in DIRECT_LEVELS:
        pipeline = f"default<{level}>"
    else:
        raise ValueError(f"Unknown optimization level: {level}")

    cmd = [str(opt_path), "-S", f"-passes={pipeline}", src, "-o", str(out_path)]
    result = subprocess.run(cmd, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        raise RuntimeError(f"opt {level} failed: {result.stderr.strip()[:300]}")
    return out_path


def measure_real_baseline(opt_path, ir_path, level, work_dir, measure_fn):
    """Run a real baseline level and return its measured metrics dict (or None)."""
    out_path = Path(work_dir) / f"baseline_{level}.ll"
    try:
        run_real_pipeline(opt_path, ir_path, level, out_path)
    except Exception:
        return None
    return measure_fn(out_path)
