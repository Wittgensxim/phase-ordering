"""
Scheduler policy: translates confirmation labels into scheduling control signals.

Key improvements over v2:
- Three scheduler modes: strict / relaxed / threshold
- Independence ratio threshold for auto_safe classification
- Mandatory order constraint injection
- Ablation reporting built-in
"""

import json
from pathlib import Path


# Confirmation → Scheduler label mapping
CONFIRMATION_TO_LABEL = {
    "confirmed_independent": "auto_safe",
    "likely_independent": "candidate_safe",
    "needs_attribution": "blocked_for_auto",
    "order_sensitive": "decision_required",
}


def scheduler_label_for_confirmation(confirmation, scheduler_mode="strict"):
    """Map a confirmation label to a scheduler control signal.

    In 'relaxed' or 'threshold' mode, likely_independent is upgraded to auto_safe.
    """
    if scheduler_mode in {"relaxed", "threshold"} and confirmation == "likely_independent":
        return "auto_safe"
    return CONFIRMATION_TO_LABEL.get(confirmation, "blocked_for_auto")


def classify_passes_for_scheduling(
    active_passes,
    confirmation_rows,
    scheduler_mode="strict",
    independence_threshold=1.0,
    mandatory_orders=None,
):
    """Classify each active pass into a scheduling category.

    Args:
        active_passes: list of pass names active on current IR
        confirmation_rows: list of confirmation dicts with pass_a, pass_b, confirmation
        scheduler_mode: 'strict', 'relaxed', or 'threshold'
        independence_threshold: minimum safe_edge_ratio for auto_safe in threshold mode
        mandatory_orders: list of {before, after, reason} constraints

    Returns:
        dict: pass_name -> {scheduler_class, blocking_reasons, incident_pairs, ...}
    """
    mandatory_orders = mandatory_orders or []
    active = sorted(set(active_passes))
    pair_rows = {
        _pair_key(r["pass_a"], r["pass_b"]): r
        for r in confirmation_rows
        if r.get("pass_a") in active and r.get("pass_b") in active
    }

    result = {}
    for pass_name in active:
        labels = []
        blocking_reasons = []
        incident_pairs = []
        safe_edge_count = 0
        total_edge_count = 0
        has_order_sensitive = False
        has_high_risk_needs_attribution = False

        for other in active:
            if other == pass_name:
                continue
            total_edge_count += 1
            row = pair_rows.get(_pair_key(pass_name, other))
            if row is None:
                labels.append("blocked_for_auto")
                blocking_reasons.append("missing_pair_evidence")
                continue

            confirmation = row.get("confirmation", "")
            label = scheduler_label_for_confirmation(confirmation, scheduler_mode)
            labels.append(label)
            incident_pairs.append(_fmt_pair(row))

            if confirmation in {"confirmed_independent", "likely_independent"}:
                safe_edge_count += 1

            if label == "decision_required":
                blocking_reasons.append("order_sensitive")
                has_order_sensitive = True
            elif label == "blocked_for_auto":
                if confirmation == "needs_attribution":
                    if row.get("uncertainty_risk") == "high":
                        blocking_reasons.append("high_risk_needs_attribution")
                        has_high_risk_needs_attribution = True
                    else:
                        blocking_reasons.append("needs_attribution")
                else:
                    blocking_reasons.append("blocked_confirmation")
            elif label == "candidate_safe":
                blocking_reasons.append("candidate_only")

        safe_edge_ratio = safe_edge_count / total_edge_count if total_edge_count else 1.0
        result[pass_name] = {
            "pass": pass_name,
            "scheduler_class": _class_for_labels(
                labels, scheduler_mode, safe_edge_ratio,
                independence_threshold, has_order_sensitive,
                has_high_risk_needs_attribution,
            ),
            "blocking_reasons": sorted(set(blocking_reasons)),
            "incident_pairs": sorted(incident_pairs),
            "safe_edge_count": safe_edge_count,
            "total_edge_count": total_edge_count,
            "safe_edge_ratio": round(safe_edge_ratio, 4),
        }

    # Apply mandatory order constraints
    if mandatory_orders:
        result = _apply_mandatory_orders(result, mandatory_orders)

    return result


def build_scheduler_edges(confirmation_rows, scheduler_mode="strict"):
    """Convert confirmation rows to scheduler edge labels."""
    return [
        {
            "pass_a": r["pass_a"],
            "pass_b": r["pass_b"],
            "confirmation": r.get("confirmation", ""),
            "scheduler_label": scheduler_label_for_confirmation(
                r.get("confirmation", ""), scheduler_mode
            ),
            "support_reason": r.get("support_reason", ""),
        }
        for r in confirmation_rows
    ]


