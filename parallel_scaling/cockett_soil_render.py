"""Render the Cockett soil-structure panel (A) for the aggregate figure.

Produces a transparent-background PNG of the 2x2x2.6 m box: a semi-transparent
surface colored by saturated hydraulic conductivity K_s, with a solid
isosurface at the soil interface (indicator = 0.5) showing the sand-blob body.

No colorbar is drawn here on purpose -- the field range and colormap are
written to a JSON sidecar so the matplotlib aggregator can place a matching
colorbar when it composites this panel with the moisture-timestep panels.

Run under ParaView's pvbatch (tested with ParaView 6.1.1), from the repo root:

    pvbatch parallel_scaling/cockett_soil_render.py

See COCKETT_FIGURE.md for the full pipeline and data prerequisites.
"""
import json
from pathlib import Path

from paraview.simple import (
    CleantoGrid, Calculator, Contour, ColorBy, GetActiveViewOrCreate,
    GetColorTransferFunction, OpenDataFile, Outline, Render, ResampleToImage,
    ResetCamera, SaveScreenshot, Show, UpdatePipeline,
)

# All paths are resolved relative to this file, so the scripts work from any
# checkout location without editing.
HERE = Path(__file__).resolve().parent
REPO = HERE.parent
SOIL_PVD = HERE / "results" / "cockett_hires" / "cockett_hires_soil.pvd"
FIGDIR = REPO / "figures" / "Cockett2018"
OUT_PNG = FIGDIR / "soil_structure.png"
OUT_JSON = FIGDIR / "soil_structure.json"

if not SOIL_PVD.exists():
    raise SystemExit(
        f"Input data not found:\n  {SOIL_PVD}\n"
        "The Cockett VTK output is not shipped with this repository (it is large\n"
        "and regenerable). Produce it with the cockett_visualise.py driver -- see\n"
        "COCKETT_FIGURE.md for the command and PYTHONPATH.")

# Soil indicator -> saturated hydraulic conductivity K_s (m/s):
# loamy sand (indicator 0) -> sand (indicator 1).
KS_LOAM, KS_SAND = 1.69e-5, 5.82e-5
CMAP = "Cividis"          # ParaView preset; matplotlib equivalent: "cividis"

s = OpenDataFile(str(SOIL_PVD))
UpdatePipeline()

# Weld Firedrake's per-cell duplicated points so transparency renders cleanly.
cleaned = CleantoGrid(Input=s)

calc = Calculator(Input=cleaned)
calc.AttributeType = "Point Data"
calc.ResultArrayName = "Ks"
calc.Function = f"{KS_LOAM} + {KS_SAND - KS_LOAM}*SoilIndicator"
UpdatePipeline()

# Resample onto a uniform image for the isosurface. Contouring the raw
# per-cell unstructured grid cracks along the 104-rank partition seams and
# shades as patchy dark slivers; a watertight image gives a seamless, smoothly
# shaded blob.
img = ResampleToImage(Input=calc)
img.SamplingDimensions = [200, 200, 256]
UpdatePipeline()

view = GetActiveViewOrCreate("RenderView")
view.ViewSize = [1100, 1400]
view.OrientationAxesVisibility = 0
view.Background = [1.0, 1.0, 1.0]

lut = GetColorTransferFunction("Ks")
lut.ApplyPreset(CMAP, True)
lut.AutomaticRescaleRangeMode = "Never"   # stop later Show/ColorBy clobbering
lut.RescaleTransferFunction(KS_LOAM, KS_SAND)

# Color the sand-inclusion isosurface with the colormap's sand (high-Ks) end,
# read straight from the LUT -- the surface bounds sand, so this ties it to the
# right end of the Ks bar instead of an arbitrary hand-picked color. RGBPoints
# is a flat [x,r,g,b, x,r,g,b, ...] list (len divisible by 4), so the last three
# entries are the (r,g,b) of the highest control point = the vmax color.
INTERFACE_COLOR = list(lut.RGBPoints[-3:])

# Transparent box surface, colored by conductivity, for context.
disp = Show(calc, view)
disp.Representation = "Surface"
ColorBy(disp, ("POINTS", "Ks"))
disp.SetScalarBarVisibility(view, False)
disp.Ambient = 0.35
disp.Diffuse = 0.75
disp.Opacity = 0.3

# Solid isosurface at the soil interface (indicator = 0.5): the sand-blob body.
contour = Contour(Input=img)
contour.ContourBy = ["POINTS", "SoilIndicator"]
contour.Isosurfaces = [0.5]
contour.ComputeNormals = 1
cdisp = Show(contour, view)
cdisp.Representation = "Surface"
ColorBy(cdisp, None)                 # solid neutral so the 3D shape reads
cdisp.AmbientColor = INTERFACE_COLOR
cdisp.DiffuseColor = INTERFACE_COLOR
cdisp.SetScalarBarVisibility(view, False)
cdisp.Opacity = 1.0

# Domain box outline, matching the moisture panels so all columns frame the
# 2x2x2.6 m extent identically.
outline = Outline(Input=cleaned)
odisp = Show(outline, view)
odisp.ColorArrayName = ["POINTS", ""]
odisp.AmbientColor = [0.15, 0.15, 0.15]
odisp.DiffuseColor = [0.15, 0.15, 0.15]
odisp.LineWidth = 2.0

# Canonical camera, identical across every panel (soil + moisture) so the
# columns of the aggregate figure register exactly. Keep these scripts in sync:
# focal point = box centre, fixed direction, fixed post-reset zoom.
view.CameraFocalPoint = [1.0, 1.0, 1.3]
view.CameraPosition = [5.2, -4.8, 4.6]
view.CameraViewUp = [0.0, 0.0, 1.0]
view.CameraParallelProjection = 0
ResetCamera(view)
view.CameraParallelScale = view.CameraParallelScale * 0.80
Render()

lut.RescaleTransferFunction(KS_LOAM, KS_SAND)   # final word on the range
FIGDIR.mkdir(parents=True, exist_ok=True)
SaveScreenshot(str(OUT_PNG), view, ImageResolution=[1100, 1400],
               TransparentBackground=1)


def rgb_points(transfer_fn, vmin, vmax):
    """Normalised [t, r, g, b] control points of a ParaView color LUT, so the
    matplotlib colorbar is built from the exact colors used in the render
    (ParaView preset curves differ from matplotlib's same-named colormaps)."""
    flat = list(transfer_fn.RGBPoints)
    pts = []
    for i in range(0, len(flat), 4):
        t = (flat[i] - vmin) / (vmax - vmin)
        pts.append([min(1.0, max(0.0, t)), flat[i + 1], flat[i + 2], flat[i + 3]])
    return pts


meta = {
    "field": "Ks",
    "label": "Saturated hydraulic conductivity $K_s$ (m s$^{-1}$)",
    "vmin": KS_LOAM,
    "vmax": KS_SAND,
    "cmap": "cividis",
    "rgb_points": rgb_points(lut, KS_LOAM, KS_SAND),
    "ticks": [KS_LOAM, 3.0e-5, 4.0e-5, 5.0e-5, KS_SAND],
    "interface_color": INTERFACE_COLOR,
    "interface_label": "Sand inclusion surface",
}
with open(OUT_JSON, "w") as fh:
    json.dump(meta, fh, indent=2)

print("wrote", OUT_PNG)
print("wrote", OUT_JSON)
print("Ks range:", KS_LOAM, "->", KS_SAND, "cmap:", meta["cmap"])
