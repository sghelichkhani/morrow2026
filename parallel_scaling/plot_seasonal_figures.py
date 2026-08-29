#!/usr/bin/env python3
"""Seasonal-regime scaling figures for Morrow et al. 2026.

Three figures, sharing the visual grammar of ``plot_paper_figures.py``:

* ``Murrumbidgee/seasonal_weak.pdf`` — the paper's main scaling figure.
  The graded seasonal regime (3-month dt cap, water table +5 m, retention
  flattened by 3) over the horizontal weak-scaling ladder h1..h8. Three
  panels: linear iterations per Newton step, the maximum sustained
  timestep, and the wall time per simulated year. Block-Jacobi's
  admissible step collapses with horizontal refinement; the two
  direct-coarse vertically lumped presets hold the full three-month step
  at a flat, low iteration count and are the fastest in wall clock.
* ``Murrumbidgee/seasonal_saturated.pdf`` — the companion regime (water
  table +10 m, retention flattened by 10), where block-Jacobi takes no
  successful step at any scale.
* ``Murrumbidgee/seasonal_breakdown.pdf`` — where the time goes in the
  regime block-Jacobi cannot solve, from the -log_view profiles.

Points drawn with an OPEN marker in the timestep panels sit on the
3-month cap: those runs are limited by the cap we imposed, not by the
solver, so their true ceiling is unmeasured. Filled markers are genuine,
solver-limited ceilings.

    python3 plot_seasonal_figures.py                 # write into ../figures
    python3 plot_seasonal_figures.py --outdir /tmp
"""

import argparse
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

from figstyle import save
from plot_paper_figures import (
    BREAKDOWN_BANDS, LW, MS, STYLE, breakdown_per_solve, index,
    legend_handles, linear_per_newton, load, panel_letter,
)

FIG_ROOT = Path(__file__).resolve().parent.parent / "figures"

# The seasonal campaign reports the two DIRECT-coarse lumped presets. The
# iterative-coarse `vlumping_hmg_rich_lag3` is excluded: it thrashes here
# (graded h1 never sustains a step past 9.9 d) and is not a recommended
# default. It survives in the paper only in the strong-scaling experiment.
SOLVERS = ["bjacobi", "gmg",
           "vlumping_inexact_rich_lag3", "vlumping_linesmooth"]
SCALES = ["h1", "h2", "h4", "h8"]
DT_CAP_D = 8035200 / 86400.0          # the imposed 3-month ceiling, in days
FAIL_COLOUR = "#b2182b"

STYLE.setdefault(
    "vlumping_linesmooth",
    dict(color="#9467bd", marker="s", label="VLumping-linesmooth"),
)


# ── Metrics ─────────────────────────────────────────────────────────────────
def max_sustained_dt_d(r):
    """Largest timestep the run actually completed, in days."""
    dts = [s["dt_s"] for s in r.get("steps", [])]
    return max(dts) / 86400.0 if dts else None


def _hms(s):
    if not s:
        return None
    h, m, sec = (int(x) for x in s.split(":"))
    return h * 3600 + m * 60 + sec


def wall_h_per_sim_year(r):
    """PBS wall time per simulated year.

    The runs stop on the first step past t_final, so they finish at
    different simulated times (468-545 d). Raw wall time is therefore not
    comparable between presets; normalising by the simulated time is.
    """
    w = _hms((r.get("pbs") or {}).get("walltime_used"))
    sim_d = (r.get("summary") or {}).get("sim_time_d")
    if not (w and sim_d):
        return None
    return (w / 3600.0) / (sim_d / 365.0)


def scale_labels(data):
    """Two-line tick label: horizontal resolution over node/DOF count."""
    meta = data["scale_meta"]
    out = []
    for sc in SCALES:
        m = meta[sc]
        out.append(f"{m['horiz_res']} m\n{m['nodes']}N / {m['dof_approx']}")
    return out


