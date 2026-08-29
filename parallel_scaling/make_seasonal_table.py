#!/usr/bin/env python3
"""Generate the seasonal weak-scaling table from the parsed record.

The table is mesh-major rather than solver-major, which is what makes it
carry an argument the figures cannot. Reading down a column, the
column-integrated diffusion number of \\S5.3 rises past unity between the
third and fourth mesh, and the largest timestep block-Jacobi sustains
collapses over the same two rows, while the lumped presets do not move. The
predictor and the outcome sit side by side.

Three metrics per solver:

* the largest timestep the run sustained, which is a result rather than a
  parameter, because a failed solve halves the step;
* the number of failed steps, the ramp thrashing that the maximum step alone
  does not show;
* wall-clock hours per simulated year, which is the comparable cost measure
  because the runs terminate at different simulated times.

GMG-H is not a column. It holds the full step at every mesh and is four times
more expensive per solve than the lumped presets, which is one sentence in the
caption rather than three columns.

    python3 make_seasonal_table.py            # write into the paper Tables/
    python3 make_seasonal_table.py --stdout   # also echo the LaTeX
"""

import argparse
import json
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
PARSED = HERE / "parsed"
PAPER_TABLES = Path.home() / "Workplace/papers/richards-morrow-2026/Tables"

CASE = "murr_seasonal"
DT_CEILING_S = 8035200.0        # SEASONAL_DT_MAX in submit_jobs.py
DAY = 86400.0

SCALES = [("h1", 1775, "4.0"), ("h2", 1250, "8.0"),
          ("h4", 880, "1.6"), ("h8", 620, "3.2")]
DOF_EXP = {"h1": 7, "h2": 7, "h4": 8, "h8": 8}

# Display name -> parsed solver key.
COLUMNS = [
    ("BJacobi", "bjacobi"),
    ("VLumping", "vlumping_inexact_rich_lag3"),
    ("VLumping-linesmooth", "vlumping_linesmooth"),
]
FOOTNOTE_SOLVER = ("GMG-H", "gmg")


def load(name):
    with open(PARSED / f"{name}.json") as handle:
        return json.load(handle)


def index(data):
    return {(r["header"].get("solver"), r["header"].get("scale")): r
            for r in data["runs"]}


def hours(stamp):
    """PBS walltime string to hours."""
    if not stamp:
        return None
    parts = [float(x) for x in stamp.split(":")]
    while len(parts) < 3:
        parts.insert(0, 0.0)
    return parts[0] + parts[1] / 60.0 + parts[2] / 3600.0


def metrics(run):
    """Sustained step (days), failed steps, wall hours per simulated year."""
    if run is None:
        return None
    summary = run.get("summary") or {}
    steps = run.get("steps") or []
    sustained = max([s.get("dt_s") or 0.0 for s in steps] or [0.0])
    wall = hours((run.get("pbs") or {}).get("walltime_used"))
    simulated = summary.get("sim_time_d") or 0.0
    per_year = wall / (simulated / 365.25) if wall and simulated else None
    return {
        "outcome": run["outcome"],
        "sustained_d": sustained / DAY,
        "censored": sustained >= DT_CEILING_S - 1.0,
        "failed": summary.get("failed_steps"),
        "hours_per_year": per_year,
    }


def dcol_row():
    """Graded-regime D_col per mesh, from compute_dcol.py."""
    out = HERE / "parsed" / "dcol.json"
    subprocess.run(
        [sys.executable, str(HERE / "compute_dcol.py"), "--json", str(out)],
        check=True, stdout=subprocess.DEVNULL)
    table = json.loads(out.read_text())
    key = next(k for k in table if k.startswith("graded"))
    return table[key]


