"""
Plot Richards solver scaling results from parsed JSON files.

Produces one multi-panel PDF per experiment, plus a combined VLumping
parameter-sweep figure for Cockett.

Usage:
    python plot_results.py                         # generate PDFs
    python plot_results.py --show                  # also display interactively
    python plot_results.py --parsedir ./parsed     # custom JSON directory
"""

import argparse
import json
from pathlib import Path

import matplotlib
import matplotlib.pyplot as plt
import numpy as np

# ── Solver visual style ─────────────────────────────────────────────────────

SOLVER_STYLE = {
    "vlumping_inexact": dict(color="#d62728", marker="o", label="VLumping (inexact)"),
    "vlumping":         dict(color="#e377c2", marker="s", label="VLumping"),
    "vlumping_1sweep":  dict(color="#bcbd22", marker="^", label="VLumping (1 sweep)"),
    "vlumping_4sweep":  dict(color="#17becf", marker="v", label="VLumping (4 sweep)"),
    "vlumping_richardson": dict(color="#7f7f7f", marker="<", label="VLumping (Richardson)"),
    "vlumping_sor":     dict(color="#8c564b", marker=">", label="VLumping (SOR)"),
    "boomeramg":        dict(color="#1f77b4", marker="D", label="BoomerAMG"),
    "gmg":              dict(color="#2ca02c", marker="P", label="GMG"),
    "ngmres_gmg":       dict(color="#9467bd", marker="X", label="NGMRES+GMG"),
    "gamg":             dict(color="#ff7f0e", marker="h", label="GAMG"),
    "bjacobi":          dict(color="#000000", marker="d", label="BJacobi"),
    "sor":              dict(color="#aec7e8", marker="p", label="SOR"),
    "qn_gmg":           dict(color="#98df8a", marker="*", label="QN+GMG"),
    "gamg_asm":         dict(color="#ffbb78", marker="H", label="GAMG+ASM"),
    "vlumping_linesmooth": dict(color="#e6550d", marker="P", label="VLumping (line smoother)"),
    "vlumping_hmg":        dict(color="#3182bd", marker="X", label="VLumping (HMG)"),
}

FAILURE_MARKERS = {"diverged": "DIVERGED", "oom": "OOM", "incomplete": "TIMEOUT"}


def _style(solver):
    s = SOLVER_STYLE.get(solver, dict(color="gray", marker=".", label=solver))
    return s["color"], s["marker"], s["label"]


# ── Data access helpers ─────────────────────────────────────────────────────

def get_runs(data, solver, scales):
    """Return a list of parsed run dicts for a solver across scales (None if missing)."""
    lookup = {}
    for r in data["runs"]:
        h = r["header"]
        key = (h.get("solver", ""), h.get("scale", ""))
        lookup[key] = r
    return [lookup.get((solver, s)) for s in scales]


def extract_metric(runs, metric_fn):
    """Apply metric_fn to each run, returning (indices, values) for successful runs
    and (indices, labels) for failed runs."""
    ok_idx, ok_val = [], []
    fail_idx, fail_label = [], []
    for i, r in enumerate(runs):
        if r is None:
            continue
        if r["outcome"] == "success" and r.get("summary"):
            val = metric_fn(r)
            if val is not None:
                ok_idx.append(i)
                ok_val.append(val)
        else:
            fail_idx.append(i)
            fail_label.append(FAILURE_MARKERS.get(r["outcome"], "FAIL"))
    return ok_idx, ok_val, fail_idx, fail_label


# ── Metric functions ────────────────────────────────────────────────────────

def mean_wall(r):
    return r["summary"]["mean_wall_per_step"]

def steady_wall(r):
    ss = r.get("steady_state")
    return ss["mean_wall_per_step"] if ss else None

def total_nl(r):
    return r["summary"]["total_nl"]

def total_linear(r):
    return r["summary"]["total_linear"]

def linear_per_nl(r):
    s = r["summary"]
    nl = s["total_nl"]
    return s["total_linear"] / nl if nl > 0 else None

def peak_rss(r):
    return r["summary"].get("peak_rss_mb")

def total_wall(r):
    if not r["steps"]:
        return None
    return sum(s["wall_s"] for s in r["steps"])

def per_krylov_cost(r):
    """Wall time per outer Krylov iteration (steady-state)."""
    ss = r.get("steady_state")
    if not ss or ss["total_linear"] == 0:
        return None
    total_wall_ss = ss["mean_wall_per_step"] * ss["num_steps"]
    return total_wall_ss / ss["total_linear"]


# ── Plotting core ───────────────────────────────────────────────────────────