# ── Drawing ─────────────────────────────────────────────────────────────────
def draw_metric(ax, idx, metric, *, cap=None, stagger=0.0):
    """Plot one metric for every solver that has a successful run.

    With ``cap`` set, points sitting on that ceiling are drawn open, to
    mark them as limited by the imposed cap rather than by the solver.
    """
    for si, s in enumerate(SOLVERS):
        st = STYLE[s]
        # Series that all sit on the imposed cap would otherwise be drawn
        # exactly on top of one another; a small vertical offset (noted in
        # the caption) keeps each visible without moving any real value.
        off = stagger * (si - (len(SOLVERS) - 1) / 2)
        xs, ys = [], []
        for i, sc in enumerate(SCALES):
            r = idx.get((s, sc))
            if r is None or r["outcome"] != "success":
                continue
            v = metric(r)
            if v is not None:
                xs.append(i)
                ys.append(v + off)
        if not xs:
            continue
        ax.plot(xs, ys, color=st["color"], lw=LW, zorder=3,
                label=st["label"], marker="None")
        if cap is None:
            ax.plot(xs, ys, color=st["color"], marker=st["marker"],
                    markersize=MS, lw=0, zorder=4)
        else:
            at_cap = [abs(y - off - cap) < 0.5 for y in ys]
            for x, y, capped in zip(xs, ys, at_cap):
                ax.plot([x], [y], color=st["color"], marker=st["marker"],
                        markersize=MS, lw=0, zorder=4,
                        markerfacecolor="none" if capped else st["color"],
                        markeredgewidth=1.8)
    ax.grid(True, which="both", alpha=0.3, zorder=0)


# Outcomes that mean "this preset produced no usable result at this scale",
# and how each is drawn. A failed run must never be a missing point: the
# absence is the result, so it gets its own marker below the data.
FAIL_KINDS = {
    "diverged":    ("X", FAIL_COLOUR, "no successful step"),
    "dt_collapse": ("X", FAIL_COLOUR, "no successful step"),
    "oom":         ("P", FAIL_COLOUR, "out of memory"),
    "walltime":    ("v", "#4d4d4d", "exceeded the wall-clock limit"),
}


def mark_failures(ax, idx, solvers):
    """Draw the non-result markers in a reserved strip below the data."""
    marks = {}
    for solver in solvers:
        for i, sc in enumerate(SCALES):
            outcome = (idx.get((solver, sc)) or {}).get("outcome")
            if outcome in FAIL_KINDS:
                marks.setdefault((solver, outcome), []).append(i)
    if not marks:
        return
    # Reserve a strip under the data so a failure marker never collides
    # with a real curve.
    ymin, ymax = ax.get_ylim()
    span = ymax - ymin
    ax.set_ylim(ymin - 0.16 * span, ymax)
    y = ymin - 0.09 * span
    for (solver, outcome), xs in marks.items():
        marker, colour, note = FAIL_KINDS[outcome]
        ax.plot(xs, [y] * len(xs), linestyle="none", marker=marker,
                markersize=MS + 2.5, color=colour, zorder=5,
                label=f"{STYLE[solver]['label']} \u2014 {note}")


def finish(fig, axes, data, ylabels, letters):
    labels = scale_labels(data)
    for ax, yl, letter in zip(axes, ylabels, letters):
        ax.set_xticks(range(len(SCALES)))
        ax.set_xticklabels(labels)
        ax.set_xlabel("horizontal resolution / nodes / DOF")
        ax.set_ylabel(yl)
        ax.set_xlim(-0.35, len(SCALES) - 0.65)
        panel_letter(ax, letter)
    h, l = legend_handles(axes)
    fig.legend(h, l, loc="lower center", ncol=min(len(l), 5),
               frameon=False, bbox_to_anchor=(0.5, -0.20))


