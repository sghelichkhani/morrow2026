#!/usr/bin/env python3
"""Paper scaling figures for Morrow et al. 2026 (fair-comparison redesign).

Four figures, one shared visual grammar (same solver colours/markers,
same fonts), but separate stories. The reported vertically-lumped presets
are the ``_rich_lag3`` variants everywhere (see the STYLE note below).

* ``Cockett2018/cockett_scaling.pdf`` — the ISOTROPIC survey. Two panels
  (wall time, linear iterations) versus nodes/DOF over a genuine 1/2/4/8
  node curve (18/36/72/144M DOF). Many solvers work; block-Jacobi is
  fastest on wall time but its iteration count explodes, and VLumping is
  deliberately not the winner. SOR is dropped from the lines (it crushes
  the axis) and lives only in the outcome table.
* ``Murrumbidgee/weak_scaling.pdf`` — the ANISOTROPIC contribution. A
  2x2: top row horizontal refinement (aspect ratio falls), bottom row
  vertical layer growth (aspect ratio climbs); columns are wall time and
  linear iterations. VLumping holds the lowest, flat iteration count
  whichever way anisotropy is stressed; block-Jacobi is fastest on wall.
* ``Murrumbidgee/strong_scaling.pdf`` — the extreme-scale reach. Block-
  Jacobi scales near-ideally to 32 nodes / 3328 cores and heads the
  figure; VLumping-HMG edges it at 2 nodes, tracks to 16, then turns over
  at 32 as the fixed 2-D coarse solve goes communication-bound; the
  direct-coarse VLumping variant stops at 8 nodes (walltime at 16,
  diverged at 32).
* ``Murrumbidgee/time_breakdown.pdf`` — WHERE the time goes. A 2x2 stacked
  breakdown of the per-nonlinear-solve cost (rows = solver, columns =
  weak-scaling experiment) from the -log_view profile: block-Jacobi's
  Krylov/MatMult band balloons (cheap iterations, but many), VLumping's
  PC-apply band (the coarse solve) dominates at a flat iteration count.

Non-converging solvers (SOR, GAMG, BoomerAMG, and timed-out runs) are
NOT drawn as floor markers any more; their outcomes are in
``Tables/solver_outcomes.tex`` (see make_tables.py).

    python3 plot_paper_figures.py                 # write PDFs into ../figures
    python3 plot_paper_figures.py --outdir /tmp   # elsewhere
"""

import argparse
import json
from pathlib import Path

import reported

import matplotlib
import matplotlib.pyplot as plt
import numpy as np
from figstyle import save

FIG_ROOT = Path(__file__).resolve().parent.parent / "figures"
PARSED = Path(__file__).resolve().parent / "parsed"

# ── Shared grammar: solver colour / marker / label ──────────────────────────
# The reported vertically-lumped presets are the setup-cost-reduced variants
# (`_rich_lag3`: derived-Richardson smoother + lag-3 operator snapshot). They
# are the canonical "VLumping" / "VLumping-HMG" everywhere in the paper — the
# base `vlumping_inexact` / `vlumping_hmg` presets are never plotted as the
# headline. The reader does not need the `_rich_lag3` detail in the legend; the
# setup-cost variant is explained in the §4 text.
# Colours, markers and labels come from `reported.py`, the single definition
# of what the paper reports; the values there are the ones these figures
# already used, so routing through it does not change any figure. Historical
# run keys alias onto the preset they became, so a figure still draws from an
# older parsed record.
STYLE = {p.key: reported.style(p.key) for p in reported.ALL_REPORTED}
STYLE.update({
    "vlumping_inexact": STYLE["vlumping"],
    "vlumping_inexact_rich": STYLE["vlumping"],
    "vlumping_inexact_rich_lag3": STYLE["vlumping"],
    "vlumping_hmg_rich": STYLE["vlumping_hmg"],
    "vlumping_hmg_rich_lag3": STYLE["vlumping_hmg"],
})
LW, MS = 1.9, 8.5

# Component colours for the time-breakdown figure (stacked, one shared legend).
BREAKDOWN_BANDS = [
    ("pcsetup",  "PC setup",          "#9ecae1"),
    ("pcapply",  "PC apply",          "#3182bd"),
    ("kspother", "Krylov (MatMult)",  "#e6550d"),
    ("jac",      "Jacobian assembly", "#74c476"),
    ("fun",      "Residual eval",     "#c7c7c7"),
]

