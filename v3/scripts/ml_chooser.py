"""
ML chooser: predicts the optimal direction (A->B vs B->A) for a
decision_required pair using a pre-trained model.

Uses IR features extracted at decision time — no opt calls needed.
Interface mirrors oracle_chooser.py for drop-in use.
"""

import pickle
from pathlib import Path

from ir_metrics import measure_ir_file, ir_cost
from scheduler_policy import decision_required_pairs


class MLChooser:
    """ML-based pair direction predictor.

    Loads a trained model and feature list, then predicts
    A->B (0) or B->A (1) for each decision_required pair.
    """

    def __init__(self, model_path, feature_cols_path):
        with open(model_path, "rb") as f:
            self.model = pickle.load(f)
        import json
        self.feature_cols = json.loads(Path(feature_cols_path).read_text())

    def _extract_features(self, ir_path, candidate_passes, confirmation_rows,
                          enablement_edges, pass_a, pass_b):
        """Extract the same features used during training."""
        metrics = measure_ir_file(ir_path)

        feats = {
            "instruction_count": metrics["instruction_count"],
            "basic_block_count": metrics["basic_block_count"],
            "load_count": metrics["load_count"],
            "store_count": metrics["store_count"],
            "call_count": metrics["call_count"],
            "branch_count": metrics["branch_count"],
            "phi_count": metrics["phi_count"],
            "function_count": metrics["function_count"],
            "ir_cost": ir_cost(metrics),
            "ir_file_size": metrics["ir_file_size"],
            "candidate_pass_count": len(candidate_passes),
            "pass_a_is_cleanup": 1 if pass_a in {"instcombine", "dce", "adce", "simplifycfg", "early-cse"} else 0,
            "pass_b_is_cleanup": 1 if pass_b in {"instcombine", "dce", "adce", "simplifycfg", "early-cse"} else 0,
            "pass_a_is_loop": 1 if pass_a in {"loop-rotate", "loop-unroll", "loop-simplify", "licm", "indvars"} else 0,
            "pass_b_is_loop": 1 if pass_b in {"loop-rotate", "loop-unroll", "loop-simplify", "licm", "indvars"} else 0,
        }

        # Confirmation evidence
        for row in confirmation_rows:
            if {row.get("pass_a"), row.get("pass_b")} == {pass_a, pass_b}:
                feats["confirmation"] = row.get("confirmation", "unknown")
                feats["agreement"] = row.get("agreement", "")
                feats["uncertainty_risk"] = row.get("uncertainty_risk", "none")
                feats["overlap_pattern"] = row.get("overlap_pattern", "")
                break

        # Defaults for missing confirmation
        for k in ["confirmation", "agreement", "uncertainty_risk", "overlap_pattern"]:
            if k not in feats:
                feats[k] = "unknown" if k == "confirmation" else ""

        # Enablement features (simple: count or one-hot)
        en_ab, en_ba = "none", "none"
        if enablement_edges:
            for key, edges in enablement_edges.items():
                for e in edges:
                    if e.get("enabler") == pass_a and e.get("enabled") == pass_b:
                        en_ab = e.get("edge_kind", "none")
                    elif e.get("enabler") == pass_b and e.get("enabled") == pass_a:
                        en_ba = e.get("edge_kind", "none")
        feats["enablement_a_to_b"] = en_ab
        feats["enablement_b_to_a"] = en_ba

        return feats

    def predict(self, ir_path, candidate_passes, confirmation_rows,
                enablement_edges, pass_a, pass_b):
        """Predict optimal direction for one pair.

        Returns: 0 (A->B better) or 1 (B->A better).
        """
        raw_feats = self._extract_features(
            ir_path, candidate_passes, confirmation_rows,
            enablement_edges, pass_a, pass_b,
        )

        # Build feature vector in the exact order expected by the model
        # For non-numeric features, encode them as simple numeric values
        feat_values = []
        for col in self.feature_cols:
            val = raw_feats.get(col, 0)
            if isinstance(val, str):
                # Simple encoding for string features
                str_map = {
                    "confirmed_independent": 4,
                    "likely_independent": 3,
                    "needs_attribution": 2,
                    "order_sensitive": 1,
                    "unknown": 0,
                    "": 0,
                    "none": 0,
                    "activation": 3,
                    "expansion": 2,
                    "mutation": 1,
                    "agree_independent": 4,
                    "agree_dependent": 1,
                    "false_positive": 3,
                    "false_negative": 0,
                    "uncertain_commuting": 2,
                    "uncertain_non_commuting": 1,
                    "missing_commutativity": 0,
                    "low": 3, "medium": 2, "high": 1,
                    "symmetric_rewrite": 3, "read_write_only": 2,
                    "write_write_only": 1, "mixed": 1, "none": 0,
                }
                val = str_map.get(val, str_map.get(val.split(";")[0] if ";" in val else val, 0))
            try:
                feat_values.append(float(val))
            except (ValueError, TypeError):
                feat_values.append(0.0)

        # Predict
        try:
            proba = self.model.predict_proba([feat_values])[0]
            prediction = int(proba.argmax())
            confidence = float(proba.max())
        except Exception:
            prediction = 0
            confidence = 0.5

        return prediction, confidence


def ml_choose_pair(chooser, ir_path, candidate_passes, confirmation_rows,
                   enablement_edges, decision_pairs):
    """Use ML chooser to pick the best direction for each decision pair.

    Returns dict with same shape as oracle_choose_best_pair output.
    """
    results = []
    for pa, pb in decision_pairs:
        pred, conf = chooser.predict(
            ir_path, candidate_passes, confirmation_rows,
            enablement_edges, pa, pb,
        )
        direction = [pa, pb] if pred == 0 else [pb, pa]
        results.append({
            "pass_a": pa,
            "pass_b": pb,
            "best_direction": direction,
            "ml_prediction": pred,
            "ml_confidence": round(conf, 3),
        })

    if not results:
        return {"best_action": None, "results": []}

    # Pick highest confidence prediction
    results.sort(key=lambda r: r["ml_confidence"], reverse=True)
    best = results[0]

    return {
        "best_action": {
            "kind": "ordered_pair",
            "passes": best["best_direction"],
            "ml_confidence": best["ml_confidence"],
        },
        "best_result": best,
        "results": results,
    }


def ml_choose_from_decision_pairs(
    ir_path, confirmation_rows, candidate_passes,
    model_path="results/ml_training/ml_chooser.pkl",
    feature_cols_path="results/ml_training/feature_cols.json",
    enablement_edges=None, mandatory_orders=None,
):
    """ML-based pair selection, mirroring oracle_chooser interface."""
    pairs = decision_required_pairs(confirmation_rows, candidate_passes)

    if mandatory_orders:
        from pass_pipeline import filter_forbidden_directions
        filtered = []
        for pa, pb in pairs:
            constraints = filter_forbidden_directions(pa, pb, mandatory_orders)
            if not constraints["a_to_b_forbidden"] or not constraints["b_to_a_forbidden"]:
                filtered.append((pa, pb))
        pairs = filtered

    if not pairs:
        return {"best_action": None, "results": []}

    # Lazy-load model
    if not Path(model_path).exists():
        print(f"  [ML] Model not found at {model_path}. Run train_ml_chooser.py first.")
        return {"best_action": None, "results": []}

    chooser = MLChooser(model_path, feature_cols_path)
    return ml_choose_pair(
        chooser, ir_path, candidate_passes, confirmation_rows,
        enablement_edges, pairs,
    )
