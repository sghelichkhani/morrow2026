****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0681.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 23:47:00 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.034e+03     1.000   1.034e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                8.305e+10     1.106   7.928e+10  1.649e+13
Flops/sec:            8.033e+07     1.106   7.668e+07  1.595e+10
MPI Msg Count:        1.270e+04     4.474   7.659e+03  1.593e+06
MPI Msg Len (bytes):  1.102e+09     2.947   1.043e+05  1.662e+11
MPI Reductions:       2.782e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.0339e+03 100.0%  1.6490e+13 100.0%  1.593e+06 100.0%  1.043e+05      100.0%  2.763e+03  99.3%

------------------------------------------------------------------------------------------------------------------------
See the 'Profiling' chapter of the users' manual for details on interpreting output.
Phase summary info:
   Count: number of times phase was executed
   Time and Flop: Max - maximum over all processes
                  Ratio - ratio of maximum to minimum over all processes
   Mess: number of messages sent
   AvgLen: average message length (bytes)
   Reduct: number of global reductions
   Global: entire computation
   Stage: stages of a computation. Set stages with PetscLogStagePush() and PetscLogStagePop().
      %T - percent time in this phase         %F - percent flop in this phase
      %M - percent messages in this phase     %L - percent message lengths in this phase
      %R - percent reductions in this phase
   Total Mflop/s: 1e-6 * (sum of flop over all processes)/(max time over all processes)
------------------------------------------------------------------------------------------------------------------------
Event                Count      Time (sec)     Flop                              --- Global ---  --- Stage ----  Total
                   Max Ratio  Max     Ratio   Max  Ratio  Mess   AvgLen  Reduct  %T %F %M %L %R  %T %F %M %L %R Mflop/s
------------------------------------------------------------------------------------------------------------------------

--- Event Stage 0: Main Stage

