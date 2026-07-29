"""§3.2 mass conservation: local vs global imbalance × function space × Δx.

Same sweep (fixed Δt = 100 s, Backward Euler, θ-form) as the deleted
``run_function_space.py``, but recording the pair (L, G) of eq.
(LocalMassLoss) instead of the older nodal-interpolant scalar. L and G
come from one cell-wise residual — summing it over cells telescopes onto
the global balance — so the two
panels of the figure are the same equation with the absolute value in
different places. See ``mass_balance.compute_balance_metrics``.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import save_json  # noqa: E402

sys.path.insert(0, str(Path(__file__).resolve().parent))

from gadopt import BackwardEuler  # noqa: E402
from mass_balance import INFLOW_RATE, compute_balance_metrics  # noqa: E402


SPACES = [
    ("DQ", 0), ("DQ", 1), ("DQ", 2),
    ("CG", 1), ("CG", 2),
]
GRID_POINTS = [13, 26, 51, 101]
DT = 100.0
# 300 steps, not the 2000 (t_final = 2e5) the deleted run_function_space.py
# used. Measured on DQ1 n=26, starting from 0.1667 m^3 with 0.40 m^3 of capacity:
#
#   t = 3e4:  max h = -0.317 m, mass 0.1967 m^3,  0.0% of dofs saturated
#   t = 2e5:  max h = +0.376 m, mass 0.3667 m^3, 38.5% of dofs saturated
#
# So the long run spends most of its life with over a third of the domain
# pinned at the h >= 0 saturation cap, where theta is clamped to theta_s and
# dtheta/dh = 0 -- the degenerate branch flagged as P1 in to-do-list.md. At
# 3e4 the test stays entirely on the smooth branch of the Haverkamp curve,
# so it measures the discretisation rather than the cap. Rates and the DG/CG
# separation are unchanged either way; only the absolute magnitudes scale
# with the number of steps.
T_FINAL = 3e4

# Total water pushed through the top boundary over the run (the domain is a
# unit square, so the inflow face has unit width). Used to normalise L and G
# into a dimensionless fraction of the water actually applied.
CUMULATIVE_INFLOW = T_FINAL * INFLOW_RATE


def run(output: Path | None = None) -> dict:
    entries = []
    payload = {"dt": DT, "t_final": T_FINAL,
               "integrator": "BackwardEuler",
               "inflow_rate": INFLOW_RATE,
               "cumulative_inflow": CUMULATIVE_INFLOW,
               "entries": entries}
    for family, degree in SPACES:
        for n in GRID_POINTS:
            t0 = time.time()
            try:
                local, global_ = compute_balance_metrics(
                    grid_points=n, time_step=DT, t_final=T_FINAL,
                    polynomial_degree=degree, time_integrator=BackwardEuler,
                    function_space=family, stage_type="value",
                )
            except Exception as exc:  # noqa: BLE001
                wall = time.time() - t0
                print(f"[{family}{degree} n={n}] FAILED: {exc!r} wall={wall:.1f}s")
                entries.append({"family": family, "degree": degree,
                                "grid_points": n,
                                "error": repr(exc), "wall_seconds": wall})
                if output is not None:
                    save_json(output, payload)
                continue
            wall = time.time() - t0
            dx = 1.0 / (n - 1)
            print(f"[{family}{degree} n={n} dx={dx:.3f}] L={local:.3e} "
                  f"G={global_:.3e} L/G={local / global_:.2e} wall={wall:.1f}s",
                  flush=True)
            entries.append({"family": family, "degree": degree,
                            "grid_points": n, "dx": float(dx),
                            "local": float(local), "global": float(global_),
                            "wall_seconds": wall})
            if output is not None:
                save_json(output, payload)
    return payload


if __name__ == "__main__":
    out = Path(__file__).parent / "results" / "local_balance.json"
    save_json(out, run(output=out))
    print(f"wrote {out}")
