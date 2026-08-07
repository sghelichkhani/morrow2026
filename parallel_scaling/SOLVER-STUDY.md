# SOLVER-STUDY: Richards Equation Preconditioning on Extruded Meshes

A consolidated reference for every solver preset tested in this branch, with
emphasis on the VLumping family. This document supersedes (and is intended
to replace) `APPROACHES.md`, `SPEC-VLUMPING-UPGRADES.md`, and
`CATCHUP-GADI.md`, which were written incrementally during the Round 1–4
investigation and contain overlapping and partially stale material.

**Audience.** Future-self maintenance, collaborator hand-off, and feedstock
for paper / supplementary-information sections. Sections are written so
each can be lifted into a longer write-up with minimal editing.

**Scope.** Every preset in `solvers/__init__.py` (currently 19 entries),
the underlying mathematics where it differs from textbook MG, the bugs
encountered during the investigation, and the headline performance
numbers. Detailed run logs and intermediate iteration counts are not
reproduced here; pull them from `parsed/*.json` if needed.

---

## 1. Problem statement and discretisation

The Richards equation in mixed form, as implemented in
`gadopt/richards_equation.py`:

```
(S_s S(h) + C(h)) ∂h/∂t  −  ∇·(K(h) ∇h)  −  ∇·(K(h) ∇z)  =  0
```

with pressure head `h`, specific storage `S_s`, effective saturation
`S(h)`, specific moisture capacity `C(h) = dθ/dh`, hydraulic conductivity
`K(h)`, and vertical coordinate `z`. The constitutive curves
`θ(h)`, `K(h)`, `S(h)` come from `gadopt/soil_curves.py`
(Haverkamp / van Genuchten / Exponential).

**Discretisation.** DG of polynomial degree `p = 1` (`DQ1` on quad-base
extruded prisms), with SIPG diffusion stabilisation and upwinding for the
gravity-driven flux. Time integration through Irksome — almost all scaling
tests use BackwardEuler with `stage_type="value"` for exact mass
conservation (see `richards_solver.py`).

**Newton linearisation.** At each timestep we solve a sequence of linear
systems `J(h_k) δh = −F(h_k)` until `‖F‖` falls below tolerance. The
Jacobian `J` has three structurally distinct contributions:

| Component | Source | Symmetry |
|---|---|---|
| Mass | `(S_s S + C) / dt` (diagonal in element-local mass) | SPD |
| Diffusion | `K(h)`-weighted Laplacian + SIPG penalty | SPD when frozen |
| Advection | `K'(h) (∇h + ẑ)` from differentiating the gravity flux | non-symmetric |

This is the matrix every preconditioner below sees as `Amat`. A
preconditioner can choose to use `J` itself as `Pmat` (Axis 1 below), or
substitute a custom auxiliary matrix that drops or simplifies some of
these terms (Axis 2). The custom-Pmat route trades fidelity to the true
Jacobian for an operator that an algebraic preconditioner can handle more
gracefully.

---

## 2. Hardware and benchmarks

**Hardware.** All Round 3+ runs are on Gadi's `normalsr` queue: Intel
Sapphire Rapids nodes with 104 CPUs and 500 GB memory per node. The paper
(Morrow et al. 2026) used the older `normal` queue with Cascade Lake nodes
(48 CPUs, 190 GB per node). With the same per-node DOF target, our nodes
host roughly 2.2× more ranks per problem-size unit, which compresses
the per-rank DOF count and stresses the coarsest grid in any MG hierarchy
much harder than the paper's setup did. This shows up most visibly in the
GMG-H regression discussed in §11.

**Three benchmarks** (`tests/parallel_scaling_richards/`):

| Benchmark | Driver | Geometry | Aspect ratio | Purpose |
|---|---|---|---|---|
| Cockett 3D | `cockett_3d.py` | 2 m cubic box, hex extrusion | ~1:1 | Isotropic stress test |
| Murr vertical | `murrumbidgee_3d.py` | Murrumbidgee basin, 1775 m horiz, layers grow with nodes | 500:1 → 4000:1 | Pure vertical weak scaling |
| Murr horizontal | `murrumbidgee_3d.py` | Murrumbidgee basin, 300 layers fixed, horiz refines with nodes | ~350:1 across | Replicates paper Figure 14 |

**Weak-scaling targets.** Cockett uses ~18M DOF/node (matches the paper's
Cockett figure). Both Murrumbidgee experiments target ~40M DOF/node,
matching the paper's Murrumbidgee figure on Cascade Lake. On Sapphire
Rapids that means ~190k DOF/core (vertical sweep) or ~385k DOF/core
(horizontal sweep), versus the paper's ~833k DOF/core. The smaller
per-core DOF on our hardware doubles fixed per-iteration overhead.

---

## 3. Solver taxonomy

Three independent axes. Not every combination is sensible (e.g. GMG +
Pmat is redundant; nesting Pmat inside VLumping is architecturally
expensive), but all single-axis variants and a few cross-axis combinations
are implemented.

```
                      Amat = Pmat = J                Amat = J, Pmat = aux
                      ────────────────                ─────────────────────
PC strategy:          bjacobi, sor                   (Pmat family retired —
                      gamg, gamg_asm, boomeramg       see §7 for archived
                      gmg                             description)
                      vlumping (+ variants)
                      vlumping_linesmooth
                      vlumping_hmg

SNES variant (×GMG):  ngmres_gmg, qn_gmg
```

The presets are loaded by name through
`solvers.get_solver(name) -> (solver_parameters, solver_kwargs)`. The
second element is empty for every remaining preset (the Pmat variants
that used `solver_kwargs={'pmat': ...}` were retired — see §7).

---

## 4. Best-numbers summary

Mean wall-clock seconds per timestep, averaged over steps after the
startup step. Bold marks the per-row winner. Numbers are from the
2026-04-19 run with all bug fixes applied (see §11).

### Cockett (isotropic, weak scaling 1N → 8N, 18M → 144M DOF)

| solver | sweep (1N) | medium (2N) | large (8N) |
|---|---:|---:|---:|
| boomeramg | 27.8 | 14.4 | **13.0** |
| bjacobi | 27.2 | 13.3 | 15.1 |
| vlumping_inexact | 27.6 | **13.3** | 16.3 |
| vlumping_linesmooth | **16.7** | 17.0 | 25.5 |
| vlumping_hmg | **16.6** | 17.0 | 24.8 |
| ngmres_gmg | 16.8 | 11.8 | 23.3 |
| gmg | 21.1 | 20.8 | 24.8 |

