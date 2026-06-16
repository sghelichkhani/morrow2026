"""Render the Cockett moisture/pressure panels (B-E) for the aggregate figure.

For each requested time, produces a transparent-background PNG showing the
moisture content theta as a volume rendering (reversed Blues, fixed range and
constant opacity so panels are comparable) with three pressure-head isosurfaces
overlaid as contour surfaces (H_LEVELS) that track the wetting front.

Same as the soil panel: weld Firedrake's per-cell duplicated points with
CleanToGrid first, draw no colorbar (the matplotlib aggregator places it from
the JSON sidecar), transparent background, identical camera. Colors are sampled
from named colormaps and exported to the JSON sidecar so the render and the
matplotlib legend stay identical.

Run under ParaView's pvbatch (tested with ParaView 6.1.1), from the repo root:

    pvbatch parallel_scaling/cockett_moisture_render.py

See COCKETT_FIGURE.md for the full pipeline and data prerequisites.
"""
import json
from pathlib import Path

from paraview.simple import (
    CleantoGrid, Contour, ColorBy, GetActiveViewOrCreate,
    GetColorTransferFunction, GetOpacityTransferFunction, OpenDataFile,
    Outline, Render, ResampleToImage, ResetCamera, SaveScreenshot, Show,
    UpdatePipeline,
)

# All paths are resolved relative to this file, so the scripts work from any
# checkout location without editing.
HERE = Path(__file__).resolve().parent
REPO = HERE.parent
PVD = HERE / "results" / "cockett_hires" / "cockett_hires.pvd"
FIGDIR = REPO / "figures" / "Cockett2018"

if not PVD.exists():
    raise SystemExit(
        f"Input data not found:\n  {PVD}\n"
        "The Cockett VTK output is not shipped with this repository (it is large\n"
        "and regenerable). Produce it with the cockett_visualise.py driver -- see\n"
        "COCKETT_FIGURE.md for the command and PYTHONPATH.")

# Fixed theta color range across all panels (data spans ~0.176-0.364). The
# Blues preset is reversed (dark = dry, light = wet) and rendered at a constant
# opacity everywhere so the whole field shows as a soft translucent body.
THETA_MIN, THETA_MAX = 0.18, 0.36
THETA_CMAP = "Blues"            # reversed below; matplotlib equivalent: "Blues_r"
THETA_ALPHA = 0.1               # constant opacity across the whole theta range

# Three mid-range pressure-head fronts inside the wetting-front transition.
# Levels stay below the wet plateau (h ~ -0.10 m, which double-sheets near the
# top surface) and away from the extremes; colored as a warm ramp.
H_LEVELS = [-0.165, -0.21, -0.255]

# Front colors are sampled from a named colormap rather than hand-picked, so
# nothing is invented and the render + matplotlib legend stay identical (the
# colors are exported to the JSON sidecar). Black-Body Radiation is a heat ramp
# (dark red -> orange -> yellow); sampling at evenly spaced interior points
# t=(i+1)/(n+1) avoids the extremes and runs wetter fronts hotter.
PRESSURE_CMAP = "Black-Body Radiation"
_plut = GetColorTransferFunction("_pressure_front_cmap")
_plut.ApplyPreset(PRESSURE_CMAP, True)
_plut.RescaleTransferFunction(0.0, 1.0)
_pcs = _plut.GetClientSideObject()
_n = len(H_LEVELS)
H_COLORS = {lev: [_pcs.GetRedValue((i + 1) / (_n + 1)),
                  _pcs.GetGreenValue((i + 1) / (_n + 1)),
                  _pcs.GetBlueValue((i + 1) / (_n + 1))]
            for i, lev in enumerate(H_LEVELS)}

# Times to render: 0, 24, 48, 72 h.
TIMES_H = [0, 24, 48, 72]

r = OpenDataFile(str(PVD))
UpdatePipeline()

# Weld per-cell duplicated points once; the transient field rides along.
cleaned = CleantoGrid(Input=r)
UpdatePipeline()

view = GetActiveViewOrCreate("RenderView")
view.ViewSize = [1100, 1400]
view.OrientationAxesVisibility = 0
view.Background = [1.0, 1.0, 1.0]

# Resample theta onto a uniform image grid before volume rendering. The
# projected-tetrahedra mapper used for unstructured grids produces cell-aligned
# "woodgrain" striping (and a hard grid where the field is flat, e.g. the t=0
# top slab); image volume rendering via OpenVKL is artifact-free.
img = ResampleToImage(Input=cleaned)
img.SamplingDimensions = [200, 200, 256]
UpdatePipeline()

