#!/usr/bin/env python3
"""Paper scaling figures for Morrow et al. 2026 (redesigned July 2026).

Three figures, one shared visual grammar (same solver colours/markers,
same fonts), but three separate stories:

* ``Cockett2018/cockett_scaling.pdf`` — the ISOTROPIC survey. Two panels
  (wall time, linear iterations) versus nodes/DOF. Many solvers work;
  VLumping is merely competitive. SOR is dropped from the lines (it
  otherwise crushes the axis) and lives only in the outcome table.
* ``Murrumbidgee/weak_scaling.pdf`` — the ANISOTROPIC contribution. A
  2x2: top row horizontal refinement (aspect ratio falls), bottom row
  vertical layer growth (aspect ratio climbs); columns are wall time and
  linear iterations. VLumping stays flat whichever way anisotropy is
  stressed.
* ``Murrumbidgee/strong_scaling.pdf`` — the extreme-scale reach: plain
  VLumping over 2-8 nodes tracking ideal 1/N, then the single
  VLumping-HMG point that reaches 3328 cores where the direct coarse
  factorisation of plain VLumping runs out of memory.

Non-converging solvers (SOR, GAMG, BoomerAMG, and timed-out runs) are
NOT drawn as floor markers any more; their outcomes are in
``Tables/solver_outcomes.tex`` (see make_tables.py).

    python3 plot_paper_figures.py                 # write PDFs into ../figures
    python3 plot_paper_figures.py --outdir /tmp   # elsewhere
"""

import argparse
import json
from pathlib import Path

import matplotlib
import matplotlib.pyplot as plt
import numpy as np

FIG_ROOT = Path(__file__).resolve().parent.parent / "figures"
PARSED = Path(__file__).resolve().parent / "parsed"

# ── Shared grammar: solver colour / marker / label ──────────────────────────
STYLE = {
    "bjacobi":          dict(color="#000000", marker="d", label="BJacobi"),
    "gmg":              dict(color="#2ca02c", marker="P", label="GMG-H"),
    "boomeramg":        dict(color="#1f77b4", marker="D", label="BoomerAMG"),
    "vlumping_inexact": dict(color="#d62728", marker="o", label="VLumping"),
    "vlumping_hmg":     dict(color="#3182bd", marker="X", label="VLumping-HMG"),
}
LW, MS = 1.9, 8.5

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
        0.08, 0.92, letter,
        transform=ax.transAxes, ha="center", va="center",
        fontsize=16, zorder=5,
        bbox=dict(boxstyle="circle,pad=0.3",
                  facecolor="lightgrey", edgecolor="black"),
    )


def fig_cockett(outdir):
    idx = index(load("cockett"))
    scales = ["sweep", "medium", "large", "huge"]
    xlabels = ["1N\n18M", "2N\n36M", "4N\n72M", "8N\n144M"]
    solvers = ["bjacobi", "gmg", "boomeramg", "vlumping_inexact", "vlumping_hmg"]

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
    fig.savefig(out, bbox_inches="tight", pad_inches=0.25)
    plt.close(fig)
    print(f"  saved {out}")