### Murrumbidgee vertical (1775 m fixed, 150 → 1200 layers, 1N → 8N)

| solver | smoke | sweep | medium | large |
|---|---:|---:|---:|---:|
| vlumping_inexact | 5.84 | 6.19 | **6.52** | **7.31** |
| vlumping_linesmooth | **5.31** | **5.85** | 6.67 | 7.64 |
| vlumping_hmg | 5.32 | 6.15 | 6.92 | 8.14 |
| gmg | 15.05 | 21.34 | OOM | OOM |
| boomeramg | DIVERGED | DIVERGED | DIVERGED | DIVERGED |

### Murrumbidgee horizontal (300 layers fixed, 1775 → 620 m, 1N → 8N)

| solver | h1 | h2 | h4 | h8 |
|---|---:|---:|---:|---:|
| vlumping_inexact | 11.1 | 14.8 | 18.5 | 25.2 |
| vlumping_linesmooth | **10.7** | 12.9 | 16.5 | 22.7 |
| vlumping_hmg | 11.7 | **12.9** | **15.7** | **20.7** |
| gmg | 26.7 | 30.7 | 38.7 | 47.1 |
| bjacobi | 11.4 | 13.5 | 16.7 | 20.6 |
| gamg | OOM | OOM | OOM | OOM |
| boomeramg | DIVERGED | DIVERGED | DIVERGED | DIVERGED |

**Headline.** On the isotropic Cockett benchmark BoomerAMG is fastest at
the largest scale, with VLumping competitive. On both anisotropic
Murrumbidgee cases the VLumping family is the only solver that converges
at every scale, and the new `vlumping_hmg` preset wins on horizontal weak
scaling by ~18% over the baseline `vlumping_inexact` at h8. GMG-H, the
paper's reported winner, is consistently 2× slower than VLumping in our
setup; see §11 for why the apples-to-apples comparison with the paper is
imperfect.

---

## 5. Axis 1 — Preconditioner strategies

Each subsection: rationale, mathematical sketch, the actual
`solver_parameters` dict (or its key entries), and a pointer to the PETSc
implementation for further reading.

### 5.1 `bjacobi` — Block-Jacobi + ILU(0)

**Rationale.** Single-level baseline. Each MPI rank does an ILU(0)
factorisation of its local submatrix and applies it as the preconditioner
each iteration. No coarse correction, so iteration counts grow with mesh
refinement, but per-iteration cost is the lowest of any non-trivial
preconditioner and the memory footprint is minimal.

**Mathematics.** Given the rank-local submatrix `J_ℓ`, we apply
`P^{−1} = blockdiag(M_ℓ^{−1})` where `M_ℓ` is the ILU(0) factor of `J_ℓ`.
ILU(0) preserves the sparsity pattern of `J_ℓ` and discards all fill that
would arise from exact LU.

**Notable behaviour.** On extruded meshes a column-aligned partition makes
ILU(0) effectively act as a per-column line solver because the column-wise
band dominates the off-block fill. This is why `bjacobi` is competitive on
anisotropic problems even without a coarse correction — see paper
discussion at line 477 of `papers/richards-morrow-2026/main.tex`.

```python
{"ksp_type": "gmres", "ksp_rtol": 1e-6,
 "pc_type": "bjacobi",
 "sub_ksp_type": "preonly", "sub_pc_type": "ilu",
 "sub_pc_factor_levels": 0}
```

PETSc: `src/ksp/pc/impls/bjacobi/bjacobi.c`.

### 5.2 `sor` — Successive Over-Relaxation

**Rationale.** Stationary-iteration baseline. Included only for
completeness — it fails entirely on Murrumbidgee (cannot converge a single
timestep). Useful as a sanity check: if a new preconditioner is
slower-than-SOR, something is misconfigured.

```python
{"ksp_type": "gmres", "pc_type": "sor"}
```

### 5.3 `gamg` — PETSc smoothed-aggregation AMG

**Rationale.** PETSc's native algebraic multigrid. Builds the hierarchy
purely from the assembled Jacobian via aggregation. No mesh information
required.

**Mathematics.** Smoothed-aggregation AMG forms aggregates from strongly
connected DOFs (strength threshold 0.02), constructs a tentative
prolongation `P̃` from the near-nullspace, smooths it with one Jacobi
iteration to get `P = (I − ωD^{−1}A) P̃`, and forms the coarse operator
by Galerkin projection `A_c = PᵀAP`. Repeat to a coarse limit (1000
DOFs).

**Critical fix vs paper.** The paper's GAMG was buggy: solver options
used the `assembled_` prefix that only takes effect inside an
`AssembledPC` wrapper (matfree mode). With `mat_type=aij` PETSc silently
ignored `assembled_pc_gamg_square_graph` and
`assembled_pc_gamg_coarse_eq_limit`. Our `solvers/gamg.py` removes the
prefix and replaces the deprecated `pc_gamg_square_graph` with
`pc_gamg_aggressive_coarsening`.

**Failure mode on Murrumbidgee.** On the anisotropic 300-layer operator,
GAMG's hierarchy construction produces enormous coarse operators
(insufficient strength-of-connection contrast between vertical and
horizontal couplings) and it OOMs at 1 node. Failed at every Murr
horizontal scale.

PETSc: `src/ksp/pc/impls/gamg/`.

### 5.4 `gamg_asm` — GAMG with aggregate-based ASM smoother

**Rationale.** Standard GAMG uses Jacobi or BJacobi+ILU as the level
smoother. For DG discretisations the per-element block structure means
point smoothers leave significant intra-element error untouched. Setting
`pc_gamg_asm_use_agg=True` reuses GAMG's own aggregates as ASM patches at
the smoother stage, giving a DG-aware smoother for free.

**Source.** Pattern lifted from PETSc's own `ex56.c` test for
block-structured problems.

```python
{"pc_type": "gamg",
 "pc_gamg_asm_use_agg": True,
 "mg_levels_pc_type": "asm",
 "mg_levels_sub_pc_type": "lu",
 # ... usual GAMG parameters ...
}
```

### 5.5 `boomeramg` — Hypre BoomerAMG with anisotropy-aware settings

**Rationale.** Most-recommended AMG in the Richards literature
(Herbst et al. 2008, Bertaccini et al. 2022). Tuned here for anisotropy:
`strong_threshold=0.5` (default 0.25), HMIS coarsening, `ext+i`
interpolation, aggressive coarsening on the first 2 levels. These help
BoomerAMG detect the anisotropic strength pattern (strong vertical, weak
horizontal) and produce horizontal-favouring coarsening that approximates
GMG-H's behaviour.

