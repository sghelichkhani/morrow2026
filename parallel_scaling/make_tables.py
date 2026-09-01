#!/usr/bin/env python3
"""Generate the paper's scaling tables directly from the parsed JSON record.

Two LaTeX tables are emitted into the paper tree
(``~/Workplace/papers/richards-morrow-2026/Tables/``):

* ``solver_outcomes.tex`` — the consolidated solver x scale outcome
  matrix across all four scaling experiments (Cockett isotropic survey,
  Murrumbidgee horizontal / vertical weak scaling, Murrumbidgee strong
  scaling), with a peak-memory summary column. This absorbs the old
  per-experiment memory panels and the status information that used to
  be drawn as slanted DIVERGED/OOM markers on the figures.
The hierarchy-depth sweep that this script also used to emit
(``hierarchy_depth.tex``) is no longer written: the manuscript does not
include that table, and the runs behind it are archived (see
``archive/README.md``). ``build_hierarchy_table`` is kept so the table can
still be produced on demand.

Everything is read from ``parsed/*.json``; nothing is hard-coded. Uses
only core LaTeX (tabular / multicolumn / hline) so it compiles under the
Copernicus class without extra packages.

    python3 make_tables.py            # write into the paper Tables/ dir
    python3 make_tables.py --stdout   # also echo the LaTeX
"""

import argparse
import json
from pathlib import Path

import reported

PARSED = Path(__file__).resolve().parent / "parsed"
PAPER_TABLES = Path.home() / "Workplace/papers/richards-morrow-2026/Tables"

# Outcome -> table glyph. Core-LaTeX only.
GLYPH = {
    "success": r"$\bullet$",
    "diverged": r"D",
    "oom": r"M",
    "walltime": r"T",
    "incomplete": r"T",
}
# Seasonal-only. A run that reaches the final time but never sustains the
# requested step has not simply been slower; its admissible step was set by
# the preconditioner. "$\bullet$" would hide exactly the result the seasonal
# experiment exists to report.
GLYPH_REDUCED = r"$\circ$"
NOT_RUN = r"--"  # core LaTeX only (no xcolor in the Copernicus preamble)

# Display names, row order and per-experiment coverage come from
# `reported.py`, the single definition of what the paper reports.
SOLVER_ORDER = [p.key for p in reported.ALL_REPORTED]
SOLVER_LABEL = {p.key: p.label for p in reported.ALL_REPORTED}

# The run key behind each row. Identity now that the reported runs live under
# the names the paper and g-adopt use; the fallbacks let the table still build
# from the historical directories if a reported run is missing.
SOLVER_KEYS = {
    "vlumping": ["vlumping", "vlumping_inexact_rich_lag3", "vlumping_inexact"],
    "vlumping_hmg": ["vlumping_hmg", "vlumping_hmg_rich_lag3"],
}

# The seasonal blocks report the presets that section compares. HMG is
# excluded by the same decision that keeps it out of Fig. seasonal_weak: its
# iterative coarse solve thrashes the adaptive step in this regime, it is not
# offered as a default, and several of its runs were stopped by hand rather
# than by the solver, which no outcome glyph can honestly represent.
SEASONAL_ROWS = [p.key for p in reported.presets_for("murr_seasonal")]

DT_CEILING_S = reported.SEASONAL_DT_CEILING_S


def load(name):
    with open(PARSED / f"{name}.json") as f:
        return json.load(f)


def index(data):
    """(solver, scale) -> run dict."""
    return {(r["header"].get("solver"), r["header"].get("scale")): r
            for r in data["runs"]}


def glyph_for(run, seasonal):
    """Outcome glyph, distinguishing a solver-limited step in the seasonal runs."""
    outcome = run["outcome"]
    if seasonal and outcome == "success":
        steps = run.get("steps") or []
        sustained = max([s.get("dt_s") or 0.0 for s in steps] or [0.0])
        if sustained < DT_CEILING_S - 1.0:
            return GLYPH_REDUCED
    return GLYPH.get(outcome, "?")


def peak_mem_gb(runs):
    """Max successful peak RSS across the given run dicts, in GB (or None)."""
    vals = []
    for r in runs:
        if r is None or r["outcome"] != "success":
            continue
        m = (r.get("summary") or {}).get("peak_rss_mb")
        if m:
            vals.append(m / 1024.0)
    return max(vals) if vals else None


# ── Table 1: consolidated outcome matrix ────────────────────────────────────

