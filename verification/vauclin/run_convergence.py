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
# Laptop-friendly default reference (61x41 DQ2 ~ 40 min). The paper
# figure uses 121x81 DQ2; pass --paper-reference (or set
# REFERENCE_OVERRIDE) for Gadi runs.
REFERENCE = {"nodes_x": 61, "nodes_y": 41, "degree": 2}
PAPER_REFERENCE = {"nodes_x": 121, "nodes_y": 81, "degree": 2}

# Coarse spec used by the laptop demonstration.
COARSE_LAPTOP = [
    {"nodes_x": 16,  "nodes_y": 11,  "degree": 0},
    {"nodes_x": 23,  "nodes_y": 16,  "degree": 0},
    {"nodes_x": 31,  "nodes_y": 21,  "degree": 0},
    {"nodes_x": 46,  "nodes_y": 31,  "degree": 0},
    {"nodes_x": 16,  "nodes_y": 11,  "degree": 1},
    {"nodes_x": 23,  "nodes_y": 16,  "degree": 1},
    {"nodes_x": 31,  "nodes_y": 21,  "degree": 1},
    {"nodes_x": 46,  "nodes_y": 31,  "degree": 1},
]

# Coarse spec used by the paper figure (Gadi). Adds DQ2 coarse curves
# and several finer intermediate levels that are too slow for a
# laptop.
COARSE_PAPER = [
    *COARSE_LAPTOP,
    {"nodes_x": 61,  "nodes_y": 41,  "degree": 0},
    {"nodes_x": 91,  "nodes_y": 61,  "degree": 0},
    {"nodes_x": 61,  "nodes_y": 41,  "degree": 1},
    {"nodes_x": 91,  "nodes_y": 61,  "degree": 1},
    {"nodes_x": 23,  "nodes_y": 16,  "degree": 2},
    {"nodes_x": 31,  "nodes_y": 21,  "degree": 2},
    {"nodes_x": 46,  "nodes_y": 31,  "degree": 2},
    {"nodes_x": 61,  "nodes_y": 41,  "degree": 2},
    {"nodes_x": 91,  "nodes_y": 61,  "degree": 2},
]

# Selected by `main()` from CLI flags; kept module-level so the
# existing import path (``from run_convergence import REFERENCE``) is
# unaffected.
COARSE = COARSE_LAPTOP


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
    import argparse
    p = argparse.ArgumentParser()
    p.add_argument("--paper-reference", action="store_true",
                   help="Use the paper's 121x81 DQ2 reference and the "
                        "extended coarse sweep including DQ2 curves "
                        "(intended for Gadi).")
    p.add_argument("--ref-nx", type=int, default=None,
                   help="Override reference nodes_x (advanced).")
    p.add_argument("--ref-ny", type=int, default=None,
                   help="Override reference nodes_y (advanced).")
    p.add_argument("--ref-degree", type=int, default=None,
                   help="Override reference polynomial degree.")
    args = p.parse_args()

    global REFERENCE, COARSE
    if args.paper_reference:
        REFERENCE = dict(PAPER_REFERENCE)
        COARSE = COARSE_PAPER
    if args.ref_nx is not None:
        REFERENCE["nodes_x"] = args.ref_nx
    if args.ref_ny is not None:
        REFERENCE["nodes_y"] = args.ref_ny
    if args.ref_degree is not None:
        REFERENCE["degree"] = args.ref_degree

    # Under MPI, vauclin_2d.run() gathers coordinate and field arrays
    # to rank 0. The scipy.griddata comparison below is therefore only
    # meaningful on rank 0; other ranks see empty arrays and would
    # raise "No points given" if they tried to interpolate.
    try:
        from mpi4py import MPI
        rank = MPI.COMM_WORLD.Get_rank()
    except ImportError:
        rank = 0

    if rank == 0:
        print(f"reference solution: {REFERENCE}")
    ref_result, ref_wall = _run(REFERENCE)
    if rank == 0:
        print(f"  wall = {ref_wall:.1f}s")

    ref_final = ref_result["final"]
    entries = []
    Lx, Ly = ref_result["mesh"]["Lx"], ref_result["mesh"]["Ly"]

    for spec in COARSE:
        if rank == 0:
            print(f"coarse: {spec}")
        res, wall = _run(spec)
        if rank != 0:
            continue
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