# ── Figure B: Murrumbidgee anisotropic weak scaling (2x2) ────────────────────
def fig_murr_weak(outdir):
    ih = index(load("murr_horizontal"))
    iv = index(load("murr_vertical"))
    solvers = ["bjacobi", "gmg", "vlumping_inexact", "vlumping_hmg"]

    hscales = ["h1", "h2", "h4", "h8"]
    hlabels = ["1N\n1775 m\n1000:1", "2N\n1250 m\n700:1",
               "4N\n880 m\n500:1", "8N\n620 m\n350:1"]
    vscales = ["smoke", "sweep", "medium", "large"]
    vlabels = ["1N\n150 L\n500:1", "2N\n300 L\n1000:1",
               "4N\n600 L\n2000:1", "8N\n1200 L\n4000:1"]

    fig, axes = plt.subplots(2, 2, figsize=(9.4, 7.6))

    # Top row: horizontal refinement (aspect ratio falls).
    draw(axes[0, 0], ih, solvers, hscales, wall_per_newton, log=True)
    axes[0, 0].set_ylabel("Wall time / Newton step (s)")
    axes[0, 0].set_title("(a) Horizontal refinement — wall time")
    draw(axes[0, 1], ih, solvers, hscales, linear_per_newton)
    axes[0, 1].set_ylabel("Linear iters / Newton step")
    axes[0, 1].set_title("(b) Horizontal refinement — iterations")
    for ax in axes[0]:
        ax.set_xticks(range(len(hscales)))
        ax.set_xticklabels(hlabels)
        ax.set_xlabel("Nodes / $\\Delta x$ / aspect ratio")
        ax.margins(x=0.08)

    # Bottom row: vertical layer growth (aspect ratio climbs).
    draw(axes[1, 0], iv, solvers, vscales, wall_per_newton, log=True)
    axes[1, 0].set_ylabel("Wall time / Newton step (s)")
    axes[1, 0].set_title("(c) Vertical refinement — wall time")
    draw(axes[1, 1], iv, solvers, vscales, linear_per_newton)
    axes[1, 1].set_ylabel("Linear iters / Newton step")
    axes[1, 1].set_title("(d) Vertical refinement — iterations")
    for ax in axes[1]:
        ax.set_xticks(range(len(vscales)))
        ax.set_xticklabels(vlabels)
        ax.set_xlabel("Nodes / layers / aspect ratio")
        ax.margins(x=0.08)

    fig.subplots_adjust(left=0.10, right=0.985, top=0.91, bottom=0.14,
                        hspace=0.45, wspace=0.26)

    h, l = legend_handles(axes)
    fig.legend(h, l, loc="lower center", ncol=len(l),
               bbox_to_anchor=(0.5, -0.005))
    out = outdir / "Murrumbidgee" / "weak_scaling.pdf"
    out.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(out, bbox_inches="tight")
    plt.close(fig)
    print(f"  saved {out}")


# ── Figure C: Murrumbidgee strong scaling (extreme reach) ────────────────────
def fig_murr_strong(outdir):
    idx = index(load("murr_strong"))
    node_scale = [(1, "s1"), (2, "s2"), (4, "s4"), (8, "s8"),
                  (16, "s16"), (32, "s32")]

    fig, ax = plt.subplots(figsize=(6.2, 4.6))

    def pts(solver):
        xs, ys = [], []
        for n, sc in node_scale:
            r = idx.get((solver, sc))
            if r and r["outcome"] == "success":
                w = mean_wall(r)
                if w is not None:
                    xs.append(np.log2(n))
                    ys.append(w)
        return xs, ys

    # Plain VLumping carries the tractable 2-8 node regime.
    st = STYLE["vlumping_inexact"]
    xs, ys = pts("vlumping_inexact")
    ax.plot(xs, ys, color=st["color"], marker=st["marker"], lw=LW,
            markersize=MS, zorder=3, label="VLumping")

    # Ideal 1/N reference over the tractable range, anchored at 2 nodes.
    if xs:
        xr = np.array(xs)
        ideal = ys[0] * 2.0 ** -(xr - xr[0])
        ax.plot(xr, ideal, ls="--", color="gray", lw=1.1, alpha=0.6, zorder=1,
                label="Ideal $1/N$ (2$\\to$8 nodes)")

    # The single VLumping-HMG point that reaches 3328 cores.
    sth = STYLE["vlumping_hmg"]
    xh, yh = pts("vlumping_hmg")
    if xh:
        ax.plot(xh, yh, color=sth["color"], marker=sth["marker"],
                markersize=MS + 3, linestyle="none", zorder=4,
                label="VLumping-HMG (32 nodes)")

    ax.set_yscale("log")
    ax.set_xticks([np.log2(n) for n, _ in node_scale])
    ax.set_xticklabels([str(n) for n, _ in node_scale])
    ax.set_xlabel("Nodes (104 cores each)")
    ax.set_ylabel("Wall time / step (s)")
    ax.set_title("Fixed $3.2\\times10^{8}$ DOF ($\\Delta x=620$ m, 300 layers)")
    ax.grid(True, which="both", alpha=0.3, zorder=0)
    ax.legend()
    fig.tight_layout()
    out = outdir / "Murrumbidgee" / "strong_scaling.pdf"
    out.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(out, bbox_inches="tight")
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
