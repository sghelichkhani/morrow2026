"""Plot Tracy 2D temporal convergence rate.

Reads the temporal sweep JSON and produces
``../../figures/Tracy/2d_temporal_congergence.pdf`` (filename spelling
matches the manuscript's ``\\includegraphics``).

This is the *rate* figure of §3.1. For the current paper it shows
``BackwardEuler`` only (see ``PLOT_INTEGRATORS`` below and
``to-do-list.md`` P3) and reads ``results/temporal_2d.json`` — the
analytical-reference sweep written by ``run_temporal_2d.py``.

The follow-up rate study (all tableaux, each reaching its design order)
uses the two-panel design in ``verification-design.md``: a numerical
RadauIIA(2) reference at small ``Δt`` with ``Ss = 1e-4`` so the spatial
error and the Ss-induced bias cancel pointwise and the slopes do not
flatten at a spatial floor. That sweep is Gadi-only (``instructions.md``)
and would write ``results/temporal_sweep.json``; the plotter already
reads that shape and prefers it over ``temporal_2d.json`` when present,
so the figure picks it up automatically once the data lands.

Planned ``temporal_sweep.json`` shape:

    {
      "mesh": {"nodes": 201, "degree": 1, "Ss": 1e-4, ...},
      "reference": {"integrator": "RadauIIA(2)", "dt": 25.0, ...},
      "integrators": {
        "ImplicitMidpoint": {"expected_order": 2,
                             "dts": [{"dt": 2000.0,
                                      "l2error_h": ...,
                                      "l2ref_h":   ...}, ...]},
        ...
      }
    }

The plotter is tolerant of the older ``temporal_2d.json`` layout
(analytical reference, ``l2anal_h`` instead of ``l2ref_h``, no
``reference`` block) so it still runs on whatever data is on disk.
"""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
from matplotlib.lines import Line2D
from matplotlib.ticker import FixedLocator, NullFormatter, ScalarFormatter

plt.rcParams.update({'font.size': 18})
plt.rcParams["font.family"] = "serif"
plt.rcParams["font.serif"] = ["Times New Roman"]

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT, load_json  # noqa: E402


HERE = Path(__file__).parent
RESULTS = HERE / "results"
OUT = FIGURE_ROOT / "Tracy"
OUT.mkdir(parents=True, exist_ok=True)

# The paper's §3.1 temporal figure shows BackwardEuler only. The other
# tableaux (CrankNicolson, ImplicitMidpoint, DIRK22, RadauIIA) are still
# carried in the JSON for the rate study but are not plotted here — on
# this analytical-reference sweep the higher-order schemes flatten at the
# spatial floor, which is exactly the artefact the numerical-reference
# redesign exists to remove. To show them, widen this tuple.
PLOT_INTEGRATORS = (
    "BackwardEuler",
)


def _sweep_path() -> Path | None:
    """Pick the richest temporal JSON available on disk."""
    for name in ("temporal_sweep.json", "temporal_2d.json"):
        p = RESULTS / name
        if p.exists():
            return p
    return None


def _entries(case: dict):
    """Return (dts, rel_err) arrays for the valid points of one case.

    Relative error is ``l2error_h / l2ref_h`` against the numerical
    reference, falling back to ``l2anal_h`` for the older analytical
    sweep, or to a precomputed ``rel_err`` field if neither norm is
    present. Failed runs (no error recorded) are dropped.
    """
    dts, rel = [], []
    for e in case["dts"]:
        if "l2error_h" in e:
            norm = e.get("l2ref_h", e.get("l2anal_h"))
            if norm:
                dts.append(e["dt"])
                rel.append(e["l2error_h"] / norm)
                continue
        if "rel_err" in e:
            dts.append(e["dt"])
            rel.append(e["rel_err"])
    order = np.argsort(dts)
    return np.array(dts)[order], np.array(rel)[order]


def _fit_slope(dts: np.ndarray, rel: np.ndarray) -> float:
    """Least-squares slope of the two finest Δt points (log-log)."""
    logx = np.log(dts[:2])
    logy = np.log(rel[:2])
    slope, _ = np.polyfit(logx, logy, 1)
    return float(slope)


def _ordered_names(integrators: dict):
    return [n for n in PLOT_INTEGRATORS if n in integrators]


def main():
    path = _sweep_path()
    if path is None:
        print("missing results/temporal_sweep.json (or temporal_2d.json) "
              "— run run_temporal_sweep.py first")
        return
    data = load_json(path)
    integrators = data["integrators"]

    fig, ax = plt.subplots(figsize=(6.5, 5.5))

    for name in _ordered_names(integrators):
        case = integrators[name]
        dts, rel = _entries(case)
        if len(dts) < 2:
            print(f"skip {name}: <2 valid points")
            continue
        order = case.get("expected_order")
        slope = _fit_slope(dts, rel)
        line, = ax.loglog(dts, rel, "o-", label=name)

        # Per-curve dashed theory line at the design order, anchored on
        # the finest Δt point (matches the spatial figure's convention).
        if order:
            x_ref, y_ref = dts[0], rel[0]
            x = np.array([dts[0], dts[-1]])
            ax.loglog(x, y_ref * (x / x_ref) ** order, "k--", alpha=0.4)

        # Annotate the fitted slope on the finest interval.
        x_mid = np.sqrt(dts[0] * dts[1])
        y_mid = np.sqrt(rel[0] * rel[1])
        ax.annotate(f"{slope:.2f}", xy=(x_mid, y_mid),
                    xytext=(8, -2), textcoords="offset points",
                    ha="left", va="top", fontsize=16,
                    color=line.get_color())

    ax.set_xlabel(r"$\Delta t$ (s)")
    ax.set_ylabel(r"Relative $L^2$ error in $h$")
    ax.set_title("Tracy temporal convergence", fontsize=15, pad=18,
                 bbox=dict(boxstyle="round,pad=0.3",
                           facecolor="lightyellow", edgecolor="black"))
    ax.grid(True, which="both", alpha=0.3)

    # Label only these Δt ticks; clear the log minor-tick labels.
    ax.xaxis.set_major_locator(FixedLocator([3e3, 5e3, 1e4]))
    ax.xaxis.set_major_formatter(ScalarFormatter())
    ax.xaxis.set_minor_formatter(NullFormatter())

    # Label the dashed reference with the design order it was drawn at.
    # When a single integrator is plotted this is unambiguous; with a mix
    # of orders fall back to a generic "theory".
    orders = {integrators[n].get("expected_order")
              for n in _ordered_names(integrators)} - {None}
    ref_label = f"theory ($O{orders.pop()}$)" if len(orders) == 1 else "theory"

    handles, labels = ax.get_legend_handles_labels()
    handles.append(Line2D([], [], color="black", linestyle="--", alpha=0.4))
    labels.append(ref_label)
    leg = ax.legend(handles, labels, fontsize=13, framealpha=1.0,
                    edgecolor="black")
    leg.get_frame().set_facecolor("white")

    fig.tight_layout()
    out = OUT / "2d_temporal_congergence.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out} (from {path.name})")


if __name__ == "__main__":
    main()
