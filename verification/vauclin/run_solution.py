"""Run Vauclin 2D and save snapshots at t = 0, 3, 6, 9 hours."""
from __future__ import annotations

import sys
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
import verification.common  # noqa: F401 — ensures gwassess is on path
sys.path.insert(0, str(Path(__file__).resolve().parent))

from vauclin_2d import run  # noqa: E402


HOURS = (0.0, 3 * 3600, 6 * 3600, 9 * 3600)


if __name__ == "__main__":
    import argparse
    p = argparse.ArgumentParser()
    # 46x31 DQ2 with dt=25 matches the g-adopt vauclin demo and
    # finishes locally in ~15 min; 91x61 is too slow on a laptop.
    p.add_argument("--nodes-x", type=int, default=46)
    p.add_argument("--nodes-y", type=int, default=31)
    p.add_argument("--degree",  type=int, default=2)
    p.add_argument("--dt",      type=float, default=25.0)
    args = p.parse_args()

    # Paper simulation runs for 8 hours; extend to 9 to get the 9h snapshot
    t_final = max(HOURS)

    result = run(nodes_x=args.nodes_x, nodes_y=args.nodes_y,
                 degree=args.degree, t_final=t_final,
                 snapshot_times=HOURS, dt_value=args.dt)

    out = Path(__file__).parent / "results" / "solution.npz"
    out.parent.mkdir(parents=True, exist_ok=True)
    flat = {}
    for i, snap in enumerate(result["snapshots"]):
        flat[f"t_{i}"] = snap["t"]
        flat[f"x_{i}"] = snap["x"]
        flat[f"y_{i}"] = snap["y"]
        flat[f"h_{i}"] = snap["h"]
        flat[f"theta_{i}"] = snap["theta"]
        flat[f"qx_{i}"] = snap["qx"]
        flat[f"qy_{i}"] = snap["qy"]
    flat["n_snapshots"] = len(result["snapshots"])
    flat["mass_balance"] = result["mass_balance"]
    np.savez(out, **flat)
    print(f"wrote {out}  mass_balance={result['mass_balance']:.3e}")