# theta volume rendering: reversed Blues, constant opacity everywhere so the
# whole field shows as a translucent body (dark = dry, light = wet).
mdisp = Show(img, view)
mdisp.Representation = "Volume"
ColorBy(mdisp, ("POINTS", "MoistureContent"))
tlut = GetColorTransferFunction("MoistureContent")
tlut.ApplyPreset(THETA_CMAP, True)
tlut.AutomaticRescaleRangeMode = "Never"
tlut.RescaleTransferFunction(THETA_MIN, THETA_MAX)
tlut.InvertTransferFunction()             # reversed: dark = dry, light = wet
twf = GetOpacityTransferFunction("MoistureContent")
twf.Points = [THETA_MIN, THETA_ALPHA, 0.5, 0.0,
              THETA_MAX, THETA_ALPHA, 0.5, 0.0]
mdisp.ScalarOpacityUnitDistance = 0.05
mdisp.SetScalarBarVisibility(view, False)

# Pressure-head isosurfaces as opaque contour surfaces. ComputeNormals gives
# smooth gradient-based normals so they don't shade as patchy slivers where
# they run near-parallel to the extruded mesh layers.
# Contour the resampled uniform image, not the raw unstructured grid: the
# Firedrake VTK output is per-cell, so an isosurface on it cracks along the
# 104-rank partition seams (visible as black slits where the front is flat at
# t=0). A uniform image is watertight, so the surfaces are seamless with smooth
# gradient normals.
for lev in H_LEVELS:
    c = Contour(Input=img)
    c.ContourBy = ["POINTS", "PressureHead"]
    c.Isosurfaces = [lev]
    c.ComputeNormals = 1
    cd = Show(c, view)
    cd.Representation = "Surface"
    cd.ColorArrayName = ["POINTS", ""]    # valid association, empty name = solid color
    cd.AmbientColor = H_COLORS[lev]
    cd.DiffuseColor = H_COLORS[lev]
    cd.Specular = 0.0                     # no highlight glints on the front
    cd.Ambient = 0.45                     # lift unlit backfaces of concave folds
    cd.Diffuse = 0.80
    cd.SetScalarBarVisibility(view, False)
    cd.Opacity = 0.9

# Domain box outline so the (mostly transparent) volume panels still show the
# 2x2x2.6 m extent clearly.
outline = Outline(Input=cleaned)
odisp = Show(outline, view)
odisp.ColorArrayName = ["POINTS", ""]
odisp.AmbientColor = [0.15, 0.15, 0.15]
odisp.DiffuseColor = [0.15, 0.15, 0.15]
odisp.LineWidth = 2.0

# Canonical camera, identical across every panel (soil + moisture) so the
# columns of the aggregate figure register exactly. Keep these three scripts
# in sync: focal point = box centre, fixed direction, fixed post-reset zoom.
view.CameraFocalPoint = [1.0, 1.0, 1.3]
view.CameraPosition = [5.2, -4.8, 4.6]
view.CameraViewUp = [0.0, 0.0, 1.0]
view.CameraParallelProjection = 0
ResetCamera(view)
view.CameraParallelScale = view.CameraParallelScale * 0.80

FIGDIR.mkdir(parents=True, exist_ok=True)
for th in TIMES_H:
    t = th * 3600.0
    UpdatePipeline(time=t)
    view.ViewTime = t
    tlut.RescaleTransferFunction(THETA_MIN, THETA_MAX)
    Render()
    out = FIGDIR / f"moisture_t{th:02d}h.png"
    SaveScreenshot(str(out), view, ImageResolution=[1100, 1400],
                   TransparentBackground=1)
    print("wrote", out)

def rgb_points(transfer_fn, vmin, vmax):
    """Normalised [t, r, g, b] control points of the ParaView color LUT (here
    the reversed Blues), so the matplotlib colorbar is built from exactly the
    colors used in the render rather than a same-named matplotlib preset."""
    flat = list(transfer_fn.RGBPoints)
    pts = []
    for i in range(0, len(flat), 4):
        t = (flat[i] - vmin) / (vmax - vmin)
        pts.append([min(1.0, max(0.0, t)), flat[i + 1], flat[i + 2], flat[i + 3]])
    return pts


meta = {
    "field": "MoistureContent",
    "label": r"Moisture content $\theta$",
    "vmin": THETA_MIN,
    "vmax": THETA_MAX,
    "cmap": "Blues_r",
    "rgb_points": rgb_points(tlut, THETA_MIN, THETA_MAX),
    "alpha": THETA_ALPHA,
    "ticks": [0.20, 0.25, 0.30, 0.35],
    "pressure_levels_m": H_LEVELS,
    "pressure_colors": {str(k): v for k, v in H_COLORS.items()},
    "times_h": TIMES_H,
}
with open(FIGDIR / "moisture.json", "w") as fh:
    json.dump(meta, fh, indent=2)
print("wrote", FIGDIR / "moisture.json")
print("theta range:", THETA_MIN, "->", THETA_MAX,
      "| pressure contours (m):", H_LEVELS)
