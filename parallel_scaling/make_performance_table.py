#!/usr/bin/env python3
"""Emit the LaTeX performance table (tab:solver_performance) from parsed JSON.

Companion to the robustness matrix (tab:solver_outcomes): that table shows
which preset survives which regime; this one shows how well the survivors do.
For each preset that completes an experiment at the eight-node reference point
(the largest common weak-scaling scale), we report:

    it/Newton   linear (Krylov) iterations per Newton step  (conditioning)
    s/Newton    wall-clock time per Newton step            (speed)
    Setup %     share of SNESSolve time forming the PC     (setup overhead)
    Apply %     share of SNESSolve time applying the PC
    Peak mem    peak resident memory per process (GB)

Setup/Apply come from the PETSc -log_view profile block now carried in each
run record. Failed runs are omitted here (they have no meaningful numbers) and
stay in the outcomes table. Run after parse_results.py.
"""
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
PARSED = HERE / "parsed"

# Paper display name -> parsed solver key. The presented VLumping rows are the
# improved "best per idea" presets (Richardson smoother + lag-3 snapshot).
SOLVERS = [
    ("BJacobi", "bjacobi"),
    ("GAMG", "gamg"),
    ("BoomerAMG", "boomeramg"),
    ("GMG-H", "gmg"),
    ("VLumping", "vlumping_inexact_rich_lag3"),
    ("VLumping-HMG", "vlumping_hmg_rich_lag3"),
]

# Experiment label, parsed file, reference scale (8 nodes), block-header text.
EXPERIMENTS = [
    ("Cockett 3D --- isotropic box", "cockett", "huge"),
    ("Lower Murrumbidgee --- horizontal weak scaling", "murr_horizontal", "h8"),
    ("Lower Murrumbidgee --- vertical weak scaling", "murr_vertical", "large"),
]


def load(name):
    path = PARSED / f"{name}.json"
    return json.load(open(path)) if path.exists() else None


def find(doc, solver, scale):
    for run in doc["runs"]:
        h = run["header"]
        if h["solver"] == solver and h["scale"] == scale:
            return run
    return None


def metrics(run):
    """Return (it_per_newton, s_per_newton, setup_pct, apply_pct, mem_gb) or
    None if the run did not succeed (so it has no performance numbers)."""
    if run.get("outcome") != "success":
        return None
    s = run.get("summary") or {}
    nl = s.get("total_nl")
    lin = s.get("total_linear")
    steps = s.get("steps_completed")
    mw = s.get("mean_wall_per_step")
    mem = s.get("peak_rss_mb")
    if not (nl and lin and steps and mw):
        return None
    it = lin / nl
    s_newton = mw * steps / nl
    der = (run.get("profile") or {}).get("derived") or {}
    setup = der.get("pc_setup_pct")
    apply = der.get("pc_apply_pct")
    mem_gb = mem / 1024 if mem else None
    return it, s_newton, setup, apply, mem_gb


def fmt(v, spec):
    return spec.format(v) if v is not None else "--"


def build():
    lines = [
        r"\begin{table*}[t]",
        r"\caption{Performance of the preconditioners that complete each "
        r"experiment, evaluated at the eight-node point (the largest common "
        r"weak-scaling scale). For each run we report the linear (Krylov) "
        r"iterations per Newton step, the wall-clock time per Newton step, the "
        r"share of the solve time spent forming the preconditioner (setup) and "
        r"applying it (apply), and the peak resident memory per process. The "
        r"iteration count measures the conditioning the preconditioner "
        r"achieves; the small setup share of the vertically lumped presets "
        r"shows that their lagged, snapshot-based coarse setup is a minor part "
        r"of the cost. Presets that diverge, exhaust memory, or exceed the "
        r"wall-clock limit at this scale carry no entry here and are recorded "
        r"in Table~\ref{tab:solver_outcomes}.}",
        r"\label{tab:solver_performance}",
        r"\begin{tabular}{lrrrrr}",
        r"\hline",
        r"Solver & it/Newton & \multicolumn{1}{c}{$t$/Newton} & Setup "
        r"& Apply & Peak mem \\",
        r" & & (s) & (\%) & (\%) & (GB) \\",
        r"\hline",
    ]
    for label, fname, scale in EXPERIMENTS:
        doc = load(fname)
        lines.append(r"\multicolumn{6}{l}{\textit{" + label + r"}} \\")
        if not doc:
            lines.append(r"\multicolumn{6}{l}{(no data)} \\")
            continue
        for name, key in SOLVERS:
            run = find(doc, key, scale)
            m = metrics(run) if run else None
            if not m:
                continue  # non-survivor: omit, it lives in the outcomes table
            it, sN, setup, apply, mem = m
            lines.append(
                f"{name} & {fmt(it, '{:.1f}')} & {fmt(sN, '{:.2f}')} & "
                f"{fmt(setup, '{:.1f}')} & {fmt(apply, '{:.1f}')} & "
                f"{fmt(mem, '{:.1f}')} \\\\"
            )
        lines.append(r"\hline")
    lines += [r"\end{tabular}", r"\end{table*}", ""]
    return "\n".join(lines)


if __name__ == "__main__":
    import argparse

    ap = argparse.ArgumentParser()
    ap.add_argument("-o", "--out", default=str(HERE / "tables" / "solver_performance.tex"))
    args = ap.parse_args()
    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    text = build()
    out.write_text(text)
    print(text)
    print(f"\n-> wrote {out}", flush=True)
