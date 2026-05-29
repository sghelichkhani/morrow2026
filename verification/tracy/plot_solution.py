"""3x3 snapshot panel of the Tracy 2D solution (the paper's solution figure).

Reads the time-series VTK collection written by ``run_solution.py``
(``results/solution.pvd`` + ``results/solution/*.vtu``) and builds a 3x3 figure:

    rows    = fields   (moisture content / pressure head / hydraulic conductivity)
    columns = the snapshot times stored in the PVD

PyVista renders each field panel off-screen to an RGB image (it owns the
unstructured-grid colouring); matplotlib then composes the grid, so we get the
attached (gap-free) panels, Times typeface, rotated boxed row labels, and one
vertical colour bar per row spanning the full row height. The colour scale is
shared along each row, so the three times are directly comparable. The result
is written straight to ``figures/Tracy/solution.pdf`` (the path the manuscript
includes).

Run from the Firedrake venv (pyvista lives there):

    ~/Workplace/firedrake-2026-03-03/venv-firedrake/bin/python3 plot_solution.py
"""

import sys
from pathlib import Path

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
import pyvista as pv
from matplotlib.cm import ScalarMappable
from matplotlib.colors import LogNorm, Normalize
from matplotlib.patches import FancyArrowPatch

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT  # noqa: E402

# Times everywhere (text and math).
plt.rcParams["font.family"] = "serif"
plt.rcParams["font.serif"] = ["Times New Roman", "Times", "DejaVu Serif"]
plt.rcParams["mathtext.fontset"] = "stix"

HERE = Path(__file__).resolve().parent
PVD = HERE / "results" / "solution.pvd"
OUT = FIGURE_ROOT / "Tracy" / "solution.pdf"

SECONDS_PER_DAY = 86400.0
PANEL_PX = 900  # off-screen render resolution per panel
N_LEVELS = 10  # discrete colour bands (panels and colour bars)

# (array name, row label, colour-bar label, colormap, log?) -- top to bottom.
FIELDS = [
    ("MoistureContent", "Moisture content  $\\theta$", r"$\theta$", "Blues", False),
    ("PressureHead", "Pressure head  $h$ [m]", r"$h$ [m]", "Reds", False),
    ("HydraulicConductivity", "Hydraulic conductivity  $K$", r"$K$", "turbo_r", True),
]


def load_snapshots(pvd_path):
    """Return (times, meshes) for every timestep in the PVD collection."""
    reader = pv.get_reader(str(pvd_path))
    times = list(reader.time_values)
    meshes = []
    for t in times:
        reader.set_active_time_value(t)
        meshes.append(reader.read()[0])  # single block per timestep
    return times, meshes


def row_clim(meshes, field):
    """Shared colour limits for one field across all snapshots."""
    lo = min(float(m.point_data[field].min()) for m in meshes)
    hi = max(float(m.point_data[field].max()) for m in meshes)
    return lo, hi


def render_panel(mesh, field, cmap, clim, log=False, px=PANEL_PX):
    """Render one field on one mesh to an RGB image array.

    The mesh is deep-copied because the actor's mapper draws the dataset's
    *active* scalars; sharing a mesh across fields would let one field bleed
    into another panel. Lighting is off so the flat 2D field is not shaded.
    """
    panel = mesh.copy(deep=True)
    plotter = pv.Plotter(off_screen=True, window_size=(px, px))
    plotter.add_mesh(
        panel,
        scalars=field,
        cmap=cmap,
        clim=clim,
        lighting=False,
        show_scalar_bar=False,
        show_edges=False,
        log_scale=log,
        n_colors=N_LEVELS,  # discrete bands instead of a smooth 256-colour ramp
    )
    plotter.view_xy()
    plotter.camera.tight(padding=0.0)  # domain fills the frame, no margin
    plotter.set_background("white")
    img = plotter.screenshot(return_img=True, transparent_background=False)
    plotter.close()
    return img


