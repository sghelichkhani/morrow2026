# Successive over-relaxation. Worst scaling behaviour in the paper:
# iteration counts and wall time roughly double with each doubling of
# problem size. Included as a baseline for comparison.

solver_parameters = {
    "ksp_type": "gmres",
    "pc_type": "sor",
}