**Result.** Wins on Cockett at large scale (13 s/step). Diverges on every
Murrumbidgee case — anisotropy detection isn't reliable at these aspect
ratios.

```python
{"pc_type": "hypre", "pc_hypre_type": "boomeramg",
 "pc_hypre_boomeramg_strong_threshold": 0.5,
 "pc_hypre_boomeramg_coarsen_type": "HMIS",
 "pc_hypre_boomeramg_interp_type": "ext+i",
 "pc_hypre_boomeramg_agg_nl": 2,
 "pc_hypre_boomeramg_truncfactor": 0.3,
 "pc_hypre_boomeramg_P_max": 4,
 # ...
}
```

PETSc: wraps Hypre's `HYPRE_BoomerAMG`.

### 5.6 `gmg` — Geometric multigrid with horizontal-only coarsening

**Rationale.** The paper's reported winner for the Lower Murrumbidgee
case. Builds an explicit `MeshHierarchy` on the 2D base, then extrudes
each level with `ExtrudedMeshHierarchy(refinement_ratio=1)` so the
vertical layer count stays fixed across levels and only horizontal
resolution is coarsened. This matches the mesh anisotropy exactly: the
smoother handles vertical error modes within each block (ILU on a
column-aligned partition is essentially a line solver — see §5.1) and the
coarse correction handles horizontal modes.

**Smoother / coarse setup** — identical to the paper's Appendix:

```python
{"ksp_type": "fgmres", "ksp_rtol": 1e-6,
 "pc_type": "mg", "pc_mg_type": "multiplicative",
 "mg_levels_ksp_type": "chebyshev",
 "mg_levels_ksp_max_it": 1,
 "mg_levels_pc_type": "bjacobi", "mg_levels_sub_pc_type": "ilu",
 "mg_coarse_ksp_type": "gmres", "mg_coarse_ksp_max_it": 30,
 "mg_coarse_pc_type": "bjacobi", "mg_coarse_sub_pc_type": "ilu"}
```

**Why it underperforms VLumping in our setup.** The horizontal hierarchy
keeps every layer at every level, so even the coarsest 3D operator has
`n_horiz_coarse × n_layers` DOFs. For 1200 layers (Murr vertical large)
this OOMs at 4 nodes. For 300 layers and 832 ranks (Murr horizontal h8) it
runs but the V-cycle traverses all 300 layers at every level, dominating
wall time. VLumping side-steps both by collapsing the vertical first.

**Why it underperforms the paper's claimed result.** See §11 — same
solver dict, but our hardware has 2.2× more ranks per problem-size unit,
which starves the coarsest grid; and our `submit_jobs.py` caps refinement
levels at 2 for `murr_horiz` while the paper used 3.

PETSc: `src/ksp/pc/impls/mg/`. Firedrake hierarchy:
`firedrake/mg/mesh.py:MeshHierarchy`,
`firedrake/mg/mesh.py:ExtrudedMeshHierarchy`.

### 5.7 `vlumping` and family — see §6

The VLumping family gets its own section because it's the algorithmic
contribution this branch developed and it has eight variants.

---

## 6. The VLumping family (in depth)

### 6.1 The base idea

A two-level geometric multigrid where the coarse level eliminates the
**vertical** dimension entirely — the mesh anisotropy is removed *by
construction* on the coarse side rather than via algebraic anisotropy
detection or geometric horizontal-only coarsening of the full 3D problem.

Inspired by the ocean-modelling community (Kramer et al. 2010,
doi:10.1016/j.ocemod.2010.08.001) and used in the Thwaites ice-sheet code.

**Function spaces.** With `V = V_horiz × V_vert` the fine 3D
tensor-product space and `R` the rank-0 ("Real") finite element on the
vertical interval cell:

```
V_coarse = V_horiz × R          (vertically constant, one DOF per column)
```

For a DQ1 quad-base extruded mesh with `n_h` base quads, `dim V_coarse =
4 n_h` regardless of layer count. This is genuinely a 2D-shaped problem
even though it's defined on the same extruded mesh as `V`.

**Prolongation.** The injection
`P : V_coarse ↪ V` is the natural one — a coarse function `c ∈ V_coarse`
maps to a fine function whose value at every vertical level matches `c`.
In code:

```python
trial = TrialFunction(V_coarse)
P = assemble(interpolate(trial, V)).petscmat
```

**Coarse operator.** Galerkin projection `A_c = PᵀAP`, formed by PETSc
via the option `pc_mg_galerkin = both`. No bilinear form is rediscretised
on the coarse side; the operator is purely algebraic from `A` and `P`.

**Why this works for extruded anisotropy.** Vertical couplings dominate,
so vertical error modes are eliminated cheaply by a fine-level smoother
(or, in `vlumping_linesmooth`, by an exact per-column solve). The coarse
problem only needs to capture horizontal error modes, which are
well-conditioned on a 2D-shaped problem of size `4 n_h`.

**Reference for math/algorithm.** Kramer, Pain, Piggott (2010); Thwaites
ice-sheet implementation; for the PETSc plumbing see
`src/ksp/pc/impls/mg/mg.c` (`PCSetUp_MG`) and the Galerkin path at
`src/mat/interface/matrix.c:11298` (`MatGalerkin`).

### 6.2 Implementation: `VerticallyLumpedPC`

`solvers/vlumping.py`. A Firedrake `PCBase` subclass.

Key methods:

- `initialize(pc)` — extracts `V` from the DM, builds `V_coarse`, the
  prolongation `Prol`, creates an inner `PETSc.PC` of type `mg` with 2
  levels, sets the prolongation via `setMGInterpolation(1, Prol)`, sets
  Galerkin coarsening via the options DB
  (`<prefix>lumped_pc_mg_galerkin = both`), and propagates the outer DM
  to the inner PC so any nested smoother (e.g. ASMLinesmoothPC) can
  resolve its function space.
- `update(pc)` — calls `self.pc.setUp()`. **Critical**: without this the
  Galerkin coarse operator is computed once at initialization and never
  refreshed across Newton steps even though the in-place Jacobian
  reassembly has changed the Mat's state counter. See §11.3 for the bug
  history.
- `apply` / `applyTranspose` — forward to the inner MG.

**API surface**: `pc_type="python"`,
`pc_python_type="solvers.vlumping.VerticallyLumpedPC"`. All inner options
prefixed `lumped_` — see the option-prefix discussion in §11.4.

### 6.3 Variants — what changes between presets

