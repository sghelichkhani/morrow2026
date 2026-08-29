"""
Plot Richards solver scaling results from parsed JSON files.

Two layers of output:

* **Paper figures**, one panel per file, named to match the manuscript
  ``\\includegraphics`` calls. Written into ``../figures/Cockett2018/``
  and ``../figures/Murrumbidgee/`` (relative to this directory).
* **Diagnostic consolidated figures**, multi-panel PNGs in
  ``parallel_scaling/figures/`` (gitignored), useful for quick sweeps
  through a benchmark.

Usage:
    python plot_results.py                         # generate both
    python plot_results.py --paper-only            # skip diagnostic PNGs
    python plot_results.py --parsedir ./parsed     # custom JSON directory
"""

import argparse
import json
from pathlib import Path

import matplotlib
import matplotlib.pyplot as plt
import numpy as np
from figstyle import save


PAPER_FIGURE_ROOT = Path(__file__).resolve().parent.parent / "figures"

# ── Solver visual style ─────────────────────────────────────────────────────

SOLVER_STYLE = {
    "vlumping_inexact": dict(color="#d62728", marker="o", label="VLumping"),
    "vlumping":         dict(color="#e377c2", marker="s", label="VLumping (exact)"),
    "vlumping_1sweep":  dict(color="#bcbd22", marker="^", label="VLumping (1 sweep)"),
    "vlumping_4sweep":  dict(color="#17becf", marker="v", label="VLumping (4 sweep)"),
    "vlumping_richardson": dict(color="#7f7f7f", marker="<", label="VLumping (Richardson)"),
    "vlumping_sor":     dict(color="#8c564b", marker=">", label="VLumping (SOR)"),
    "boomeramg":        dict(color="#1f77b4", marker="D", label="BoomerAMG"),
    "gmg":              dict(color="#2ca02c", marker="P", label="GMG-H"),
    "ngmres_gmg":       dict(color="#9467bd", marker="X", label="NGMRES+GMG"),
    "gamg":             dict(color="#ff7f0e", marker="h", label="GAMG"),
    "bjacobi":          dict(color="#000000", marker="d", label="BJacobi"),
    "sor":              dict(color="#aec7e8", marker="p", label="SOR"),
    "qn_gmg":           dict(color="#98df8a", marker="*", label="QN+GMG"),
    "gamg_asm":         dict(color="#ffbb78", marker="H", label="GAMG+ASM"),
    "vlumping_linesmooth": dict(color="#e6550d", marker="P", label="VLumping (line smoother)"),
    "vlumping_hmg":        dict(color="#3182bd", marker="X", label="VLumping-HMG"),
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

def linear_per_step(r):
    """Linear (Krylov) iterations per timestep, averaged over all steps."""
    s = r["summary"]
    ns = s.get("steps_completed")
    return s["total_linear"] / ns if ns else None

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

    # Place failure markers near the bottom of the axes. Where several
    # solvers fail at the same x (e.g. GMG-H OOM and BoomerAMG DIVERGED on
    # the layers sweep), stagger the markers in x and stack their labels
    # vertically so the annotations do not overprint.
    annotations = getattr(ax, "_failure_annotations", [])
    if annotations and all_vals:
        ymin = ax.get_ylim()[0]
        fail_y = ymin + fail_y_frac * (max(all_vals) - (min(all_vals) if not log_y else 0))
        groups = {}
        for a in annotations:
            groups.setdefault(a[0], []).append(a)
        for xf, group in groups.items():
            n = len(group)
            for j, (_, color, marker, flabel, slabel, show_label) in enumerate(group):
                dx = 0.0 if n == 1 else (j - (n - 1) / 2.0) * 0.16
                ax.plot(xf + dx, fail_y, marker=marker, color=color, markersize=8,
                        zorder=3, label=slabel if show_label else None)
                ax.annotate(flabel, (xf + dx, fail_y), textcoords="offset points",
                            xytext=(0, -14 - 12 * j), ha="center", fontsize=8,
                            fontweight="bold", color=color)


def save_single_panel(data, solvers, scales, x, xticklabels, xlabel,
                       metric_fn, ylabel, title, outfile,
                       log_y=False, figsize=(6.0, 4.5)):
    """Render one metric across scales for multiple solvers as a single-panel figure.

    Used for the per-panel paper figures (one PDF per metric); see
    ``make_figure`` for the consolidated diagnostic layout.
    """
    outfile = Path(outfile)
    outfile.parent.mkdir(parents=True, exist_ok=True)
    fig, ax = plt.subplots(figsize=figsize)
    plot_panel(ax, x, data, solvers, scales, metric_fn, ylabel,
               xticklabels=xticklabels, xlabel=xlabel,
               log_y=log_y, title=title)
    # Legend below the axes so the panel stays clean.
    handles, labels = ax.get_legend_handles_labels()
    if handles:
        fig.legend(handles, labels, loc="lower center",
                   ncol=min(4, len(labels)), fontsize=8,
                   bbox_to_anchor=(0.5, -0.02))
    fig.subplots_adjust(left=0.16, right=0.97, top=0.92, bottom=0.32)
    save(fig, outfile)
    plt.close(fig)
    print(f"  Saved {outfile}")


# Panel definitions: (metric_fn, ylabel, panel_title, log_y).
PAPER_METRICS = {
    "wall":      (mean_wall,     "Wall time per step (s)",     "Wall time per time-step", True),
    "iters":     (linear_per_step, "Linear iters / time-step",  "Linear iterations",       False),
    "memory":    (peak_rss,      "Peak RSS per rank (MB)",     "Peak memory per rank",    True),
}


def emit_paper_panels(data, solvers, scales, x, xticklabels, xlabel,
                       outdir, *, filename_map):
    """Emit each metric as its own single-panel PDF.

    ``filename_map`` is a dict ``{metric_key: filename_stem}`` choosing
    which panels to emit and what to call them on disk. ``metric_key``
    must be a key of ``PAPER_METRICS``.
    """
    for metric_key, stem in filename_map.items():
        metric_fn, ylabel, title, log_y = PAPER_METRICS[metric_key]
        save_single_panel(
            data, solvers, scales, x, xticklabels, xlabel,
            metric_fn, ylabel, title, outdir / f"{stem}.pdf",
            log_y=log_y,
        )


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

def fig_cockett(data, outdir, paper_outdir=None):
    """Cockett Round 3: main solver comparison (sweep/medium/large/huge)."""
    scales = ["sweep", "medium", "large", "huge"]
    # Six-solver roster matching the manuscript §3.4 story: two single-level
    # baselines (SOR, BJacobi), GMG, the anisotropy-tuned BoomerAMG, and the
    # two shipped VLumping presets (vlumping_inexact is the shipped `vlumping`).
    solvers = [
        "sor", "bjacobi", "gmg", "boomeramg",
        "vlumping_inexact", "vlumping_hmg",
    ]
    x = np.arange(len(scales))
    xlabels = ["1N / 18M", "2N / 36M", "4N / 72M", "8N / 144M"]
    if paper_outdir is not None:
        _cockett_emit_paper_panels(data, solvers, scales, x, xlabels,
                                    paper_outdir)
    if outdir is None:
        return None
    fig = make_figure(data, solvers, scales, x, xlabels,
                      "Scale (nodes / DOF)",
                      "Cockett 3D — isotropic box, cell AR \u2248 1:1")
    save(fig, outdir / "cockett_solvers.png")
    print(f"  Saved {outdir / 'cockett_solvers.png'}")
    return fig


def _cockett_emit_paper_panels(data, solvers, scales, x, xlabels, paper_outdir):
    emit_paper_panels(
        data, solvers, scales, x, xlabels,
        "Scale (nodes / DOF)",
        paper_outdir / "Cockett2018",
        filename_map={
            "wall":   "simulation_time",
            "iters":  "iterations",
            "memory": "memory",
        },
    )


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
    save(fig, outdir / "cockett_vlumping.png")
    print(f"  Saved {outdir / 'cockett_vlumping.png'}")
    return fig


def fig_murr_vertical(data, outdir, paper_outdir=None):
    """Murrumbidgee vertical weak scaling."""
    scales = ["smoke", "sweep", "medium", "large"]
    # Same baseline+shipped roster as the horizontal figure: GMG-H baseline
    # (works but OOMs beyond 2 nodes here), BoomerAMG (diverges), and the
    # two shipped VLumping presets, which are the only ones flat in layers.
    solvers = ["gmg", "boomeramg", "vlumping_inexact", "vlumping_hmg"]
    x = np.arange(len(scales))
    xlabels = ["1N\n150L\nAR 500:1", "2N\n300L\nAR 1000:1",
               "4N\n600L\nAR 2000:1", "8N\n1200L\nAR 4000:1"]
    if paper_outdir is not None:
        emit_paper_panels(
            data, solvers, scales, x, xlabels,
            "Nodes / Layers / Cell aspect ratio",
            paper_outdir / "Murrumbidgee",
            filename_map={
                "wall":   "time_per_timestep_layers",
                "iters":  "linear_iterations_layers",
                "memory": "memory_layers",
            },
        )
    if outdir is None:
        return None
    fig = make_figure(data, solvers, scales, x, xlabels,
                      "Nodes / Layers / Cell aspect ratio",
                      "Murrumbidgee — vertical weak scaling, \u0394x = 1775 m fixed")
    save(fig, outdir / "murr_vertical.png")
    print(f"  Saved {outdir / 'murr_vertical.png'}")
    return fig


def fig_murr_strong(data, outdir, paper_outdir=None):
    """Murrumbidgee strong scaling (fixed Δx=620 m, 300 layers, nodes 1→32)."""
    scales = ["s1", "s2", "s4", "s8", "s16", "s32"]
    solvers = ["vlumping_inexact", "vlumping_hmg"]
    x = np.log2([1, 2, 4, 8, 16, 32])
    xlabels = ["1", "2", "4", "8", "16", "32"]
    if paper_outdir is not None:
        outpath = paper_outdir / "Murrumbidgee" / "strong_scaling.pdf"
        outpath.parent.mkdir(parents=True, exist_ok=True)
        fig, ax = plt.subplots(figsize=(6, 4.5))
        # Reframed as an extreme-scale reach/robustness demonstration rather
        # than a slope-fit strong-scaling test. VLumping (inexact Newton)
        # carries the tractable 2-8 node regime; at 32 nodes / 3328 cores its
        # direct coarse solve diverges, so the single VLumping-HMG point is
        # what reaches the full 320 M DOF decomposition.
        plot_panel(ax, x, data, solvers, scales, mean_wall,
                   "Wall time per step (s)",
                   xticklabels=xlabels, xlabel="Nodes",
                   log_y=True, title="320 M DOF fixed, 620 m / 300 layers")
        # Faint ideal-1/N reference, anchored at the 2-node point and drawn
        # ONLY over the tractable 2-8 node regime (not extended to 16/32,
        # where the point is reach/robustness, not a scaling slope).
        ref_scales = ["s2", "s4", "s8"]
        ref_runs = get_runs(data, "vlumping_inexact", ref_scales)
        _, ref_val, _, _ = extract_metric(ref_runs, mean_wall)
        if ref_val:
            xr = np.log2([2, 4, 8])
            ideal = ref_val[0] * 2.0 ** -(xr - xr[0])
            ax.plot(xr, ideal, ls="--", color="gray", lw=1.0, alpha=0.55,
                    zorder=1, label="Ideal 1/N (2–8 nodes)")
        handles, labels = ax.get_legend_handles_labels()
        if handles:
            ax.legend(handles, labels, fontsize=9)
        fig.tight_layout()
        save(fig, outpath)
        plt.close(fig)
        print(f"  Saved {outpath}")
    if outdir is None:
        return None
    return None  # consolidated PNG not needed; per-panel is the paper figure


def fig_murr_hierarchy(data, outdir, paper_outdir=None):
    """GMG hierarchy-depth study (paper Fig. hierarchy_levels)."""
    scales = ["L1", "L2", "L3", "L4"]
    solvers = ["gmg", "vlumping_hmg"]
    x = np.array([1, 2, 3, 4])
    xlabels = ["1", "2", "3", "4"]
    if paper_outdir is not None:
        outpath = paper_outdir / "Murrumbidgee" / "hierarchy_levels.pdf"
        outpath.parent.mkdir(parents=True, exist_ok=True)
        fig, axes = plt.subplots(1, 2, figsize=(11, 4.5))
        plot_panel(axes[0], x, data, solvers, scales, linear_per_step,
                   "Linear iters / time-step",
                   xticklabels=xlabels, xlabel="Hierarchy levels",
                   title="(a) Iterations")
        plot_panel(axes[1], x, data, solvers, scales, mean_wall,
                   "Wall time per step (s)",
                   xticklabels=xlabels, xlabel="Hierarchy levels",
                   log_y=True, title="(b) Wall time")
        # Annotate the minima for each solver in each panel: solid for
        # min-iters, dotted for min-wall (matches the paper caption).
        for solver in solvers:
            color, marker, _ = _style(solver)
            runs = get_runs(data, solver, scales)
            for ax, metric_fn, style in [(axes[0], linear_per_step, "-"),
                                          (axes[1], mean_wall, ":")]:
                ok_idx, ok_val, _, _ = extract_metric(runs, metric_fn)
                if not ok_val:
                    continue
                best = int(np.argmin(ok_val))
                ax.plot(x[ok_idx[best]], ok_val[best], marker=marker,
                        markersize=14, markerfacecolor="none",
                        markeredgewidth=2, color=color, zorder=4,
                        linestyle=style)
        handles, labels = axes[0].get_legend_handles_labels()
        fig.legend(handles, labels, loc="lower center", ncol=2,
                   fontsize=10, bbox_to_anchor=(0.5, -0.04))
        fig.tight_layout()
        save(fig, outpath)
        plt.close(fig)
        print(f"  Saved {outpath}")
    if outdir is None:
        return None
    return None


def fig_murr_horizontal(data, outdir, paper_outdir=None):
    """Murrumbidgee horizontal weak scaling."""
    scales = ["h1", "h2", "h4", "h8"]
    # Baseline+shipped roster for the manuscript §4 story: BJacobi and the
    # GMG-H baseline (both work), the two shipped VLumping presets that
    # scale, and BoomerAMG which diverges on this anisotropic mesh (shown
    # as a DIVERGED marker — the motivation for VLumping). The GAMG (OOM)
    # and the VLumping ablation variants are dropped from the main figure.
    solvers = ["bjacobi", "gmg", "boomeramg",
               "vlumping_inexact", "vlumping_hmg"]
    x = np.arange(len(scales))
    xlabels = ["1N\n1775 m\nAR 1000:1", "2N\n1250 m\nAR 700:1",
               "4N\n880 m\nAR 500:1", "8N\n620 m\nAR 350:1"]
    if paper_outdir is not None:
        emit_paper_panels(
            data, solvers, scales, x, xlabels,
            "Nodes / Δx / Cell aspect ratio",
            paper_outdir / "Murrumbidgee",
            filename_map={
                "wall":   "time_per_timestep",
                "iters":  "linear_iterations",
                "memory": "memory",
            },
        )
    if outdir is None:
        return None
    fig = make_figure(data, solvers, scales, x, xlabels,
                      "Nodes / \u0394x / Cell aspect ratio",
                      "Murrumbidgee — horizontal weak scaling, 300 layers fixed")
    save(fig, outdir / "murr_horizontal.png")
    print(f"  Saved {outdir / 'murr_horizontal.png'}")
    return fig


# ── Main ────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="Plot Richards scaling results")
    parser.add_argument("--parsedir", default="parsed", help="Directory with JSON files")
    parser.add_argument("--outdir", default="figures",
                        help="Output dir for diagnostic consolidated PNGs "
                             "(set to '' to skip them).")
    parser.add_argument("--paper-outdir", default=str(PAPER_FIGURE_ROOT),
                        help="Output root for paper per-panel PDFs "
                             "(set to '' to skip them).")
    parser.add_argument("--show", action="store_true", help="Display plots interactively")
    args = parser.parse_args()

    if not args.show:
        matplotlib.use("Agg")

    parsedir = Path(args.parsedir)
    outdir = Path(args.outdir) if args.outdir else None
    if outdir is not None:
        outdir.mkdir(parents=True, exist_ok=True)
    paper_outdir = Path(args.paper_outdir) if args.paper_outdir else None

    figs = []

    # Cockett
    cockett_path = parsedir / "cockett.json"
    if cockett_path.exists():
        print("=== Cockett ===")
        with open(cockett_path) as f:
            cockett = json.load(f)
        figs.append(fig_cockett(cockett, outdir, paper_outdir=paper_outdir))
        if outdir is not None:
            figs.append(fig_cockett_vlumping(cockett, outdir))

    # Murrumbidgee vertical
    mv_path = parsedir / "murr_vertical.json"
    if mv_path.exists():
        print("=== Murrumbidgee Vertical ===")
        with open(mv_path) as f:
            mv = json.load(f)
        figs.append(fig_murr_vertical(mv, outdir, paper_outdir=paper_outdir))

    # Murrumbidgee horizontal
    mh_path = parsedir / "murr_horizontal.json"
    if mh_path.exists():
        print("=== Murrumbidgee Horizontal ===")
        with open(mh_path) as f:
            mh = json.load(f)
        figs.append(fig_murr_horizontal(mh, outdir, paper_outdir=paper_outdir))

    # Murrumbidgee strong scaling
    ms_path = parsedir / "murr_strong.json"
    if ms_path.exists():
        print("=== Murrumbidgee Strong ===")
        with open(ms_path) as f:
            ms = json.load(f)
        figs.append(fig_murr_strong(ms, outdir, paper_outdir=paper_outdir))

    # Murrumbidgee hierarchy-depth study
    mhier_path = parsedir / "murr_hierarchy.json"
    if mhier_path.exists():
        print("=== Murrumbidgee Hierarchy ===")
        with open(mhier_path) as f:
            mhier = json.load(f)
        figs.append(fig_murr_hierarchy(mhier, outdir, paper_outdir=paper_outdir))

    if args.show:
        plt.show()


if __name__ == "__main__":
    main()
