"""Panel A of the §3.2 mass-conservation figure: net mass loss vs Δt.

Fixed DQ2 on a 25² grid; for each (equation form, time integrator) we
sweep Δt and record the cumulative mass imbalance M of eq. (NetMassLoss).
The story splits cleanly into two magnitudes — the head / chain-rule form
(``pressurehead``) bleeds 1e-6…1e-3 m³ of mass, growing with Δt, while
the mixed / conservative θ-form (``mixed``) conserves to round-off
(~1e-10 m³). To show both without one crushing the other we draw a
broken y-axis: the top segment zooms the head-form band, the bottom
segment zooms the round-off band.

Data source is ``results/equation_form.csv`` (BE/IM × mixed/head, all
five Δt). That CSV carries the Implicit-Midpoint mixed curve, which the
JSON re-run currently misses because those solves failed to converge.

Run with the plotting env (no firedrake needed):

    ~/Workplace/python3.12/bin/python3.12 plot_equation_type.py
"""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import pandas as pd

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT  # noqa: E402

plt.rcParams["font.family"] = "serif"
plt.rcParams["font.serif"] = ["Times New Roman"]
plt.rcParams["mathtext.fontset"] = "stix"

HERE = Path(__file__).parent
OUT = FIGURE_ROOT / "MassConservation"
OUT.mkdir(parents=True, exist_ok=True)

FONT = 18

# colour = integrator, linestyle = equation form
COLORS = {"be": "dodgerblue", "im": "slateblue"}
INT_NAME = {"be": "Backward Euler", "im": "Implicit Midpoint"}

# Where the axis breaks: head-form band up top, round-off band below.
TOP_YLIM = (1e-6, 2e-3)
BOT_YLIM = (1e-10, 1e-8)


def plot_equation_type() -> None:
    df = pd.read_csv(HERE / "results" / "equation_form.csv")
    dt = df["dt"].to_numpy()

    fig, (top, bot) = plt.subplots(
        2, 1, sharex=True, figsize=(6, 5.5),
        gridspec_kw={"height_ratios": [1.7, 1.0], "hspace": 0.08},
    )

    for ax in (top, bot):
        for key in ("be", "im"):
            ax.plot(dt, df[f"{key}_pressurehead"], linestyle="--",
                    color=COLORS[key], linewidth=2.0, marker="o", ms=6)
            ax.plot(dt, df[f"{key}_mixed"], linestyle="-",
                    color=COLORS[key], linewidth=2.0, marker="o", ms=6)
        ax.set_xscale("log")
        ax.set_yscale("log")
        ax.grid(True, which="both", alpha=0.25)

    top.set_ylim(*TOP_YLIM)
    bot.set_ylim(*BOT_YLIM)

    # Hide the facing spines and stitch a diagonal break between panels.
    top.spines["bottom"].set_visible(False)
    bot.spines["top"].set_visible(False)
    top.tick_params(axis="x", which="both", bottom=False)
    d = 0.012
    kw = dict(transform=top.transAxes, color="k", clip_on=False, lw=1.0)
    top.plot((-d, +d), (-d, +d), **kw)
    top.plot((1 - d, 1 + d), (-d, +d), **kw)
    kw["transform"] = bot.transAxes
    bot.plot((-d, +d), (1 - d * 1.7, 1 + d * 1.7), **kw)
    bot.plot((1 - d, 1 + d), (1 - d * 1.7, 1 + d * 1.7), **kw)

    bot.set_xlabel(r"$\Delta t$ (s)", fontsize=FONT)
    bot.set_xlim(20, 600)
    bot.set_xticks([25, 50, 100, 250, 500])
    bot.set_xticklabels(["25", "50", "100", "250", "500"], fontsize=FONT)
    for ax in (top, bot):
        ax.tick_params(axis="y", labelsize=FONT)

    fig.supylabel(r"Net mass loss $M$ (m$^3$)", fontsize=FONT, x=0.0)

    # One legend: colour distinguishes integrator, linestyle the form.
    from matplotlib.lines import Line2D
    handles = [
        Line2D([], [], color=COLORS["be"], lw=2, label=INT_NAME["be"]),
        Line2D([], [], color=COLORS["im"], lw=2, label=INT_NAME["im"]),
        Line2D([], [], color="0.35", lw=2, ls="-", label="mixed form"),
        Line2D([], [], color="0.35", lw=2, ls="--", label="head form"),
    ]
    top.legend(handles=handles, frameon=False, fontsize=FONT - 4,
               loc="upper left", ncol=1, handlelength=1.8)

    out = OUT / "equation_type.pdf"
    fig.savefig(out, format="pdf", bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    plot_equation_type()
