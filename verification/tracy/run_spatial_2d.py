"""Tracy 2D spatial convergence sweep.

Imports the canonical driver from the richardson g-adopt worktree
(`tests/richards/tracy_2d.py::model`) and runs it across mesh
refinements for each (degree, BC type). Saves all errors into
`results/spatial_2d.json` which `plot_spatial.py` consumes.

The sweep matches the one enabled in g-adopt's `test_richards.py`:
DG1/DG2 for specified-head BCs, DG1 for no-flux BCs.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import save_json  # noqa: E402

from tests.richards.tracy_2d import model  # noqa: E402


ALL_CASES = {
    "specified_head_dg1": {"degree": 1, "bc_type": "specified_head",
                           "levels": [51, 101, 201, 401]},
    "specified_head_dg2": {"degree": 2, "bc_type": "specified_head",
                           "levels": [76, 151, 301]},
    "no_flux_dg1":         {"degree": 1, "bc_type": "no_flux",
                            "levels": [51, 101, 201, 401]},
}

# DG2 runs need MPI (the g-adopt test_richards harness itself assigns
# 2–32 cores per level); serial runs hit DIVERGED_MAX_IT. Run locally
# with --cases to pick individual families; default skips DG2.
DEFAULT_CASES = ["specified_head_dg1", "no_flux_dg1"]


def run(max_level: int | None = None,
        output: Path | None = None,
        case_names: list[str] | None = None) -> dict:
    selected = case_names or DEFAULT_CASES
    payload: dict = {"cases": {}}
    for name in selected:
        spec = ALL_CASES[name]
        degree = spec["degree"]
        bc_type = spec["bc_type"]
        entries = []
        payload["cases"][name] = {"degree": degree, "bc_type": bc_type,
                                   "levels": entries}
        for nodes in spec["levels"]:
            if max_level is not None and nodes > max_level:
                continue
            t0 = time.time()
            try:
                l2err_h, l2err_th, l2anal_h, l2anal_th = model(
                    nodes=nodes, degree=degree, bc_type=bc_type,
                )
            except Exception as exc:  # noqa: BLE001
                wall = time.time() - t0
                print(f"[{name}] nodes={nodes} dq{degree} FAILED: {exc!r} "
                      f"wall={wall:.1f}s")
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
                "l2error_h": float(l2err_h),
                "l2error_theta": float(l2err_th),
                "l2anal_h": float(l2anal_h),
                "l2anal_theta": float(l2anal_th),
                "wall_seconds": wall,
            })
            print(f"[{name}] nodes={nodes} dq{degree} "
                  f"rel_err_h={l2err_h/l2anal_h:.3e} "
                  f"wall={wall:.1f}s")
            if output is not None:
                save_json(output, payload)
    return payload


if __name__ == "__main__":
    import argparse
    p = argparse.ArgumentParser()
    p.add_argument("--max-level", type=int, default=None,
                   help="Skip meshes finer than this (for quick smoke runs).")
    p.add_argument("--cases", nargs="+", default=None,
                   choices=list(ALL_CASES.keys()),
                   help=f"Cases to run. Default: {DEFAULT_CASES}")
    p.add_argument("--output", default="results/spatial_2d.json")
    args = p.parse_args()

    out = Path(__file__).parent / args.output
    save_json(out, run(max_level=args.max_level, output=out,
                        case_names=args.cases))
    print(f"wrote {out}")
