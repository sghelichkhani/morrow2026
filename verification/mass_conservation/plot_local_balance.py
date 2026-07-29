"""§3.2 mass-conservation figure: global vs local mass balance.

Two panels from a single cell-wise residual (eq. LocalMassLoss). Summing
that residual over cells makes every interior-facet term cancel pairwise,
so the cell sum collapses onto the global balance; the panels differ only
in where the absolute value sits:

    (a) G = sum_n |sum_E r_E|   cells allowed to cancel  -> global
    (b) L = sum_n sum_E |r_E|   no cancellation          -> local

Hence G <= L always, and the gap between the panels *is* the failure of
local conservation. The story: every space conserves globally to the
tolerance of the nonlinear solve (panel a is five curves stacked on that
one floor, family-independent), but only the discontinuous spaces balance
cell by cell (panel b splits by six or more decades).

Both columns share ONE y definition -- net mass imbalance in m^3 -- on a
broken axis. The upper band zooms the CG local band, the lower band zooms
the solver-tolerance floor, so the small variations inside each band stay
legible instead of collapsing onto one flat line over eight empty decades.
Panel (a)'s upper band is deliberately empty: that emptiness is the result.

Run with the plotting env (no firedrake needed):

    ~/Workplace/python3.12/bin/python3.12 plot_local_balance.py [results.json]
"""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
from matplotlib.lines import Line2D
from matplotlib.ticker import FixedLocator, FuncFormatter, NullFormatter, ScalarFormatter

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT, load_json  # noqa: E402

plt.rcParams["font.family"] = "serif"
plt.rcParams["font.serif"] = ["Times New Roman"]
plt.rcParams["mathtext.fontset"] = "stix"

HERE = Path(__file__).parent
OUT = FIGURE_ROOT / "MassConservation"
OUT.mkdir(parents=True, exist_ok=True)

FONT = 18

# Palette carried over from the deleted plot_function_space.py, so this
# figure still reads as one study with the rest of §3: discontinuous in
# blues stepping with degree, continuous in warm tones.
DG_COLORS = {0: "#4aa3df", 1: "#1f77b4", 2: "#0b3d66"}
CG_COLORS = {1: "#e8743b", 2: "#8b1a1a"}

# Within a band the curves sit on top of one another (in panel (a) all five
# land on the same solver-tolerance value), so a naive plot shows only
# whichever was drawn last -- which reads as "we only ran CG2". Give each own
# marker shape and step the sizes/widths down in draw order, so coincident
# curves render as nested open markers and every space can be seen.
STYLE = [  # (family, degree, marker, markersize, linewidth)
    ("DQ", 0, "o", 14, 3.6),
    ("DQ", 1, "s", 11, 2.9),
    ("DQ", 2, "^", 8.5, 2.2),
    ("CG", 1, "D", 6.0, 1.6),
    ("CG", 2, "v", 4.0, 1.1),
]

# Below this is the floor set by snes_rtol -- NOT round-off: tightening
# snes_rtol to 1e-10 drops it to 4.1e-14, which is the actual round-off
# level. Above it, real imbalance. Used only to split the broken axis.
FLOOR_CUTOFF = 1e-8


def _colour(family, degree):
    return (DG_COLORS if family == "DQ" else CG_COLORS)[degree]


def _series(entries, family, degree, key):
    rows = [e for e in entries
            if e.get("family") == family and e.get("degree") == degree
            and key in e]
    rows.sort(key=lambda r: r["dx"])
    return (np.array([r["dx"] for r in rows]),
            np.array([r[key] for r in rows]))


def _sci(value, _pos):
    """Tick label as m x 10^e -- the floor band spans no full decade, so the
    default log formatter would leave it unlabelled. Two decimals: the band is
    only ~2% wide, so one decimal renders neighbouring ticks identically."""
    if value <= 0:
        return ""
    exponent = int(np.floor(np.log10(value)))
    return rf"${value / 10 ** exponent:.2f}{{\times}}10^{{{exponent}}}$"


def _draw(ax, entries, key):
    """Draw every space onto ``ax``; the caller's ylim decides what shows."""
    for family, degree, marker, ms, lw in STYLE:
        dx, err = _series(entries, family, degree, key)
        if not len(dx):
            continue
        ax.plot(dx, err, ls="-", marker=marker, ms=ms, lw=lw,
                color=_colour(family, degree), mfc="none", mew=1.8)
    ax.set_xscale("log")
    ax.set_yscale("log")
    ax.grid(True, which="both", alpha=0.25)
    # Coarsest mesh is dx = 1/12 = 0.083, so leave headroom past it or its
    # markers get clipped by the right spine.
    ax.set_xlim(0.0085, 0.105)


