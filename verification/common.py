"""Shared setup for verification drivers.

Adds the richardson g-adopt worktree and gwassess to sys.path so that
any driver can simply `from verification.common import *` (or import
this module first and then do `from gadopt import *` / `import
gwassess`). Keeps paths in exactly one place so that the whole paper
study can be rebased onto a different worktree by editing this file.
"""
from __future__ import annotations

import json
import os
import sys
from pathlib import Path

HOME = Path.home()
RICHARDSON = HOME / "Workplace" / "g-adopt-worktrees" / "sghelichkhani" / "richardson"
GWASSESS = HOME / "Workplace" / "gwassess"

for p in (str(RICHARDSON), str(GWASSESS)):
    if p not in sys.path:
        sys.path.insert(0, p)

REPO_ROOT = Path(__file__).resolve().parent.parent
FIGURE_ROOT = REPO_ROOT / "figures"


def save_json(path: os.PathLike, payload: dict) -> None:
    """Write ``payload`` as pretty JSON to ``path``, creating parents.

    Under MPI (Firedrake/PETSc), only rank 0 writes. Other ranks return
    a no-op so concurrent writes can't corrupt the JSON.
    """
    try:
        from mpi4py import MPI
        if MPI.COMM_WORLD.Get_rank() != 0:
            return
    except ImportError:
        pass
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True))


def load_json(path: os.PathLike) -> dict:
    return json.loads(Path(path).read_text())


# --------------------------------------------------------------------------- #
# Shared paper-figure style for the §3 convergence plots.
#
# Both the Tracy (tracy/plot_spatial.py) and Vauclin (vauclin/
# plot_convergence.py) convergence figures draw the same thing — relative
# L2 error in h versus Delta x on log-log axes, one curve per polynomial
# degree, with the fitted rate written on the curve and a dashed reference
# slope at the expected order p+1. Keep that look in one place so the two
# figures can't drift apart. matplotlib is imported lazily so the firedrake
# run-drivers that also import this module don't pay for it.
# --------------------------------------------------------------------------- #

# Tab10 colours matched to the manuscript: DQ0 blue, DQ1 orange, DQ2 green.
DEGREE_COLOURS = {0: "tab:blue", 1: "tab:orange", 2: "tab:green"}


def set_paper_style() -> None:
    """Serif (Times) at the manuscript's body size — call once per script."""
    import matplotlib.pyplot as plt
    plt.rcParams.update({"font.size": 18})
    plt.rcParams["font.family"] = "serif"
    plt.rcParams["font.serif"] = ["Times New Roman"]


def convergence_rate(xs, ys) -> float:
    """Log-log slope from the two finest meshes (smallest two dx).

    This is the asymptotic rate: a least-squares line through the last two
    refinement levels rather than all of them, so a noisy coarse level can't
    drag the reported order around.
    """
    import numpy as np
    order = np.argsort(xs)
    xs = np.asarray(xs, float)[order]
    ys = np.asarray(ys, float)[order]
    if len(xs) < 2:
        raise ValueError("need at least two points to fit a rate")
    slope, _ = np.polyfit(np.log(xs[:2]), np.log(ys[:2]), 1)
    return float(slope)


def plot_convergence_panel(ax, data, *, ref_xrange=None, ylabel=None,
                           tag=None, title=None, annotate_rate=True):
    """Draw one paper-style convergence panel onto ``ax``.

    ``data`` maps polynomial degree -> (dx_array, relative_error_array).
    Each degree gets an ``o-`` curve in its tab10 colour, a faint dashed
    reference of slope ``p+1`` anchored at the finest mesh, and (optionally)
    the fitted rate written in the curve's colour at the finest interval.

    ``ref_xrange`` fixes the x-span of the dashed references (default: the
    data range). ``tag`` draws a circled panel letter (A/B); ``title`` draws
    a rounded light-yellow box (e.g. "2D"/"3D").
    """
    import numpy as np
    from matplotlib.ticker import FixedLocator, NullFormatter, ScalarFormatter

    for degree in sorted(data):
        dxs, err = (np.asarray(a, float) for a in data[degree])
        order = np.argsort(dxs)
        dxs, err = dxs[order], err[order]
        line, = ax.loglog(dxs, err, "o-",
                          color=DEGREE_COLOURS.get(degree),
                          label=f"DQ{degree}")
        if len(dxs) < 2:
            continue
        # Dashed reference of order p+1, anchored at the finest mesh.
        p = degree + 1
        x = np.array(ref_xrange, float) if ref_xrange is not None \
            else np.array([dxs[0], dxs[-1]])
        y = err[0] * (x / dxs[0]) ** p
        ax.loglog(x, y, "k--", alpha=0.5)
        if annotate_rate:
            rate = convergence_rate(dxs, err)
            x_mid = np.sqrt(dxs[0] * dxs[1])
            y_mid = np.sqrt(err[0] * err[1])
            ax.annotate(f"{rate:.2f}", xy=(x_mid, y_mid),
                        xytext=(0, 6), textcoords="offset points",
                        ha="center", va="bottom", fontsize=19,
                        color=line.get_color())

    ax.set_xlabel(r"$\Delta x$ (m)")
    if ylabel:
        ax.set_ylabel(ylabel)
    ax.grid(True, which="both", alpha=0.3)
    # Show 5e-2 / 5e-1 alongside the decade marks.
    ax.xaxis.set_major_locator(FixedLocator([1e-2, 5e-2, 1e-1, 5e-1]))
    ax.xaxis.set_major_formatter(ScalarFormatter())
    # Suppress auto minor-tick labels — for narrow (sub-decade) dx ranges
    # matplotlib labels the minor log ticks and they collide with the
    # major ones (e.g. Vauclin's 0.033–0.19 m span).
    ax.xaxis.set_minor_formatter(NullFormatter())
    if title:
        ax.set_title(title, fontsize=15, pad=18,
                     bbox=dict(boxstyle="round,pad=0.3",
                               facecolor="lightyellow", edgecolor="black"))
    if tag:
        ax.text(0.08, 0.92, tag, transform=ax.transAxes,
                ha="center", va="center", fontsize=20, color="black",
                bbox=dict(boxstyle="circle,pad=0.2", facecolor="lightgray",
                          edgecolor="black"))


def theory_legend_handle():
    """A single proxy entry labelling the dashed reference slopes."""
    from matplotlib.lines import Line2D
    return Line2D([], [], color="black", linestyle="--", alpha=0.5), "theory"
