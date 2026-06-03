"""Vauclin (1979) moisture snapshots with flux streamlines (paper Fig. 4).

Reads the time-series VTK collection written by ``run_solution.py``
(``results/solution.pvd`` + ``results/solution/*.vtu``) and builds a
single row of moisture-content panels, one per snapshot time, with the
Darcy flux drawn on top as streamlines.

The visual idiom follows the Tracy ``plot_solution.py`` figure: PyVista
renders each panel off-screen to an RGB image (it owns the
unstructured-grid colouring and the streamline integration), and
matplotlib composes the row so we get attached gap-free panels, the
Times typeface, a boxed rotated row label, one shared vertical colour
bar, and a left-to-right time-axis arrow across the top. The colour
scale is shared across the row, so the snapshot times are directly
comparable. Streamlines are integrated natively by PyVista from the
``VolumetricFlux`` vector field — no scipy regridding onto a structured
grid. The result is written straight to
``figures/Vauclin1979/solution.pdf`` (the path the manuscript includes).

Run from the Firedrake venv (pyvista lives there):

    ~/Workplace/firedrake-2026-03-03/venv-firedrake/bin/python3 plot_solution.py
"""

import sys
from pathlib import Path

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
import pyvista as pv
from matplotlib.cm import ScalarMappable
from matplotlib.colors import Normalize
from matplotlib.patches import FancyArrowPatch

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT  # noqa: E402

# Times everywhere (text and math).
plt.rcParams["font.family"] = "serif"
plt.rcParams["font.serif"] = ["Times New Roman", "Times", "DejaVu Serif"]
plt.rcParams["mathtext.fontset"] = "stix"

HERE = Path(__file__).resolve().parent
PVD = HERE / "results" / "solution.pvd"
OUT = FIGURE_ROOT / "Vauclin1979" / "solution.pdf"

SECONDS_PER_HOUR = 3600.0
PANEL_PX = 900  # off-screen render resolution per panel
N_LEVELS = 10  # discrete colour bands (panels and colour bar)

# Field rendered as the filled background. Streamlines of VolumetricFlux
# are overlaid on every panel (see render_panel).
SCALAR_FIELD = "MoistureContent"
ROW_LABEL = r"Moisture content  $\theta$"
BAR_LABEL = r"$\theta$"
CMAP = "Blues"
VECTOR_FIELD = "VolumetricFlux"

# Streamline seeding/integration. The DQ2 flux is discontinuous across
# elements, so integrating it directly puts kinks and spurious loops in
# the streamlines. We first resample the flux onto a smooth structured
# grid, then seed a row of points just below the top boundary (where
# recharge enters) and integrate downward. The flux is left un-normalised
# so lines fade out where flow is weak rather than being extended
# spuriously into the dry soil.
N_STREAM_SEEDS = 9
STREAM_GRID = (160, 110)  # resampling grid (nx, ny)
FLUX_FLOOR = 1e-6  # below this peak |q| the field is ~static (e.g. t=0)

pv.OFF_SCREEN = True


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


def _streamlines(mesh):
    """Integrate flux streamlines from a row of seeds, or None.

    Returns ``None`` when the peak flux is below ``FLUX_FLOOR`` (e.g. the
    t = 0 snapshot before recharge has kicked in), where the field is
    essentially static and streamlines would be meaningless speckle.

    PyVista's ``streamlines_evenly_spaced_2D`` is unstable on this VTK
    build (it segfaults once it actually integrates), so we resample onto
    a structured grid, seed an explicit row of points just under the top
    boundary, and trace them forward through ``streamlines_from_source``.
    """
    vec = np.asarray(mesh.point_data[VECTOR_FIELD])
    if np.nanmax(np.linalg.norm(vec, axis=1)) < FLUX_FLOOR:
        return None

    x0, x1, y0, y1, *_ = mesh.bounds
    nx, ny = STREAM_GRID
    image = pv.ImageData(
        dimensions=(nx, ny, 1),
        spacing=((x1 - x0) / (nx - 1), (y1 - y0) / (ny - 1), 1.0),
        origin=(x0, y0, 0.0),
    )
    grid = image.sample(mesh)  # continuous interpolation of the DG flux
    grid.set_active_vectors(VECTOR_FIELD)

    # Seed at the very top boundary, across the recharge entry zone (the
    # top ~20 % of the width); seeds placed in the dry soil to the right
    # start in weak, noisy flux and curl into spurious loops near the
    # boundary.
    y_seed = y1
    xs = np.linspace(x0 + 0.02 * (x1 - x0), x0 + 0.20 * (x1 - x0),
                     N_STREAM_SEEDS)
    seeds = pv.PointSet(
        np.column_stack([xs, np.full_like(xs, y_seed), np.zeros_like(xs)])
    )
    try:
        lines = grid.streamlines_from_source(
            seeds,
            vectors=VECTOR_FIELD,
            integration_direction="forward",
            max_length=6.0 * ((x1 - x0) + (y1 - y0)),
            max_steps=20000,
            initial_step_length=0.02,
            min_step_length=0.005,
            max_step_length=0.1,
        )
    except Exception:
        return None
    return lines if lines.n_points > 2 else None