def auto_safe_passes(active_passes, confirmation_rows,
                     scheduler_mode="strict", independence_threshold=1.0,
                     mandatory_orders=None):
    """Get list of passes classified as auto_safe."""
    classifications = classify_passes_for_scheduling(
        active_passes, confirmation_rows, scheduler_mode,
        independence_threshold, mandatory_orders,
    )
    return [
        p for p, rec in sorted(classifications.items())
        if rec["scheduler_class"] == "auto_safe"
    ]


def decision_required_pairs(confirmation_rows, candidate_passes):
    """Get list of pass pairs that require ordering decisions."""
    candidates = set(candidate_passes)
    pairs = []
    for row in confirmation_rows:
        if row.get("confirmation") != "order_sensitive":
            continue
        pa, pb = row.get("pass_a"), row.get("pass_b")
        if pa in candidates and pb in candidates:
            pairs.append(tuple(sorted((pa, pb))))
    return sorted(set(pairs))


def build_decision_graph(confirmation_rows, candidate_passes):
    """Build an explicit decision graph from independence analysis results.

    This is the core contribution: independence analysis is NOT about finding
    auto-safe passes, but about eliminating unnecessary order decisions.

    Returns:
        dict with:
        - nodes: list of active pass names
        - total_possible_edges: C(n,2) — all possible pass pair orderings
        - auto_resolved_edges: independent pairs (order decision eliminated)
        - decision_edges: order_sensitive pairs (must be decided by oracle)
        - uncertain_edges: needs_attribution pairs (pending evidence)
        - decision_reduction_rate: auto_resolved / total_possible
        - auto_safe_batches: list of {passes, size} — connected components of
          independent-only subgraph that can be batched together
    """
    candidates = set(candidate_passes)
    active = sorted(candidates)
    n = len(active)

    total_possible = n * (n - 1) // 2

    auto_resolved = []
    decision_edges = []
    # uncertain_edges is now always 0: needs_attribution is conservatively
    # folded into decision_edges to avoid silently dropping unresolved pairs.

    for row in confirmation_rows:
        pa, pb = row.get("pass_a"), row.get("pass_b")
        if pa not in candidates or pb not in candidates:
            continue
        confirmation = row.get("confirmation", "")
        pair = tuple(sorted((pa, pb)))

        if confirmation in ("confirmed_independent", "likely_independent"):
            auto_resolved.append(pair)
        elif confirmation == "order_sensitive":
            decision_edges.append(pair)
        elif confirmation == "needs_attribution":
            # Conservative: insufficient evidence → treat as order_sensitive
            # to avoid silently dropping pairs that may need oracle decisions.
            decision_edges.append(pair)

    reduction_rate = round(len(auto_resolved) / total_possible, 4) if total_possible else 0

    # Track unaccounted pairs (should always be 0 now)
    unaccounted = total_possible - len(auto_resolved) - len(decision_edges)

    # Find auto_safe_batches: connected components in the independent-only subgraph
    auto_safe_batches = _find_independent_components(active, auto_resolved)

    return {
        "nodes": active,
        "node_count": n,
        "total_possible_edges": total_possible,
        "auto_resolved_edges": len(auto_resolved),
        "auto_resolved_pairs": sorted(set(auto_resolved)),
        "decision_edges": len(decision_edges),
        "decision_pairs": sorted(set(decision_edges)),
        "uncertain_edges": 0,  # always 0: needs_attribution folded into decision_edges
        "unaccounted_edges": unaccounted,
        "decision_reduction_rate": reduction_rate,
        "auto_safe_batches": auto_safe_batches,
    }


