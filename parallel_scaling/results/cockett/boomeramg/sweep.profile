****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0318.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:26:59 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.202e+02     1.000   8.202e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.426e+11     1.154   2.257e+11  2.347e+13
Flops/sec:            2.958e+08     1.154   2.751e+08  2.861e+10
MPI Msg Count:        2.084e+04     2.647   1.343e+04  1.397e+06
MPI Msg Len (bytes):  1.575e+09     2.350   9.222e+04  1.288e+11
MPI Reductions:       5.061e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 8.2024e+02 100.0%  2.3469e+13 100.0%  1.397e+06 100.0%  9.222e+04      100.0%  5.042e+03  99.6%

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

BuildTwoSided        404 1.0 1.2009e+01 8.2 0.00e+00 0.0 3.7e+04 4.0e+00 4.0e+02  1  0  3  0  8   1  0  3  0  8    -0
BuildTwoSidedF       366 1.0 1.1949e+01 8.0 0.00e+00 0.0 5.0e+04 3.7e+05 3.7e+02  1  0  4 14  7   1  0  4 14  7    -0
SFSetGraph            41 1.0 4.0377e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 1.4568e-01 4.3 0.00e+00 0.0 2.4e+04 2.2e+03 3.8e+01  0  0  2  0  1   0  0  2  0  1    -0
SFBcastBegin         338 1.0 1.0174e-01 3.0 0.00e+00 0.0 1.6e+05 6.8e+04 0.0e+00  0  0 12  9  0   0  0 12  9  0    -0
SFBcastEnd           338 1.0 5.8808e+00 109.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        134 1.0 2.4608e-02 3.0 0.00e+00 0.0 7.0e+04 7.9e+04 0.0e+00  0  0  5  4  0   0  0  5  4  0    -0
SFReduceEnd          134 1.0 3.2932e+00 121.9 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   211
SFFetchOpBegin         2 1.0 1.5033e-05 4.6 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.2010e-04 9.3 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 8.4517e-04 1.4 0.00e+00 0.0 6.5e+02 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 8.1003e-03 1.3 0.00e+00 0.0 2.2e+04 2.8e+02 2.5e+01  0  0  2  0  0   0  0  2  0  0    -0
SFSectionSF           22 1.0 3.3109e-03 3.1 0.00e+00 0.0 1.0e+04 1.5e+02 2.2e+01  0  0  1  0  0   0  0  1  0  0    -0
SFPack              2510 1.0 5.7959e-01 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2512 1.0 4.2098e-02 4.4 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16490
VecDot                91 1.0 2.5976e-01 11.3 3.29e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  2   0  0  0  0  2 12591
VecMDot             1945 1.0 1.1732e+01 1.9 7.95e+09 1.1 0.0e+00 0.0e+00 1.9e+03  1  3  0  0 38   1  3  0  0 39 67314
VecNorm             2248 1.0 3.2732e+00 4.5 8.14e+08 1.1 0.0e+00 0.0e+00 2.2e+03  0  0  0  0 44   0  0  0  0 45 24685
VecScale            2036 1.0 8.7025e-02 1.1 3.68e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 420445
VecCopy              818 1.0 4.8030e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2218 1.0 7.0249e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               91 1.0 5.0027e-02 2.5 3.29e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 65380
VecWAXPY              91 1.0 6.8830e-02 1.2 1.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23760
VecMAXPY            2036 1.0 8.7299e+00 1.1 8.66e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 98470
VecScatterBegin     2036 1.0 5.4494e-01 3.7 0.00e+00 0.0 1.1e+06 8.6e+04 0.0e+00  0  0 78 73  0   0  0 78 73  0    -0
VecScatterEnd       2036 1.0 3.7722e+00 27.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 4.4338e-02 2.5 6.59e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 147536
VecReduceComm         91 1.0 6.8648e-02 13.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2036 1.0 1.1990e+00 3.1 1.11e+09 1.1 0.0e+00 0.0e+00 2.0e+03  0  0  0  0 40   0  0  0  0 40 91551
MatMult             2036 1.0 5.1660e+01 1.1 4.08e+10 1.1 1.1e+06 8.6e+04 0.0e+00  6 17 78 73  0   6 17 78 73  0 78095
MatConvert            91 1.0 7.3668e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatAssemblyBegin     549 1.0 1.2128e+01 5.7 0.00e+00 0.0 5.0e+04 3.7e+05 3.7e+02  1  0  4 14  7   1  0  4 14  7    -0
MatAssemblyEnd       549 1.0 2.6568e+00 3.1 2.24e+07 0.0 1.1e+03 2.1e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0   403
MatGetRowIJ            4 1.0 1.3248e-05 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        91 1.0 3.1274e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 2.6514e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO      182 1.0 6.4860e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp               91 1.0 1.1481e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00 14  0  0  0  0  14  0  0  0  0    -0
PCApply             2036 1.0 4.7334e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 58  0  0  0  0  58  0  0  0  0    -0
KSPSetUp              91 1.0 7.7935e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.3667e+02 1.0 5.67e+10 1.1 1.0e+06 8.6e+04 4.0e+03 65 24 74 69 79  65 24 74 69 79 10466
KSPGMRESOrthog      1945 1.0 1.9115e+01 1.4 1.59e+10 1.1 0.0e+00 0.0e+00 1.9e+03  2  7  0  0 38   2  7  0  0 39 82628
Mesh Partition         2 1.0 7.7992e-02 1.0 0.00e+00 0.0 6.8e+03 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.2789e-02 1.1 0.00e+00 0.0 2.3e+04 3.7e+02 1.1e+02  0  0  2  0  2   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 5.9877e-03 2371.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 9.6814e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.4232e-03 1.1 0.00e+00 0.0 1.3e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.9776e-03 1.5 0.00e+00 0.0 6.5e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.8902e-03 1.5 0.00e+00 0.0 7.6e+02 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.0000e-01 1.0 0.00e+00 0.0 4.2e+03 2.1e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.5545e-03 1.0 0.00e+00 0.0 3.9e+03 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.3743e-02 1.0 0.00e+00 0.0 1.1e+04 3.9e+02 7.6e+01  0  0  1  0  2   0  0  1  0  2    -0
DMPlexDistOvrlp        1 1.0 4.3828e-03 1.1 0.00e+00 0.0 2.7e+04 1.3e+02 8.0e+01  0  0  2  0  2   0  0  2  0  2    -0
DMPlexDistField        3 1.0 3.0490e-03 1.2 0.00e+00 0.0 5.9e+03 1.8e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 8.0421e-05 1.1 0.00e+00 0.0 2.7e+03 8.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 3.9276e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 1.2782e-03 51.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 6.4272e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.9344e+02 1.0 2.43e+11 1.2 1.3e+06 9.6e+04 4.7e+03 97 100 95 99 94  97 100 95 99 94 29579
SNESSetUp              1 1.0 3.5091e-05 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.3124e+01 1.0 7.57e+10 1.2 1.5e+05 8.5e+04 1.0e+00  5 31 11 10  0   5 31 11 10  0 168108
SNESJacobianEval      91 1.0 9.6036e+01 1.0 1.09e+11 1.2 9.7e+04 2.2e+05 3.6e+02 12 44  7 17  7  12 44  7 17  7 108333
SNESLineSearch        91 1.0 2.2770e+01 1.0 5.89e+10 1.2 1.5e+05 8.6e+04 3.6e+02  3 24 10 10  7   3 24 10 10  7 248145
firedrake              1 1.0 8.1747e+02 1.0 2.43e+11 1.2 1.4e+06 9.2e+04 5.0e+03 100 100 100 100 100 100 100 100 100 100 28710
firedrake.__init__       1 1.0 1.1301e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.2366e+00 33.7 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  4  0  4   0  0  4  0  4    -0
CreateMesh             1 1.0 1.4706e-01 1.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  4  0  4   0  0  4  0  4    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 9.8386e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5750e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.7516e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 3.6324e-04 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 1.9102e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 3.9031e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 1.8471e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 1.7856e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 1.7828e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 6.8709e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 4.4369e-03 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 2.9890e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.1039e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 1.3261e-02 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.6592e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.5206e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5162e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.8857e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.6552e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.5413e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3087e+02 1.1 1.84e+11 1.2 1.3e+05 8.4e+04 6.0e+00 15 75 10  9  0  15 75 10  9  0 134884
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.6232e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.2197e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0206e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 1.8649e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.8040e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.1930e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.1930e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.1247e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.0339e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 2.7389e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.7769e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.9008e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.3233e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   289
firedrake.interpolation.interpolate       1 1.0 3.5518e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.3197e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   289
firedrake.formmanipulation.split_form       3 1.0 3.0411e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.0105e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.2141e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.2678e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.2042e-01 3.6 0.00e+00 0.0 1.3e+05 8.4e+04 2.0e+00  0  0 10  9  0   0  0 10  9  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.6892e-01 1.0 2.71e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   310
firedrake.halo.Halo.global_to_local_end     243 1.0 5.6614e+00 150.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.5267e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.2525e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.3968e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.5412e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.0195e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.8163e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2680e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.2208e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.2820e+00 1.0 0.00e+00 0.0 3.2e+03 4.7e+05 2.3e+01  1  0  0  1  0   1  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0480e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3491e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1412e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1412e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.3462e+00 1.2 0.00e+00 0.0 1.6e+03 4.6e+05 8.0e+00  0  0  0  1  0   0  0  0  1  0    -0
MatZeroInitial         1 1.0 4.3065e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.9351e+02 1.0 2.43e+11 1.2 1.3e+06 9.6e+04 4.8e+03 97 100 95 99 95  97 100 95 99 95 29576
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.1942e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1949e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 2.9864e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 7.9546e+00 1.1 1.69e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 211108
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9528e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2959
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.7422e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3316
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.8610e+00 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 174542
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6256e+01 1.2 4.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2 16  0  0  0   2 16  0  0  0 236017
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.8262e-02 2.5 0.00e+00 0.0 6.5e+04 8.6e+04 0.0e+00  0  0  5  4  0   0  0  5  4  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.2942e+00 116.2 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   211
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5725e+01 1.1 2.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2 10  0  0  0   2 10  0  0  0 146296
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3501e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2246
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3239e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2271
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7813e+01 1.1 2.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   3 10  0  0  0 86974
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.3020e+01 1.3 6.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5 24  0  0  0   5 24  0  0  0 131859
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    67             67
              Viewer     1              1
           Index Set   471            471
   IS L to G Mapping     4              4
             Section    72             72
   Star Forest Graph    71             71
              Vector    56             56
              Matrix     8              8
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
Average time to get PetscTime(): 3.15e-08
Average time for MPI_Barrier(): 4.578e-06
Average time for zero size MPI_Send(): 2.01373e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/boomeramg/sweep.profile # (source: environment)
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

