"""Render the Cockett (2018) soil structure and four moisture snapshots.

Reads ``results/cockett_soil.pvd`` and ``results/cockett_snapshots.pvd``
(produced by ``run_solution.py``) and writes
``figures/Cockett2018/cockett_2018.png``: panel (a) soil indicator
(sand vs loamy sand), panels (b)–(e) moisture content at
t = 0, 24, 48, 72 h.

Uses PyVista in off-screen mode; the figure is composed in matplotlib
so the panel titles, colour bars and layout are easy to tweak.

NOT used in the paper. Superseded by the ParaView-based pipeline in
``parallel_scaling/cockett_figure.py`` (see
``parallel_scaling/COCKETT_FIGURE.md``), which produces
``figures/Cockett2018/cockett_infiltration.pdf`` — the figure `main.tex`
actually includes. This script and its ``cockett_2018.{pdf,png}`` output
are kept only as an earlier draft; do not regenerate/commit
``cockett_2018.*`` again without checking whether the paper reference
has changed back.
"""
from __future__ import annotations

import sys
import xml.etree.ElementTree as ET
from pathlib import Path

import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap
import numpy as np
import pyvista as pv

font_size = 24
plt.rcParams.update({'font.size': font_size})
plt.rcParams["font.family"] = "serif"
plt.rcParams["font.serif"] = ["Times New Roman"]

soil_colours = ["khaki", "darkolivegreen"]
soil_struc_clmp = ListedColormap(soil_colours)

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT  # noqa: E402


HERE = Path(__file__).parent
RESULTS = HERE / "results"
OUT = FIGURE_ROOT / "Cockett2018"
OUT.mkdir(parents=True, exist_ok=True)

pv.OFF_SCREEN = True


def _pvd_datasets(pvd_path: Path):
    """Yield (timestep, absolute_vtu_path) for each DataSet in a PVD."""
    tree = ET.parse(pvd_path)
    base = pvd_path.parent
    for ds in tree.getroot().iter("DataSet"):
        ts = float(ds.get("timestep"))
        file_path = base / ds.get("file")
        yield ts, file_path


def _render(mesh: pv.UnstructuredGrid, scalars: str, *,
            cmap: str, clim: tuple, window_size=(700, 800),
            view_xyz=(7.0, -5.5, 5.5)) -> np.ndarray:
    plotter = pv.Plotter(off_screen=True, window_size=window_size)
    plotter.add_mesh(mesh, scalars=scalars, cmap=cmap, clim=clim,
                        show_edges=False, show_scalar_bar=False,
                        lighting=True, ambient=0.4, diffuse=0.6)
    plotter.camera_position = [view_xyz, (1.0, 1.0, 1.3), (0.0, 0.0, 1.0)]
    plotter.camera.zoom(1.35)
    img = plotter.screenshot(return_img=True)
    plotter.close()
    return img


def main():
    soil_pvd = RESULTS / "cockett_soil.pvd"
    snap_pvd = RESULTS / "cockett_snapshots.pvd"
    if not (soil_pvd.exists() and snap_pvd.exists()):
        print(f"missing PVD inputs in {RESULTS} — run run_solution.py first")
        return

    soil_file = next(_pvd_datasets(soil_pvd))[1]
    snap_entries = list(_pvd_datasets(snap_pvd))

    soil_mesh = pv.read(soil_file)
    soil_field = "SoilIndicator"
    soil_img = _render(soil_mesh, soil_field, cmap=soil_struc_clmp,
                        clim=(0.0, 1.0))

    moisture_imgs = []
    moisture_clim = None
    moisture_meshes = []
    for ts, vtu_path in snap_entries:
        m = pv.read(vtu_path)
        moisture_meshes.append((ts, m))
    # Establish a common colour range across the four snapshots so
    # changes over time read off one shared scale.
    all_vals = np.concatenate([np.asarray(m["MoistureContent"]).ravel()
                                for _, m in moisture_meshes])
    moisture_clim = (float(np.nanmin(all_vals)),
                      float(np.nanmax(all_vals)))
    for ts, m in moisture_meshes:
        moisture_imgs.append((ts,
                              _render(m, "MoistureContent",
                                      cmap="Blues",
                                      clim=moisture_clim)))

    # Compose with matplotlib: panel (a) on top, panels (b)–(e) below.
    fig = plt.figure(figsize=(20, 6.5))
    gs = fig.add_gridspec(1, 5, wspace=0.0,
                            left=0.04, right=0.95, top=0.94, bottom=0.10)

    # Soil panel spans the top row's left half; legend the rest with a
    # short narrative caption.
    ax_soil = fig.add_subplot(gs[0, 0])
    ax_soil.imshow(soil_img)
    ax_soil.set_title("(a) Soil structure", fontsize=font_size)
    ax_soil.axis("off")

    ax_soil_cb = fig.add_axes([0.06, 0.15, 0.14, 0.03])
    soil_norm = plt.Normalize(vmin=0.0, vmax=1.0)
    fig.colorbar(plt.cm.ScalarMappable(norm=soil_norm, cmap=soil_struc_clmp),
                 cax=ax_soil_cb, orientation="horizontal",
                 ticks=[0, 1]).ax.set_xticklabels(["loamy sand", "sand"])

    panel_labels = ["(b)", "(c)", "(d)", "(e)"]
    for k, (ts, img) in enumerate(moisture_imgs):
        ax = fig.add_subplot(gs[0, k + 1])  # k + 1 shifts them into columns 1, 2, 3, and 4
        ax.imshow(img)
        ax.set_title(f"{panel_labels[k]} $t = {ts/3600:.0f}$ h", fontsize=font_size)
        ax.axis("off")

    ax_moist_cb = fig.add_axes([0.50, 0.15, 0.14, 0.03])
    moist_norm = plt.Normalize(vmin=moisture_clim[0], vmax=moisture_clim[1])
    cbar = fig.colorbar(plt.cm.ScalarMappable(norm=moist_norm, cmap="Blues"),
                        cax=ax_moist_cb, orientation="horizontal")
    cbar.set_label(r"Moisture content $\theta$")

    out_png = OUT / "cockett_2018.png"
    fig.savefig(out_png, dpi=200, bbox_inches=None)
    print(f"wrote {out_png}")
    out_pdf = OUT / "cockett_2018.pdf"
    fig.savefig(out_pdf, dpi=200, bbox_inches=None)
    print(f"wrote {out_pdf}")


if __name__ == "__main__":
    main()
