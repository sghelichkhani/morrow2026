"""§3.2 mass-conservation figure: net mass loss vs Δx, CG vs DG.

Fixed Δt = 100 s, θ-form (conservative, ``stage_type="value"``),
Backward Euler; for each function space we sweep the grid resolution and
record the cumulative mass imbalance M of eq. (NetMassLoss). The story is
the contrast between continuous and discontinuous spaces: the DG/DQ
spaces are locally conservative and sit flat at round-off (~1e-10 m³) for
every degree and every resolution, while the CG spaces are not locally
conservative and bleed ~1e-4 m³ that only shrinks slowly as Δx → 0.

The two magnitudes are 6+ decades apart, so we draw a broken y-axis: the
top segment zooms the CG band, the bottom segment zooms the DG round-off
band.

Run with the plotting env (no firedrake needed):

    ~/Workplace/python3.12/bin/python3.12 plot_function_space.py
"""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT, load_json  # noqa: E402

plt.rcParams["font.family"] = "serif"
plt.rcParams["font.serif"] = ["Times New Roman"]
plt.rcParams["mathtext.fontset"] = "stix"

HERE = Path(__file__).parent
OUT = FIGURE_ROOT / "MassConservation"
OUT.mkdir(parents=True, exist_ok=True)

FONT = 18

# Discontinuous spaces live in the bottom (round-off) band, continuous in
# the top (bleed) band. Colour shades step with polynomial degree.
DG_COLORS = {0: "#4aa3df", 1: "#1f77b4", 2: "#0b3d66"}  # light→dark blue
CG_COLORS = {1: "#e8743b", 2: "#8b1a1a"}                # orange→dark red

TOP_YLIM = (2e-5, 3e-3)   # CG band
BOT_YLIM = (4e-11, 2e-10)  # DG round-off band


def _series(entries, family, degree):
    rows = [e for e in entries
            if e.get("family") == family and e.get("degree") == degree
            and "mass_error" in e]
    rows.sort(key=lambda r: r["dx"])
    dx = np.array([r["dx"] for r in rows])
    err = np.array([r["mass_error"] for r in rows])
    return dx, err


def plot_function_space() -> None:
    data = load_json(HERE / "results" / "function_space.json")
    entries = data["entries"]

    fig, (top, bot) = plt.subplots(
        2, 1, sharex=True, figsize=(6, 5.5),
        gridspec_kw={"height_ratios": [1.5, 1.0], "hspace": 0.08},
    )

    # CG curves up top (dashed), DG curves down bottom (solid). Each panel
    # also carries the other family so the broken axis reads as one plot.
    for ax in (top, bot):
        for degree in (1, 2):
            dx, err = _series(entries, "CG", degree)
            ax.plot(dx, err, ls="-", color=CG_COLORS[degree],
                    lw=2.0, marker="o", ms=6, label=f"CG{degree}")
        for degree in (0, 1, 2):
            dx, err = _series(entries, "DQ", degree)
            ax.plot(dx, err, ls="-", color=DG_COLORS[degree],
                    lw=2.0, marker="o", ms=6, label=f"DG{degree}")
        ax.set_xscale("log")
        ax.set_yscale("log")
        ax.grid(True, which="both", alpha=0.25)

    top.set_ylim(*TOP_YLIM)
    bot.set_ylim(*BOT_YLIM)

    # Hide facing spines and stitch the diagonal break.
    top.spines["bottom"].set_visible(False)
    bot.spines["top"].set_visible(False)
    top.tick_params(axis="x", which="both", bottom=False)
    d = 0.012
    kw = dict(transform=top.transAxes, color="k", clip_on=False, lw=1.0)
    top.plot((-d, +d), (-d, +d), **kw)
    top.plot((1 - d, 1 + d), (-d, +d), **kw)
    kw["transform"] = bot.transAxes
    bot.plot((-d, +d), (1 - d * 1.5, 1 + d * 1.5), **kw)
    bot.plot((1 - d, 1 + d), (1 - d * 1.5, 1 + d * 1.5), **kw)

    bot.set_xlabel(r"$\Delta x$ (m)", fontsize=FONT)
    bot.set_xlim(0.008, 0.1)
    bot.set_xticks([0.01, 0.02, 0.05, 0.1])
    bot.set_xticklabels(["0.01", "0.02", "0.05", "0.1"], fontsize=FONT)
    for ax in (top, bot):
        ax.tick_params(axis="y", labelsize=FONT)

    fig.supylabel(r"Net mass loss $M$ (m$^3$)", fontsize=FONT, x=-0.04)

    # Single combined legend to the right of the figure, one column.
    from matplotlib.lines import Line2D
    handles = (
        [Line2D([], [], color=CG_COLORS[d], lw=2, marker="o", ms=6,
                label=f"CG{d}") for d in (1, 2)]
        + [Line2D([], [], color=DG_COLORS[d], lw=2, marker="o", ms=6,
                  label=f"DG{d}") for d in (0, 1, 2)]
    )
    leg = fig.legend(handles=handles, frameon=True, fontsize=FONT - 4,
                     loc="center left", bbox_to_anchor=(0.70, 0.42),
                     ncol=1, handlelength=1.8, title="Basis Function:")
    leg.get_title().set_fontsize(FONT - 3)
    leg.get_frame().set_facecolor("white")
    leg.get_frame().set_alpha(1.0)
    leg.set_zorder(10)

    out = OUT / "mass-conservation-spatial.pdf"
    fig.savefig(out, format="pdf", bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    plot_function_space()