def plot_panel(ax, x, data, solvers, scales, metric_fn, ylabel,
               xticklabels=None, xlabel=None, log_y=False, title=None,
               fail_y_frac=0.02, show_xticklabels=True):
    """Plot one metric across scales for multiple solvers."""
    all_vals = []
    plotted_labels = set()

    for solver in solvers:
        color, marker, label = _style(solver)
        runs = get_runs(data, solver, scales)
        ok_idx, ok_val, fail_idx, fail_label = extract_metric(runs, metric_fn)

        if ok_val:
            all_vals.extend(ok_val)
            show_label = label if label not in plotted_labels else None
            ax.plot([x[i] for i in ok_idx], ok_val,
                    color=color, marker=marker, label=show_label,
                    linewidth=1.8, markersize=8, zorder=3)
            if show_label:
                plotted_labels.add(label)

        # Store failure info for annotation after y-limits are set
        if fail_idx:
            for fi, fl in zip(fail_idx, fail_label):
                ax._failure_annotations = getattr(ax, "_failure_annotations", [])
                ax._failure_annotations.append((x[fi], color, marker, fl, label, label not in plotted_labels))
                plotted_labels.add(label)

    if log_y and all_vals:
        ax.set_yscale("log")
    ax.set_ylabel(ylabel, fontsize=11)
    if xlabel:
        ax.set_xlabel(xlabel, fontsize=11)
    if xticklabels is not None:
        ax.set_xticks(x)
        if show_xticklabels:
            ax.set_xticklabels(xticklabels, fontsize=10)
        else:
            ax.set_xticklabels([])
    if title:
        ax.set_title(title, fontsize=11, fontweight="bold")
    ax.tick_params(axis="both", labelsize=10)
    ax.grid(True, alpha=0.3, zorder=0)

    # Place failure markers near the bottom of the axes
    annotations = getattr(ax, "_failure_annotations", [])
    if annotations and all_vals:
        ymin = ax.get_ylim()[0]
        fail_y = ymin + fail_y_frac * (max(all_vals) - (min(all_vals) if not log_y else 0))
        for xf, color, marker, flabel, slabel, show_label in annotations:
            ax.plot(xf, fail_y, marker=marker, color=color, markersize=8,
                    zorder=3, label=slabel if show_label else None)
            ax.annotate(flabel, (xf, fail_y), textcoords="offset points",
                        xytext=(0, -14), ha="center", fontsize=8,
                        fontweight="bold", color=color)


def make_figure(data, solvers, scales, x, xticklabels, xlabel, suptitle, figsize=(14, 9)):
    """Create a 2x3 panel figure for an experiment."""
    fig, axes = plt.subplots(2, 3, figsize=figsize, sharex=True)
    fig.subplots_adjust(left=0.06, right=0.98, top=0.92, bottom=0.12,
                        hspace=0.15, wspace=0.22)
    fig.suptitle(suptitle, fontsize=14, fontweight="bold")

    panels = [
        (axes[0, 0], linear_per_nl, "Linear iters / Newton step", "(a) Krylov iters per Newton step"),
        (axes[0, 1], mean_wall, "Wall time / step (s)", "(b) Wall time per step (all)"),
        (axes[0, 2], steady_wall, "Wall time / step (s)", "(c) Wall time per step (steady)"),
        (axes[1, 0], per_krylov_cost, "Time / Krylov iter (s)", "(d) Per-Krylov-iteration cost"),
        (axes[1, 1], peak_rss, "Peak RSS / rank (MB)", "(e) Peak memory per rank"),
        (axes[1, 2], total_wall, "Total wall time (s)", "(f) Total wall time"),
    ]

    for i, (ax, metric_fn, ylabel, title) in enumerate(panels):
        is_bottom = (i >= 3)
        plot_panel(ax, x, data, solvers, scales, metric_fn, ylabel,
                   xticklabels=xticklabels,
                   xlabel=xlabel if is_bottom else None,
                   title=title,
                   show_xticklabels=is_bottom)

    # Single legend at the bottom
    handles, labels = [], []
    for ax in axes.flat:
        for h, l in zip(*ax.get_legend_handles_labels()):
            if l not in labels:
                handles.append(h)
                labels.append(l)
    fig.legend(handles, labels, loc="lower center",
               ncol=min(6, len(labels)), fontsize=10,
               bbox_to_anchor=(0.5, -0.01))
    return fig


# ── Experiment-specific figures ─────────────────────────────────────────────