def cells(m):
    """Three table cells for one solver at one mesh."""
    if m is None:
        return [r"--", r"--", r"--"]
    if m["outcome"] != "success":
        return [r"\textrm{D}", r"--", r"--"]
    step = f"{m['sustained_d']:.0f}"
    if m["censored"]:
        step += r"$^{\dagger}$"
    failed = "--" if m["failed"] is None else f"{m['failed']}"
    cost = "--" if m["hours_per_year"] is None else f"{m['hours_per_year']:.2f}"
    return [step, failed, cost]


def build():
    idx = index(load(CASE))
    dcol = dcol_row()

    gmg = [metrics(idx.get((FOOTNOTE_SOLVER[1], s))) for s, _, _ in SCALES]
    gmg_cost = ", ".join(f"{m['hours_per_year']:.2f}" for m in gmg if m)

    lines = [r"\begin{table*}[t]"]
    lines.append(
        r"\caption{The seasonal weak-scaling ladder of "
        r"\S\ref{sec:seasonal}, mesh by mesh. The four meshes are those of "
        r"Fig.~\ref{fig:murrumbidgee_weak}A,B, so the cell aspect ratio is "
        r"unchanged and only the horizontal spacing and the timestep differ "
        r"from the ordinary regime. $D_{\mathrm{col}}$ is the "
        r"column-integrated diffusion number of Eq.~\eqref{eq:Dcol}, "
        r"evaluated over the basin at the imposed three-month step. For each "
        r"solver the table reports the largest timestep the run sustained, "
        r"the number of failed steps the adaptive ramp absorbed, and the "
        r"wall-clock time per simulated year, which is the comparable cost "
        r"measure because the runs terminate between 468 and 545 simulated "
        r"days. A dagger marks a step limited by the imposed three-month "
        r"ceiling rather than by the solver, so that entry is a lower bound "
        r"on what the preconditioner would sustain. Block-Jacobi's admissible "
        r"step is the only one that moves, and it collapses across the same "
        r"two meshes over which $D_{\mathrm{col}}$ passes unity. GMG-H is "
        r"omitted for width: it holds the full step at all four meshes, at "
        + gmg_cost +
        r"~hours per simulated year, roughly four times the cost of the "
        r"lumped presets per solve.}")
    lines.append(r"\label{tab:seasonal_scaling}")
    lines.append(r"\begin{tabular}{rrr" + "rrr" * len(COLUMNS) + "}")
    lines.append(r"\hline")

    head = [r"\multicolumn{3}{c}{Mesh}"]
    head += [r"\multicolumn{3}{c}{" + name + "}" for name, _ in COLUMNS]
    lines.append(" & ".join(head) + r" \\")

    sub = [r"$\Delta x$", "DOF", r"$D_{\mathrm{col}}$"]
    for _ in COLUMNS:
        sub += [r"$\Delta t_{\max}$", "failed", "wall"]
    lines.append(" & ".join(sub) + r" \\")

    units = ["(m)", "", ""]
    for _ in COLUMNS:
        units += ["(d)", "steps", "(h/yr)"]
    lines.append(" & ".join(units) + r" \\")
    lines.append(r"\hline")

    for scale, spacing, mantissa in SCALES:
        row = [f"{spacing}",
               f"${mantissa}\\times10^{{{DOF_EXP[scale]}}}$",
               f"{dcol[scale]:.2f}"]
        for _, key in COLUMNS:
            row += cells(metrics(idx.get((key, scale))))
        lines.append(" & ".join(row) + r" \\")

    lines.append(r"\hline")
    lines.append(r"\end{tabular}")
    lines.append(r"\end{table*}")
    return "\n".join(lines) + "\n"


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--outdir", default=str(PAPER_TABLES))
    parser.add_argument("--stdout", action="store_true")
    args = parser.parse_args()

    tex = build()
    outdir = Path(args.outdir)
    outdir.mkdir(parents=True, exist_ok=True)
    target = outdir / "seasonal_scaling.tex"
    target.write_text(tex)
    print(f"Wrote {target}")
    if args.stdout:
        print()
        print(tex)


if __name__ == "__main__":
    main()
