#!/usr/bin/env python3
"""Seasonal-regime scaling figures for Morrow et al. 2026.

Three figures, sharing the visual grammar of ``plot_paper_figures.py``:

* ``Murrumbidgee/seasonal_weak.pdf`` — the paper's main scaling figure.
  The graded seasonal regime (3-month dt cap, water table +5 m, retention
  flattened by 3) over the horizontal weak-scaling ladder h1..h8. Two
  panels: linear iterations per Newton step, and the wall time per
  simulated year. The two invert. GMG-H iterates a quarter as often as
  BJac-ILU and is slower than it at every scale, while the direct-coarse
  vertically lumped preset is lowest on both. The sustained timestep is
  left to the table, which reports it against the diffusion number.
* ``Murrumbidgee/seasonal_saturated.pdf`` — the companion regime (water
  table +10 m, retention flattened by 10), where block-Jacobi takes no
  successful step at any scale. Two panels only, iterations and sustained
  timestep, with the block-Jacobi outcome stated in the figure.
* ``Murrumbidgee/seasonal_breakdown.pdf`` — where the time goes in the
  graded regime, from the -log_view profiles. One panel per preset on a
  shared vertical scale, each annotated with the timestep that preset
  sustained, so a cheap solve bought by a short step cannot read as speed.

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
from matplotlib.lines import Line2D
from matplotlib.patches import Patch
from matplotlib.transforms import blended_transform_factory

from figstyle import save
from plot_paper_figures import (
    BREAKDOWN_BANDS, LW, MS, STYLE, breakdown_per_solve, index,
    legend_handles, linear_per_newton, load, panel_letter,
)

FIG_ROOT = Path(__file__).resolve().parent.parent / "figures"

# The seasonal figures report three presets, one per family: the block-Jacobi
# baseline, the geometric-multigrid baseline, and the direct-coarse vertically
# lumped method. Two further presets are deliberately absent.
# `vlumping_linesmooth` tracks `vlumping` closely enough here that a fourth
# series adds no information; it is reported in the tables and in the
# strong-scaling figure instead. The iterative-coarse `vlumping_hmg` is
# excluded because it thrashes in this regime (graded h1 never sustains a step
# past 9.9 d) and is not a recommended default.
SOLVERS = ["bjacobi", "gmg", "vlumping"]
SCALES = ["h1", "h2", "h4", "h8"]
DT_CAP_D = 8035200 / 86400.0          # the imposed 3-month ceiling, in days
FAIL_COLOUR = "#b2182b"


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
                label=st["label"], marker="None", ls=st.get("ls", "-"))
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
# and the marker each is drawn with. A failed run must never be a missing
# point: the absence is the result, so it gets its own marker below the data.
# What each shape means is stated in the caption rather than in the legend,
# which keeps the legend to one line per preset.
FAIL_KINDS = {
    "diverged":    "X",
    "dt_collapse": "X",
    "oom":         "P",
    "walltime":    "v",
}


def mark_failures(ax, idx, solvers):
    """Draw the non-result markers in a reserved strip below the data.

    Each marker takes its preset's own colour rather than a shared failure
    colour, so it identifies the preset it belongs to on sight. A shared
    red would sit next to VLumping's red curve and read as VLumping's.

    A legend entry is added only for a preset that produced no result
    anywhere, because that preset has no curve to carry its name. It is
    named alone, with no qualifier: the band it sits in is labelled, so
    the marker's position already says the outcome. A preset that failed
    at some scales and not others is in the legend through its curve, and
    a second entry would say the same name twice.
    """
    # Two presets that fail at the same scale would be drawn on the same
    # point, hiding one outcome behind the other. Offset each preset's
    # markers by a fraction of the tick spacing, the same device the
    # timestep panel uses for series that sit on the imposed cap.
    marks = {}
    for si, solver in enumerate(solvers):
        off = 0.15 * (si - (len(solvers) - 1) / 2)
        for i, sc in enumerate(SCALES):
            outcome = (idx.get((solver, sc)) or {}).get("outcome")
            if outcome in FAIL_KINDS:
                marks.setdefault((solver, outcome), []).append(i + off)
    if not marks:
        return
    # Reserve a strip under the data so a failure marker never collides
    # with a real curve.
    ymin, ymax = ax.get_ylim()   # ymin is zero: every panel is zero-based
    span = ymax - ymin
    ax.set_ylim(ymin - 0.18 * span, ymax)
    y = ymin - 0.10 * span
    # Hatch the strip. It sits below the data range and holds outcomes, not
    # values, so a reader must not measure its markers against the y axis.
    # The label names the outcome rather than a single failure mode,
    # because the strip carries more than one: a preset that diverges and a
    # preset that exhausts its wall clock both land here.
    ax.axhspan(ymin - 0.18 * span, ymin, facecolor="white", edgecolor="black",
               hatch="////", linewidth=0.8, zorder=1)
    ax.text(0.5, y, "failure", transform=blended_transform_factory(
                ax.transAxes, ax.transData),
            ha="center", va="center", fontsize=12, color="0.35", zorder=6,
            bbox=dict(boxstyle="square,pad=0.25", facecolor="white",
                      edgecolor="none"))
    for (solver, outcome), xs in marks.items():
        has_curve = any((idx.get((solver, sc)) or {}).get("outcome") == "success"
                        for sc in SCALES)
        ax.plot(xs, [y] * len(xs), linestyle="none", marker=FAIL_KINDS[outcome],
                markersize=MS + 2.5, color=STYLE[solver]["color"], zorder=5,
                label=None if has_curve else STYLE[solver]["label"])


def finish(fig, axes, data, ylabels, letters):
    labels = scale_labels(data)
    for i, (ax, yl, letter) in enumerate(zip(axes, ylabels, letters)):
        ax.set_xticks(range(len(SCALES)))
        ax.set_xticklabels(labels)
        ax.set_xlabel("horizontal resolution / nodes / DOF")
        ax.set_xlim(-0.35, len(SCALES) - 0.65)
        panel_letter(ax, letter, y=0.945)
        # The last panel carries its y axis on the right. The two panels
        # measure unrelated quantities on unrelated scales, so nothing is
        # lost by separating their axes, and it lets them sit side by side
        # without a column of tick labels between them.
        if i == len(axes) - 1 and len(axes) > 1:
            ax.yaxis.set_label_position("right")
            ax.yaxis.tick_right()
            ax.set_ylabel(yl, rotation=270, labelpad=24)
        else:
            ax.set_ylabel(yl)
    h, l = legend_handles(axes)
    # Order by preset, not by the order the artists happened to be drawn in.
    # A preset that produced no result is labelled by mark_failures, which
    # runs after every curve, so it would otherwise trail the legend instead
    # of holding its place in the solver order the figures share.
    rank = {STYLE[s]["label"]: i for i, s in enumerate(SOLVERS)}
    order = sorted(range(len(l)), key=lambda i: rank.get(l[i], len(SOLVERS)))
    h, l = [h[i] for i in order], [l[i] for i in order]
    # Boxed and close under the axis labels, matching the breakdown figure so
    # the three seasonal figures carry one legend style.
    fig.legend(h, l, loc="lower center", ncol=min(len(l), 5),
               bbox_to_anchor=(0.5, -0.145), frameon=True, fancybox=False,
               edgecolor="black", framealpha=1.0)
    fig.subplots_adjust(wspace=0.06)


# ── Figure 1: graded seasonal weak scaling ──────────────────────────────────
def _panel_iters(ax, idx):
    """Linear iterations per Newton step."""
    draw_metric(ax, idx, linear_per_newton)
    # Zero-based, like the other panels. An iteration count has a meaningful
    # zero, and the failure band is drawn from the axis lower limit downwards,
    # so that limit must be zero in every panel. Left autoscaled it sits above
    # zero, and the band then hatches part of the valid range and swallows the
    # zero tick, while the neighbouring panel's band starts exactly at zero.
    ax.set_ylim(bottom=0)


def _panel_dt(ax, idx):
    """Largest timestep the run actually completed, against the imposed cap."""
    draw_metric(ax, idx, max_sustained_dt_d, cap=DT_CAP_D, stagger=1.7)
    ax.axhline(DT_CAP_D, color="0.35", ls="--", lw=1.4, zorder=1)
    ax.text(len(SCALES) - 1.02, DT_CAP_D * 0.955, "imposed 3-month cap",
            color="0.35", fontsize=13, va="top", ha="right")
    ax.set_ylim(0, DT_CAP_D * 1.16)      # mark_failures reserves the strip


def _panel_wall(ax, idx):
    """Wall time per simulated year, the comparable cost measure."""
    draw_metric(ax, idx, wall_h_per_sim_year)
    ax.set_ylim(bottom=0)


# The panels each seasonal figure can carry: how to draw one, and its y label.
PANELS = {
    "iters": (_panel_iters, "linear iterations per Newton step"),
    "dt":    (_panel_dt, "maximum sustained timestep (days)"),
    "wall":  (_panel_wall, "wall time per simulated year (h)"),
}


def fig_seasonal_scaling(outdir, case, fname, *, panels):
    """Weak-scaling panels for one seasonal regime.

    ``panels`` names the panels to draw, in order, as keys of ``PANELS``.
    The two regimes do not carry the same ones. Wall time is meaningless
    for a preset that completes no timestep, and a panel with a
    permanently missing series invites the reader to compare the presets
    that remain as if the missing one had merely been slow. The sustained
    timestep, in the regime where only one preset loses the imposed
    ceiling, is two numbers that Table 3 already reports mesh by mesh
    beside the column-integrated diffusion number that explains them.

    A preset that completes nothing anywhere carries no curve. It appears
    in the hatched failure band below the axis and in the legend as
    "(failure)", and
    the caption says what went wrong; the figure states the outcome
    without a block of prose inside the axes.
    """
    data = load(case)
    idx = index(data)
    fig, axes = plt.subplots(1, len(panels), figsize=(5.5 * len(panels), 5.2))

    for key, ax in zip(panels, axes):
        PANELS[key][0](ax, idx)
    ylabels = [PANELS[key][1] for key in panels]
    letters = list("ABC"[:len(panels)])

    for ax in axes:
        mark_failures(ax, idx, SOLVERS)

    finish(fig, axes, data, ylabels, letters)
    out = outdir / "Murrumbidgee" / fname
    out.parent.mkdir(parents=True, exist_ok=True)
    save(fig, out, pad_inches=0.2)
    plt.close(fig)
    print(f"wrote {out}")


def fig_seasonal_weak(outdir):
    """Graded seasonal regime: every reported preset takes steps here.

    Iterations against cost, which is where the regime's result lies: the
    preset with the fewest iterations is not the fastest, and the preset
    with the most is not the slowest. The sustained timestep is left to
    Table 3, which reports it against the diffusion number.
    """
    fig_seasonal_scaling(outdir, "murr_seasonal", "seasonal_weak.pdf",
                         panels=("iters", "wall"))


# ── Figure 2: saturated companion ───────────────────────────────────────────
def fig_seasonal_saturated(outdir):
    """Wetter seasonal regime, where block-Jacobi takes no step at all.

    The sustained timestep replaces wall time here: block-Jacobi has no
    wall time to compare, and the timestep is where VLumping's one
    nonlinear failure on the coarsest mesh shows.
    """
    fig_seasonal_scaling(
        outdir, "murr_seasonal_saturated", "seasonal_saturated.pdf",
        panels=("iters", "dt"))


# ── Figure 3: per-solve cost breakdown in the graded seasonal regime ────────
def fig_seasonal_breakdown(outdir):
    """Stacked per-nonlinear-solve cost, one panel per preset.

    The graded regime is used rather than the saturated one, because every
    reported preset takes steps there and so every panel carries a real
    profile. The three panels share one vertical scale, so the height of a
    stack is directly comparable between presets, and each stack is
    decomposed into the five bands of ``BREAKDOWN_BANDS``. The dashed line
    is the true ``SNESSolve`` time per solve; the roughly 7 per cent by
    which it exceeds the band sum is the wall time outside the nonlinear
    solve.

    Each x position also carries the largest timestep that preset actually
    sustained there. Without it the figure flatters block-Jacobi: its cost
    per nonlinear solve falls from the 880 m mesh to the 620 m mesh, but
    only because its admissible timestep has collapsed from 70 to 39 days,
    which makes each individual solve an easier problem. Cost per solve and
    cost per simulated year are different quantities, and this figure shows
    the first.
    """
    data = load("murr_seasonal")
    idx = index(data)
    fig, axes = plt.subplots(1, len(SOLVERS), figsize=(5.2 * len(SOLVERS), 5.6),
                             sharey=True)
    xs = np.arange(len(SCALES))
    labels = scale_labels(data)
    title_box = dict(boxstyle="round,pad=0.4",
                     facecolor="lightblue", edgecolor="black")

    tallest = 0.0
    for si, (s, ax) in enumerate(zip(SOLVERS, axes)):
        stacks = []
        for sc in SCALES:
            r = idx.get((s, sc))
            ok = r is not None and r["outcome"] == "success"
            stacks.append(breakdown_per_solve(r) if ok else None)
        # One filled series per cost band, stacked in the order they are
        # defined, so the reader sees where the time goes as the problem
        # weak-scales rather than only how much of it there is.
        band_series = [np.array([(bd[key] if bd else 0.0) for bd in stacks])
                       for key, _, _ in BREAKDOWN_BANDS]
        ax.stackplot(xs, *band_series, colors=[c for _, _, c in BREAKDOWN_BANDS],
                     edgecolor="white", linewidth=0.6, zorder=3)
        total = np.array([bd["snes"] if bd else np.nan for bd in stacks])
        ax.plot(xs, total, color="black", lw=1.2, ls="--", zorder=6)
        tallest = max(tallest, np.nanmax(total))

        # Padded clear of the axis frame: at pad=10 the box sits on the
        # top spine and reads as part of the plot area.
        ax.set_title(STYLE[s]["label"], bbox=title_box, pad=18)
        panel_letter(ax, "ABC"[si])
        ax.set_xticks(xs)
        ax.set_xticklabels(labels)
        ax.set_xlim(xs[0], xs[-1])
        ax.margins(x=0)
        # All three panels share one x axis meaning, and the label is wider
        # than a single panel, so it is written once under the middle one.
        # The pad clears the sustained-timestep row added below the ticks,
        # which the last field of the label names.
        if si == 1:
            ax.set_xlabel(
                "horizontal resolution / nodes / DOF / max sustained "
                "$\\Delta t$", labelpad=30)
        # The filled stacks run to the axis edge, so the outer tick labels
        # would hang over the neighbouring panel. Anchor them inwards.
        ax.get_xticklabels()[0].set_horizontalalignment("left")
        ax.get_xticklabels()[-1].set_horizontalalignment("right")
        if si == 0:
            ax.set_ylabel("time per nonlinear solve (s)")

    top = tallest * 1.12          # headroom for the panel letter only
    # The sustained timestep belongs with the run it describes, so it goes
    # under the tick label naming that run rather than floating in the plot
    # area. A blended transform puts it at the tick in x and at a fixed
    # distance below the axis in y, so the row stays put whatever the data do.
    for s, ax in zip(SOLVERS, axes):
        ax.set_ylim(0, top)
        trans = blended_transform_factory(ax.transData, ax.transAxes)
        for x, sc in zip(xs, SCALES):
            r = idx.get((s, sc))
            if r is None or r["outcome"] != "success":
                continue
            dt = max_sustained_dt_d(r)
            if dt is None:
                continue
            # Red where the preset has lost the imposed ceiling, because a
            # cheaper solve bought by a shorter step is not a cheaper year.
            capped = abs(dt - DT_CAP_D) < 0.5
            ha = "left" if x == xs[0] else "right" if x == xs[-1] else "center"
            ax.text(x, -0.125, f"$\\Delta t$ {dt:.0f} d", transform=trans,
                    ha=ha, va="top", fontsize=14.5, zorder=7, clip_on=False,
                    color="0.3" if capped else FAIL_COLOUR)

    # Grid drawn as explicit lines over the stacks: ax.grid()'s zorder is not
    # honoured against a stackplot PolyCollection.
    fig.canvas.draw()
    for ax in axes:
        for yt in ax.get_yticks():
            if 0 <= yt <= top:
                ax.axhline(yt, color="0.4", lw=0.7, alpha=0.6, zorder=5)
        for xt in xs:
            ax.axvline(xt, color="0.4", lw=0.7, alpha=0.6, zorder=5)

    handles = [Patch(facecolor=c, edgecolor="white", label=lab)
               for _, lab, c in BREAKDOWN_BANDS]
    handles.append(Line2D([0], [0], color="black", lw=1.2, ls="--",
                          label="SNESSolve total"))
    # Anchored just below the axis label, which itself sits lower than usual
    # because each panel carries the sustained-timestep row under its ticks.
    fig.legend(handles=handles, loc="lower center", ncol=6,
               bbox_to_anchor=(0.5, -0.205), columnspacing=1.6,
               handletextpad=0.5, frameon=True, fancybox=False,
               edgecolor="black", framealpha=1.0)
    fig.subplots_adjust(wspace=0.09)

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
