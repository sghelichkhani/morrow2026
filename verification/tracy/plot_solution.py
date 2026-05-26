"""Plot the Tracy 2D steady-state snapshot."""
from __future__ import annotations

import sys
import xml.etree.ElementTree as ET
from pathlib import Path

import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap
import numpy as np
import pyvista as pv

font_size = 18
colour_map = 'coolwarm'
plt.rcParams.update({'font.size': font_size})
plt.rcParams["font.family"] = "serif"
plt.rcParams["font.serif"] = ["Times New Roman"]


sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT  # noqa: E402


HERE = Path(__file__).parent
RESULTS = HERE / "results"
OUT = FIGURE_ROOT / "Tracy"
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
            cmap: str, clim: tuple, window_size=(10000, 10000)) -> np.ndarray:
    """Render a 2D mesh flat field with visible physical axis bounds."""
    plotter = pv.Plotter(off_screen=True, window_size=window_size)
    
    # Render raw, unshaded values uniformly
    plotter.add_mesh(mesh, scalars=scalars, cmap=cmap, clim=clim,
                     show_edges=False, show_scalar_bar=False,
                     lighting=False)
    
    # Align view to the flat XY plane
    plotter.view_xy()
    
    plotter.show_bounds(
            grid=False,                 # Keeps the background completely clear
            location='outer',           # Positions ticks on the bottom and left outer edges
            all_edges=False,            # Prevents wrapping labels onto the top/right edges
            xtitle="X (m)",             # Explicitly sets your horizontal axis title
            ytitle="Y (m)",             # Explicitly sets your vertical axis title
            font_size=14,               # Increases text scale so it's sharp and readable
            color='black'               # Enforces crisp black text
        )
    
    # Recalculate camera bounds to encompass both the mesh and the new axis labels
    plotter.reset_camera(render=False)
    plotter.camera.zoom(1.5)
    
    # Pull the camera back slightly further to ensure the new axis titles don't get cut off
    plotter.camera.zoom(0.90)
    
    img = plotter.screenshot(return_img=True)
    plotter.close()
    return img


def main():
    pvd_path = RESULTS / "tracy_solution.pvd"
    if not pvd_path.exists():
        print(f"missing {pvd_path} — run run_solution.py first")
        return

    entries = list(_pvd_datasets(pvd_path))
    if not entries:
        print("No datasets found in PVD file.")
        return
    
    entries = list(_pvd_datasets(pvd_path))
    if len(entries) < 3:
        print(f"Expected at least 3 timesteps in PVD, found {len(entries)}.")
        return
    
    indices = [0, len(entries) // 2, -1]
    selected_entries = [entries[i] for i in indices]

    # Pre-load meshes to compute a unified global colour limit (clim)
    loaded_meshes = []
    field_name = "PressureHead"

    for ts, vtu_path in selected_entries:
        mesh = pv.read(vtu_path)
        loaded_meshes.append((ts, mesh))

    # Find global vmin and vmax across all selected times for a consistent scale
    all_vals = np.concatenate([np.asarray(m[field_name]).ravel() for _, m in loaded_meshes])
    global_clim = (float(np.nanmin(all_vals)), float(np.nanmax(all_vals)))

    # Render the 3 snapshots via PyVista using the shared scale
    rendered_images = []
    for ts, mesh in loaded_meshes:
        img = _render(mesh, field_name, cmap=colour_map, clim=global_clim)
        rendered_images.append((ts, img))

    fig = plt.figure(figsize=(10, 4.5))
    gs = fig.add_gridspec(1, 3, wspace=0.05, left=0.05, right=0.95, top=0.88, bottom=0.22)

    panel_labels = ["(a)", "(b)", "(c)"]
    for i, (ts, img) in enumerate(rendered_images):
        ax = fig.add_subplot(gs[0, i])
        ax.imshow(img)
        # Displaying the timestamp in hours (assuming ts is in seconds)
        ax.set_title(f"{panel_labels[i]} $t = {ts:.0f}$ s", fontsize=18, pad=8)
        ax.axis("off")

    ax_cb = fig.add_axes([0.25, 0.15, 0.50, 0.04])
    norm = plt.Normalize(vmin=global_clim[0], vmax=global_clim[1])
    cbar = fig.colorbar(plt.cm.ScalarMappable(norm=norm, cmap=colour_map),
                        cax=ax_cb, orientation="horizontal")
    cbar.set_label("Pressure head $h$ (m)")


    out_pdf = OUT / "tracy_solution.pdf"
    fig.savefig(out_pdf, dpi=200, bbox_inches=None)
    print(f"wrote {out_pdf}")


if __name__ == "__main__":
    main()
