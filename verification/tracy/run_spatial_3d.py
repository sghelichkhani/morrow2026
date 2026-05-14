"""Tracy 3D spatial convergence sweep.

Runs `tracy_3d.model` at a handful of refinement levels and writes one
JSON payload matching the 2D format so `plot_spatial.py` can consume it.

The production figure uses ``nodes ∈ {31, 51, 71, 101}`` which needs
Gadi (the 101³ DQ1 problem has ~4M DOFs and a few thousand nonlinear
steps to reach steady state). Locally run with ``--max-nodes 51`` for
sanity and defer the fine meshes to Gadi.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import save_json, load_json  # noqa: E402

sys.path.insert(0, str(Path(__file__).resolve().parent))
from tracy_3d import model  # noqa: E402


CASES = {
    "specified_head_dg0": {"degree": 0,
                           "levels": [21, 31, 51]},
    "specified_head_dg1": {"degree": 1,
                           "levels": [21, 31, 51, 71, 101]},
}


def run(max_nodes: int | None = None,
        output: Path | None = None) -> dict:
    payload: dict = {"cases": {}}
    if output is not None and Path(output).exists():
        try:
            existing = load_json(output)
            if isinstance(existing.get("cases"), dict):
                payload["cases"] = existing["cases"]
        except Exception:
            pass
    for name, spec in CASES.items():
        degree = spec["degree"]
        entries = []
        payload["cases"][name] = {
            "degree": degree,
            "bc_type": "specified_head",
            "levels": entries,
        }
        for nodes in spec["levels"]:
            if max_nodes is not None and nodes > max_nodes:
                continue
            t0 = time.time()
            try:
                l2err, l2anal = model(nodes=nodes, degree=degree)
            except Exception as exc:  # noqa: BLE001
                wall = time.time() - t0
                print(f"[3d/{name}] nodes={nodes}^3 FAILED: {exc!r} wall={wall:.1f}s")
                entries.append({
                    "nodes": nodes, "dx": 15.24 / nodes,
                    "error": repr(exc), "wall_seconds": wall,
                })
                if output is not None:
                    save_json(output, payload)
                continue
            wall = time.time() - t0
            entries.append({
                "nodes": nodes, "dx": 15.24 / nodes,
                "l2error_h": float(l2err), "l2anal_h": float(l2anal),
                "wall_seconds": wall,
            })
            print(f"[3d/{name}] nodes={nodes}^3 dq{degree} "
                  f"rel_err={l2err/l2anal:.3e} wall={wall:.1f}s")
            if output is not None:
                save_json(output, payload)
    return payload


if __name__ == "__main__":
    import argparse
    p = argparse.ArgumentParser()
    p.add_argument("--max-nodes", type=int, default=None,
                   help="Skip meshes finer than this (local smoke).")
    p.add_argument("--output", default="results/spatial_3d.json")
    args = p.parse_args()

    out = Path(__file__).parent / args.output
    save_json(out, run(max_nodes=args.max_nodes, output=out))
    print(f"wrote {out}")