def main():
    OUT.parent.mkdir(parents=True, exist_ok=True)
    times, meshes = load_snapshots(PVD)
    ncols = len(meshes)
    nrows = len(FIELDS)

    days = [t / SECONDS_PER_DAY for t in times]
    col_titles = [f"$t = {d:.3g}$ d" for d in days]

    # Square panels, attached. Reserve margins for the time strip on top,
    # row labels on the left, and colour bars on the right.
    left, right, top, bottom = 0.07, 0.88, 0.86, 0.02
    pa_w, pa_h = right - left, top - bottom  # panel-area fractions
    fig_w = 12.0
    fig_h = fig_w * (pa_w / pa_h)  # makes each gridded cell square
    fig, axes = plt.subplots(nrows, ncols, figsize=(fig_w, fig_h))
    fig.subplots_adjust(
        left=left, right=right, top=top, bottom=bottom, wspace=0.04, hspace=0.04
    )

    for r, (field, row_label, bar_label, cmap, log) in enumerate(FIELDS):
        clim = row_clim(meshes, field)
        norm = (
            LogNorm(vmin=clim[0], vmax=clim[1])
            if log
            else Normalize(vmin=clim[0], vmax=clim[1])
        )

        for c, mesh in enumerate(meshes):
            ax = axes[r, c]
            ax.imshow(render_panel(mesh, field, cmap, clim, log=log), aspect="auto")
            ax.set_xticks([])
            ax.set_yticks([])

            # Panel letter (A, B, C, ...) in a light-grey circle, top-left.
            ax.text(
                0.04,
                0.96,
                chr(ord("A") + r * ncols + c),
                transform=ax.transAxes,
                ha="center",
                va="center",
                fontsize=15,
                zorder=5,
                bbox=dict(
                    boxstyle="circle,pad=0.3",
                    facecolor="lightgrey",
                    edgecolor="black",
                ),
            )

            if c == 0:
                # Rotated, boxed row label outside the left edge.
                ax.text(
                    -0.12,
                    0.5,
                    row_label,
                    transform=ax.transAxes,
                    rotation=90,
                    ha="center",
                    va="center",
                    fontsize=17,
                    bbox=dict(
                        boxstyle="round,pad=0.4",
                        facecolor="lightyellow",
                        edgecolor="black",
                    ),
                )

        # One vertical colour bar per row. Slightly shorter than the row so the
        # exponential offset factor (e.g. x10^-5) at the top stays visible.
        p0 = axes[r, ncols - 1].get_position()  # rightmost panel, figure coords
        cbar_h = 0.84 * p0.height
        cax = fig.add_axes(
            [p0.x1 + 0.015, p0.y0 + 0.5 * (p0.height - cbar_h), 0.017, cbar_h]
        )
        disc_cmap = plt.get_cmap(cmap, N_LEVELS)  # matching discrete bands
        cbar = fig.colorbar(ScalarMappable(norm=norm, cmap=disc_cmap), cax=cax)
        cbar.set_label(bar_label, rotation=90, fontsize=17, labelpad=10)
        cbar.ax.tick_params(labelsize=12)

    # Time strip across the top: a left-to-right arrow (the time axis) drawn
    # first and low, so the light-blue time boxes sitting on the same line hide
    # the segments behind them. The arrow ends just before the last box.
    y_line = top + 0.025
    centres = [0.5 * (axes[0, c].get_position().x0 + axes[0, c].get_position().x1)
               for c in range(ncols)]
    fig.add_artist(
        FancyArrowPatch(
            (centres[0], y_line),
            (centres[-1] - 0.05, y_line),  # land just before the last box
            transform=fig.transFigure,
            arrowstyle="-|>",
            mutation_scale=22,
            lw=1.6,
            color="black",
            zorder=0.5,
        )
    )
    for c in range(ncols):
        fig.text(
            centres[c],
            y_line,
            col_titles[c],
            ha="center",
            va="center",
            fontsize=16,
            zorder=5,
            bbox=dict(
                boxstyle="round,pad=0.4", facecolor="lightblue", edgecolor="black"
            ),
        )

    fig.savefig(OUT, dpi=200, bbox_inches="tight", pad_inches=0.15)
    plt.close(fig)
    print(f"wrote {OUT}")


if __name__ == "__main__":
    main()
