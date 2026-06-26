"""
Rule-based pair chooser: selects the best ordered pair without running opt.

Uses dependency analysis data already collected during each round's scan:
  - Confirmation labels (confirmed/likely/needs_attribution/order_sensitive)
  - Enablement edges (which pass activates/expands/mutates which)
  - Action memory (what was tried and what happened)
  - Pass categories (cleanup passes like instcombine are universally useful)

The rule chooser is an ablation baseline: it demonstrates that the oracle's
actual measurement provides value beyond what static heuristics can achieve.
"""

from scheduler_policy import decision_required_pairs


# --- Pass category bonuses ---
# Cleanup passes: running them almost always produces opportunities for others
CLEANUP_PASSES = {"instcombine", "dce", "adce", "simplifycfg", "early-cse"}
# Loop passes: changing loop structure dramatically changes IR, high impact
LOOP_PASSES = {"loop-rotate", "loop-unroll", "loop-simplify", "licm", "indvars"}
# Value passes: produce constant folding and value numbering opportunities
VALUE_PASSES = {"gvn", "sccp", "reassociate", "mem2reg"}


def rule_based_score(pass_name):
    """Score a single pass for its likely impact.

    Higher score = more likely to produce optimization opportunities.
    """
    score = 0
    if pass_name in CLEANUP_PASSES:
        score += 5
    if pass_name in LOOP_PASSES:
        score += 4
    if pass_name in VALUE_PASSES:
        score += 3
    return score


