"""
ML chooser trainer: trains a classifier to predict the optimal direction
(A->B vs B->A) for a given decision_required pair using oracle labels.

Uses XGBoost (or RandomForest as fallback) for:
  - Fast training without GPU
  - Feature importance analysis (useful for paper)
  - Easy integration into the scheduler as a lightweight .pkl file
"""

import argparse
import csv
import pickle
from pathlib import Path


META_COLS = {"benchmark", "pass_a", "pass_b", "label", "winner",
             "ab_score", "ba_score", "score_delta", "ab_hash", "ba_hash"}


def load_training_data(csv_path):
    """Load CSV and split into features (X) and labels (y).

    Filters out ties (label=-1) and non-numeric columns.
    """
    with open(csv_path) as f:
        rows = list(csv.DictReader(f))

    # Filter to valid labels (0 or 1)
    valid = [r for r in rows if r.get("label", "") in {"0", "1"}]
    if not valid:
        raise ValueError("No valid labeled samples found.")

    # Identify feature columns (numeric, non-meta)
    feature_cols = []
    for col in rows[0].keys():
        if col in META_COLS:
            continue
        # Check if column is numeric
        try:
            float(valid[0][col])
            feature_cols.append(col)
        except (ValueError, TypeError):
            pass

    X = [[float(r.get(c, 0)) for c in feature_cols] for r in valid]
    y = [int(r["label"]) for r in valid]

    print(f"Loaded {len(X)} samples, {len(feature_cols)} features")
    print(f"Class distribution: A->B={y.count(0)}, B->A={y.count(1)}")
    return X, y, feature_cols


def train_xgboost(X, y, feature_cols):
    """Train XGBoost classifier."""
    try:
        import xgboost as xgb
    except ImportError:
        print("XGBoost not installed. Install with: pip install xgboost")
        print("Falling back to RandomForest...")
        return train_random_forest(X, y, feature_cols)

    from sklearn.model_selection import cross_val_score, StratifiedKFold

    # Quick cross-validation check
    model = xgb.XGBClassifier(
        n_estimators=100,
        max_depth=4,
        learning_rate=0.1,
        subsample=0.8,
        colsample_bytree=0.8,
        eval_metric="logloss",
        use_label_encoder=False,
    )

    cv = StratifiedKFold(n_splits=5, shuffle=True, random_state=42)
    try:
        scores = cross_val_score(model, X, y, cv=cv, scoring="accuracy")
        print(f"5-fold CV accuracy: {scores.mean():.3f} (+/- {scores.std():.3f})")
    except ValueError:
        print("Cross-validation skipped (too few samples per class)")

    # Train final model on all data
    model.fit(X, y)

    # Feature importance
    importance = sorted(
        zip(feature_cols, model.feature_importances_),
        key=lambda x: x[1], reverse=True,
    )
    print("\nTop 10 features:")
    for name, imp in importance[:10]:
        print(f"  {name:30s}: {imp:.4f}")

    return model, importance


def train_random_forest(X, y, feature_cols):
    """Train RandomForest as fallback."""
    from sklearn.ensemble import RandomForestClassifier
    from sklearn.model_selection import cross_val_score, StratifiedKFold

    model = RandomForestClassifier(
        n_estimators=100, max_depth=6, random_state=42,
    )
    cv = StratifiedKFold(n_splits=5, shuffle=True, random_state=42)
    try:
        scores = cross_val_score(model, X, y, cv=cv, scoring="accuracy")
        print(f"5-fold CV accuracy: {scores.mean():.3f} (+/- {scores.std():.3f})")
    except ValueError:
        print("Cross-validation skipped")

    model.fit(X, y)

    importance = sorted(
        zip(feature_cols, model.feature_importances_),
        key=lambda x: x[1], reverse=True,
    )
    print("\nTop 10 features:")
    for name, imp in importance[:10]:
        print(f"  {name:30s}: {imp:.4f}")

    return model, importance


def train_dummy_baseline(y):
    """Always predict majority class. Returns accuracy as baseline."""
    from collections import Counter
    majority = Counter(y).most_common(1)[0][1]
    return majority / len(y)


def main():
    parser = argparse.ArgumentParser(description="Train ML chooser model.")
    parser.add_argument("training_csv", help="Path to training_data.csv")
    parser.add_argument("--model-out", default="results/ml_training/ml_chooser.pkl")
    parser.add_argument("--features-out", default="results/ml_training/feature_cols.json")
    args = parser.parse_args()

    csv_path = Path(args.training_csv)
    if not csv_path.exists():
        print(f"Training data not found: {csv_path}")
        print("Run collect_ml_data.py first to generate training data.")
        return

    X, y, feature_cols = load_training_data(csv_path)

    # Baseline: always predict majority
    baseline = train_dummy_baseline(y)
    print(f"\nBaseline (majority class): {baseline:.3f}")

    # Train model
    model, importance = train_xgboost(X, y, feature_cols)

    # Save model and feature list
    model_path = Path(args.model_out)
    model_path.parent.mkdir(parents=True, exist_ok=True)
    with open(model_path, "wb") as f:
        pickle.dump(model, f)
    print(f"\nModel saved to {model_path}")

    import json
    feat_path = Path(args.features_out)
    feat_path.parent.mkdir(parents=True, exist_ok=True)
    feat_path.write_text(json.dumps(feature_cols, indent=2))
    print(f"Feature list saved to {feat_path}")


if __name__ == "__main__":
    main()
