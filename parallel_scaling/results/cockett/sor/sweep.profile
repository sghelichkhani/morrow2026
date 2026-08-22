****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0684.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:10:58 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.718e+02     1.000   7.718e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.848e+11     1.127   5.529e+11  5.750e+13
Flops/sec:            7.578e+08     1.127   7.163e+08  7.450e+10
MPI Msg Count:        6.845e+04     2.661   4.399e+04  4.575e+06
MPI Msg Len (bytes):  4.903e+09     2.339   8.786e+04  4.019e+11
MPI Reductions:       1.676e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.7177e+02 100.0%  5.7497e+13 100.0%  4.575e+06 100.0%  8.786e+04      100.0%  1.674e+04  99.9%

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

BuildTwoSided        404 1.0 1.0950e+01 5.8 0.00e+00 0.0 3.7e+04 4.0e+00 4.0e+02  1  0  1  0  2   1  0  1  0  2    -0
BuildTwoSidedF       366 1.0 1.0814e+01 6.1 0.00e+00 0.0 5.0e+04 3.7e+05 3.7e+02  1  0  1  5  2   1  0  1  5  2    -0
SFSetGraph            41 1.0 4.0738e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 2.4772e-01 8.1 0.00e+00 0.0 2.4e+04 2.2e+03 3.8e+01  0  0  1  0  0   0  0  1  0  0    -0
SFBcastBegin         338 1.0 1.0401e-01 3.3 0.00e+00 0.0 1.6e+05 6.8e+04 0.0e+00  0  0  4  3  0   0  0  4  3  0    -0
SFBcastEnd           338 1.0 6.0492e+00 138.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        134 1.0 2.4436e-02 3.1 0.00e+00 0.0 7.0e+04 7.9e+04 0.0e+00  0  0  2  1  0   0  0  2  1  0    -0
SFReduceEnd          134 1.0 3.2974e+00 121.9 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   211
SFFetchOpBegin         2 1.0 1.5505e-05 4.0 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.7951e-04 9.7 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 8.7233e-04 1.6 0.00e+00 0.0 6.5e+02 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 8.2472e-03 1.3 0.00e+00 0.0 2.2e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 3.3962e-03 3.2 0.00e+00 0.0 1.0e+04 1.5e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              8461 1.0 1.9674e+00 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            8463 1.0 4.7462e-02 4.1 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14626
VecDot                91 1.0 2.6871e-01 13.3 3.29e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 12172
VecMDot             7692 1.0 7.3044e+01 2.4 4.06e+10 1.1 0.0e+00 0.0e+00 7.7e+03  6  7  0  0 46   6  7  0  0 46 55171
VecNorm             8199 1.0 8.4434e+00 5.7 2.97e+09 1.1 0.0e+00 0.0e+00 8.2e+03  1  1  0  0 49   1  1  0  0 49 34902
VecScale            7987 1.0 3.3178e-01 1.2 1.45e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 432623
VecCopy             1430 1.0 7.1730e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               386 1.0 1.2794e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              499 1.0 1.9473e-01 1.6 1.81e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 92103
VecWAXPY              91 1.0 6.9679e-02 1.2 1.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23470
VecMAXPY            7987 1.0 4.2875e+01 1.1 4.34e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  7  0  0  0   5  7  0  0  0 100441
VecScatterBegin     7987 1.0 2.1228e+00 2.9 0.00e+00 0.0 4.3e+06 8.6e+04 0.0e+00  0  0 93 91  0   0  0 93 91  0    -0
VecScatterEnd       7987 1.0 3.1270e+01 57.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       182 1.0 2.9024e-02 2.3 6.59e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 225383
VecReduceComm         91 1.0 4.2091e-01 85.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        7987 1.0 6.3298e+00 4.7 4.34e+09 1.1 0.0e+00 0.0e+00 8.0e+03  1  1  0  0 48   1  1  0  0 48 68029
MatMult             7987 1.0 2.1678e+02 1.2 1.60e+11 1.1 4.3e+06 8.6e+04 0.0e+00 26 28 93 91  0  26 28 93 91  0 73008
MatSOR              7987 1.0 3.1019e+02 1.1 1.54e+11 1.1 0.0e+00 0.0e+00 0.0e+00 38 26  0  0  0  38 26  0  0  0 49043
MatAssemblyBegin     366 1.0 1.1117e+01 4.8 0.00e+00 0.0 5.0e+04 3.7e+05 3.7e+02  1  0  1  5  2   1  0  1  5  2    -0
MatAssemblyEnd       366 1.0 2.1498e+00 8.5 2.24e+07 0.0 1.1e+03 2.1e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0   498
MatZeroEntries        91 1.0 3.1313e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 3.1934e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             7987 1.0 3.1021e+02 1.1 1.54e+11 1.1 0.0e+00 0.0e+00 0.0e+00 38 26  0  0  0  38 26  0  0  0 49040
KSPSetUp              91 1.0 8.5466e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.8327e+02 1.0 4.00e+11 1.1 4.2e+06 8.6e+04 1.6e+04 76 69 92 90 94  76 69 92 90 94 67968
KSPGMRESOrthog      7692 1.0 1.0935e+02 1.6 8.12e+10 1.1 0.0e+00 0.0e+00 7.7e+03 11 14  0  0 46  11 14  0  0 46 73704
Mesh Partition         2 1.0 1.6998e-01 1.0 0.00e+00 0.0 6.8e+03 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.3163e-02 1.1 0.00e+00 0.0 2.3e+04 3.7e+02 1.1e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 5.9366e-03 2378.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 9.8101e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.4854e-03 1.1 0.00e+00 0.0 1.3e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.1258e-03 1.4 0.00e+00 0.0 6.5e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.9444e-03 1.6 0.00e+00 0.0 7.6e+02 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.9205e-01 1.0 0.00e+00 0.0 4.2e+03 2.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 2.9134e-03 1.1 0.00e+00 0.0 3.9e+03 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.3901e-02 1.0 0.00e+00 0.0 1.1e+04 3.9e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 4.5420e-03 1.1 0.00e+00 0.0 2.7e+04 1.3e+02 8.0e+01  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistField        3 1.0 3.0273e-03 1.2 0.00e+00 0.0 5.9e+03 1.8e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 7.7675e-05 1.1 0.00e+00 0.0 2.7e+03 8.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 3.7653e-03 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 1.3724e-03 55.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 6.7545e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.2756e+02 1.0 5.85e+11 1.1 4.5e+06 8.9e+04 1.6e+04 94 100 99 100 98  94 100 99 100 98 79026
SNESSetUp              1 1.0 3.2134e-05 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.6368e+01 1.0 7.57e+10 1.2 1.5e+05 8.5e+04 1.0e+00  6 13  3  3  0   6 13  3  3  0 156347
SNESJacobianEval      91 1.0 9.4976e+01 1.0 1.09e+11 1.2 9.7e+04 2.2e+05 3.6e+02 12 18  2  5  2  12 18  2  5  2 109542
SNESLineSearch        91 1.0 2.3001e+01 1.0 5.89e+10 1.2 1.5e+05 8.6e+04 3.6e+02  3 10  3  3  2   3 10  3  3  2 245655
firedrake              1 1.0 7.6460e+02 1.0 5.85e+11 1.1 4.6e+06 8.8e+04 1.7e+04 99 100 100 100 100  99 100 100 100 100 75199
firedrake.__init__       1 1.0 1.4694e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 3.0954e+00 12.6 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  1   0  0  1  0  1    -0
CreateMesh             1 1.0 2.3850e-01 1.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 8.0579e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.6070e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.6802e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 3.9094e-04 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.2830e-02 1.3 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 4.8079e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.1976e-02 1.3 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.1278e-02 1.3 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.1239e-02 1.3 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 8.9609e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 4.8655e-03 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.0837e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.0217e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.3261e-02 6.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 4.7127e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.3220e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5427e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.8426e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 4.7086e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.8466e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.4250e+02 1.1 1.84e+11 1.2 1.3e+05 8.4e+04 6.0e+00 18 31  3  3  0  18 31  3  3  0 123876
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 4.6772e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 4.5134e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0219e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 1.8541e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.8056e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 2.4865e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      12 1.0 2.4864e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 1.2842e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 1.2742e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 2.9387e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.8298e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 8.4276e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 7.4039e+00 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  1  0  0  0  0   1  0  0  0  0    36
firedrake.interpolation.interpolate       1 1.0 5.2027e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 7.4033e+00 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  1  0  0  0  0   1  0  0  0  0    36
firedrake.formmanipulation.split_form       3 1.0 3.0903e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.0556e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.2375e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 2.9464e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.7336e-01 4.9 0.00e+00 0.0 1.3e+05 8.4e+04 2.0e+00  0  0  3  3  0   0  0  3  3  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 7.3317e+00 1.0 2.71e+06 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    37
firedrake.halo.Halo.global_to_local_end     243 1.0 5.8598e+00 159.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.5592e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.3422e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2184e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.8068e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.9159e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.9388e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2494e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.3380e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.2131e+00 1.0 0.00e+00 0.0 3.2e+03 4.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.3356e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3574e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1439e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1439e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.2920e+00 1.2 0.00e+00 0.0 1.6e+03 4.6e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.1646e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.2763e+02 1.0 5.85e+11 1.1 4.5e+06 8.9e+04 1.6e+04 94 100 99 100 98  94 100 99 100 99 79019
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 8.9126e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2514e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 2.9279e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 1.1299e+01 1.1 1.69e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 148621
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9707e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2932
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.7835e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3240
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.7727e+00 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 176120
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6218e+01 1.2 4.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 236568
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.7602e-02 2.5 0.00e+00 0.0 6.5e+04 8.6e+04 0.0e+00  0  0  1  1  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.2982e+00 116.0 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   210
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5573e+01 1.1 2.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   2  4  0  0  0 147728
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3509e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2245
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3194e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2276
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7649e+01 1.1 2.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 87493
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.1711e+01 1.2 6.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5 10  0  0  0   5 10  0  0  0 135998
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    65             65
              Viewer     1              1
           Index Set   471            471
   IS L to G Mapping     4              4
             Section    72             72
   Star Forest Graph    71             71
              Vector    56             56
              Matrix     4              4
      Preconditioner     1              1
       Krylov Solver     1              1
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    12             12
            DM Label    50             50
    GraphPartitioner     3              3
     Discrete System    19             19
           Weak Form    19             19
========================================================================================================================
Average time to get PetscTime(): 2.65e-08
Average time for MPI_Barrier(): 4.0046e-06
Average time for zero size MPI_Send(): 1.92354e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/sor/sweep.profile # (source: environment)
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