BuildTwoSided         63 1.0 1.9105e+00 4.5 0.00e+00 0.0 2.9e+04 4.0e+00 6.3e+01  0  0  2  0  2   0  0  2  0  2    -0
BuildTwoSidedF        26 1.0 1.8990e+00 4.5 0.00e+00 0.0 9.1e+03 1.3e+06 2.6e+01  0  0  1  7  1   0  0  1  7  1    -0
SFSetGraph            40 1.0 6.0251e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 3.0903e-02 1.7 0.00e+00 0.0 4.9e+04 2.9e+03 3.7e+01  0  0  3  0  1   0  0  3  0  1    -0
SFBcastBegin         135 1.0 3.1880e-02 3.4 0.00e+00 0.0 1.2e+05 2.9e+04 0.0e+00  0  0  7  2  0   0  0  7  2  0    -0
SFBcastEnd           135 1.0 4.4064e-01 17.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         17 1.0 3.3755e-03 9.1 0.00e+00 0.0 1.7e+04 4.4e+04 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
SFReduceEnd           17 1.0 5.1062e-02 20.9 6.05e+05 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1787
SFFetchOpBegin         2 1.0 1.8162e-05 6.1 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 9.8766e-04 52.2 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.9510e-03 1.9 0.00e+00 0.0 1.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.3206e-02 1.3 0.00e+00 0.0 4.3e+04 2.7e+02 2.4e+01  0  0  3  0  1   0  0  3  0  1    -0
SFSectionSF           21 1.0 4.9273e-03 5.6 0.00e+00 0.0 2.0e+04 1.6e+02 2.1e+01  0  0  1  0  1   0  0  1  0  1    -0
SFPack              1390 1.0 3.9965e-01 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1392 1.0 1.0052e-02 16.0 6.05e+05 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9076
VecMDot             1200 1.0 1.3732e+01 1.1 1.45e+10 1.1 0.0e+00 0.0e+00 1.2e+03  1 17  0  0 43   1 17  0  0 43 209686
VecNorm             1248 1.0 2.5248e+00 3.0 1.00e+09 1.1 0.0e+00 0.0e+00 1.2e+03  0  1  0  0 45   0  1  0  0 45 79074
VecScale            1242 1.0 4.8515e-01 1.5 4.99e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 204766
VecCopy               66 1.0 8.9086e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1290 1.0 1.0090e+00 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               78 1.0 1.2853e-01 1.7 6.26e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 97083
VecMAXPY            1242 1.0 1.9046e+01 1.1 1.54e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2 19  0  0  0   2 19  0  0  0 161264
VecScatterBegin     1236 1.0 4.3148e-01 2.7 0.00e+00 0.0 1.4e+06 1.1e+05 0.0e+00  0  0 88 90  0   0  0 88 90  0    -0
VecScatterEnd       1236 1.0 4.1702e+00 54.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        1242 1.0 2.6398e+00 2.4 1.50e+09 1.1 0.0e+00 0.0e+00 1.2e+03  0  2  0  0 45   0  2  0  0 45 112898
MatMult             1236 1.0 4.7876e+01 1.1 3.52e+10 1.1 1.4e+06 1.1e+05 0.0e+00  4 42 88 90  0   4 42 88 90  0 146122
MatConvert             6 1.0 1.7197e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin      39 1.0 1.9350e+00 2.7 0.00e+00 0.0 9.1e+03 1.3e+06 2.6e+01  0  0  1  7  1   0  0  1  7  1    -0
MatAssemblyEnd        39 1.0 1.5527e+00 1.3 5.70e+06 0.0 2.3e+03 2.7e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0   353
MatGetRowIJ            4 1.0 8.2980e-06 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries         6 1.0 1.9590e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 3.6516e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       12 1.0 6.6322e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp                6 1.0 9.3194e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCApply             1242 1.0 8.6099e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 83  0  0  0  0  83  0  0  0  0    -0
KSPSetUp               6 1.0 7.8932e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               6 1.0 9.3919e+02 1.0 6.66e+10 1.1 1.4e+06 1.1e+05 2.4e+03 91 80 88 90 88  91 80 88 90 88 14115
KSPGMRESOrthog      1200 1.0 3.1633e+01 1.1 2.89e+10 1.1 0.0e+00 0.0e+00 1.2e+03  3 35  0  0 43   3 35  0  0 43 182052
DMPlexCreateGmsh       1 1.0 1.0293e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.9236e+00 57.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 1.5577e-01 1.0 0.00e+00 0.0 1.4e+04 2.8e+02 2.5e+01  0  0  1  0  1   0  0  1  0  1    -0
Mesh Migration         2 1.0 3.3955e-02 1.0 0.00e+00 0.0 5.0e+04 3.6e+02 1.1e+02  0  0  3  0  4   0  0  3  0  4    -0
DMPlexPartSelf         1 1.0 1.5941e-02 5209.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 2.5382e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 5.9321e-03 1.1 0.00e+00 0.0 2.7e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.2907e-03 1.5 0.00e+00 0.0 1.3e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 8.5706e-03 1.2 0.00e+00 0.0 1.5e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 5.3765e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.8870e-01 1.0 0.00e+00 0.0 8.6e+03 2.3e+03 6.3e+01  0  0  1  0  2   0  0  1  0  2    -0
DMPlexDistCones        2 1.0 3.9534e-03 1.0 0.00e+00 0.0 8.0e+03 6.9e+02 4.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistLabels       2 1.0 2.0584e-02 1.0 0.00e+00 0.0 2.6e+04 3.8e+02 7.6e+01  0  0  2  0  3   0  0  2  0  3    -0
DMPlexDistOvrlp        1 1.0 9.3134e-03 1.1 0.00e+00 0.0 5.7e+04 9.8e+01 8.0e+01  0  0  4  0  3   0  0  4  0  3    -0
DMPlexDistField        3 1.0 5.1250e-03 1.2 0.00e+00 0.0 1.2e+04 1.4e+02 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexStratify         4 1.0 4.3477e-02 17.9 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 3.9570e-03 141.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 9.7280e+02 1.0 8.30e+10 1.1 1.4e+06 1.1e+05 2.5e+03 94 100 90 98 89  94 100 90 98 90 16938
SNESSetUp              1 1.0 5.1290e-05 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       6 1.0 1.0302e+01 1.0 5.37e+09 1.2 2.3e+04 1.1e+05 0.0e+00  1  6  1  1  0   1  6  1  1  0 100837
SNESJacobianEval       6 1.0 1.3799e+01 1.0 1.12e+10 1.1 1.4e+04 7.0e+05 2.4e+01  1 13  1  6  1   1 13  1  6  1 157974
firedrake              1 1.0 1.0310e+03 1.0 8.31e+10 1.1 1.6e+06 1.0e+05 2.8e+03 100 100 100 100 99 100 100 100 100 100 15994
firedrake.__init__       1 1.0 1.2482e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 6.1689e+00 17.7 0.00e+00 0.0 1.2e+05 2.7e+02 2.0e+02  0  0  7  0  7   0  0  7  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 5.9244e+00 57.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.0524e-03 7.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7550e-06 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.6060e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 8.6228e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.3197e-02 1.1 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 1.1811e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 2.2012e-02 1.1 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 2.0987e-02 1.1 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 2.0929e-02 1.1 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.3134e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.7459e-03 1.3 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 5.9047e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0122e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 3.2823e-02 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.2095e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.4988e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8723e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 6.0400e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.2052e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     214 1.0 3.7817e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        65 1.0 2.8200e+01 1.1 1.67e+10 1.2 4.3e+04 7.8e+04 1.5e+01  3 20  3  2  1   3 20  3  2  1 114594
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.1723e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     130 1.0 2.4004e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.0328e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.2628e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.6494e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.3679e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.3678e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 9.0057e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.8399e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin      65 1.0 5.9752e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        65 1.0 2.0554e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 7.0277e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 5.2228e+00 1.0 6.78e+07 1.1 2.0e+04 4.5e+04 1.2e+01  1  0  1  1  0   1  0  1  1  0  2588
firedrake.interpolation.interpolate      10 1.0 4.0214e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 5.2190e+00 1.0 6.78e+07 1.1 2.0e+04 4.5e+04 1.2e+01  1  0  1  1  0   1  0  1  1  0  2590
firedrake.formmanipulation.split_form      12 1.0 4.0561e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.8735e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 2.7088e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 2.3296e-01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      32 1.0 4.6074e-02 1.5 0.00e+00 0.0 4.3e+04 7.8e+04 2.0e+00  0  0  3  2  0   0  0  3  2  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.6080e+00 1.0 6.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2933
firedrake.halo.Halo.global_to_local_end      32 1.0 2.9668e-01 73.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      37 1.0 2.3242e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 2.1917e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1803e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 4.5004e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.2432e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 1.5712e-01 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.0319e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 1.5466e-01 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.4208e+00 1.0 0.00e+00 0.0 6.8e+03 4.4e+05 2.3e+01  1  0  0  2  1   1  0  0  2  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.1778e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4329e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9555e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9555e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 3.9721e+00 1.1 0.00e+00 0.0 3.4e+03 4.3e+05 8.0e+00  0  0  0  1  0   0  0  0  1  0    -0
MatZeroInitial         1 1.0 5.1850e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 9.7282e+02 1.0 8.30e+10 1.1 1.4e+06 1.1e+05 2.5e+03 94 100 90 98 89  94 100 90 98 90 16937
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 1.5729e-01 513.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.2747e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 1.5724e-01 611.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 1.5721e-01 691.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      12 1.0 1.8765e+00 1.1 1.37e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 145393
Parloop_Cells_wrap_form0_exterior_facet_top_integral      12 1.0 9.5911e-01 1.0 1.78e+05 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    37
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      12 1.0 1.1740e+00 1.0 1.24e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   292
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      12 1.0 1.7797e+00 1.0 1.32e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 147236
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      12 1.0 2.5212e+00 1.0 2.69e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 199705
firedrake.halo.Halo.local_to_global_begin       6 1.0 2.4418e-03 5.8 0.00e+00 0.0 6.8e+03 1.1e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end       6 1.0 5.0274e-02 20.4 6.05e+05 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1815
Parloop_Cells_wrap_form00_cell_integral      12 1.0 2.9225e+00 1.1 2.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 174201
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      12 1.0 1.1462e+00 1.0 1.26e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   304
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      12 1.0 3.3719e+00 1.1 3.38e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 199751
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      12 1.0 5.6479e+00 1.1 5.33e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 176404
firedrake.constant.Constant.assign       5 1.0 6.4026e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    20             20
              Viewer     3              3
           Index Set   790            790
   IS L to G Mapping     6              6
             Section    86             86
   Star Forest Graph    75             75
              Vector    73             73
              Matrix     8              8
      Preconditioner     1              1
       Krylov Solver     1              1
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    14             14
            DM Label    51             51
    GraphPartitioner     4              4
     Discrete System    22             22
           Weak Form    22             22
