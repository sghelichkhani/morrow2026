# STATUS: reported. The paper computes numbers from runs of this preset.
# Successive over-relaxation. Worst scaling behaviour in the paper:
# iteration counts and wall time roughly double with each doubling of
# problem size. Included as a baseline for comparison.

solver_parameters = {
    "ksp_type": "gmres",
    # Right preconditioning, so that ksp_rtol means the same thing here as it
    # does for the VLumping presets. PETSc's GMRES defaults to left
    # preconditioning with a preconditioned residual norm
    # (gmres.c:880, priority 4), while FGMRES only supports right
    # preconditioning with the true residual norm (fgmres.c:550). Matching
    # ksp_rtol without matching the side would compare ||B^-1 r|| against
    # ||r||, and the gap between them grows with the quality of the
    # preconditioner, which is the very thing under test.
    "ksp_pc_side": "right",
    # Matched across the compared solvers for the 2026-08 fair-comparison
    # campaign: every preset in the paper's table now uses the same inexact
    # Newton tolerance and the same SNES block, so a difference in wall time
    # is a difference in the preconditioner and nothing else. The VLumping
    # presets have used 1e-4 since Round 3; these baselines used 1e-6, which
    # bought them fewer Newton steps at the cost of much more expensive
    # linear solves.
    "ksp_rtol": 1e-4,
    "ksp_max_it": 200,
    "pc_type": "sor",

    # This preset carried no SNES block at all and ran on PETSc's defaults.
    # Stated explicitly so it matches the rest of the compared set.
    "snes_type": "newtonls",
    "snes_linesearch_type": "bt",
    "snes_rtol": 1e-8,
    "snes_atol": 1e-12,
    "snes_stol": 1e-8,
    "snes_max_it": 50,
}
