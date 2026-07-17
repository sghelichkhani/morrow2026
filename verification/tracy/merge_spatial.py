"""Merge per-case Gadi result JSONs into spatial_2d.json / spatial_3d.json.

The Gadi sweep writes one JSON per (dim, degree, nodes) case at
``results/gadi/<dim>d/<case>/result.json``. This script collects them
into the original nested layout that ``plot_spatial_paper.py`` (and the
legacy ``plot_spatial.py``) consume, keyed by case name
``<bc>_dq<p>``.
"""
from __future__ import annotations

import json
import sys
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import save_json  # noqa: E402


HERE = Path(__file__).parent
GADI_ROOT = HERE / "results" / "gadi"


def _level_record(payload: dict) -> dict:
    """Project a per-case payload into the level-entry shape."""
    entry = {"nodes": payload["nodes"], "dx": payload["dx"],
             "wall_seconds": payload.get("wall_seconds")}
    if payload.get("outcome") == "success":
        entry["l2error_h"] = payload["l2error_h"]
        entry["l2anal_h"] = payload["l2anal_h"]
        if "l2error_theta" in payload:
            entry["l2error_theta"] = payload["l2error_theta"]
            entry["l2anal_theta"] = payload["l2anal_theta"]
    else:
        entry["error"] = payload.get("error", "unknown")
    return entry


def merge_dim(dim: int) -> Path | None:
    """Merge all per-case JSONs for ``dim`` and write the rolled-up file."""
    root = GADI_ROOT / f"{dim}d"
    if not root.exists():
        print(f"skip {dim}D: no {root}")
        return None
    cases: dict[str, dict] = defaultdict(
        lambda: {"degree": None, "bc_type": None, "levels": []}
    )
    for path in sorted(root.glob("*/result.json")):
        payload = json.loads(path.read_text())
        bc = payload["bc_type"]
        degree = payload["degree"]
        name = f"{bc}_dq{degree}"
        case = cases[name]
        case["degree"] = degree
        case["bc_type"] = bc
        case["levels"].append(_level_record(payload))
    if not cases:
        print(f"skip {dim}D: no result.json files under {root}")
        return None
    # Stable sort by mesh resolution, coarsest first.
    for case in cases.values():
        case["levels"].sort(key=lambda e: e["nodes"])
    out = HERE / "results" / f"spatial_{dim}d.json"
    save_json(out, {"cases": dict(cases)})
    print(f"wrote {out} ({sum(len(c['levels']) for c in cases.values())} "
          f"levels across {len(cases)} cases)")
    return out


if __name__ == "__main__":
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("--dim", type=int, default=None, choices=[2, 3])
    args = ap.parse_args()
    dims = [args.dim] if args.dim else [2, 3]
    for d in dims:
        merge_dim(d)