========================================================================================================================
Average time to get PetscTime(): 2.68e-08
Average time for MPI_Barrier(): 9.013e-06
Average time for zero size MPI_Send(): 2.24607e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/boomeramg/h2.profile # (source: code)
#End of PETSc Option Table entries
Compiled without FORTRAN kernels
Compiled with full precision matrices (default)
sizeof(short) 2 sizeof(int) 4 sizeof(long) 8 sizeof(void*) 8 sizeof(PetscScalar) 8 sizeof(PetscInt) 4
Configure options: PETSC_DIR=/g/data/fp50/apps/petsc/main-20260815 PETSC_ARCH=default --with-cc=mpicc --with-cxx=mpicxx --with-fc=mpif90 --with-mpiexec=mpirun COPTFLAGS="-O3 -g -xCASCADELAKE" CXXOPTFLAGS="-O3 -g -xCASCADELAKE" FOPTFLAGS="-O3 -g -xCASCADELAKE" --download-parmmg --with-c2html=0 --with-debugging=0 --with-fortran-bindings=0 --with-shared-libraries=1 --with-strict-petscerrorcode --download-bison --download-hdf5 --with-hwloc --download-mumps --download-netcdf --download-pnetcdf --download-ptscotch --download-suitesparse --download-superlu_dist --with-zlib --download-hypre --download-eigen --download-metis --download-parmetis --download-mmg --with-scalapack-include=/apps/intel-tools/intel-mkl/2024.2.1/include --with-scalapack-lib="-lmkl_scalapack_lp64 -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lmkl_blacs_openmpi_lp64 -lpthread -lm -ldl" --with-make-np=12
-----------------------------------------
Libraries compiled on 2026-08-16 20:11:54 on gadi-cpu-clx-0144.gadi.nci.org.au
Machine characteristics: Linux-4.18.0-553.148.1.el8.nci.x86_64-x86_64-with-glibc2.28
Using PETSc directory: /g/data/fp50/apps/petsc/main-20260815
Using PETSc arch: default
-----------------------------------------