def render_panel(mesh, field, cmap, clim, px=PANEL_PX):
    """Render the scalar field plus flux streamlines to an RGB image.

    The mesh is deep-copied so the actor's mapper draws this dataset's
    active scalars only. Lighting is off so the flat 2D field is not
    shaded. Streamlines are added as white lines in the same off-screen
    scene so they bake straight into the panel image.
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
        n_colors=N_LEVELS,  # discrete bands instead of a smooth 256-colour ramp
    )
    lines = _streamlines(mesh)
    if lines is not None:
        lines.set_active_scalars(None)  # solid colour, not the interpolated field
        plotter.add_mesh(
            lines,
            color="white",
            line_width=2.6,
            render_lines_as_tubes=True,
            lighting=False,  # keep the tubes pure white, not shaded grey
        )
    plotter.view_xy()
    plotter.camera.tight(padding=0.0)  # domain fills the frame, no margin
    plotter.set_background("white")
    img = plotter.screenshot(return_img=True, transparent_background=False)
    plotter.close()
    return img


def main():
    if not PVD.exists():
        print(f"missing {PVD} — run run_solution.py first")
        return
    OUT.parent.mkdir(parents=True, exist_ok=True)
    times, meshes = load_snapshots(PVD)
    ncols = len(meshes)

    hours = [t / SECONDS_PER_HOUR for t in times]
    col_titles = [f"$t = {h:.0f}$ h" for h in hours]

    # Square panels, attached. Reserve a strip on top for the time axis
    # and a strip on the bottom for the benchmark title (left) and the
    # horizontal colour bar (right).
    left, right, top, bottom = 0.04, 0.97, 0.84, 0.16
    pa_w, pa_h = (right - left) / ncols, top - bottom  # one cell's fractions
    fig_w = 12.0
    fig_h = fig_w * (pa_w / pa_h)  # makes each gridded cell square
    fig, axes = plt.subplots(1, ncols, figsize=(fig_w, fig_h))
    if ncols == 1:
        axes = [axes]
    fig.subplots_adjust(
        left=left, right=right, top=top, bottom=bottom, wspace=0.04
    )

    clim = row_clim(meshes, SCALAR_FIELD)
    norm = Normalize(vmin=clim[0], vmax=clim[1])

    for c, mesh in enumerate(meshes):
        ax = axes[c]
        ax.imshow(render_panel(mesh, SCALAR_FIELD, CMAP, clim), aspect="auto")
        ax.set_xticks([])
        ax.set_yticks([])

        # Panel letter (A, B, C, ...) in a light-grey circle, top-right
        # (over the dry, white corner so it stays legible).
        ax.text(
            0.93,
            0.93,
            chr(ord("A") + c),
            transform=ax.transAxes,
            ha="center",
            va="center",
            fontsize=11,
            zorder=5,
            bbox=dict(
                boxstyle="circle,pad=0.25",
                facecolor="lightgrey",
                edgecolor="black",
            ),
        )

    # One shared horizontal colour bar in the bottom-right, mirroring the
    # title box on the bottom-left. Both are centred on the same baseline.
    bar_y, bar_h = 0.075, 0.035
    p_last = axes[ncols - 1].get_position()
    p_mid = axes[ncols // 2].get_position()
    half_axis = 0.5 * p_mid.width  # shift the bar left by half a panel
    cax = fig.add_axes(
        [p_mid.x0 - half_axis, bar_y, p_last.x1 - p_mid.x0, bar_h]
    )
    disc_cmap = plt.get_cmap(CMAP, N_LEVELS)  # matching discrete bands
    cbar = fig.colorbar(
        ScalarMappable(norm=norm, cmap=disc_cmap), cax=cax,
        orientation="horizontal",
    )
    cbar.set_label(BAR_LABEL, fontsize=17, labelpad=6)
    cbar.ax.tick_params(labelsize=12)

    # Light-yellow benchmark title in the bottom-left, mirroring the
    # colour bar on the bottom-right (same baseline).
    title_x = 0.5 * (axes[0].get_position().x0 + p_mid.x0)
    fig.text(
        title_x,
        bar_y + 0.5 * bar_h,
        "Vauclin et al. (1979) benchmark",
        ha="center",
        va="center",
        fontsize=12,
        zorder=5,
        bbox=dict(
            boxstyle="round,pad=0.5", facecolor="lightyellow", edgecolor="black"
        ),
    )

    # Time strip above the panels, sitting clearly outside
    # the panel frames: a left-to-right arrow (the time axis) drawn first
    # and low, so the light-blue time boxes on the same line hide the
    # segments behind them. The arrow ends just before the last box.
    y_line = top + 0.075
    centres = [0.5 * (axes[c].get_position().x0 + axes[c].get_position().x1)
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