def _find_independent_components(nodes, independent_edges):
    """Find connected components in the independence subgraph.

    Each component is a set of passes where all internal pairs are independent.
    These can be treated as an auto_safe_batch.
    """
    independent_set = set(independent_edges)
    # Build adjacency for independent-only edges
    adj = {n: set() for n in nodes}
    for a, b in independent_edges:
        adj[a].add(b)
        adj[b].add(a)

    visited = set()
    components = []
    for node in nodes:
        if node in visited:
            continue
        # BFS to find connected component
        comp = set()
        queue = [node]
        while queue:
            n = queue.pop()
            if n in visited:
                continue
            visited.add(n)
            comp.add(n)
            for neighbor in adj[n]:
                if neighbor not in visited:
                    queue.append(neighbor)
        if len(comp) >= 2:
            # Verify: all pairs in this component must be independent
            comp_list = sorted(comp)
            all_independent = True
            for i in range(len(comp_list)):
                for j in range(i + 1, len(comp_list)):
                    if (comp_list[i], comp_list[j]) not in independent_set and \
                       (comp_list[j], comp_list[i]) not in independent_set:
                        all_independent = False
                        break
                if not all_independent:
                    break
            if all_independent:
                components.append({"passes": comp_list, "size": len(comp_list)})

    return sorted(components, key=lambda c: -c["size"])


# --- Internal helpers ---

def _class_for_labels(labels, scheduler_mode, safe_edge_ratio,
                      independence_threshold, has_order_sensitive,
                      has_high_risk_needs_attribution):
    if not labels:
        return "auto_safe"
    if "decision_required" in labels:
        return "decision_required"
    if (
        scheduler_mode == "threshold"
        and safe_edge_ratio >= independence_threshold
        and not has_order_sensitive
        and not has_high_risk_needs_attribution
    ):
        return "auto_safe"
    if "blocked_for_auto" in labels:
        return "blocked_for_auto"
    if "candidate_safe" in labels:
        return "candidate_safe"
    return "auto_safe"


def _apply_mandatory_orders(classifications, mandatory_orders):
    """Downgrade passes that would violate mandatory ordering constraints."""
    # Simple implementation: if a pass would need to run after another
    # but the mandatory order says it must run before, block it.
    for order in mandatory_orders:
        before = order["before"]
        after = order["after"]
        if after == "*":
            # before must be first; no pass should be classified as auto_safe
            # if it would skip before
            continue
        # If both passes are present and the 'after' pass is auto_safe,
        # it might accidentally run before 'before', so downgrade it
        if before in classifications and after in classifications:
            if classifications[after]["scheduler_class"] == "auto_safe":
                classifications[after]["scheduler_class"] = "blocked_for_auto"
                classifications[after]["blocking_reasons"].append(
                    f"mandatory_order:{before}_before_{after}"
                )
    return classifications


def _pair_key(pass_a, pass_b):
    return tuple(sorted((pass_a, pass_b)))


def _fmt_pair(row):
    pa, pb = _pair_key(row["pass_a"], row["pass_b"])
    return f"{pa},{pb}:{row.get('confirmation', '')}"


# --- Ablation analysis ---

def build_ablation_rows(benchmark_name, candidate_passes, confirmation_rows,
                        independence_threshold=0.9, false_negative_pairs=0):
    """Build ablation comparison rows for strict/relaxed/threshold modes."""
    rows = []
    for mode in ["strict", "relaxed", "threshold"]:
        threshold = independence_threshold if mode == "threshold" else 1.0
        classifications = classify_passes_for_scheduling(
            active_passes=candidate_passes,
            confirmation_rows=confirmation_rows,
            scheduler_mode=mode,
            independence_threshold=threshold,
        )
        rows.append({
            "benchmark": benchmark_name,
            "scheduler_mode": mode,
            "independence_threshold": threshold,
            "candidate_pass_count": len(candidate_passes),
            "auto_safe_count": _count_class(classifications, "auto_safe"),
            "candidate_safe_count": _count_class(classifications, "candidate_safe"),
            "blocked_for_auto_count": _count_class(classifications, "blocked_for_auto"),
            "decision_required_count": _count_class(classifications, "decision_required"),
            "auto_safe_passes": _passes_with_class(classifications, "auto_safe"),
            "likely_promoted_pair_count": _promoted_count(confirmation_rows, mode),
            "false_negative_pairs": false_negative_pairs,
        })
    return rows


def _count_class(classifications, cls):
    return sum(1 for r in classifications.values() if r["scheduler_class"] == cls)


def _passes_with_class(classifications, cls):
    return [p for p, r in sorted(classifications.items()) if r["scheduler_class"] == cls]


def _promoted_count(confirmation_rows, mode):
    if mode not in {"relaxed", "threshold"}:
        return 0
    return sum(1 for r in confirmation_rows if r.get("confirmation") == "likely_independent")


# --- Loading ---

def load_mandatory_orders(config_path):
    """Load mandatory ordering constraints from pass_sets.json."""
    config = json.loads(Path(config_path).read_text(encoding="utf-8"))
    return config.get("mandatory_orders", [])