def fig_cockett(data, outdir):
    """Cockett Round 3: main solver comparison (sweep/medium/large)."""
    scales = ["sweep", "medium", "large"]
    solvers = [
        "boomeramg", "bjacobi", "vlumping_inexact", "vlumping",
        "vlumping_linesmooth", "vlumping_hmg",
        "ngmres_gmg", "gmg", "gamg",
    ]
    x = np.arange(len(scales))
    xlabels = ["1N / 18M", "2N / 36M", "8N / 144M"]
    fig = make_figure(data, solvers, scales, x, xlabels,
                      "Scale (nodes / DOF)",
                      "Cockett 3D — isotropic box, cell AR \u2248 1:1")
    fig.savefig(outdir / "cockett_solvers.png", bbox_inches="tight")
    print(f"  Saved {outdir / 'cockett_solvers.png'}")
    return fig


def fig_cockett_vlumping(data, outdir):
    """Cockett Round 3: VLumping parameter sweep."""
    scales = ["sweep", "medium", "large"]
    solvers = [
        "vlumping_inexact", "vlumping", "vlumping_1sweep",
        "vlumping_4sweep", "vlumping_richardson", "vlumping_sor",
        "vlumping_linesmooth", "vlumping_hmg",
    ]
    x = np.arange(len(scales))
    xlabels = ["1N / 18M", "2N / 36M", "8N / 144M"]
    fig = make_figure(data, solvers, scales, x, xlabels,
                      "Scale (nodes / DOF)",
                      "Cockett 3D — VLumping variants, cell AR \u2248 1:1")
    fig.savefig(outdir / "cockett_vlumping.png", bbox_inches="tight")
    print(f"  Saved {outdir / 'cockett_vlumping.png'}")
    return fig


def fig_murr_vertical(data, outdir):
    """Murrumbidgee vertical weak scaling."""
    scales = ["smoke", "sweep", "medium", "large"]
    solvers = ["vlumping_inexact", "vlumping", "vlumping_linesmooth",
               "vlumping_hmg", "gmg", "boomeramg"]
    x = np.arange(len(scales))
    xlabels = ["1N\n150L\nAR 500:1", "2N\n300L\nAR 1000:1",
               "4N\n600L\nAR 2000:1", "8N\n1200L\nAR 4000:1"]
    fig = make_figure(data, solvers, scales, x, xlabels,
                      "Nodes / Layers / Cell aspect ratio",
                      "Murrumbidgee — vertical weak scaling, \u0394x = 1775 m fixed")
    fig.savefig(outdir / "murr_vertical.png", bbox_inches="tight")
    print(f"  Saved {outdir / 'murr_vertical.png'}")
    return fig


def fig_murr_horizontal(data, outdir):
    """Murrumbidgee horizontal weak scaling."""
    scales = ["h1", "h2", "h4", "h8"]
    solvers = ["vlumping_inexact", "vlumping", "vlumping_linesmooth",
               "vlumping_hmg", "gmg", "bjacobi", "boomeramg", "gamg"]
    x = np.arange(len(scales))
    xlabels = ["1N\n1775 m\nAR 1000:1", "2N\n1250 m\nAR 700:1",
               "4N\n880 m\nAR 500:1", "8N\n620 m\nAR 350:1"]
    fig = make_figure(data, solvers, scales, x, xlabels,
                      "Nodes / \u0394x / Cell aspect ratio",
                      "Murrumbidgee — horizontal weak scaling, 300 layers fixed")
    fig.savefig(outdir / "murr_horizontal.png", bbox_inches="tight")
    print(f"  Saved {outdir / 'murr_horizontal.png'}")
    return fig


# ── Main ────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="Plot Richards scaling results")
    parser.add_argument("--parsedir", default="parsed", help="Directory with JSON files")
    parser.add_argument("--outdir", default="figures", help="Output directory for PDFs")
    parser.add_argument("--show", action="store_true", help="Display plots interactively")
    args = parser.parse_args()

    if not args.show:
        matplotlib.use("Agg")

    parsedir = Path(args.parsedir)
    outdir = Path(args.outdir)
    outdir.mkdir(parents=True, exist_ok=True)

    figs = []

    # Cockett
    cockett_path = parsedir / "cockett.json"
    if cockett_path.exists():
        print("=== Cockett ===")
        with open(cockett_path) as f:
            cockett = json.load(f)
        figs.append(fig_cockett(cockett, outdir))
        figs.append(fig_cockett_vlumping(cockett, outdir))

    # Murrumbidgee vertical
    mv_path = parsedir / "murr_vertical.json"
    if mv_path.exists():
        print("=== Murrumbidgee Vertical ===")
        with open(mv_path) as f:
            mv = json.load(f)
        figs.append(fig_murr_vertical(mv, outdir))

    # Murrumbidgee horizontal
    mh_path = parsedir / "murr_horizontal.json"
    if mh_path.exists():
        print("=== Murrumbidgee Horizontal ===")
        with open(mh_path) as f:
            mh = json.load(f)
        figs.append(fig_murr_horizontal(mh, outdir))

    if args.show:
        plt.show()


if __name__ == "__main__":
    main()