# ── Figure 1: graded seasonal weak scaling ──────────────────────────────────
def fig_seasonal_weak(outdir, case="murr_seasonal",
                      fname="seasonal_weak.pdf"):
    data = load(case)
    idx = index(data)
    fig, axes = plt.subplots(1, 3, figsize=(16.5, 5.2))

    draw_metric(axes[0], idx, linear_per_newton)
    draw_metric(axes[1], idx, max_sustained_dt_d, cap=DT_CAP_D, stagger=1.7)
    axes[1].axhline(DT_CAP_D, color="0.35", ls="--", lw=1.4, zorder=1)
    axes[1].text(len(SCALES) - 1.02, DT_CAP_D * 0.955,
                 "imposed 3-month cap", color="0.35", fontsize=13,
                 va="top", ha="right")
    axes[1].set_ylim(0, DT_CAP_D * 1.16)   # mark_failures reserves the strip
    draw_metric(axes[2], idx, wall_h_per_sim_year)
    axes[2].set_ylim(bottom=0)

    for ax in axes:
        mark_failures(ax, idx, SOLVERS)

    finish(fig, axes, data,
           ["linear iterations per Newton step",
            "maximum sustained timestep (days)",
            "wall time per simulated year (h)"],
           ["A", "B", "C"])
    out = outdir / "Murrumbidgee" / fname
    out.parent.mkdir(parents=True, exist_ok=True)
    save(fig, out, pad_inches=0.2)
    plt.close(fig)
    print(f"wrote {out}")


# ── Figure 2: saturated companion ───────────────────────────────────────────
def fig_seasonal_saturated(outdir):
    fig_seasonal_weak(outdir, case="murr_seasonal_saturated",
                      fname="seasonal_saturated.pdf")


# ── Figure 3: per-solve cost breakdown where block-Jacobi fails ─────────────
def fig_seasonal_breakdown(outdir):
    """Stacked per-nonlinear-solve cost in the saturated regime.

    Block-Jacobi completes no step at any scale, so it carries no bar.
    That empty column is the point of the figure, and it is labelled
    rather than left blank.
    """
    data = load("murr_seasonal_saturated")
    idx = index(data)
    scales = ["h2", "h4", "h8"]          # h1: GMG-H hit the walltime, no profile
    order = SOLVERS
    fig, ax = plt.subplots(figsize=(11.5, 5.6))

    group_w, bar_w = 1.0, 0.20
    xticks, xlabels = [], []
    labelled = False
    tallest = 0.0
    for gi, sc in enumerate(scales):
        base = gi * (group_w + 0.35)
        xticks.append(base + (len(order) - 1) * bar_w / 2)
        m = data["scale_meta"][sc]
        xlabels.append(f"{m['horiz_res']} m\n{m['nodes']}N / {m['dof_approx']}")
        for si, s in enumerate(order):
            x = base + si * bar_w
            r = idx.get((s, sc))
            bd = breakdown_per_solve(r) if (
                r and r["outcome"] == "success") else None
            if not bd:
                ax.text(x, 0.4, "FAIL" if s == "bjacobi" else "n/a",
                        rotation=90, ha="center", va="bottom",
                        fontsize=12, color=FAIL_COLOUR
                        if s == "bjacobi" else "0.45")
                continue
            bottom = 0.0
            for key, label, colour in BREAKDOWN_BANDS:
                v = bd[key]
                ax.bar(x, v, bar_w * 0.92, bottom=bottom, color=colour,
                       edgecolor="white", linewidth=0.5,
                       label=None if labelled else label, zorder=3)
                bottom += v
            labelled = True
            tallest = max(tallest, bottom)
            ax.text(x, bottom * 1.02, STYLE[s]["label"].replace("VLumping", "VL"),
                    rotation=90, ha="center", va="bottom", fontsize=11,
                    color=STYLE[s]["color"])

    ax.set_xticks(xticks)
    ax.set_xticklabels(xlabels)
    ax.set_xlabel("horizontal resolution / nodes / DOF")
    ax.set_ylabel("time per nonlinear solve (s)")
    ax.grid(True, axis="y", alpha=0.3, zorder=0)
    # Headroom for the rotated per-bar labels, which sit above each stack.
    ax.set_ylim(0, tallest * 1.32)
    ax.legend(loc="lower center", frameon=False, ncol=5,
              bbox_to_anchor=(0.5, -0.30))
    out = outdir / "Murrumbidgee" / "seasonal_breakdown.pdf"
    out.parent.mkdir(parents=True, exist_ok=True)
    save(fig, out, pad_inches=0.2)
    plt.close(fig)
    print(f"wrote {out}")


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--outdir", type=Path, default=FIG_ROOT)
    args = ap.parse_args()
    fig_seasonal_weak(args.outdir)
    fig_seasonal_saturated(args.outdir)
    fig_seasonal_breakdown(args.outdir)


if __name__ == "__main__":
    main()
