# Cockett infiltration figure

Builds the Cockett 3-D infiltration figure
(`figures/Cockett2018/cockett_infiltration.{pdf,png}`): a 2×3 panel showing the
heterogeneous soil structure, the initial condition, and the wetting front at
24 / 48 / 72 h, with conductivity and moisture colorbars and a pressure-front
key.

## Pipeline (run in this order)

The renders use ParaView's `pvbatch`; the assembler uses plain matplotlib. Run
from the repository root:

```bash
# 1. Soil-structure panel (A) -> soil_structure.png + soil_structure.json
pvbatch parallel_scaling/cockett_soil_render.py

# 2. Moisture/pressure panels (B-E) -> moisture_t{00,24,48,72}h.png + moisture.json
pvbatch parallel_scaling/cockett_moisture_render.py

# 3. Assemble -> cockett_infiltration.{pdf,png}
python parallel_scaling/cockett_figure.py
```

All outputs land in `figures/Cockett2018/`. Steps 1 and 2 are independent of
each other but both must run before step 3.

## Software

- **ParaView 6.1.1** (for `pvbatch`; steps 1–2). Any ParaView ≥ 6.1 with the
  `CleantoGrid`, `ResampleToImage`, `Contour`, and `Outline` filters should
  work, but the exported colors are taken from that build's colormap presets
  (see "Colors" below).
- **Python 3** with **matplotlib** (≥ 3.8) and **Pillow** (step 3). No
  Firedrake/ParaView needed for the assembler.

## Input data (not shipped)

The renders read the simulation output under
`parallel_scaling/results/cockett_hires/`
(`cockett_hires.pvd`, `cockett_hires_soil.pvd`, and the per-rank `.vtu` files).
This data (~4 GB) is **not** included in the repository or the archive. Produce
it by running the `cockett_visualise.py` driver (see its header for the
invocation and the `PYTHONPATH` to the Richards solver worktree); it writes the
`.pvd` collections into `results/cockett_hires/`. The render scripts exit with a
clear message if the data is absent.

## Colors (reproducibility)

Every color is derived from a named colormap, never hand-typed:

| Element | Colormap | How |
|---|---|---|
| Kₛ bar + soil box | Cividis | exact LUT control points |
| θ bar + volume | reversed Blues | exact LUT control points |
| sand-inclusion surface | Cividis high-Kₛ end | last LUT control point |
| 3 pressure fronts | Black-Body Radiation | sampled at `t=(i+1)/(n+1)` |

The render scripts sample these in ParaView and write them into the JSON
sidecars (`rgb_points`, `interface_color`, `pressure_colors`). The assembler
**only reads** those sidecars and rebuilds the colorbars/legend from them, so
the figure matches the renders exactly. Because ParaView preset curves can
differ between versions, **the committed JSON sidecars are the authoritative
color record** — `cockett_figure.py` reproduces the same figure from them even
on a machine whose ParaView would render slightly different hues.
