"""Vauclin spatial convergence at t = 28 800 s.

Paper Fig. 5: the reference solution is DQ2 on a 121×81 grid; the error
is then the L² norm of the difference between DQ{p} solutions on coarser
meshes and the reference, evaluated at t = 28 800 s (the paper figure).

Because the reference and the coarse solutions live on different
quadrilateral grids, we interpolate onto a common tensor-product grid
via scipy.interpolate.griddata and compute the L² error by Simpson's
rule on that grid. This avoids the fragility of building Firedrake
cross-mesh projection in a throwaway convergence driver.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

import numpy as np
from scipy.integrate import simpson
from scipy.interpolate import griddata

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import save_json  # noqa: E402
sys.path.insert(0, str(Path(__file__).resolve().parent))
from vauclin_2d import run  # noqa: E402


T_TARGET = 28_800.0  # 8 h — paper's convergence target
# The paper uses a DQ2 121x81 reference. That is too heavy for a local
# run (one solve would be ~40 minutes on a laptop). Kept small by
# default here so the rate can be demonstrated without Gadi; the full
# paper figure should be produced on Gadi — see to-do-list.md.
REFERENCE = {"nodes_x": 151, "nodes_y": 121, "degree": 2}
COARSE = [
    {"nodes_x": 23,  "nodes_y": 16,  "degree": 0},
    {"nodes_x": 31,  "nodes_y": 21,  "degree": 0},
    {"nodes_x": 37,  "nodes_y": 25,  "degree": 0},
    {"nodes_x": 46,  "nodes_y": 31,  "degree": 0},
    {"nodes_x": 61,  "nodes_y": 41,  "degree": 0},
    {"nodes_x": 76,  "nodes_y": 51,  "degree": 0},
    {"nodes_x": 91,  "nodes_y": 61,  "degree": 0},
    {"nodes_x": 121,  "nodes_y": 81,  "degree": 0},
    {"nodes_x": 151,  "nodes_y": 101,  "degree": 0},
    {"nodes_x": 23,  "nodes_y": 16,  "degree": 1},
    {"nodes_x": 31,  "nodes_y": 21,  "degree": 1},
    {"nodes_x": 37,  "nodes_y": 25,  "degree": 1},
    {"nodes_x": 46,  "nodes_y": 31,  "degree": 1},
    {"nodes_x": 61,  "nodes_y": 41,  "degree": 1},
    {"nodes_x": 76,  "nodes_y": 51,  "degree": 1},
    {"nodes_x": 91,  "nodes_y": 61,  "degree": 1},
    {"nodes_x": 121,  "nodes_y": 81,  "degree": 1},
    {"nodes_x": 151,  "nodes_y": 101,  "degree": 1},
]


def _l2_on_grid(x1, y1, z1, x2, y2, z2, Lx, Ly, n=241,
                z1_method="linear", z2_method="linear"):
    """L² norm of z1 − z2 on a regular grid.

    z1_method/z2_method is the scipy.griddata interpolator; "linear" is
    fine for DQ≥1, but DQ0 (piecewise-constant) fields should use
    "nearest" to avoid spuriously smoothing the step structure.
    """
    xi = np.linspace(0, Lx, n)
    yi = np.linspace(0, Ly, int(n * Ly / Lx))
    XI, YI = np.meshgrid(xi, yi)
    Z1 = griddata((x1, y1), z1, (XI, YI), method=z1_method)
    Z2 = griddata((x2, y2), z2, (XI, YI), method=z2_method)
    diff = Z1 - Z2
    mask = np.isfinite(diff)
    diff = np.where(mask, diff, 0.0)
    ref_sq = np.where(mask, Z2 ** 2, 0.0)
    err_sq = simpson(simpson(diff ** 2, x=xi, axis=1), x=yi)
    ref    = simpson(simpson(ref_sq,    x=xi, axis=1), x=yi)
    return float(np.sqrt(max(err_sq, 0.0))), float(np.sqrt(max(ref, 0.0)))


def _run(spec):
    t0 = time.time()
    res = run(nodes_x=spec["nodes_x"], nodes_y=spec["nodes_y"],
              degree=spec["degree"], t_final=T_TARGET,
              snapshot_times=())
    wall = time.time() - t0
    return res, wall


def main():
    print(f"reference solution: {REFERENCE}")
    ref_result, ref_wall = _run(REFERENCE)
    print(f"  wall = {ref_wall:.1f}s")

    ref_final = ref_result["final"]
    entries = []
    Lx, Ly = ref_result["mesh"]["Lx"], ref_result["mesh"]["Ly"]

    for spec in COARSE:
        print(f"coarse: {spec}")
        res, wall = _run(spec)
        fx, fy, fh = res["final"]["x"], res["final"]["y"], res["final"]["h"]
        # DQ0 is piecewise-constant; linear interpolation smears the
        # step structure and flatters the convergence rate. Nearest-
        # neighbour reproduces the cell-wise constant honestly.
        coarse_method = "nearest" if spec["degree"] == 0 else "linear"
        err, ref_norm = _l2_on_grid(
            fx, fy, fh, ref_final["x"], ref_final["y"], ref_final["h"],
            Lx, Ly, z1_method=coarse_method, z2_method="linear",
        )
        dx = Lx / spec["nodes_x"]
        print(f"  dx={dx:.4f}  l2_err={err:.3e}  wall={wall:.1f}s")
        entries.append({
            **spec,
            "dx": float(dx),
            "l2_error": err, "l2_reference": ref_norm,
            "wall_seconds": wall,
        })

    payload = {
        "t_target": T_TARGET,
        "reference": {**REFERENCE, "wall_seconds": ref_wall},
        "entries": entries,
    }
    out = Path(__file__).parent / "results" / "convergence.json"
    save_json(out, payload)
    print(f"wrote {out}")


if __name__ == "__main__":
    main()
