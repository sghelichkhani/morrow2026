#!/usr/bin/env python3
"""Paper scaling figures for Morrow et al. 2026 (fair-comparison redesign).

Three figures, one shared visual grammar (same solver colours/markers,
same fonts), but separate stories. The reported vertically-lumped presets are
the shipped ones everywhere (see the STYLE note below), and their run keys come
from ``reported.py`` so that no figure can draw on a run a table does not.

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

The per-nonlinear-solve cost breakdown lives in
``plot_seasonal_figures.py``, which draws it for the seasonal regime.
``BREAKDOWN_BANDS`` and ``breakdown_per_solve`` below are kept here as the
shared definition of the cost decomposition and are imported from there.

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
# The reported vertically-lumped presets are the shipped ones, `vlumping`,
# `vlumping_linesmooth` and `vlumping_hmg`, each carrying the measured
# Richardson damping and no operator lag. The `_rich_lag3` directories are the
# rejected lagged configuration and must never be plotted as the headline: the
# lag earns nothing in the ordinary regime and costs a factor of four in the
# near-saturated seasonal one (SOLVER-STUDY.md section 0). Plotting them here
# is how the figures came to disagree with the tables, which read the shipped
# directories through `reported.py`.
# Colours, markers and labels come from `reported.py`, the single definition
# of what the paper reports. Run keys come from there too, so a figure and a
# table cannot draw on different runs.
STYLE = {p.key: reported.style(p.key) for p in reported.ALL_REPORTED}
# VLumping-linesmooth is drawn dashed. On the isotropic box its iteration count
# sits within 1 % of VLumping-HMG at every scale, because the two share the
# line smoother and differ only in the coarse solve, so a solid line would hide
# one series completely underneath the other. That agreement is a result worth
# seeing rather than an artefact worth hiding.
STYLE["vlumping_linesmooth"] = dict(STYLE["vlumping_linesmooth"], ls="--")
LW, MS = 1.9, 8.5

# Component colours for the cost-breakdown figure (stacked, one shared legend).
# The five bands partition the per-nonlinear-solve cost and are drawn in this
# order from the bottom of each stack.
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

    A timestep costs one Newton iteration's work times however many Newton
    iterations it takes, so dividing by the Newton count gives the cost of
    the linear solve the preconditioner is responsible for.

    For the presets the paper reports that count does not move with
    resolution: 91 Newton iterations over the 30 isotropic timesteps at
    every node count, and 2.9 to 3.0 per timestep on the basin. (Some
    ablation-only presets do vary, `gamg_asm` among them.) The
    normalisation therefore rescales the curves without changing their
    shape, and per-timestep and per-Newton comparisons rank the presets
    identically. It is kept because the quantity it produces is the one
    the preconditioner controls, not because it corrects for anything."""
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

    Returns a dict with the five bands that account for SNESSolve/solve to
    within about one per cent: PC setup, PC apply, the remaining Krylov work
    (MatMult + orthogonalisation = KSPSolve - PCApply), Jacobian assembly,
    residual eval.

    One "solve" is one SNESSolve call, which is one attempted timestep. A
    timestep that fails is retried at half the step, so the average is taken
    over attempts and not only over the attempts that succeeded. That is the
    honest denominator for a cost-per-solve comparison, because the failed
    attempts are work the run really did.

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

    # PCSetUpOnBlocks is the factorisation of the per-process blocks, and where
    # it belongs depends on the preconditioner. Plain block Jacobi factorises
    # once per preconditioner setup, and PETSc then logs almost nothing under
    # PCSetUp itself, so the event IS the setup and must be counted. A
    # multigrid smoother that rebuilds its blocks on every application logs the
    # event inside the nested MG stage, where it is already part of PCApply;
    # counting it again would put the band sum above SNESSolve. The call count
    # separates the two cases: one call per setup, against many per setup.
    on_blocks = ev.get("PCSetUpOnBlocks", {}).get("count") or 0
    setup_calls = ev.get("PCSetUp", {}).get("count") or 0
    nested_in_apply = on_blocks > 1.5 * setup_calls
    pcsetup = t("PCSetUp") + (0.0 if nested_in_apply else t("PCSetUpOnBlocks"))
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
                    label=st["label"], lw=LW, markersize=MS, zorder=3,
                    ls=st.get("ls", "-"))
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
def panel_letter(ax, letter, y=0.92):
    """Grey-circle panel letter, top-left, matching the Vauclin figure.

    ``y`` is the height in axes coordinates. It is raised by figures whose
    panels carry a curve or an annotation close under the top spine.
    """
    ax.text(
        0.055, y, letter,
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
               "vlumping", "vlumping_linesmooth", "vlumping_hmg"]

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
    # iterative-coarse `vlumping_hmg` appears only in the
    # strong-scaling figure, where its reach past the direct factorisation
    # is the point; §4.2 shows it is not a safe default.
    solvers = ["bjacobi", "gmg",
               "vlumping", "vlumping_linesmooth"]

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
def _dof_per_rank(dof_approx, ranks):
    """Degrees of freedom carried by one MPI rank, as a short label.

    The problem size is fixed in a strong-scaling sweep, so what changes
    with the node count is the share each rank holds. That share, not the
    global count, is what sets whether a rank still has enough local work
    to hide its communication.
    """
    total = float(dof_approx.rstrip("M")) * 1e6
    per = total / ranks
    return f"{per / 1e6:.1f}M" if per >= 1e6 else f"{per / 1e3:.0f}k"