# Each experiment block: (title, json name, [(node_count, scale_key), ...]).
BLOCKS = [
    ("Cockett 3D --- isotropic box, cell AR $\\approx$ 1:1", "cockett",
     [(1, "sweep"), (2, "medium"), (4, "large"), (8, "huge")]),
    ("Lower Murrumbidgee --- horizontal weak scaling "
     "(300 layers; $\\Delta x$ 1775$\\to$620\\,m, AR 1000:1$\\to$350:1)",
     "murr_horizontal",
     [(1, "h1"), (2, "h2"), (4, "h4"), (8, "h8")]),
    ("Lower Murrumbidgee --- vertical weak scaling "
     "($\\Delta x=1775$\\,m; 150$\\to$1200 layers, AR 500:1$\\to$4000:1)",
     "murr_vertical",
     [(1, "smoke"), (2, "sweep"), (4, "medium"), (8, "large")]),
    ("Lower Murrumbidgee --- seasonal weak scaling, graded "
     "(as horizontal, three-month step, water table $+5$\\,m, "
     "retention $/3$)",
     "murr_seasonal",
     [(1, "h1"), (2, "h2"), (4, "h4"), (8, "h8")]),
    ("Lower Murrumbidgee --- seasonal weak scaling, saturated "
     "(water table $+10$\\,m, retention $/10$)",
     "murr_seasonal_saturated",
     [(1, "h1"), (2, "h2"), (4, "h4"), (8, "h8")]),
    ("Lower Murrumbidgee --- strong scaling "
     "(fixed $3.2\\times10^{8}$ DOF, $\\Delta x=620$\\,m, 300 layers)",
     "murr_strong",
     [(1, "s1"), (2, "s2"), (4, "s4"), (8, "s8"), (16, "s16"), (32, "s32")]),
]

SEASONAL_CASES = {"murr_seasonal", "murr_seasonal_saturated"}

NODE_COLS = [1, 2, 4, 8, 16, 32]


def build_outcomes_table():
    lines = []
    lines.append(r"\begin{table*}[t]")
    lines.append(r"\caption{Solver robustness across the six scaling "
                 r"experiments. Each cell reports the outcome of one run at "
                 r"the indicated node count: $\bullet$ converged and "
                 r"completed the run at the requested timestep; $\circ$ "
                 r"completed the run, but only at a smaller timestep than "
                 r"was requested, so its admissible step was set by the "
                 r"preconditioner; \textrm{D} diverged; \textrm{M} failed "
                 r"on an out-of-memory error; \textrm{T} did not reach the "
                 r"final time within the wall-clock limit; a dash marks a "
                 r"configuration that was not attempted. The final column is "
                 r"the peak resident memory per process over the successful "
                 r"runs in that row. BJac-SOR and the black-box algebraic "
                 r"multigrids (GAMG, BoomerAMG) survive the isotropic Cockett "
                 r"box but are culled by the anisotropy of the basin mesh. Of "
                 r"the strategies that survive the anisotropy, which are "
                 r"viable depends on the regime: at the short steps of the "
                 r"two ordinary weak-scaling experiments block-Jacobi and "
                 r"both lumped presets complete every run, whereas at "
                 r"seasonal steps block-Jacobi's admissible step falls below "
                 r"the requested one on the two finest meshes and, on the "
                 r"saturated profile, it completes no timestep at any scale "
                 r"while both lumped presets complete all four. The seasonal "
                 r"blocks report the presets compared in "
                 r"\S\ref{sec:seasonal}; VLumping-HMG is reported there only "
                 r"for the strong-scaling decompositions.}")
    lines.append(r"\label{tab:solver_outcomes}")
    ncol = 1 + len(NODE_COLS) + 1
    colspec = "l" + "c" * len(NODE_COLS) + "r"
    lines.append(r"\begin{tabular}{" + colspec + "}")
    lines.append(r"\hline")
    header = ["Solver"] + [f"{n}" for n in NODE_COLS] + [r"Peak mem"]
    lines.append(" & ".join(header) + r" \\")
    lines.append(" & " + " & ".join(r"\multicolumn{1}{c}{node" +
                 ("s" if n != 1 else "") + "}" for n in NODE_COLS) +
                 r" & (GB) \\")
    lines.append(r"\hline")

    for title, name, scale_map in BLOCKS:
        data = load(name)
        idx = index(data)
        seasonal = name in SEASONAL_CASES
        rows = SEASONAL_ROWS if seasonal else SOLVER_ORDER
        lines.append(r"\multicolumn{" + str(ncol) +
                     r"}{l}{\textit{" + title + r"}} \\")
        present = {s for (s, _) in idx}
        for solver in rows:
            # Resolve the actual run key for this experiment: the reported
            # rich_lag3 preset where it exists, else the base preset.
            key = next((k for k in SOLVER_KEYS.get(solver, [solver])
                        if k in present), None)
            if key is None:
                continue
            cells = [SOLVER_LABEL[solver]]
            row_runs = []
            for n in NODE_COLS:
                sc = dict(scale_map).get(n)
                r = idx.get((key, sc)) if sc else None
                if sc is None or r is None:
                    cells.append(NOT_RUN)
                else:
                    cells.append(glyph_for(r, seasonal))
                    row_runs.append(r)
            mem = peak_mem_gb(row_runs)
            cells.append(f"{mem:.1f}" if mem is not None else NOT_RUN)
            lines.append(" & ".join(cells) + r" \\")
        lines.append(r"\hline")

    lines.append(r"\end{tabular}")
    lines.append(r"\end{table*}")
    return "\n".join(lines) + "\n"


