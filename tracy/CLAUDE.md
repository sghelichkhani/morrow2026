# tracy

3D spatial convergence test against Tracy's (2006) analytical solution
for the Richards equation. Separate from `parallel_scaling/` because
this is a **verification** benchmark, not a scaling one.

- `tracy_3d.py` — convergence driver on a cubic domain with exponential
  (Gardner) soil, comparing against the analytical solution shipped in
  the `gwassess` package.

The paper cites this as evidence of discretisation correctness; it's
run at a handful of mesh refinements (51³, 71³, 101³, …) and the L2
errors are collected into a convergence table.