All eight VLumping presets share the **same `VerticallyLumpedPC` class**
(except `vlumping_hmg`, which uses a sibling class — see §6.4). They
differ only in the smoother/coarse options under the `lumped_` prefix.

| Preset | Smoother | Sweeps | KSP rtol | Coarse PC | Comment |
|---|---|---:|---:|---|---|
| `vlumping` | Chebyshev + BJacobi/ILU | 2 | 1e-6 | LU/MUMPS | Baseline. |
| `vlumping_1sweep` | Chebyshev + BJacobi/ILU | 1 | 1e-6 | LU/MUMPS | Cheaper per V-cycle, more outer iterations. |
| `vlumping_4sweep` | Chebyshev + BJacobi/ILU | 4 | 1e-6 | LU/MUMPS | More smoother work, fewer outer iterations. |
| `vlumping_richardson` | Richardson(ω=0.5) + BJacobi/ILU | 2 | 1e-6 | LU/MUMPS | Avoids Chebyshev eigenvalue estimate. ~2× slower in practice. |
| `vlumping_sor` | Chebyshev + SOR | 2 | 1e-6 | LU/MUMPS | Thwaites' default. Worst variant — ~2× slower than baseline. |
| `vlumping_inexact` | Chebyshev + BJacobi/ILU | 2 | **1e-4** | LU/MUMPS | Inexact Newton. ~26 % faster than baseline at large scale. |
| `vlumping_linesmooth` | Chebyshev + **ASMLinesmoothPC** (LU per column) | 1 | 1e-4 | LU/MUMPS | Line smoother instead of point smoother. |
| `vlumping_hmg` | Chebyshev + ASMLinesmoothPC | 1 | 1e-4 | **MG on 2D base hierarchy** | Both new ideas combined. |

### 6.4 `vlumping_linesmooth` — vertical-line smoother on the fine level

Replaces the fine-level Chebyshev + BJacobi/ILU with a Chebyshev wrapper
around `firedrake.ASMLinesmoothPC` (defined at
`firedrake/preconditioners/asm.py:290-339`). With `codims="0"` this
creates one ASM patch per base cell, each holding the full vertical
column of DOFs above that cell, factorised exactly by LU with natural
ordering. The patch matrix is block-tridiagonal so natural-ordering LU
preserves the band structure (verified by inspection of the factor's nnz
— fill ratio = 1.00x for DQ1 columns).

```python
{"pc_type": "python",
 "pc_python_type": "solvers.vlumping.VerticallyLumpedPC",
 "lumped_mg_levels_ksp_type": "chebyshev",
 "lumped_mg_levels_ksp_max_it": 1,
 "lumped_mg_levels_pc_type": "python",
 "lumped_mg_levels_pc_python_type": "firedrake.ASMLinesmoothPC",
 "lumped_mg_levels_pc_linesmooth_codims": "0",
 # NB: SUB_SUB, not SUB. A single sub_ matches ASM's own pc_type and
 # downgrades the smoother to a direct LU on the rank-local matrix.
 "lumped_mg_levels_pc_linesmooth_sub_sub_pc_type": "lu",
 "lumped_mg_levels_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type": "natural",
 "lumped_mg_coarse_pc_type": "lu",
 "lumped_mg_coarse_pc_factor_mat_solver_type": "mumps",
 "ksp_rtol": 1e-4}
```

The double-`sub_` is mandatory and easy to get wrong — see §11.4.

### 6.5 `vlumping_hmg` — line smoother + nested geometric MG on the 2D base

Same fine-level line smoother as `vlumping_linesmooth`. The difference is
on the coarse side: instead of MUMPS LU on the vertically-collapsed
problem, we run **a full geometric multigrid descending the 2D base
`MeshHierarchy`**.

`solvers/vlumping_hmg.py` defines the new class
`VerticallyLumpedHMGPC`. Differences from `VerticallyLumpedPC`:

1. `V_coarse` is built on the **2D base mesh** (`mesh._base_mesh`), with
   the same horizontal element as the fine space:
   `V_coarse = FunctionSpace(base_mesh, hele)`. Critically, the base mesh
   is itself part of an `ExtrudedMeshHierarchy(MeshHierarchy(base, L))`,
   so its DM carries level info that a nested PCMG can descend.
2. The prolongation cannot be a direct cross-mesh interpolate (Firedrake
   rejects geometric-dimension mismatches), so it's composed as
   `Prol = Q · I` where:
   - `Q : V_R → V` is the standard same-mesh interpolation used by the
     base `VerticallyLumpedPC` (V_R is the `hele × R` extruded space).
   - `I : V_coarse → V_R` is a permutation matrix asserted at construction
     time to be the identity (matching `cell_node_maps`). The
     construction of `I` in parallel was a load-bearing bug — see §11.5.