def fig_murr_strong(outdir):
    data = load("murr_strong")
    idx = index(data)
    meta = data["scale_meta"]
    node_scale = [(1, "s1"), (2, "s2"), (4, "s4"), (8, "s8"),
                  (16, "s16"), (32, "s32")]

    # Smaller canvas at larger point sizes. The figure is placed at a
    # fixed fraction of the text width, so a bigger canvas is scaled down
    # further on the page and its text ends up smaller, not larger.
    fig, ax = plt.subplots(figsize=(6.0, 4.4))

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
    # BJac-ILU is deliberately not drawn — it carries no coarse problem,
    # so it has no stake in that question, and the seasonal regime (§4.2) has
    # already settled the head-to-head. The §4 text says so explicitly and
    # states that block-Jacobi was run on this mesh and scales well here.

    # VLumping-HMG (reported `_rich_lag3`): the nested geometric-MG coarse
    # solve carries the sweep past the point where the direct factorisation
    # stops. Drawn to 16 nodes; the 32-node point exists and turns over
    # sharply (108.8 s), which the caption states rather than plots.
    sth = STYLE["vlumping_hmg"]
    xh, yh = pts("vlumping_hmg")
    xh, yh = zip(*[(x, y) for x, y in zip(xh, yh) if x <= np.log2(16)]) \
        if xh else ([], [])
    if xh:
        xr = np.array(xh)
        ideal = yh[0] * 2.0 ** -(xr - xr[0])
        ax.plot(xr, ideal, ls="--", color="gray", lw=1.1, alpha=0.6, zorder=1,
                label="Ideal $1/N$")
        ax.plot(xh, yh, color=sth["color"], marker=sth["marker"], lw=LW,
                markersize=MS, zorder=3, label=sth["label"])

    # VLumping with the DIRECT MUMPS coarse solve. It tracks to s8, then
    # diverges at both s16 and s32, so the line stops at s8. That stop is the
    # direct-coarse limit the nested variant exists to push past.
    xd, yd = pts("vlumping")
    if xd:
        ax.plot(xd, yd, color="#d62728", marker="o", lw=LW, ls=":",
                markersize=MS, markerfacecolor="none", zorder=2,
                label="VLumping (direct coarse)")

    ax.set_yscale("log")
    # The sweep starts at two nodes: the case does not fit in one node's
    # memory, so a one-node column would be an empty quarter of the axis.
    # The caption states that outcome instead.
    shown = [(n, sc) for n, sc in node_scale if 2 <= n <= 16]
    ax.set_xticks([np.log2(n) for n, _ in shown])
    # Three lines per tick: nodes, the ranks they carry, and the share of the
    # fixed problem each rank then holds. The per-rank share is the quantity
    # that decides whether a rank still has enough local work to hide its
    # communication, which is what the turnover at the right-hand end is.
    ax.set_xticklabels([
        f"{n}\n{meta[sc]['cpus']}\n"
        f"{_dof_per_rank(meta[sc]['dof_approx'], meta[sc]['cpus'])}"
        for n, sc in shown])
    # Immediately behind the first tick and past the last, rather than the
    # autoscaled margin.
    ax.set_xlim(np.log2(2) - 0.18, np.log2(16) + 0.18)
    ax.set_xlabel("Compute nodes / MPI ranks / DOF per rank", fontsize=16)
    ax.set_ylabel("Wall time / step (s)", fontsize=16)
    ax.tick_params(labelsize=13.5)
    ax.set_title("Strong scaling — vertically lumped presets",
                 fontsize=15,
                 bbox=dict(boxstyle="round,pad=0.5",
                           facecolor="lightyellow", edgecolor="black"),
                 pad=20)
    ax.grid(True, which="both", alpha=0.3, zorder=0)
    # Pinned: the curves fall from upper left to lower right, so the upper
    # right is the one corner no series passes through. Left to choose for
    # itself, the legend lands on the ideal-scaling line.
    ax.legend(fontsize=13, loc="upper right")
    fig.tight_layout()
    out = outdir / "Murrumbidgee" / "strong_scaling.pdf"
    out.parent.mkdir(parents=True, exist_ok=True)
    save(fig, out)
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


if __name__ == "__main__":
    main()