# ── Table 2: hierarchy-depth sweep ──────────────────────────────────────────

def linear_per_step(r):
    s = r.get("summary") or {}
    ns, lin = s.get("steps_completed"), s.get("total_linear")
    return lin / ns if (ns and lin) else None


def build_hierarchy_table():
    data = load("murr_hierarchy")
    idx = index(data)
    levels = [("L1", "1"), ("L2", "2"), ("L3", "3")]
    solvers = [("gmg", "GMG-H"), ("vlumping_hmg", "VLumping-HMG")]

    lines = []
    lines.append(r"\begin{table}[t]")
    lines.append(r"\caption{Effect of multigrid hierarchy depth at the "
                 r"eight-node Lower Murrumbidgee configuration "
                 r"($\Delta x=620$\,m, 300 layers). For each solver the "
                 r"table lists the linear iterations per timestep and the "
                 r"wall time per timestep as the number of coarsening levels "
                 r"is increased; the fastest depth for each solver is shown "
                 r"in bold. GMG-H is fastest at two levels and degrades "
                 r"beyond it, whereas VLumping-HMG is optimal at a single "
                 r"base-mesh level and is roughly twice as fast at its "
                 r"optimum. Other parameters are as in "
                 r"Table~\ref{tab:solver_outcomes}.}")
    lines.append(r"\label{tab:hierarchy_depth}")
    lines.append(r"\begin{tabular}{lcccccc}")
    lines.append(r"\hline")
    lines.append(r" & \multicolumn{3}{c}{Linear iters / step}"
                 r" & \multicolumn{3}{c}{Wall time / step (s)} \\")
    lines.append(r"Solver & 1 & 2 & 3 & 1 & 2 & 3 \\")
    lines.append(r"\hline")

    for solver, label in solvers:
        iters, walls = [], []
        for lk, _ in levels:
            r = idx.get((solver, lk))
            iters.append(linear_per_step(r) if r and r["outcome"] == "success" else None)
            walls.append((r.get("summary") or {}).get("mean_wall_per_step")
                         if r and r["outcome"] == "success" else None)
        # bold the fastest depth; on a near-tie prefer the shallower hierarchy
        valid = [(i, w) for i, w in enumerate(walls) if w is not None]
        if valid:
            mn = min(w for _, w in valid)
            bold_idx = next(i for i, w in valid if w <= 1.01 * mn)
        else:
            bold_idx = None

        def cell_i(v):
            return f"{v:.0f}" if v is not None else NOT_RUN

        def cell_w(i, v):
            if v is None:
                return NOT_RUN
            s = f"{v:.1f}"
            return r"\textbf{" + s + "}" if i == bold_idx else s

        row = [label] + [cell_i(v) for v in iters] + [cell_w(i, v) for i, v in enumerate(walls)]
        lines.append(" & ".join(row) + r" \\")

    lines.append(r"\hline")
    lines.append(r"\end{tabular}")
    lines.append(r"\end{table}")
    return "\n".join(lines) + "\n"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--outdir", default=str(PAPER_TABLES))
    ap.add_argument("--stdout", action="store_true")
    args = ap.parse_args()

    outdir = Path(args.outdir)
    outdir.mkdir(parents=True, exist_ok=True)

    tables = {
        "solver_outcomes.tex": build_outcomes_table(),
    }
    for fname, tex in tables.items():
        (outdir / fname).write_text(tex)
        print(f"Wrote {outdir / fname}")
        if args.stdout:
            print("-" * 70)
            print(tex)


if __name__ == "__main__":
    main()