# Times everywhere (text and math), sized up for the paper.
plt.rcParams.update({
    "font.family": "serif",
    "font.serif": ["Times New Roman", "Times", "DejaVu Serif"],
    "mathtext.fontset": "stix",
    "font.size": 15,
    "axes.titlesize": 17,
    "axes.labelsize": 17,
    "legend.fontsize": 15,
    "xtick.labelsize": 13,
    "ytick.labelsize": 13,
})


# ── Data access ─────────────────────────────────────────────────────────────
def load(name):
    with open(PARSED / f"{name}.json") as f:
        return json.load(f)


def index(data):
    return {(r["header"].get("solver"), r["header"].get("scale")): r
            for r in data["runs"]}


def mean_wall(r):
    return (r.get("summary") or {}).get("mean_wall_per_step")


def _nl_per_step(r):
    s = r.get("summary") or {}
    ns, nl = s.get("steps_completed"), s.get("total_nl")
    return nl / ns if (ns and nl) else None


def wall_per_newton(r):
    """Wall time per Newton (nonlinear) step.

    The raw per-timestep cost is quantised by the number of Newton steps
    a timestep takes, which is gated by the absolute SNES tolerance and
    so lands an extra whole Newton iteration on the coarsest (1-node)
    mesh in every weak-scaling sweep (start-of-step residual ~1.4x
    larger -> after one Newton step it sits just above snes_atol=1e-8 and
    a second step fires). Dividing by the Newton count removes that
    tolerance artefact and exposes the true per-solve scaling."""
    w = mean_wall(r)
    nlps = _nl_per_step(r)
    return w / nlps if (w is not None and nlps) else None


def linear_per_newton(r):
    """Krylov (linear) iterations per Newton step = total_linear/total_nl."""
    s = r.get("summary") or {}
    nl, lin = s.get("total_nl"), s.get("total_linear")
    return lin / nl if (nl and lin) else None


def breakdown_per_solve(r):
    """Decompose one run's cost into per-SNES-solve seconds from the profile.

    Returns a dict with the five bands that sum to ~SNESSolve/solve (which is
    ~93 % of wall): PC setup, PC apply, the remaining Krylov work (MatMult +
    orthogonalisation = KSPSolve - PCApply), Jacobian assembly, residual eval.
    ``None`` when the run carries no ``-log_view`` profile."""
    p = r.get("profile")
    if not p:
        return None
    ev = p["events"]
    n = ev.get("SNESSolve", {}).get("count")
    if not n:
        return None

    def t(k):
        return ev.get(k, {}).get("time_s", 0.0)

    pcsetup = t("PCSetUp") + t("PCSetUpOnBlocks")
    pcapply = t("PCApply")
    kspother = max(t("KSPSolve") - pcapply, 0.0)
    jac = t("SNESJacobianEval")
    fun = t("SNESFunctionEval")
    return {"pcsetup": pcsetup / n, "pcapply": pcapply / n,
            "kspother": kspother / n, "jac": jac / n, "fun": fun / n,
            "snes": t("SNESSolve") / n}


def series(idx, solver, scales, metric):
    """Return (x_positions, values) for the converged runs of one solver."""
    xs, ys = [], []
    for i, sc in enumerate(scales):
        r = idx.get((solver, sc))
        if r is None or r["outcome"] != "success":
            continue
        v = metric(r)
        if v is not None:
            xs.append(i)
            ys.append(v)
    return xs, ys


def draw(ax, idx, solvers, scales, metric, *, log=False):
    for s in solvers:
        st = STYLE[s]
        xs, ys = series(idx, s, scales, metric)
        if xs:
            ax.plot(xs, ys, color=st["color"], marker=st["marker"],
                    label=st["label"], lw=LW, markersize=MS, zorder=3)
    if log:
        ax.set_yscale("log")
    ax.grid(True, which="both", alpha=0.3, zorder=0)


def legend_handles(axes):
    h, l = [], []
    for ax in np.atleast_1d(axes).flat:
        for hh, ll in zip(*ax.get_legend_handles_labels()):
            if ll not in l:
                h.append(hh)
                l.append(ll)
    return h, l


# ── Figure A: Cockett isotropic survey ──────────────────────────────────────
def panel_letter(ax, letter):
    """Grey-circle panel letter, top-left, matching the Vauclin figure."""
    ax.text(
        0.055, 0.92, letter,
        transform=ax.transAxes, ha="center", va="center",
        fontsize=16, zorder=5,
        bbox=dict(boxstyle="circle,pad=0.3",
                  facecolor="lightgrey", edgecolor="black"),
    )


