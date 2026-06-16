"""Assemble the Cockett infiltration figure from the pvbatch panels.

Layout (2 x 3):

    (a) soil / Ks      (b) t=0 initial      legend (Ks + theta bars, fronts)
    (c) t=24 h         (d) t=48 h           (e) t=72 h

Reads the transparent panel PNGs and the JSON colour sidecars written by
cockett_soil_render.py / cockett_moisture_render.py, so the colormaps and
ranges match the renders exactly (the sidecars are the authoritative colour
record). Plotting only -- runs under a plain Python 3 with matplotlib + Pillow,
no Firedrake/ParaView needed. Run the two render scripts first.

    python parallel_scaling/cockett_figure.py

See COCKETT_FIGURE.md for the full pipeline.
"""
import json
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib import gridspec
from matplotlib.colorbar import ColorbarBase
from matplotlib.colors import LinearSegmentedColormap, Normalize
from matplotlib.lines import Line2D
from PIL import Image

# Paths resolved relative to this file so the script works from any checkout.
HERE = Path(__file__).resolve().parent
FIGDIR = HERE.parent / "figures" / "Cockett2018"

# Serif font with a graceful fallback chain: Times New Roman if installed,
# otherwise Times / DejaVu Serif (matplotlib emits a harmless findfont note).
plt.rcParams.update({
    "font.family": "serif",
    "font.serif": ["Times New Roman", "Times", "DejaVu Serif"],
    "mathtext.fontset": "stix",
})


def load_json(path):
    with open(path) as fh:
        return json.load(fh)


for _name in ("soil_structure.json", "moisture.json"):
    if not (FIGDIR / _name).exists():
        raise SystemExit(
            f"Missing {_name} in {FIGDIR}.\nRun the render scripts first:\n"
            "  pvbatch parallel_scaling/cockett_soil_render.py\n"
            "  pvbatch parallel_scaling/cockett_moisture_render.py")

soil_meta = load_json(FIGDIR / "soil_structure.json")
moist_meta = load_json(FIGDIR / "moisture.json")


def exact_cmap(meta):
    """Rebuild the exact colormap used in the pvbatch render from the LUT
    control points exported in the JSON sidecar -- ParaView preset curves do
    not match matplotlib's same-named colormaps (e.g. 'Blues')."""
    pts = meta["rgb_points"]
    return LinearSegmentedColormap.from_list(
        meta["field"], [(p[0], (p[1], p[2], p[3])) for p in pts])


ks_cmap = exact_cmap(soil_meta)
th_cmap = exact_cmap(moist_meta)

# Panels in render order: soil, then each moisture timestep.
times = moist_meta["times_h"]
panel_files = ["soil_structure.png"] + [f"moisture_t{t:02d}h.png" for t in times]
imgs = [Image.open(FIGDIR / f).convert("RGBA") for f in panel_files]

# All panels share the same camera, so crop them with one common alpha bbox to
# strip the surrounding transparent margin while keeping the box registered.
boxes = [im.split()[3].getbbox() for im in imgs]
pad = 6
x0 = max(0, min(b[0] for b in boxes) - pad)
y0 = max(0, min(b[1] for b in boxes) - pad)
x1 = min(imgs[0].width, max(b[2] for b in boxes) + pad)
y1 = min(imgs[0].height, max(b[3] for b in boxes) + pad)
imgs = [im.crop((x0, y0, x1, y1)) for im in imgs]
soil_img, t0_img, t24_img, t48_img, t72_img = imgs

# ---- figure scaffold -------------------------------------------------------
panel_ar = (x1 - x0) / (y1 - y0)          # width / height of a cropped panel
fig = plt.figure(figsize=(11.0, 11.0 / 3 / panel_ar * 2), facecolor="white")
gs = gridspec.GridSpec(2, 3, figure=fig, wspace=0.01, hspace=0.01,
                       left=0.005, right=0.995, top=0.995, bottom=0.005)


