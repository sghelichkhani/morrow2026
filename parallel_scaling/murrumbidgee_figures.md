# §4 Murrumbidgee figures — plan and instructions

Last updated: 2026-06-16.

This is the working plan for finishing the §4 Lower Murrumbidgee
figures. The scaling figures (Group C below) are **done and frozen** —
this plan does not touch them. The work is the setup figures (Group A)
and the example-solution figure (Group B), both of which flow from one
place: the Murrumbidgee model builder.

## The mental model: one builder, three consumers

Everything in §4 except the scaling figures comes from the function that
builds the Murrumbidgee model — today that is `model()` in
`murrumbidgee_3d.py`. It already generates the real surface mesh via
`omega` (`SurfaceMesh` / `Polygon`), extrudes it terrain-following to
bedrock, assigns the three-aquifer stratigraphy with depth-decaying `K`
and `θ_s`, sets the hydrostatic initial condition from the water table,
and applies rainfall recharge (the `0.14` ≈ 15 % factor in the driver
matches the paper). What it does **not** have yet is the extraction sink
and any way to emit either its setup or its results for plotting.

```
            murrumbidgee_3d.py : build_model()
            (real omega mesh + stratigraphy + IC/BC + extraction)
                          │
     ┌────────────────────┼────────────────────┐
     ▼                    ▼                     ▼
  --dump-setup        forward run            (already run)
  exports mesh +      50 yr × 2 scenarios    scaling sweeps
  fields to disk      → water-table snapshots → parsed JSON
     │                    │                     │
     ▼                    ▼                     ▼
  GROUP A figs        GROUP B fig           GROUP C figs
  (setup, 1–2)        (example_solution)    (done — untouched)
```

The point of routing Group A through the driver rather than the
standalone plot scripts is consistency: the mesh figure becomes the
actual omega mesh (retires the `scipy.Delaunay` stand-in, to-do item
M4), the extraction panel becomes real (retires the ICBC placeholder,
M5), and the empty stratigraphy panel (d) gets filled — all because the
figures are drawn from the same object the simulation runs on.

## Group A — setup figures, collapsed to two

The paper currently has four setup figures with ten sub-panels total:
`elevation` (Fig. 13), `mesh` (Fig. 14, a–b), `stratigraphy` (Fig. 15,
a–d, with d empty), and `ICBC` (Fig. 16, a–c, with c a placeholder).
Collapse to **two** figures (a single combined figure makes each panel
too small for the Copernicus single-column layout):

**Figure 1 — Study area and mesh.**
(a) elevation + domain polygon + NSW/VIC border, (b) 2D surface mesh,
(c) 3D terrain-following extruded mesh (vertical exaggeration noted in
caption).

**Figure 2 — Hydrostratigraphy and forcing.**
(a) 3D layered stratigraphy (the three aquifers), (b) initial
depth-to-water-table, (c) rainfall (mm/yr), (d) extraction-site
locations.

Both are fed by a single `--dump-setup` export from the driver. A new
plotter (e.g. `plot_murr_setup.py`) reads the dump and renders the two
figures, superseding `plot_murr_elevation.py`, `plot_murr_mesh.py`,
`plot_murr_stratigraphy.py`, and `plot_murr_icbc.py`.

The dump must be produced inside the Firedrake venv (it needs `omega`
for the real mesh). The plotter itself is pure matplotlib and can run in
the default env once the dump exists.

## Group B — example-solution production run

The one genuinely new simulation. Three additions to the driver, then
two Gadi jobs, then a plotter.

Driver changes (`murrumbidgee_3d.py`):

1. **Extraction sink.** Add the Gaussian sum (manuscript eq. 27) to the
   residual: `C = 5×10⁻¹⁰ s⁻¹`, `L_h = 7 km`, `L_v = 3.16 m`, centred at
   each extraction site. Gate behind `--scenario {extraction|no_extraction}`.
2. **Snapshot output.** At chosen times, extract the water table as the
   `h = 0` level set (water-table elevation on the surface mesh) and
   write it for plotting (`--snapshot-times`).
3. **`build_model()` refactor + `--dump-setup`.** Factor the model setup
   out so the forward run and the Group A dump share one code path.

Plotter: `plot_murr_example_solution.py` renders the two scenarios side
by side — rows are snapshot times, columns are with / without
extraction — into `figures/Murrumbidgee/example_solution.pdf`. Also fill
the literal `[X]` in the §4.1 caption (`main.tex:441`) with the measured
mean Newton-iterations-per-step.

Run spec: Δx = 1 km, 300 layers, 50-year integration, two scenarios,
`vlumping`. **Open parameter — production Δt.** The scaling runs used
Δt = 12 h for 200 steps, but 50 years at 12 h is ~36,500 steps, far more
wall-clock than a snapshot figure needs. Decide a coarser production Δt
(days to a week) or an adaptive ramp before submitting. The figure only
needs a handful of snapshots, so a coarse Δt is fine.

## Group C — scaling figures (do not touch)

`murrumbidgee_weak` (Fig. 18), `murrumbidgee_weak_layers` (Fig. 19), and
`strong_scaling` (Fig. 20). Frozen, plotted from `parsed/*.json` via
`plot_results.py`. Considered final.

## Order of operations

1. Add extraction + `build_model()` refactor + dump/snapshot hooks to
   the driver. Prerequisite for everything else.
2. Run `--dump-setup` locally in the Firedrake venv → produce the two
   Group A figures. No Gadi needed; can finish before the queue moves.
3. Submit the two 50-yr production jobs on Gadi (with / without
   extraction).
4. Wait. When they land, rsync back, plot Group B, fill the caption
   number.
5. Copy the new and updated figures into the paper tree and fix the §4
   captions: collapsed figure references, the previously-empty
   stratigraphy panel, "48 cores" → 104, the unextensioned
   `elevation` includegraphics, and the commented `memory_layers.pdf`.

Group A and the driver work can start now; Group B is gated only on Gadi
queue time.

## Data-side work still pending

These are the data items that block the simulation half. Code can be
written against them in advance, but the runs cannot be submitted until
they are resolved.

- **Extraction-site coordinates.** `murrumbidgee_data/extraction_sites.csv`
  (columns `x`, `y`, `rate`, and a screened depth `z`) does not exist.
  Both the extraction production run and the Group A extraction panel
  depend on it. Either source the real bore / pumping coordinates (Gadi
  or a BoM / CSIRO dataset) or, consistent with the paper framing the
  case as an uncalibrated proof-of-concept, place a set of
  representative synthetic sites across the floodplain and say so in the
  text. **Decision still open.**
- Any other input fields needed at production resolution should be
  checked against `murrumbidgee_data/` before submitting (the gridded
  CSVs currently there are elevation, bedrock, shallow/lower layer,
  water table, rainfall).

## Loose ends this retires

- M4 — Murrumbidgee mesh figure stand-in (real omega mesh via the dump).
- M5 — ICBC extraction-site placeholder (real scatter from the CSV).
- Empty stratigraphy panel (d) in `main.tex:413`.
- The `[X]` Newton-iteration placeholder in the §4.1 caption.