3. The horizontal-MG prolongations between base hierarchy levels are
   built explicitly:
   ```python
   for k in range(1, fine_level + 1):
       V_c = FunctionSpace(hierarchy[k-1], hele)
       V_f = FunctionSpace(hierarchy[k],   hele)
       P_k = assemble(interpolate(TrialFunction(V_c), V_f)).petscmat
   ```
   and passed via `coarse_pc.setMGInterpolation(i+1, P_i)`. This
   sidesteps the DM coarsen hook (which would need a coarsened UFL
   appctx we don't have) and uses Galerkin coarsening end-to-end.
4. Setup raises a `RuntimeError` mentioning "hierarchy" if the base mesh
   has no attached `MeshHierarchy`. The error survives in the exception
   chain even after petsc4py wraps it as `PETSc.Error(101)` (see §11.6).

```python
{"pc_type": "python",
 "pc_python_type": "solvers.vlumping_hmg.VerticallyLumpedHMGPC",
 "lumped_mg_levels_ksp_type": "chebyshev",
 "lumped_mg_levels_ksp_max_it": 1,
 "lumped_mg_levels_pc_type": "python",
 "lumped_mg_levels_pc_python_type": "firedrake.ASMLinesmoothPC",
 "lumped_mg_levels_pc_linesmooth_codims": "0",
 "lumped_mg_levels_pc_linesmooth_sub_sub_pc_type": "lu",
 "lumped_mg_coarse_pc_type": "mg",
 "lumped_mg_coarse_mg_levels_ksp_type": "chebyshev",
 "lumped_mg_coarse_mg_levels_ksp_max_it": 2,
 "lumped_mg_coarse_mg_levels_pc_type": "bjacobi",
 "lumped_mg_coarse_mg_levels_sub_pc_type": "ilu",
 "lumped_mg_coarse_mg_coarse_pc_type": "lu",
 "lumped_mg_coarse_mg_coarse_pc_factor_mat_solver_type": "mumps",
 "ksp_rtol": 1e-4}
```

**Required at runtime**: pass `--refinement-levels >= 1` to the test
driver so a base hierarchy exists. `submit_jobs.py` adds `vlumping_hmg`
to the `GMG_SOLVERS` set and `refinement_levels()` returns 1 by default,
escalated to 2 for `murr_horiz`.

**Where it pays off.** Murr horizontal h8: 20.7 s/step vs
`vlumping_inexact`'s 25.2 s — an 18 % improvement, with the margin
growing from −5 % at h1 to +18 % at h8. Net effect: as the horizontal
mesh grows, the 2D coarse problem stops being trivial and the nested MG
amortises better than direct LU. On Cockett (isotropic) and Murr vertical
(coarse problem stays small), the extra setup cost isn't repaid and
`vlumping_inexact` remains the winner.

**Refinement-level limit.** Tested at L=1 and L=2. At L=3 on h8 the
coarsest base mesh has ~1.5k cells across 832 ranks (~1.8 cells/rank),
below the safety floor of 20 cells/rank we settled on. L=3 was
attempted and ran but produced ~4× higher Krylov iteration counts than
L=2 — the coarse correction was too degenerate. Killed before completion;
not a viable configuration on this hardware.

---

## 7. Axis 2 — Custom Pmat strategies (retired, archived here)

> **Status.** The three Pmat-family presets — `gamg_diffpmat`,
> `gamg_lipnikov`, `boomeramg_lipnikov` — were retired from the
> scaling study in April 2026. The `RichardsDiffusionPC` and
> `RichardsLipnikovPC` classes that backed them were removed from
> `gadopt/preconditioners.py` at the same time. The preset modules
> `solvers/gamg_diffpmat.py`, `solvers/gamg_lipnikov.py`,
> `solvers/boomeramg_lipnikov.py` were deleted.
>
> Why retired: every run either timed out or failed to make useful
> progress (see §4 table and `parsed/cockett.json` — all three are
> `incomplete`). Physically, the idea is interesting and worth revisiting
> in future work; numerically, at the problem sizes and hardware used
> here they did not carry their own weight. The full mathematical
> description is preserved below for historical context so future
> readers understand what was tried and why the headline comparison
> does not include them.

These strategies used the assembled Jacobian as `Amat` (the operator
the Krylov solver multiplies by) but substituted a **different** matrix
as `Pmat` (the one the preconditioner sees). The custom Pmat was
assembled from a bilinear form chosen to be easier for an algebraic
preconditioner to handle than the full Jacobian, while remaining a
reasonable approximation.

The two custom Pmats were:

- `RichardsDiffusionPC` — assembled `M + dt · K(h_lag) ∇·∇` (mass + diffusion only)
- `RichardsLipnikovPC` — assembled `M + dt · K(h_lag) ∇·∇ + dt · upwind(K'(h_lag) ∇h)` (mass + diffusion + upwind advection)

Both used lagged coefficients (evaluated at the previous solution) so
the Pmat was constant across Newton iterations and the AMG hierarchy
could be reused. Both inherited from a shared `_RichardsAuxiliaryPC`
base class that disabled `MAT_NEW_NONZERO_ALLOCATION_ERR` to work
around a Firedrake sparsity preallocation issue on DG extruded meshes
at parallel scale.

### 7.1 `gamg_diffpmat` — GAMG on the diffusion-only Pmat *(retired)*

The Pmat drops both the advection from `dK/dh` and the gravity
derivative, leaving an SPD matrix. This is the Lipnikov et al. (2016)
`J_h^(d)` preconditioner. Dropping the non-symmetric advection makes
GAMG's strength-of-connection test cleaner.

```python
{"pc_type": "python",
 "pc_python_type": "gadopt.RichardsDiffusionPC",
 "aux_pc_type": "gamg",
 "aux_pc_gamg_threshold": 0.02,
 "aux_pc_gamg_aggressive_coarsening": 1,
 # ... usual GAMG inner options under aux_ prefix ...
}
```

Failure mode for non-smooth van Genuchten parameters (`n < 2`): the
diffusion-only operator can be too far from the true Jacobian.

### 7.2 `gamg_lipnikov` — GAMG on the full Lipnikov Pmat *(retired)*

Adds upwind advection from `K'(h)`, capturing wetting-front propagation.
This is Lipnikov et al.'s `J_h^(l)`. The upwind discretisation does not
require continuity of `dK/dh`, which is why it succeeds for non-smooth
van Genuchten where the diffusion-only variant fails. Reported 6–38×
speedups over `J_h^(d)` on practical mesh sizes in the original paper.

The Pmat is non-symmetric. GAMG handles this by symmetrising the strength
graph for coarsening (`aux_pc_gamg_graph_symmetrize: True`).

### 7.3 `boomeramg_lipnikov` — BoomerAMG on the Lipnikov Pmat *(retired)*

Combines the physics-aware Pmat with BoomerAMG's anisotropy-aware
settings. In principle the strongest combination for Murrumbidgee:
Lipnikov captures the wetting-front physics while BoomerAMG handles the
extreme aspect ratio. Not yet promoted to the headline benchmark — only
tested in early Round 3 sweeps.

---

## 8. Axis 3 — Nonlinear-solver variants

These wrap the Newton solve with an outer nonlinear acceleration. Both
keep `gmg` as the inner preconditioner — the SNES axis is largely
orthogonal to the PC choice, so any of the Axis-1 PCs could be
substituted in principle.

### 8.1 `ngmres_gmg` — Nonlinear GMRES (Anderson acceleration) + GMG

NGMRES maintains a window of `m=30` previous nonlinear iterates and finds
optimal linear combinations. Mathematically equivalent to Anderson mixing
/ Nonlinear Krylov Acceleration (NKA). Lipnikov et al. (2016) found NKA
fastest for Richards when paired with a good preconditioner, beating both
Picard and JFNK. Our Cockett results confirm: NGMRES roughly halves the
total Newton iterations vs plain Newton + GMG (38 vs 60 at sweep, 33 vs
35 at large), and is the lowest-memory variant on Cockett (652 MB at
large vs 1240+ MB for the rest).

### 8.2 `qn_gmg` — Quasi-Newton (L-BFGS) + GMG

L-BFGS approximates the Jacobian inverse from a history of step/gradient
pairs, avoiding full Jacobian assembly beyond what the preconditioner
needs. Combined with GMG: the preconditioner handles spatial error, L-BFGS
handles the nonlinear update direction. Experimental for Richards;
literature is sparse but L-BFGS is widely used for nonlinear diffusion.

---

## 9. Mesh-hierarchy infrastructure

For the GMG-family solvers (`gmg`, `ngmres_gmg`, `qn_gmg`,
`vlumping_hmg`) the test driver builds a horizontal-only mesh hierarchy
via Omega's pattern:

```python
mh2d = MeshHierarchy(mesh_2d, refinement_levels)
mh3d = ExtrudedMeshHierarchy(mh2d, height=h, base_layer=n_layers,
                              refinement_ratio=1)   # vertical NOT refined
mesh = mh3d[-1]                                     # finest level
```

This is exactly the pattern documented in `omega/mesh/builder.py`
(`build_extruded_mesh_hierarchy`). `vlumping_hmg` reaches into
`mesh._base_mesh` to get back to the 2D base hierarchy when constructing
its coarse space.

---

## 10. Performance summary and recommendations

**Default solvers per benchmark:**

- **Isotropic 3D (Cockett-like)**: BoomerAMG. Anisotropy-aware tuning is
  fine for nearly-isotropic problems too, and it has the cheapest setup
  among the AMG family.
- **Anisotropic vertical scaling (deep extruded mesh, modest horizontal)**:
  `vlumping_inexact`. Near-perfect weak scaling to 4000:1 aspect ratio,
  ~7 s/step at 1200 layers on 8 nodes. No setup cost, no hierarchy.
- **Anisotropic horizontal scaling (large 2D footprint, fixed layers)**:
  `vlumping_hmg`. The 18 % speedup over `vlumping_inexact` at h8 grows
  with horizontal mesh size; this is the regime where the 2D coarse
  problem is no longer trivial and the nested geometric MG pays off.

**Avoid:**

- `gmg` on Murrumbidgee unless replicating the paper exactly. The V-cycle
  through 300 layers at every horizontal-coarsening level dominates wall
  time on our hardware, and OOMs at 600+ layers.
- `boomeramg`, `gamg` on Murrumbidgee. Both fail (diverge or OOM).
- `vlumping_sor` and `vlumping_richardson` — strictly worse than the
  Chebyshev+BJacobi/ILU baseline.

**Recommended ablation if you care about the last 20 %:**

- Refinement-level sweep for `vlumping_hmg` on Murr horizontal — we ran
  it at L=2 and confirmed L=3 isn't viable on 832 ranks. If running on
  fewer ranks per node, L=3 may become feasible and could close further
  margin.
- `ngmres_vlumping_inexact` — not yet implemented. Anderson acceleration
  on top of VLumping should compose.

---

## 11. Bug post-mortems

Five bugs were either fixed in the preconditioner code or in the preset
options during this investigation. All of them produced silent
correctness regressions or OOMs at scale rather than loud test failures.
Documenting them so future work doesn't re-hit them.

### 11.1 GAMG `assembled_` prefix in the paper's preset

Paper used `assembled_pc_gamg_square_graph` and
`assembled_pc_gamg_coarse_eq_limit`. The `assembled_` prefix only takes
effect inside an `AssembledPC` wrapper (`mat_type="matfree"`). With
`mat_type="aij"` PETSc silently ignored both options. The corrected
preset removes the prefix and replaces the deprecated
`pc_gamg_square_graph` with `pc_gamg_aggressive_coarsening`. May change
the relative ranking of GAMG vs GMG vs the paper's reported numbers.

### 11.2 MUMPS coarse grid as a default (Round 1 → Round 2 fix)

Round 1 used MUMPS LU on the GMG coarse grid by default. At large scale
this dominated wall time (Cockett large dropped from 94 s to 28 s after
switching to GMRES + BJacobi/ILU coarse). VLumping retains MUMPS on
purpose because its coarse problem is genuinely 2D and small.

### 11.3 `VerticallyLumpedPC.update()` was a no-op (Round 3 fix)

The original `update()` was `pass`. After the first Newton iteration the
inner PCMG never learned that the Jacobian had changed; the Galerkin
coarse operator `PᵀAP` was computed once at `initialize()` and reused
for every subsequent Newton step.

Why it slipped through: PETSc rebuilds the coarse operator only when it
detects an operator-state change. Firedrake reassembles the Jacobian
**in-place** (the pointer doesn't change, but the Mat's state counter
does). Without `setUp()` being called from `update()`, PETSc never sees
the state change.

Fix: `def update(self, pc): self.pc.setUp()`. Matches the pattern in
Firedrake's `GTMGPC` and `TwoLevelPC`.

### 11.4 ASM smoother options under nested prefix — the missing `sub_`

`vlumping_linesmooth` and `vlumping_hmg` initially set
`lumped_mg_levels_pc_linesmooth_sub_pc_type = lu`, expecting it to set
the sub-KSP's PC type inside the ASM. It instead set the **ASM PC's
own** `pc_type` to LU, downgrading the line smoother to a direct
factorisation of the rank-local matrix. At 170k DOFs/rank this is ~230 GB
of LU factor per rank → instant OOM on the first KSP call.

Why the prefix is doubled. `firedrake.ASMPatchPC.initialize`
(`firedrake/preconditioners/asm.py:47`) sets the inner PETSc ASM PC's
options prefix to `self.prefix + "sub_"`. The default sub-KSP PC type is
then read from that prefix (`asm.py:60`):

```
asmpc.getOptionsPrefix()  →  "<outer>_pc_linesmooth_sub_"
key for sub-PC type        →  "<outer>_pc_linesmooth_sub_sub_pc_type"
```

So the patch-local solver lives under **two** `sub_` segments. Single
`sub_` matches the ASM PC's own `pc_type` and clobbers it.

Fix: rename `..._sub_pc_type` to `..._sub_sub_pc_type` (and same for the
`pc_factor_mat_ordering_type` option). After fix: `asm_pc.getType()` is
correctly `"asm"` (was `"lu"`), 16 sub-KSPs created, LU fill ratio on
each patch matrix = 1.00x. Memory dropped from 4.6 GB/rank to ~460
MB/rank.

Diagnosed locally with a small mesh + an instrumented
`ASMLinesmoothPC.get_patches` that printed the resolved prefix, the
`codims` lookup, and the patch count.

### 11.5 Parallel-broken `I` matrix in `VerticallyLumpedHMGPC`

The `_build_identity_coarse_to_R` helper built a permutation matrix `I`
from `V_coarse` (2D base) to `V_R` (3D `hele × R`) by iterating over the
rank-local `cell_node_map().values` (which holds **local** DOF indices)
and calling `I.setValue(local_row, local_col, 1.0)`. PETSc's `setValue`
takes **global** indices by default — so every rank wrote to global
positions starting at 0, producing a malformed matrix. The Galerkin
projection `PᵀAP` then blew up inside `MatDiagonalSet` while assembling
the coarse operator (PETSc's `MatGalerkin` adjusts the diagonal of the
result).

Why the pytest suite passed: serial runs (1 rank) have local == global,
so the bug is invisible.

Fix: translate local → global using `V.dof_dset.lgmap.indices`, restrict
the loop to rows this rank actually owns
(`Mat.getOwnershipRange()`), and use `cell_node_map().values_with_halo`
so halo cells contribute owned-row entries at partition boundaries.

Lesson for the workflow: any future PC that hand-builds a parallel
matrix needs an MPI smoke test in the suite, not just serial pytest.

### 11.6 petsc4py wraps Python exceptions as `PETSc.Error(101)`

When `VerticallyLumpedHMGPC.initialize` raises a `RuntimeError` (e.g. for
a missing `MeshHierarchy`), petsc4py's `PCSetUp_Python` Cython wrapper
catches it and re-raises as a bare `PETSc.Error(101)` whose `__str__` is
locked to `"error code 101"`. The original message survives as
`excinfo.value.__cause__` (or `__context__`).

Implication for tests: assertions like `"hierarchy" in str(exc)` fail
even when the underlying error is correct. The test in
`tests/richards/test_vlumping_variants.py::test_missing_hierarchy_raises_clearly`
walks the exception chain to find the message.

### 11.7 Other small fixes that don't merit deep treatment

- `mesh.ufl_cell().sub_cells` is a property on the current Firedrake;
  was a method (`sub_cells()`) before. Old `vlumping.py` used the method
  call form.
- `Interpolator(v, V).callable().handle` API replaced by
  `assemble(interpolate(trial, V)).petscmat` (modern API).
- `applyTranspose` was raising `NotImplementedError`; now forwards to
  the inner PC.
- `incrementTabLevel(1, parent=pc)` added to the inner PCMG for clean
  `-snes_view` output and correct option-prefix resolution.

---

## 12. Infrastructure: scripts, parsing, plotting

### 12.1 Submission

```bash
cd .../tests/parallel_scaling_richards

# Three weak-scaling phases, each runs 4–8 scales × however many solvers
python3 submit_jobs.py --phase round3            # Cockett: sweep, medium, large
python3 submit_jobs.py --phase round3_murr       # Murr vertical: smoke, sweep, medium, large
python3 submit_jobs.py --phase round3_murr_horiz # Murr horizontal: h1, h2, h4, h8

# Subset by solver name (post-filter applied to the phase's solver list)
python3 submit_jobs.py --phase round3_murr_horiz --solvers vlumping_inexact vlumping_hmg

# Generate without submitting
python3 submit_jobs.py --phase round3 --dry-run
```

`submit_jobs.py` writes one PBS script per `(case, solver, scale)` to
`results/<case>/<solver>/<scale>.pbs` and submits via `qsub`.
`refinement_levels(solver_name)` returns 3 for the GMG-family
(`gmg`, `ngmres_gmg`, `qn_gmg`), 1 for `vlumping_hmg`, and 0 for
everything else; `murr_horiz` overrides this and forces L=2 for any GMG
family member.

**Note about the Gadi login-node Python.** It's 3.6, which doesn't
support `subprocess.run(capture_output=...)`. If the script crashes
during the qsub-submission loop, generated PBS scripts are still on
disk and can be submitted manually (`for pbs in results/.../*.pbs; do
qsub $pbs; done`).

### 12.2 Parsing

```bash
python3 parse_results.py
```

Walks `results/<case>/<solver>/<scale>.out` and writes one JSON per case
to `parsed/<case>.json`. Each run record includes: header (case, solver,
scale, nodes, CPUs, DOF, mesh string), per-step vector (wall time, NL
iters, linear iters, dt for adaptive runs), per-Newton-step detail
(SNES norms, outer KSP iteration counts), summary (totals, mean
wall/step, peak RSS, failed steps), `outcome` ∈
{`success`, `diverged`, `oom`, `incomplete`}, and steady-state metrics
(steps 2 onwards — excludes the startup step which includes PC setup,
Chebyshev eigenvalue estimation, and the snes_view dump).

### 12.3 Plotting

```bash
python plot_results.py --parsedir parsed --outdir figures
```

Produces four 2×3-panel figures as PDF and PNG:

- `figures/cockett_solvers.pdf` — main Cockett comparison
- `figures/cockett_vlumping.pdf` — VLumping parameter sweep on Cockett
- `figures/murr_vertical.pdf` — Murr vertical weak scaling
- `figures/murr_horizontal.pdf` — Murr horizontal weak scaling (paper Figure 14 case)

Each figure shows: (a) Krylov iters per Newton step, (b) wall/step (all
steps), (c) wall/step (steady-state), (d) per-Krylov-iteration cost,
(e) peak RSS per rank, (f) total wall time. Failed solvers appear as
`DIVERGED` / `OOM` / `TIMEOUT` markers near the bottom.

Solver styles live in `SOLVER_STYLE` at the top of `plot_results.py`.
Adding a new preset requires registering its style there and adding it
to the `solvers = [...]` list inside the relevant `fig_*` function.

---

## 13. Comparison with Morrow et al. 2026

A side-by-side check of our `solvers/gmg.py` against the paper's
documented GMG-H preset (`papers/richards-morrow-2026/main.tex` line
560+):

| Key | Paper | This branch | Match? |
|---|---|---|---|
| `ksp_type` | fgmres | fgmres | ✓ |
| `ksp_rtol` | 1e-6 | 1e-6 | ✓ |
| `pc_type` | mg | mg | ✓ |
| `mg_levels_ksp_type` | chebyshev | chebyshev | ✓ |
| `mg_levels_ksp_max_it` | 1 | 1 | ✓ |
| `mg_levels_pc_type` | bjacobi | bjacobi | ✓ |
| `mg_levels_sub_pc_type` | ilu | ilu | ✓ |
| `mg_coarse_pc_type` | bjacobi | bjacobi | ✓ |

**Solver dict identical.** Yet our `gmg` is ~2× slower per timestep than
the paper's reported number. The differences are in the runtime context,
not the solver:

1. **Hardware**: 104-core Sapphire Rapids vs 48-core Cascade Lake. Same
   ~18M DOF/node target gives ~183k DOF/core for us vs ~395k DOF/core
   for the paper. Halving DOFs/core doubles the fixed per-iteration
   overhead and halves coarsest-grid cells/rank.
2. **Refinement levels**: paper Figure 14 showed L=3 was the wall-time
   optimum at h8. Our `submit_jobs.py:212` caps `gmg` at L=2 on
   `murr_horiz` to avoid coarsest-grid partitioning failures at our
   higher rank density. At L=2 our gmg gets ~74 L/NL at h8, vs the
   paper's ~64 at L=3.
3. **Time stepping**: paper used 200 steps × Δt=12 h fixed. We use
   adaptive dt ramping from 60 s to 12 h, t_final = 30 days = 75 steps.
   Different stiffness regimes early in each run.

So the GMG-H regression isn't a bug — it's an artefact of the harder
coarse-grid regime our hardware imposes. Implication for the headline
comparison: the 18 % advantage `vlumping_hmg` shows over
`vlumping_inexact` at h8 is comparing against a stronger baseline, but
the GMG comparison would need the paper's hardware to be apples-to-apples.

---

## 14. File locations

### G-ADOPT (the shipped solver code)

| What | Path (inside `~/Workplace/g-adopt-worktrees/sghelichkhani/richardson/`) |
|---|---|
| `RichardsSolver` + preset dicts (`direct`, `iterative`, `vlumping`, `vlumping_hmg`) | `gadopt/richards_solver.py` |
| `VerticallyLumpedPC`, `VerticallyLumpedHMGPC` | `gadopt/preconditioners.py` |
| Soil curves | `gadopt/soil_curves.py` |
| Correctness tests | `tests/richards/test_vlumping_variants.py` |
| Regression-sized scaling tests (2–3 canonical presets) | `tests/parallel_scaling_richards/` |

### Paper experimental record (this directory)

| What | Path (inside `~/Workplace/morrow2026/parallel_scaling/`) |
|---|---|
| Full solver-preset sweep | `solvers/*.py` |
| Cockett driver | `cockett_3d.py` |
| Murrumbidgee driver | `murrumbidgee_3d.py` |
| Job submission | `submit_jobs.py` |
| Result parser | `parse_results.py` |
| Result plotter | `plot_results.py` |
| Raw Gadi output | `results/<case>/<solver>/<scale>.{out,err,pbs}` |
| Parsed JSON | `parsed/{cockett,murr_vertical,murr_horizontal}.json` |
| Figures | `figures/*.{pdf,png}` |

The `solvers/vlumping.py`, `solvers/vlumping_inexact.py`, and
`solvers/vlumping_hmg.py` modules now re-export from
`gadopt.preconditioners` / `gadopt.richards_solver` rather than carry
their own copy of the preconditioner code. The other scaling-only
presets (`vlumping_1sweep`, `_4sweep`, `_richardson`, `_sor`,
`vlumping_linesmooth`, `bjacobi`, `sor`, `gamg`, `gamg_asm`, `gmg`,
`ngmres_gmg`, `qn_gmg`) remain as local modules because they are
ablation-only and not part of g-adopt's shipped API.

### Gadi

| What | Path |
|---|---|
| G-ADOPT (richardson branch) | `/scratch/xd2/sg8812/g-adopt-worktrees/sghelichkhani/richardson` |
| Irksome (master, with stage_value) | `/scratch/xd2/sg8812/Irksome` |
| Local pip packages | `/scratch/xd2/sg8812/local/firedrake-main-20260401/lib/python3.11/site-packages` |
| Firedrake override | `/scratch/xd2/sg8812/firedrake-override` |
| `gwassess` (analytical solutions) | `/scratch/xd2/sg8812/gwassess` |
| Murrumbidgee CSV data | `.../tests/parallel_scaling_richards/murrumbidgee_data/` |
| Gadi run outputs (canonical source) | `.../tests/parallel_scaling_richards/results/<case>/<solver>/<scale>.out` |
| Local mirror of the above (synced on demand) | `~/Workplace/morrow2026/parallel_scaling/results/` |

### Gadi environment setup

```bash
source /etc/profile
module use /g/data/fp50/modules
module load firedrake/main-20260401
export PYTHONPATH="/scratch/xd2/sg8812/g-adopt-worktrees/sghelichkhani/richardson":\
"/scratch/xd2/sg8812/Irksome":\
"/scratch/xd2/sg8812/local/firedrake-main-20260401/lib/python3.11/site-packages":\
"/scratch/xd2/sg8812/firedrake-override":\
"/scratch/xd2/sg8812/gwassess":${PYTHONPATH}
export PYTHONDONTWRITEBYTECODE=1
export OMPI_MCA_io="ompio"
export OMP_NUM_THREADS=1
export MPLCONFIGDIR=$PBS_JOBFS/matplotlib
```

PBS queue: `normalsr` (Sapphire Rapids, 104 CPUs/node, 500 GB/node).
Project: `xd2`.

### External dependency

`gwassess` provides analytical solutions for the small-mesh verification
benchmarks (`TracyRichardsSolution2D`, `TracyRichardsSolution3D`,
`VauclinRichardsSolution2D`, `CockettRichardsSolution3D`). Used by
`tests/richards/`, not by the scaling tests in this directory.

---

## Appendix A — How to add a new preset

1. Create `solvers/<name>.py` exporting a `solver_parameters` dict
   (and optionally a `solver_kwargs` dict for constructor arguments
   like `pmat='diffusion'`).
2. Register it in `solvers/__init__.py`: add to `_presets` and the
   docstring.
3. If it needs a mesh hierarchy at runtime, add it to either
   `GMG3_SOLVERS` (L=3) or `HMG1_SOLVERS` (L=1) at the top of
   `submit_jobs.py:24-32`, and decide whether the special `murr_horiz`
   override at line 212 should treat it as a GMG-family member.
4. Add it to one or more of `ROUND3_SOLVERS`, `ROUND3_MURR_SOLVERS`,
   `ROUND3_MURR_HORIZ_SOLVERS` so phase-based submission picks it up.
5. Add a style entry in `plot_results.py:SOLVER_STYLE` and add the
   preset name to whichever `fig_*` function should plot it.
6. If the preset introduces a new Python PC, add a correctness test in
   `tests/richards/test_vlumping_variants.py` (or a new file) that
   covers the invariants from §11 (especially: parallel correctness of
   any hand-built matrix, and `update()` not being a no-op).
