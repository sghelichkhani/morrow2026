"""Plot the two-panel mass-conservation figures from paper Fig. 3.

Reads ``results/function_space.json`` and ``results/equation_type.json``
and produces

- ``../../figures/MassConservation/function_space.pdf`` — M vs Δx for
  CG (dotted) and DG (solid) at polynomial degrees 0/1/2.
- ``../../figures/MassConservation/equation_type.pdf`` — M vs Δt for
  mixed (solid, stage_type="value") and head (dashed, stage_type="deriv")
  forms, BackwardEuler vs ImplicitMidpoint.
"""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT, load_json  # noqa: E402


HERE = Path(__file__).parent
OUT = FIGURE_ROOT / "MassConservation"
OUT.mkdir(parents=True, exist_ok=True)

FLOOR = 1e-18  # floor for log scale


def _group(entries, key):
    out: dict = {}
    for e in entries:
        if "mass_error" not in e:
            continue
        out.setdefault(e[key], []).append(e)
    return out


def _color_for(family: str, degree: int):
    cmap = {"DQ": plt.get_cmap("Blues"), "CG": plt.get_cmap("Reds")}
    return cmap[family](0.5 + 0.15 * degree)


def plot_function_space():
    path = HERE / "results" / "function_space.json"
    if not path.exists():
        print(f"skip function_space: missing {path}")
        return
    data = load_json(path)
    fig, ax = plt.subplots(figsize=(5.2, 4))
    families_present = set()
    for e in data["entries"]:
        families_present.add((e["family"], e["degree"]))
    for family, degree in sorted(families_present):
        rows = [e for e in data["entries"]
                if e["family"] == family and e["degree"] == degree
                and "mass_error" in e]
        rows.sort(key=lambda r: r["dx"])
        if not rows:
            continue
        dxs = np.array([r["dx"] for r in rows])
        errs = np.maximum([r["mass_error"] for r in rows], FLOOR)
        style = "-" if family == "DQ" else ":"
        ax.loglog(dxs, errs, style + "o",
                  color=_color_for(family, degree),
                  label=f"{family}{degree}")
    ax.set_xlabel(r"$\Delta x$ (m)")
    ax.set_ylabel(r"Cumulative mass loss $M$ (m$^3$)")
    ax.grid(True, which="both", alpha=0.3)
    ax.legend(ncol=2, fontsize=8)
    ax.set_title(r"Mass conservation vs $\Delta x$ ($\Delta t = "
                 f"{data['dt']:g}$ s)")
    fig.tight_layout()
    out = OUT / "function_space.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


def plot_equation_type():
    path = HERE / "results" / "equation_type.json"
    if not path.exists():
        print(f"skip equation_type: missing {path}")
        return
    data = load_json(path)
    fig, ax = plt.subplots(figsize=(5.2, 4))
    styles = {"value": "-", "deriv": "--"}
    colors = {"BackwardEuler": "C0", "ImplicitMidpoint": "C3"}
    names = {"value": "mixed", "deriv": "head"}
    # The paper's §3.2 figure shows BackwardEuler only. Higher-order
    # tableaux (ImplicitMidpoint, DIRK22, ...) are still swept and stored
    # in the JSON for future work; not plotted here.
    PLOT_INTEGRATORS = ("BackwardEuler",)
    combos = sorted({(e["integrator"], e["stage_type"]) for e in data["entries"]})
    for integrator, stage_type in combos:
        if integrator not in PLOT_INTEGRATORS:
            continue
        rows = [e for e in data["entries"]
                if e["integrator"] == integrator and e["stage_type"] == stage_type
                and "mass_error" in e]
        rows.sort(key=lambda r: r["dt"])
        if not rows:
            continue
        dts = np.array([r["dt"] for r in rows])
        errs = np.maximum([r["mass_error"] for r in rows], FLOOR)
        ax.loglog(dts, errs, styles[stage_type] + "o",
                  color=colors[integrator],
                  label=f"{integrator}, {names[stage_type]}")
    ax.set_xlabel(r"$\Delta t$ (s)")
    ax.set_ylabel(r"Cumulative mass loss $M$ (m$^3$)")
    ax.grid(True, which="both", alpha=0.3)
    ax.legend(fontsize=8)
    ax.set_title(
        r"Mass conservation vs $\Delta t$ "
        f"(DQ{data['degree']}, {data['grid_points']}² grid)"
    )
    fig.tight_layout()
    out = OUT / "equation_type.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    plot_function_space()
    plot_equation_type()
