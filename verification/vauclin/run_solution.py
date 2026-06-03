"""Run Vauclin 2D and write ParaView snapshots at t = 0, 3, 6, 9 hours.

Drives one medium-resolution Vauclin 2D run and writes the solution at
the four snapshot times into ``results/solution.pvd`` as a VTK time
series for ParaView. At each snapshot three fields are stored: the
pressure head ``h`` (``PressureHead``), the moisture content
``theta(h)`` (``MoistureContent``) and the Darcy flux ``q``
(``VolumetricFlux``). ``plot_solution.py`` consumes this collection and
overlays streamlines straight from the flux field, so no raw arrays are
kept on the side.
"""
from __future__ import annotations

import sys
from pathlib import Path

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
    p.add_argument("--output",  default="results/solution.pvd")
    args = p.parse_args()

    # Paper simulation runs for 8 hours; extend to 9 to get the 9h snapshot
    t_final = max(HOURS)

    out_path = Path(args.output)
    if not out_path.is_absolute():
        out_path = Path(__file__).parent / out_path
    out_path.parent.mkdir(parents=True, exist_ok=True)

    result = run(nodes_x=args.nodes_x, nodes_y=args.nodes_y,
                 degree=args.degree, t_final=t_final,
                 snapshot_times=HOURS, dt_value=args.dt,
                 write_pvd=True, pvd_path=str(out_path))

    print(f"wrote {out_path}  mass_balance={result['mass_balance']:.3e}")