def fig_cockett(outdir):
    idx = index(load("cockett"))
    # Genuine 1/2/4/8-node weak-scaling curve after the fair_gap_fix: `large`
    # is now a real 4-node/72M point and `huge` the 8-node/144M point (before
    # the fix `large`==`huge` were the same 8-node mesh, so the 4-node point
    # was missing and the third column was mislabelled).
    scales = ["sweep", "medium", "large", "huge"]
    xlabels = ["1N\n18M", "2N\n36M", "4N\n72M", "8N\n144M"]
    solvers = ["bjacobi", "gmg", "boomeramg",
               "vlumping_inexact_rich_lag3", "vlumping_hmg_rich_lag3"]

    fig, axes = plt.subplots(1, 2, figsize=(12.0, 5.4))
    draw(axes[0], idx, solvers, scales, wall_per_newton, log=True)
    axes[0].set_ylabel("Wall time / Newton step (s)")
    panel_letter(axes[0], "A")
    draw(axes[1], idx, solvers, scales, linear_per_newton)
    panel_letter(axes[1], "B")

    # Panel B carries its y-axis on the right so the two panels sit flush;
    # its label reads top-to-bottom (rotated 180 from the left-panel label).
    axes[1].yaxis.set_label_position("right")
    axes[1].yaxis.tick_right()
    axes[1].set_ylabel("Linear iters / Newton step", rotation=270, labelpad=28)

    for ax in axes:
        ax.set_xticks(range(len(scales)))
        ax.set_xticklabels(xlabels)
        ax.set_xlabel("Nodes / degrees of freedom")
        ax.margins(x=0.08)

    fig.text(0.5, 1.03,
             "Weak scaling — isotropic infiltration benchmark "
             "(Cockett et al., 2018)",
             ha="center", va="center", fontsize=17, zorder=5,
             bbox=dict(boxstyle="round,pad=0.5",
                       facecolor="lightyellow", edgecolor="black"))

    h, l = legend_handles(axes)
    fig.legend(h, l, loc="upper center", ncol=len(l),
               bbox_to_anchor=(0.5, 0.99),
               columnspacing=1.3, handletextpad=0.5)
    fig.subplots_adjust(left=0.08, right=0.92, top=0.9, bottom=0.1, wspace=0.06)
    out = outdir / "Cockett2018" / "cockett_scaling.pdf"
    out.parent.mkdir(parents=True, exist_ok=True)
    save(fig, out, pad_inches=0.25)
    plt.close(fig)
    print(f"  saved {out}")


