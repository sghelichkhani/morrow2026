"""Mass-conservation sweep B: equation form × integrator × Δt.

Reproduces Morrow et al. 2026 Fig. 3(b). Fixed DQ2 on 25×25 grid; for
each (stage_type, integrator) sweep Δt and record M. "value" is the
mixed (mass-conserving) form; "deriv" is the head-based (chain-rule)
form of Richards.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import save_json  # noqa: E402

sys.path.insert(0, str(Path(__file__).resolve().parent))
from gadopt import BackwardEuler, DIRK22, ImplicitMidpoint  # noqa: E402
from mass_balance import compute_mass_balance  # noqa: E402


GRID_POINTS = 36
DEGREE = 1
FAMILY = "DQ"
T_FINAL = 2e5
DTS = [400.0, 200.0, 100.0, 50.0, 25.0]

COMBINATIONS = [
    ("BackwardEuler", BackwardEuler,   "deriv"),
    ("BackwardEuler", BackwardEuler,   "value"),
]


def run(output: Path | None = None) -> dict:
    entries = []
    payload = {"grid_points": GRID_POINTS, "degree": DEGREE, "family": FAMILY,
                "t_final": T_FINAL, "entries": entries}
    for int_name, integrator, stage_type in COMBINATIONS:
        for dt in DTS:
            t0 = time.time()
            try:
                err = compute_mass_balance(
                    grid_points=GRID_POINTS, time_step=dt, t_final=T_FINAL,
                    polynomial_degree=DEGREE, time_integrator=integrator,
                    function_space=FAMILY, stage_type=stage_type,
                )
            except Exception as exc:  # noqa: BLE001
                wall = time.time() - t0
                print(f"[{int_name}/{stage_type} dt={dt}] FAILED: {exc!r} wall={wall:.1f}s")
                entries.append({"integrator": int_name, "stage_type": stage_type,
                                "dt": float(dt), "error": repr(exc),
                                "wall_seconds": wall})
                if output is not None:
                    save_json(output, payload)
                continue
            wall = time.time() - t0
            print(f"[{int_name}/{stage_type} dt={dt}] M={err:.3e} wall={wall:.1f}s")
            entries.append({"integrator": int_name, "stage_type": stage_type,
                            "dt": float(dt), "mass_error": float(err),
                            "wall_seconds": wall})
            if output is not None:
                save_json(output, payload)
    return payload


if __name__ == "__main__":
    out = Path(__file__).parent / "results" / "equation_type.json"
    save_json(out, run(output=out))
    print(f"wrote {out}")