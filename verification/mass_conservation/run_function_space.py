"""Mass-conservation sweep A: function space × polynomial degree × Δx.

Reproduces Morrow et al. 2026 Fig. 3(a). Fixed Δt = 100 s; for each
(family, degree) sweep a range of grid resolutions and record the
cumulative mass imbalance M from eq. (NetMassLoss).
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import save_json  # noqa: E402

sys.path.insert(0, str(Path(__file__).resolve().parent))

from gadopt import BackwardEuler  # noqa: E402
from mass_balance import compute_mass_balance  # noqa: E402


SPACES = [
    ("DQ", 0), ("DQ", 1), ("DQ", 2),
    ("CG", 1), ("CG", 2),
]
GRID_POINTS = [13, 26, 51, 101]
DT = 100.0
T_FINAL = 2e5


def run(output: Path | None = None) -> dict:
    entries = []
    payload = {"dt": DT, "t_final": T_FINAL,
                "integrator": "BackwardEuler",
                "entries": entries}
    for family, degree in SPACES:
        for n in GRID_POINTS:
            t0 = time.time()
            try:
                err = compute_mass_balance(
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
            print(f"[{family}{degree} n={n} dx={dx:.3f}] M={err:.3e} wall={wall:.1f}s")
            entries.append({"family": family, "degree": degree,
                            "grid_points": n, "dx": float(dx),
                            "mass_error": float(err),
                            "wall_seconds": wall})
            if output is not None:
                save_json(output, payload)
    return payload


if __name__ == "__main__":
    out = Path(__file__).parent / "results" / "function_space.json"
    save_json(out, run(output=out))
    print(f"wrote {out}")