# ── Figure B: Murrumbidgee anisotropic weak scaling (2x2) ────────────────────
def fig_murr_weak(outdir):
    ih = index(load("murr_horizontal"))
    iv = index(load("murr_vertical"))
    # The two reported lumped presets are the DIRECT-coarse pair. The
    # iterative-coarse `vlumping_hmg_rich_lag3` appears only in the
    # strong-scaling figure, where its reach past the direct factorisation
    # is the point; §4.2 shows it is not a safe default.
    solvers = ["bjacobi", "gmg",
               "vlumping_inexact_rich_lag3", "vlumping_linesmooth"]

    hscales = ["h1", "h2", "h4", "h8"]
    hlabels = ["1N\n1775 m\n1000:1", "2N\n1250 m\n700:1",
               "4N\n880 m\n500:1", "8N\n620 m\n350:1"]
    vscales = ["smoke", "sweep", "medium", "large"]
    vlabels = ["1N\n150 L\n500:1", "2N\n300 L\n1000:1",
               "4N\n600 L\n2000:1", "8N\n1200 L\n4000:1"]

    # Columns = refinement direction (each shares one x-axis down the
    # column); rows = metric (wall time on top, iterations below), with a
    # shared y-axis across each row so the two refinement directions read
    # on the same scale (right-column tick labels are then redundant).
    fig, axes = plt.subplots(2, 2, figsize=(9.6, 7.4),
                             sharex="col", sharey="row")

    # Yellow beveled box for the column (refinement-direction) titles.
    title_box = dict(boxstyle="round,pad=0.4",
                     facecolor="lightyellow", edgecolor="black")

    # Left column: horizontal refinement (aspect ratio falls).
    draw(axes[0, 0], ih, solvers, hscales, wall_per_newton, log=True)
    axes[0, 0].set_title("Horizontal refinement", bbox=title_box, pad=15)
    draw(axes[1, 0], ih, solvers, hscales, linear_per_newton)
    panel_letter(axes[0, 0], "A")
    panel_letter(axes[1, 0], "B")

    # Right column: vertical layer growth (aspect ratio climbs).
    draw(axes[0, 1], iv, solvers, vscales, wall_per_newton, log=True)
    axes[0, 1].set_title("Vertical refinement", bbox=title_box, pad=15)
    draw(axes[1, 1], iv, solvers, vscales, linear_per_newton)
    panel_letter(axes[0, 1], "C")
    panel_letter(axes[1, 1], "D")

    # Row y-labels (left column carries the metric name), pinned to a
    # fixed x so the wall-time and iterations labels align vertically.
    axes[0, 0].set_ylabel("Wall time / Newton step (s)")
    axes[1, 0].set_ylabel("Linear iters / Newton step")
    axes[0, 0].yaxis.set_label_coords(-0.14, 0.5)
    axes[1, 0].yaxis.set_label_coords(-0.14, 0.5)

    # Only the bottom panels carry the (shared) x ticks + label.
    axes[1, 0].set_xticks(range(len(hscales)))
    axes[1, 0].set_xticklabels(hlabels)
    axes[1, 0].set_xlabel("Nodes / $\\Delta x$ / aspect ratio")
    axes[1, 1].set_xticks(range(len(vscales)))
    axes[1, 1].set_xticklabels(vlabels)
    axes[1, 1].set_xlabel("Nodes / layers / aspect ratio")
    for ax in axes.flat:
        ax.margins(x=0.08)

    # Tight hspace so each column's wall-time / iterations panels butt
    # together over their shared x-axis.
    fig.subplots_adjust(left=0.10, right=0.985, top=0.88, bottom=0.11,
                        hspace=0.06, wspace=0.06)

    fig.text(0.5425, 1.07,
             "Weak scaling — anisotropic Lower Murrumbidgee basin",
             ha="center", va="center", fontsize=17, zorder=5,
             bbox=dict(boxstyle="round,pad=0.5",
                       facecolor="lightyellow", edgecolor="black"))

    h, l = legend_handles(axes)
    fig.legend(h, l, loc="upper center", ncol=len(l),
               bbox_to_anchor=(0.5425, 1.015))
    out = outdir / "Murrumbidgee" / "weak_scaling.pdf"
    out.parent.mkdir(parents=True, exist_ok=True)
    save(fig, out, pad_inches=0.2)
    plt.close(fig)
    print(f"  saved {out}")


# ── Figure C: Murrumbidgee strong scaling (extreme reach) ────────────────────
def fig_murr_strong(outdir):
    idx = index(load("murr_strong"))
    node_scale = [(1, "s1"), (2, "s2"), (4, "s4"), (8, "s8"),
                  (16, "s16"), (32, "s32")]

    fig, ax = plt.subplots(figsize=(6.6, 4.8))

    def pts(solver):
        """(log2 node, wall/step) for the successfully-completed points."""
        xs, ys = [], []
        for n, sc in node_scale:
            r = idx.get((solver, sc))
            if r and r["outcome"] == "success":
                w = mean_wall(r)
                if w is not None:
                    xs.append(np.log2(n))
                    ys.append(w)
        return xs, ys

    # Scope: this experiment asks how far the VERTICALLY LUMPED construction
    # can be decomposed, and what separates its two coarse-solve strategies.
    # Block-Jacobi is deliberately not drawn — it carries no coarse problem,
    # so it has no stake in that question, and the seasonal regime (§4.2) has
    # already settled the head-to-head. The §4 text says so explicitly and
    # states that block-Jacobi was run on this mesh and scales well here.

    # VLumping-HMG (reported `_rich_lag3`): the nested geometric-MG coarse
    # solve carries the sweep past the point where the direct factorisation
    # stops. Drawn to 16 nodes; the 32-node point exists and turns over
    # sharply (108.8 s), which the caption states rather than plots.
    sth = STYLE["vlumping_hmg_rich_lag3"]
    xh, yh = pts("vlumping_hmg_rich_lag3")
    xh, yh = zip(*[(x, y) for x, y in zip(xh, yh) if x <= np.log2(16)]) \
        if xh else ([], [])
    if xh:
        xr = np.array(xh)
        ideal = yh[0] * 2.0 ** -(xr - xr[0])
        ax.plot(xr, ideal, ls="--", color="gray", lw=1.1, alpha=0.6, zorder=1,
                label="Ideal $1/N$")
        ax.plot(xh, yh, color=sth["color"], marker=sth["marker"], lw=LW,
                markersize=MS, zorder=3, label=sth["label"])

    # VLumping with the DIRECT MUMPS coarse solve (base `vlumping_inexact` —
    # no `_rich_lag3` run exists at the strong scales). It tracks to s8, then
    # hits the walltime cap at s16 and diverges at s32, so the line stops at
    # s8: that stop is the direct-coarse limit the nested variant exists to
    # push past.
    xd, yd = pts("vlumping_inexact")
    if xd:
        ax.plot(xd, yd, color="#d62728", marker="o", lw=LW, ls=":",
                markersize=MS, markerfacecolor="none", zorder=2,
                label="VLumping (direct coarse)")

    ax.set_yscale("log")
    shown = [(n, sc) for n, sc in node_scale if n <= 16]
    ax.set_xticks([np.log2(n) for n, _ in shown])
    ax.set_xticklabels([str(n) for n, _ in shown])
    ax.set_xlabel("Compute nodes (104 cores each)", fontsize=14)
    ax.set_ylabel("Wall time / step (s)", fontsize=14)
    ax.tick_params(labelsize=12)
    ax.set_title("Strong scaling — vertically lumped presets",
                 fontsize=13,
                 bbox=dict(boxstyle="round,pad=0.5",
                           facecolor="lightyellow", edgecolor="black"),
                 pad=12)
    ax.grid(True, which="both", alpha=0.3, zorder=0)
    ax.legend(fontsize=11)
    fig.tight_layout()
    out = outdir / "Murrumbidgee" / "strong_scaling.pdf"
    out.parent.mkdir(parents=True, exist_ok=True)
    save(fig, out)
    plt.close(fig)
    print(f"  saved {out}")


