****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0333.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 23:47:05 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.060e+03     1.000   1.060e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                8.434e+10     1.114   8.007e+10  6.662e+13
Flops/sec:            7.957e+07     1.114   7.554e+07  6.285e+10
MPI Msg Count:        2.259e+04     7.925   8.019e+03  6.672e+06
MPI Msg Len (bytes):  1.062e+09     2.700   1.036e+05  6.909e+11
MPI Reductions:       2.782e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.0599e+03 100.0%  6.6617e+13 100.0%  6.672e+06 100.0%  1.036e+05      100.0%  2.763e+03  99.3%

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

BuildTwoSided         63 1.0 1.7287e+00 4.4 0.00e+00 0.0 1.2e+05 4.0e+00 6.3e+01  0  0  2  0  2   0  0  2  0  2    -0
BuildTwoSidedF        26 1.0 1.7114e+00 4.4 0.00e+00 0.0 3.8e+04 1.3e+06 2.6e+01  0  0  1  7  1   0  0  1  7  1    -0
SFSetGraph            40 1.0 5.6616e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 4.8304e-02 2.6 0.00e+00 0.0 2.0e+05 2.9e+03 3.7e+01  0  0  3  0  1   0  0  3  0  1    -0
SFBcastBegin         135 1.0 4.7296e-02 4.4 0.00e+00 0.0 4.8e+05 2.8e+04 0.0e+00  0  0  7  2  0   0  0  7  2  0    -0
SFBcastEnd           135 1.0 6.6119e-01 8.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         17 1.0 3.8749e-03 6.4 0.00e+00 0.0 7.0e+04 4.4e+04 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
SFReduceEnd           17 1.0 5.9755e-02 21.3 5.83e+05 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6347
SFFetchOpBegin         2 1.0 2.6582e-05 7.7 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.4525e-03 96.0 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.4813e-03 3.1 0.00e+00 0.0 5.6e+03 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 3.8977e-02 1.4 0.00e+00 0.0 1.8e+05 2.7e+02 2.4e+01  0  0  3  0  1   0  0  3  0  1    -0
SFSectionSF           21 1.0 1.2031e-02 5.5 0.00e+00 0.0 8.2e+04 1.6e+02 2.1e+01  0  0  1  0  1   0  0  1  0  1    -0
SFPack              1390 1.0 4.1569e-01 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1392 1.0 2.4512e-02 24.4 5.83e+05 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15472
VecMDot             1200 1.0 1.3920e+01 1.1 1.46e+10 1.1 0.0e+00 0.0e+00 1.2e+03  1 17  0  0 43   1 17  0  0 43 835139
VecNorm             1248 1.0 2.6614e+00 3.6 1.02e+09 1.1 0.0e+00 0.0e+00 1.2e+03  0  1  0  0 45   0  1  0  0 45 302849
VecScale            1242 1.0 5.2764e-01 1.6 5.05e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 760103
VecCopy               66 1.0 9.0072e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1290 1.0 1.1572e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               78 1.0 1.3193e-01 1.8 6.35e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 381818
VecMAXPY            1242 1.0 1.9211e+01 1.1 1.56e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2 19  0  0  0   2 19  0  0  0 645465
VecScatterBegin     1236 1.0 4.4042e-01 2.6 0.00e+00 0.0 5.9e+06 1.1e+05 0.0e+00  0  0 88 90  0   0  0 88 90  0    -0
VecScatterEnd       1236 1.0 4.0508e+00 53.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        1242 1.0 2.9322e+00 2.4 1.52e+09 1.1 0.0e+00 0.0e+00 1.2e+03  0  2  0  0 45   0  2  0  0 45 410326
MatMult             1236 1.0 4.8986e+01 1.1 3.57e+10 1.1 5.9e+06 1.1e+05 0.0e+00  4 42 88 90  0   4 42 88 90  0 577198
MatConvert             6 1.0 1.7511e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin      39 1.0 1.7450e+00 2.6 0.00e+00 0.0 3.8e+04 1.3e+06 2.6e+01  0  0  1  7  1   0  0  1  7  1    -0
MatAssemblyEnd        39 1.0 1.6195e+00 1.3 6.48e+06 0.0 9.5e+03 2.7e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  1405
MatGetRowIJ            4 1.0 1.2633e-05 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries         6 1.0 2.1043e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 3.6983e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       12 1.0 6.6985e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp                6 1.0 9.8991e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCApply             1242 1.0 8.7373e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 82  0  0  0  0  82  0  0  0  0    -0
KSPSetUp               6 1.0 8.3846e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               6 1.0 9.5187e+02 1.0 6.75e+10 1.1 5.9e+06 1.1e+05 2.4e+03 90 80 88 90 88  90 80 88 90 88 56261
KSPGMRESOrthog      1200 1.0 3.1985e+01 1.1 2.93e+10 1.1 0.0e+00 0.0e+00 1.2e+03  3 35  0  0 43   3 35  0  0 43 726885
DMPlexCreateGmsh       1 1.0 4.1283e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.0758e+01 26.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 6.7510e-01 1.0 0.00e+00 0.0 5.9e+04 2.8e+02 2.5e+01  0  0  1  0  1   0  0  1  0  1    -0
Mesh Migration         2 1.0 1.1321e-01 1.0 0.00e+00 0.0 2.1e+05 3.5e+02 1.1e+02  0  0  3  0  4   0  0  3  0  4    -0
DMPlexPartSelf         1 1.0 7.8286e-02 15841.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1474e-01 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 1.0578e-02 3.7 0.00e+00 0.0 1.1e+04 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 6.0919e-03 1.4 0.00e+00 0.0 5.6e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 2.9630e-02 1.1 0.00e+00 0.0 6.4e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.2863e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.9318e-01 1.0 0.00e+00 0.0 3.4e+04 2.3e+03 6.3e+01  0  0  1  0  2   0  0  1  0  2    -0
DMPlexDistCones        2 1.0 1.3996e-02 1.1 0.00e+00 0.0 3.3e+04 6.7e+02 4.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistLabels       2 1.0 7.8934e-02 1.0 0.00e+00 0.0 1.1e+05 3.7e+02 7.6e+01  0  0  2  0  3   0  0  2  0  3    -0
DMPlexDistOvrlp        1 1.0 2.6832e-02 1.0 0.00e+00 0.0 2.4e+05 9.7e+01 8.0e+01  0  0  4  0  3   0  0  4  0  3    -0
DMPlexDistField        3 1.0 1.2445e-02 1.2 0.00e+00 0.0 5.1e+04 1.4e+02 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexStratify         4 1.0 1.8689e-01 17.8 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.8477e-02 616.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 9.8644e+02 1.0 8.43e+10 1.1 6.0e+06 1.1e+05 2.5e+03 93 100 90 98 89  93 100 90 98 90 67478
SNESSetUp              1 1.0 6.3357e-05 8.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       6 1.0 1.0541e+01 1.0 5.43e+09 1.2 9.5e+04 1.1e+05 0.0e+00  1  6  1  1  0   1  6  1  1  0 398229
SNESJacobianEval       6 1.0 1.4102e+01 1.0 1.14e+10 1.2 5.7e+04 6.9e+05 2.4e+01  1 13  1  6  1   1 13  1  6  1 624643
firedrake              1 1.0 1.0560e+03 1.0 8.43e+10 1.1 6.7e+06 1.0e+05 2.8e+03 100 100 100 100 99 100 100 100 100 100 63087
firedrake.__init__       1 1.0 1.8246e+01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 1.1697e+01 8.7 0.00e+00 0.0 4.9e+05 2.6e+02 2.0e+02  1  0  7  0  7   1  0  7  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 1.0759e+01 26.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.1851e-03 55.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 3.2040e-06 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.8038e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 7.9381e-04 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 1.9329e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 9.1369e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 1.8041e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 1.7042e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 1.6983e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 8.6213e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.3949e-03 1.3 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.1911e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.3414e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 3.5512e-02 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 3.1378e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.5497e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.9393e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 6.1686e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 3.1336e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     214 1.0 4.0552e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        65 1.0 2.9303e+01 1.0 1.69e+10 1.2 1.8e+05 7.7e+04 1.5e+01  3 20  3  2  1   3 20  3  2  1 445621
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 3.1002e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     130 1.0 2.5233e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.3386e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.2745e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.7908e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.4600e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.4599e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 8.3159e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.1662e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin      65 1.0 6.9414e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        65 1.0 2.2160e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 8.9211e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8455e+00 1.0 6.87e+07 1.1 8.5e+04 4.5e+04 1.2e+01  0  0  1  1  0   0  0  1  1  0 11262
firedrake.interpolation.interpolate      10 1.0 4.0867e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.8417e+00 1.0 6.87e+07 1.1 8.5e+04 4.5e+04 1.2e+01  0  0  1  1  0   0  0  1  1  0 11271
firedrake.formmanipulation.split_form      12 1.0 4.6390e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.3767e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.4375e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.2 9.8598e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      32 1.0 4.8060e-02 1.4 0.00e+00 0.0 1.8e+05 7.7e+04 2.0e+00  0  0  3  2  0   0  0  3  2  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.5380e+00 1.0 6.87e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12026
firedrake.halo.Halo.global_to_local_end      32 1.0 3.2154e-01 72.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      37 1.0 2.4864e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 2.2917e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.5567e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 4.9735e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.8901e-05 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4924e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.8876e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2061e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2968e+00 1.0 0.00e+00 0.0 2.8e+04 4.3e+05 2.3e+01  1  0  0  2  1   1  0  0  2  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 7.6510e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.9049e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1440e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1440e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 3.9395e+00 1.1 0.00e+00 0.0 1.4e+04 4.3e+05 8.0e+00  0  0  0  1  0   0  0  0  1  0    -0
MatZeroInitial         1 1.0 5.3708e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 9.8646e+02 1.0 8.43e+10 1.1 6.0e+06 1.1e+05 2.5e+03 93 100 90 98 89  93 100 90 98 90 67477
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0604e-01 949.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.9035e-05 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0599e-01 1125.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0596e-01 1275.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      12 1.0 1.9011e+00 1.2 1.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 579387
Parloop_Cells_wrap_form0_exterior_facet_top_integral      12 1.0 9.9042e-01 1.0 1.80e+05 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   145
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      12 1.0 1.2057e+00 1.0 1.30e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   572
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      12 1.0 1.8731e+00 1.0 1.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 564782
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      12 1.0 2.6478e+00 1.0 2.72e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 769386
firedrake.halo.Halo.local_to_global_begin       6 1.0 2.6995e-03 7.4 0.00e+00 0.0 2.8e+04 1.1e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end       6 1.0 5.8859e-02 20.6 5.83e+05 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6443
Parloop_Cells_wrap_form00_cell_integral      12 1.0 3.0255e+00 1.1 2.59e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 679343
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      12 1.0 1.1776e+00 1.1 1.32e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   596
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      12 1.0 3.5632e+00 1.1 3.43e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 763127
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      12 1.0 5.6460e+00 1.1 5.37e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 713961
firedrake.constant.Constant.assign       5 1.0 9.8989e-04 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    20             20
              Viewer     3              3
           Index Set  2662           2662
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
Average time to get PetscTime(): 2.61e-08
Average time for MPI_Barrier(): 8.4596e-06
Average time for zero size MPI_Send(): 2.19045e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/boomeramg/h8.profile # (source: code)
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