def plot_local_balance(results: Path) -> None:
    data = load_json(results)
    entries = data["entries"]

    values = np.array([e[k] for e in entries
                       for k in ("local", "global") if k in e])
    floor, upper = values[values < FLOOR_CUTOFF], values[values >= FLOOR_CUTOFF]
    # Pad the floor band tightly (it spans ~2%, so it needs room to breathe
    # but not a decade) and the upper band loosely.
    floor_ylim = (floor.min() / 1.06, floor.max() * 1.06)
    upper_ylim = (upper.min() / 2.2, upper.max() * 2.2)

    fig, axes = plt.subplots(
        # Fonts are fixed in points, so shrinking the canvas is what makes the
        # labels read larger relative to the axes.
        2, 2, figsize=(9.5, 5.7), sharex="col", sharey="row",
        gridspec_kw={"height_ratios": [1.45, 1.0],
                     "hspace": 0.10, "wspace": 0.10},
    )
    (top_g, top_l), (bot_g, bot_l) = axes

    for column, key in (((top_g, bot_g), "global"), ((top_l, bot_l), "local")):
        for ax in column:
            _draw(ax, entries, key)

    for ax in (top_g, top_l):
        ax.set_ylim(*upper_ylim)
    for ax in (bot_g, bot_l):
        ax.set_ylim(*floor_ylim)
        ax.yaxis.set_major_locator(FixedLocator(
            np.linspace(floor.min(), floor.max(), 3)))
        ax.yaxis.set_minor_locator(FixedLocator([]))
        ax.yaxis.set_major_formatter(FuncFormatter(_sci))

    # Stitch the break: hide the facing spines and draw the diagonal ticks.
    d = 0.012
    for top, bot in ((top_g, bot_g), (top_l, bot_l)):
        top.spines["bottom"].set_visible(False)
        bot.spines["top"].set_visible(False)
        top.tick_params(axis="x", which="both", bottom=False)
        kw = dict(transform=top.transAxes, color="k", clip_on=False, lw=1.0)
        top.plot((-d, +d), (-d, +d), **kw)
        top.plot((1 - d, 1 + d), (-d, +d), **kw)
        kw["transform"] = bot.transAxes
        bot.plot((-d, +d), (1 - d * 1.5, 1 + d * 1.5), **kw)
        bot.plot((1 - d, 1 + d), (1 - d * 1.5, 1 + d * 1.5), **kw)

    for ax in (bot_g, bot_l):
        ax.set_xlabel(r"$\Delta x$ (m)", fontsize=FONT)
        # Ticks on the meshes actually run (dx = 0.01, 0.02, 0.04, 0.083),
        # rather than decade marks that sit where there is no data.
        ax.xaxis.set_major_locator(FixedLocator([0.01, 0.02, 0.04, 0.08]))
        ax.xaxis.set_major_formatter(ScalarFormatter())
        ax.xaxis.set_minor_formatter(NullFormatter())

    for ax in axes.ravel():
        ax.tick_params(axis="both", labelsize=FONT - 4)

    for ax, tag, title in ((top_g, "a", "global"), (top_l, "b", "local")):
        ax.set_title(title, fontsize=FONT - 3, pad=12,
                     bbox=dict(boxstyle="round,pad=0.3",
                               facecolor="lightyellow", edgecolor="black"))
        ax.text(0.10, 0.88, tag, transform=ax.transAxes,
                ha="center", va="center", fontsize=FONT,
                bbox=dict(boxstyle="circle,pad=0.2", facecolor="lightgray",
                          edgecolor="black"))

    # One y definition for the whole figure: both columns, both bands.
    # Negative x clears the floor band's wide "4.37x10^-11" tick labels;
    # bbox_inches="tight" still picks the label up at save time.
    fig.supylabel(r"Net mass imbalance (m$^3$)", fontsize=FONT, x=-0.025)

    handles = [
        Line2D([], [], color=_colour(f, d_), lw=lw, marker=m, ms=min(ms, 9),
               mfc="none", mew=1.8,
               label=f"{'DG' if f == 'DQ' else 'CG'}{d_}")
        for f, d_, m, ms, lw in STYLE
    ]
    leg = fig.legend(handles=handles, frameon=True, fontsize=FONT - 4,
                     loc="upper center", bbox_to_anchor=(0.5, 1.10),
                     ncol=5, handlelength=1.8, title="Basis function:")
    leg.get_title().set_fontsize(FONT - 3)

    out = OUT / "mass-conservation-local-global.pdf"
    fig.savefig(out, format="pdf", bbox_inches="tight")
    fig.savefig(out.with_suffix(".png"), format="png", dpi=150,
                bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    path = Path(sys.argv[1]) if len(sys.argv) > 1 \
        else HERE / "results" / "local_balance.json"
    plot_local_balance(path)