Using C compiler: mpicc  -fPIC -Wall -Wwrite-strings -Wno-unknown-pragmas -Wconversion -Wno-sign-conversion -Wno-float-conversion -Wno-implicit-float-conversion -Qunused-arguments -fstack-protector -fvisibility=hidden -O3 -g -xCASCADELAKE 
Using Fortran compiler: mpif90  -fPIC -fpscomp logicals -O3 -g -xCASCADELAKE   
-----------------------------------------

Using include paths: -I/g/data/fp50/apps/petsc/main-20260815/include -I/g/data/fp50/apps/petsc/main-20260815/default/include -I/g/data/fp50/apps/petsc/main-20260815/default/include/suitesparse -I/g/data/fp50/apps/petsc/main-20260815/default/include/eigen3
-----------------------------------------

Using C linker: mpicc
Using Fortran linker: mpif90
Using libraries: -Wl,-rpath,/g/data/fp50/apps/petsc/main-20260815/default/lib -L/g/data/fp50/apps/petsc/main-20260815/default/lib -lpetsc -Wl,-rpath,/g/data/fp50/apps/petsc/main-20260815/default/lib -L/g/data/fp50/apps/petsc/main-20260815/default/lib -Wl,-rpath,/apps/intel-tools/intel-mkl/2024.2.1/lib/intel64 -L/apps/intel-tools/intel-mkl/2024.2.1/lib/intel64 -Wl,-rpath,/apps/openmpi/4.0.7/lib -L/apps/openmpi/4.0.7/lib -Wl,-rpath,/apps/python3/3.11.7/lib -L/apps/python3/3.11.7/lib -Wl,-rpath,/apps/openmpi/4.0.7/lib/Intel -L/apps/openmpi/4.0.7/lib/Intel -Wl,-rpath,/apps/openmpi/4.0.7/lib/profilers -L/apps/openmpi/4.0.7/lib/profilers -Wl,-rpath,/apps/intel-tools/intel-compiler-llvm/2024.2.1/lib -L/apps/intel-tools/intel-compiler-llvm/2024.2.1/lib -Wl,-rpath,/apps/intel-tools/intel-mkl/2024.2.1/lib -L/apps/intel-tools/intel-mkl/2024.2.1/lib -Wl,-rpath,/apps/hwloc/2.11.2/lib -L/apps/hwloc/2.11.2/lib -Wl,-rpath,/apps/intel-tools/.packages/2024.2.1/compiler/2024.2/lib -L/apps/intel-tools/.packages/2024.2.1/compiler/2024.2/lib -Wl,-rpath,/apps/intel-tools/.packages/2024.2.1/compiler/2024.2/lib/clang/19/lib/x86_64-unknown-linux-gnu -L/apps/intel-tools/.packages/2024.2.1/compiler/2024.2/lib/clang/19/lib/x86_64-unknown-linux-gnu -Wl,-rpath,/half-root/usr/lib/gcc/x86_64-redhat-linux/8 -L/half-root/usr/lib/gcc/x86_64-redhat-linux/8 -Wl,-rpath,/half-root/usr/lib/gcc -L/half-root/usr/lib/gcc -Wl,-rpath,/half-root/usr/lib64 -L/half-root/usr/lib64 -Wl,-rpath,/half-root/usr/lib -L/half-root/usr/lib -lHYPRE -lspqr -lumfpack -lklu -lcholmod -lamd -lsmumps -ldmumps -lcmumps -lzmumps -lmumps_common -lpord -lpthread -lmkl_scalapack_lp64 -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lmkl_blacs_openmpi_lp64 -lpthread -lm -ldl -lsuperlu_dist -lmkl_intel_lp64 -lmkl_core -lmkl_sequential -lpthread -lparmmg -lmmg -lmmg3d -lptesmumps -lptscotchparmetisv3 -lptscotch -lptscotcherr -lesmumps -lscotch -lscotcherr -lnetcdf -lhdf5_hl -lhdf5 -lparmetis -lmetis -lpnetcdf -lz -lhwloc -lX11 -lmpi_usempif08 -lmpi_usempi_ignore_tkr -lmpi_mpifh -lmpi -lifport -lifcoremt -limf -lsvml -lm -lipgo -lirc -lpthread -lgcc_s -lirc_s -ldl -lstdc++
-----------------------------------------