# ── Figure D: where the time goes (stacked cost breakdown) ───────────────────
def fig_time_breakdown(outdir):
    """Per-solve wall-time decomposition versus nodes/DOF, weak scaling.

    Rows = solver (BJacobi / VLumping-HMG); columns = refinement direction
    (horizontal / vertical). Each column carries its own y-scale (shared down
    the column so the two solvers are directly comparable for that experiment)
    — the vertical solves are much cheaper, so a common scale would flatten
    them. Each panel stacks the five cost bands so the reader sees *where* the time
    goes as the problem weak-scales: BJacobi's Krylov/MatMult band balloons
    (many cheap iterations), while VLumping's PC-apply band (the coarse solve)
    dominates at a near-flat iteration count. The bands sum to SNESSolve/solve
    (~93 % of wall)."""
    solvers = [("bjacobi", "BJacobi"),
               ("vlumping_hmg_rich_lag3", "VLumping-HMG")]
    experiments = [
        ("murr_horizontal", ["h1", "h2", "h4", "h8"],
         ["1N\n40M", "2N\n80M", "4N\n160M", "8N\n320M"], "Horizontal refinement"),
        ("murr_vertical", ["smoke", "sweep", "medium", "large"],
         ["1N\n20M", "2N\n40M", "4N\n80M", "8N\n160M"], "Vertical refinement"),
    ]
    data = {exp: index(load(exp)) for exp, *_ in experiments}

    # Share x down each column; y is shared per column (set explicitly below)
    # so the left and right columns keep independent scales.
    fig, axes = plt.subplots(2, 2, figsize=(10.4, 8.4), sharex="col")
    title_box = dict(boxstyle="round,pad=0.4",
                     facecolor="lightyellow", edgecolor="black")
    letters = [["A", "B"], ["C", "D"]]

    for ri, (solver, sname) in enumerate(solvers):
        for ci, (exp, scales, xlabels, etitle) in enumerate(experiments):
            ax = axes[ri, ci]
            idx = data[exp]
            xs = np.arange(len(scales))
            stacks = []
            for sc in scales:
                r = idx.get((solver, sc))
                bd = breakdown_per_solve(r) if (r and r["outcome"] == "success") else None
                stacks.append(bd)
            # Filled stacked areas across the node axis (one band per cost).
            band_series = [np.array([(bd[key] if bd else 0.0) for bd in stacks])
                           for key, _, _ in BREAKDOWN_BANDS]
            colours = [c for _, _, c in BREAKDOWN_BANDS]
            ax.stackplot(xs, *band_series, colors=colours, edgecolor="white",
                         linewidth=0.6, zorder=3)
            # Thin line for the true SNESSolve total (the ~7 % over the band
            # sum is the wall outside the nonlinear solve: I/O, checkpoint).
            tot = np.array([bd["snes"] if bd else np.nan for bd in stacks])
            ax.plot(xs, tot, color="black", lw=1.2, ls="--", zorder=6)

            if ri == 0:
                ax.set_title(f"{etitle}", bbox=title_box, pad=10)
            panel_letter(ax, letters[ri][ci])
            ax.set_xticks(xs)
            ax.set_xticklabels(xlabels)
            ax.set_xlim(xs[0], xs[-1])
            ax.margins(x=0)
            if ci == 0:
                ax.set_ylabel("Time / nonlinear solve (s)")
            else:
                # Right column carries its own (larger) scale, so put its
                # axis and label on the right-hand side.
                ax.yaxis.set_label_position("right")
                ax.yaxis.tick_right()
                ax.set_ylabel("Time / nonlinear solve (s)",
                              rotation=270, labelpad=20)

    for ax in axes[1, :]:
        ax.set_xlabel("Nodes / degrees of freedom")

    # Per-column y-scale: both solvers in a column share one limit (so they
    # are comparable), but the two columns differ (the vertical column is
    # much cheaper and gets its own, expanded scale). Right column keeps its
    # own tick labels since the scale is not the left one's.
    for ci in range(2):
        top = max(axes[0, ci].get_ylim()[1], axes[1, ci].get_ylim()[1])
        for ri in range(2):
            axes[ri, ci].set_ylim(0, top)

    # Grid overlaid ON TOP of the filled stacks. ax.grid()'s zorder is not
    # honoured against a stackplot PolyCollection, so draw the lines as
    # explicit axvline/axhline artists at the tick positions instead. Done
    # after a draw() so the y tick locations are final.
    fig.canvas.draw()
    for ax in axes.flat:
        y0, y1 = ax.get_ylim()
        for yt in ax.get_yticks():
            if y0 <= yt <= y1:
                ax.axhline(yt, color="0.4", lw=0.7, alpha=0.6, zorder=5)
        for xt in ax.get_xticks():
            ax.axvline(xt, color="0.4", lw=0.7, alpha=0.6, zorder=5)

    fig.subplots_adjust(left=0.15, right=0.92, top=0.76, bottom=0.08,
                        hspace=0.06, wspace=0.19)

    # Solver (the "simulation") named in a light-blue box down the left side,
    # one per row — mirrors the yellow experiment titles across the top.
    row_box = dict(boxstyle="round,pad=0.4",
                   facecolor="lightblue", edgecolor="black")
    for ri, (solver, sname) in enumerate(solvers):
        pos = axes[ri, 0].get_position()
        fig.text(0.048, pos.y0 + pos.height / 2, sname, rotation=90,
                 ha="center", va="center", fontsize=15, bbox=row_box)

    fig.text(0.535, 0.985,
             "Cost breakdown per nonlinear solve — weak scaling",
             ha="center", va="center", fontsize=17, zorder=5,
             bbox=dict(boxstyle="round,pad=0.5",
                       facecolor="lightyellow", edgecolor="black"))
    from matplotlib.patches import Patch
    from matplotlib.lines import Line2D
    handles = [Patch(facecolor=c, edgecolor="white", label=lab)
               for _, lab, c in BREAKDOWN_BANDS]
    handles.append(Line2D([0], [0], color="black", lw=1.2, ls="--",
                          label="SNESSolve total"))
    fig.legend(handles=handles, loc="upper center", ncol=3,
               bbox_to_anchor=(0.535, 0.925), columnspacing=1.6,
               handletextpad=0.5, frameon=True, fancybox=False,
               edgecolor="black", framealpha=1.0)

    out = outdir / "Murrumbidgee" / "time_breakdown.pdf"
    out.parent.mkdir(parents=True, exist_ok=True)
    save(fig, out, pad_inches=0.2)
    plt.close(fig)
    print(f"  saved {out}")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--outdir", default=str(FIG_ROOT))
    args = ap.parse_args()
    matplotlib.use("Agg")
    outdir = Path(args.outdir)
    print("=== Cockett (isotropic survey) ===")
    fig_cockett(outdir)
    print("=== Murrumbidgee (anisotropic weak scaling) ===")
    fig_murr_weak(outdir)
    print("=== Murrumbidgee (strong scaling) ===")
    fig_murr_strong(outdir)
    print("=== Murrumbidgee (cost breakdown) ===")
    fig_time_breakdown(outdir)


if __name__ == "__main__":
    main()