def show_panel(spec, img, tag, title=None):
    ax = fig.add_subplot(spec)
    ax.imshow(img)
    ax.set_xticks([]); ax.set_yticks([])
    for s in ax.spines.values():
        s.set_visible(False)
    # Circled capital letter, lower-left, matching the verification figures.
    ax.text(0.07, 0.17, tag, transform=ax.transAxes, ha="center", va="center",
            fontsize=15, zorder=5,
            bbox=dict(boxstyle="circle,pad=0.3", facecolor="lightgrey",
                      edgecolor="black"))
    if title:
        # Title as a horizontal, boxed light-yellow label in the lower-left.
        ax.text(0.05, 0.05, title, transform=ax.transAxes, ha="left",
                va="bottom", fontsize=12, zorder=5,
                bbox=dict(boxstyle="round,pad=0.3", facecolor="lightyellow",
                          edgecolor="black"))
    return ax


show_panel(gs[0, 0], soil_img, "A", "Soil structure")
show_panel(gs[0, 1], t0_img, "B", "Initial Condition")
show_panel(gs[1, 0], t24_img, "C", r"$t = 24$ h")
show_panel(gs[1, 1], t48_img, "D", r"$t = 48$ h")
show_panel(gs[1, 2], t72_img, "E", r"$t = 72$ h")

# ---- legend cell (top-right): two colorbars + pressure-front key ----------
legax = fig.add_subplot(gs[0, 2])
legax.axis("off")

# Ks colorbar (Cividis): conductivity values below, soil-type labels above.
# The two soil blocks sit at the ends of the range -- loamy sand at vmin,
# sand at vmax.
ks_norm = Normalize(soil_meta["vmin"], soil_meta["vmax"])
cax_ks = legax.inset_axes([0.10, 0.80, 0.82, 0.05])
cb_ks = ColorbarBase(cax_ks, cmap=ks_cmap,
                     norm=ks_norm, orientation="horizontal")
cb_ks.set_ticks([2e-5, 3e-5, 4e-5, 5e-5])
cb_ks.set_ticklabels(["2", "3", "4", "5"])
cb_ks.ax.tick_params(labelsize=11)
cb_ks.set_label(r"$K_s$  ($\times 10^{-5}$ m s$^{-1}$)", fontsize=12)
# Soil-type ticks on top, at the actual Ks of each block (vmin / vmax). These
# sit at the very ends of the bar, so anchor the labels inward (left/right) and
# disable clipping to keep them from being cut at the axis edges.
secax = cax_ks.secondary_xaxis("top")
secax.set_xticks([soil_meta["vmin"], soil_meta["vmax"]])
secax.set_xticklabels(["loamy sand", "sand"])
secax.tick_params(labelsize=11)
_stl = secax.get_xticklabels()
_stl[0].set_ha("left")
_stl[1].set_ha("right")
for _t in _stl:
    _t.set_clip_on(False)

# Sand-inclusion isosurface key (same mechanism as the pressure-front key).
iface_handle = [Line2D([0], [0], color=soil_meta["interface_color"], lw=5)]
leg_iface = legax.legend(iface_handle,
                         [soil_meta["interface_label"] + " in A"],
                         loc="center", bbox_to_anchor=(0.5, 0.63),
                         frameon=False, fontsize=11, handlelength=1.6)
legax.add_artist(leg_iface)

# theta colorbar (reversed Blues).
th_norm = Normalize(moist_meta["vmin"], moist_meta["vmax"])
cax_th = legax.inset_axes([0.10, 0.52, 0.82, 0.05])
cb_th = ColorbarBase(cax_th, cmap=th_cmap,
                     norm=th_norm, orientation="horizontal")
cb_th.set_ticks(moist_meta["ticks"])
cb_th.ax.tick_params(labelsize=11)
cb_th.set_label(r"Moisture content $\theta$", fontsize=12)

# Pressure-front key: one coloured line per isosurface level.
levels = moist_meta["pressure_levels_m"]
colors = moist_meta["pressure_colors"]
handles = [Line2D([0], [0], color=colors[str(lev)], lw=5)
           for lev in levels]
labels = [rf"$h = {lev:.3g}$ m" for lev in levels]
legax.legend(handles, labels, loc="center", bbox_to_anchor=(0.5, 0.20),
             title="Pressure head fronts in B–E", frameon=False,
             fontsize=11, title_fontsize=12, handlelength=1.6)

out_pdf = FIGDIR / "cockett_infiltration.pdf"
out_png = FIGDIR / "cockett_infiltration.png"
fig.savefig(out_pdf)
fig.savefig(out_png, dpi=200)
print("wrote", out_pdf)
print("wrote", out_png)