def rule_choose_pair(decision_pairs, confirmation_rows, enablement_edges,
                     action_memory, candidate_passes):
    """Select the best ordered pair using static heuristics.

    Scoring rules (in priority order):
      1. Enablement bonus: if A enables B, prefer A→B (+8)
      2. Pass category bonus: cleanup/loop passes have higher impact (+3~5 per pass)
      3. Confirmation evidence: confirmed/likely pairs are safer (+2~4)
      4. Novelty bonus: pairs not yet tried (+2)
      5. Harmful penalty: pairs that caused degradation (-20)
      6. Order-sensitive penalty: high-risk pairs (-5)

    Returns:
        dict with kind, passes, winner, reason — same shape as oracle output.
    """
    if not decision_pairs:
        return {"best_action": None, "results": [], "reason": "no decision pairs"}

    # Build enablement lookup: (A, B) -> list of edge kinds
    en_lookup = {}
    if enablement_edges:
        for key, edges in enablement_edges.items():
            for edge in edges:
                enabler = edge.get("enabler")
                enabled = edge.get("enabled")
                if enabler and enabled:
                    en_lookup[(enabler, enabled)] = edge.get("edge_kind", "")

    # Build confirmation lookup: (A, B) -> confirmation label
    conf_lookup = {}
    for row in confirmation_rows:
        pa = row.get("pass_a")
        pb = row.get("pass_b")
        if pa and pb:
            conf_lookup[(pa, pb)] = row.get("confirmation", "")
            conf_lookup[(pb, pa)] = row.get("confirmation", "")

    # Build harmful action set from memory
    harmful_pairs = set()
    for mem in action_memory[-5:]:
        if mem.get("harmful"):
            key = mem.get("key", "")
            if key.startswith("pair:"):
                harmful_pairs.add(key[5:])  # strip "pair:" prefix

    # Build tried pairs set
    tried_pairs = set()
    for mem in action_memory:
        key = mem.get("key", "")
        if key.startswith("pair:"):
            tried_pairs.add(key[5:])

    candidates = set(candidate_passes)
    scored = []

    for pa, pb in decision_pairs:
        if pa not in candidates or pb not in candidates:
            continue

        pair_key = f"{','.join(sorted([pa, pb]))}"

        # Base score from pass categories
        base_score = rule_based_score(pa) + rule_based_score(pb)

        # Confirmation bonus
        conf = conf_lookup.get((pa, pb), "")
        if conf == "confirmed_independent":
            base_score += 4
        elif conf == "likely_independent":
            base_score += 2
        elif conf == "order_sensitive":
            base_score -= 5
        elif conf == "needs_attribution":
            base_score -= 2

        # Enablement bonus: prefer direction where A enables B
        en_ab = en_lookup.get((pa, pb), "")
        en_ba = en_lookup.get((pb, pa), "")
        ab_enablement_bonus = 0
        ba_enablement_bonus = 0

        if en_ab:
            if en_ab == "activation":
                ab_enablement_bonus = 8  # Strong: A activates B from no-op
            elif en_ab == "expansion":
                ab_enablement_bonus = 5  # Moderate: A expands B's writes
            elif en_ab == "mutation":
                ab_enablement_bonus = 3  # Weak: A changes B's write values

        if en_ba:
            if en_ba == "activation":
                ba_enablement_bonus = 8
            elif en_ba == "expansion":
                ba_enablement_bonus = 5
            elif en_ba == "mutation":
                ba_enablement_bonus = 3

        # Harmful penalty
        harmful_penalty = -20 if pair_key in harmful_pairs else 0

        # Novelty bonus: prefer untried pairs
        novelty_bonus = 2 if pair_key not in tried_pairs else 0

        # Determine best direction
        score_ab = base_score + ab_enablement_bonus + harmful_penalty + novelty_bonus
        score_ba = base_score + ba_enablement_bonus + harmful_penalty + novelty_bonus

        if score_ab >= score_ba:
            best_direction = [pa, pb]
            best_score_val = score_ab
            reason_parts = []
            if en_ab:
                reason_parts.append(f"{pa} enables {pb} ({en_ab})")
            if pair_key in harmful_pairs:
                reason_parts.append("was harmful, penalized")
            if pair_key not in tried_pairs:
                reason_parts.append("untried")
        else:
            best_direction = [pb, pa]
            best_score_val = score_ba
            reason_parts = []
            if en_ba:
                reason_parts.append(f"{pb} enables {pa} ({en_ba})")
            if pair_key in harmful_pairs:
                reason_parts.append("was harmful, penalized")
            if pair_key not in tried_pairs:
                reason_parts.append("untried")

        if not reason_parts:
            if conf:
                reason_parts.append(f"confirmation={conf}")
            reason_parts.append(f"pass_scores={rule_based_score(pa)}+{rule_based_score(pb)}")

        scored.append({
            "pass_a": pa,
            "pass_b": pb,
            "best_direction": best_direction,
            "rule_score": best_score_val,
            "reason": ", ".join(reason_parts),
            "enablement_a_to_b": en_ab,
            "enablement_b_to_a": en_ba,
            "confirmation": conf,
        })

    if not scored:
        return {"best_action": None, "results": [], "reason": "no valid pairs after filtering"}

    # Sort by rule score (highest first)
    scored.sort(key=lambda x: x["rule_score"], reverse=True)
    best = scored[0]

    result = {
        "best_action": {
            "kind": "ordered_pair",
            "passes": best["best_direction"],
            "rule_score": best["rule_score"],
            "reason": best["reason"],
        },
        "best_result": best,
        "results": scored,
        "reason": f"rule selected {best['best_direction'][0]}->{best['best_direction'][1]}: {best['reason']}",
    }

    # Log top 3 choices for debugging
    top3 = scored[:3]
    details = [f"{s['pass_a']},{s['pass_b']}({s['rule_score']})" for s in top3]
    result["details"] = " | ".join(details)

    return result


def rule_choose_from_decision_pairs(
    confirmation_rows, candidate_passes, enablement_edges=None,
    action_memory=None, mandatory_orders=None,
):
    """Rule-based pair selection, mirroring oracle_chooser interface.

    Returns same shape as oracle_choose_from_decision_pairs for drop-in use.
    """
    pairs = decision_required_pairs(confirmation_rows, candidate_passes)

    # Filter by mandatory orders
    if mandatory_orders:
        from pass_pipeline import filter_forbidden_directions
        filtered = []
        for pa, pb in pairs:
            constraints = filter_forbidden_directions(pa, pb, mandatory_orders)
            if not constraints["a_to_b_forbidden"] or not constraints["b_to_a_forbidden"]:
                filtered.append((pa, pb))
        pairs = filtered

    return rule_choose_pair(
        decision_pairs=pairs,
        confirmation_rows=confirmation_rows,
        enablement_edges=enablement_edges,
        action_memory=action_memory or [],
        candidate_passes=candidate_passes,
    )
