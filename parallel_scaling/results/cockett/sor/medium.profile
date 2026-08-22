****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0682.gadi.nci.org.au with 208 processes, by sg8812 on Fri Aug 21 23:14:36 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.849e+02     1.000   9.849e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                7.254e+11     1.136   6.835e+11  1.422e+14
Flops/sec:            7.365e+08     1.136   6.940e+08  1.444e+11
MPI Msg Count:        8.919e+04     3.989   6.072e+04  1.263e+07
MPI Msg Len (bytes):  7.551e+09     2.410   9.511e+04  1.201e+12
MPI Reductions:       2.186e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 9.8486e+02 100.0%  1.4217e+14 100.0%  1.263e+07 100.0%  9.511e+04      100.0%  2.184e+04  99.9%

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

BuildTwoSided        404 1.0 1.3725e+01 7.7 0.00e+00 0.0 7.8e+04 4.0e+00 4.0e+02  1  0  1  0  2   1  0  1  0  2    -0
BuildTwoSidedF       366 1.0 1.3617e+01 8.5 0.00e+00 0.0 1.1e+05 4.1e+05 3.7e+02  1  0  1  4  2   1  0  1  4  2    -0
SFSetGraph            41 1.0 4.8712e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 2.2844e-01 5.2 0.00e+00 0.0 5.0e+04 2.4e+03 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         338 1.0 1.3978e-01 3.1 0.00e+00 0.0 3.5e+05 7.4e+04 0.0e+00  0  0  3  2  0   0  0  3  2  0    -0
SFBcastEnd           338 1.0 7.1670e+00 112.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        134 1.0 2.8617e-02 4.5 0.00e+00 0.0 1.5e+05 8.6e+04 0.0e+00  0  0  1  1  0   0  0  1  1  0    -0
SFReduceEnd          134 1.0 4.0509e+00 182.0 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   395
SFFetchOpBegin         2 1.0 2.0036e-05 7.9 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 6.3663e-04 37.1 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.6179e-03 2.6 0.00e+00 0.0 1.4e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.0824e-02 1.4 0.00e+00 0.0 4.6e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 4.7391e-03 5.3 0.00e+00 0.0 2.1e+04 1.3e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             11054 1.0 3.1757e+00 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           11056 1.0 5.9337e-02 3.8 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 26964
VecDot                91 1.0 2.3591e-01 11.4 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 27948
VecMDot            10199 1.0 8.1648e+01 2.0 5.50e+10 1.1 0.0e+00 0.0e+00 1.0e+04  6  8  0  0 47   6  8  0  0 47 134109
VecNorm            10792 1.0 9.9430e+00 3.6 3.93e+09 1.1 0.0e+00 0.0e+00 1.1e+04  1  1  0  0 49   1  1  0  0 49 78640
VecScale           10580 1.0 4.4048e-01 1.2 1.92e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 870142
VecCopy             1688 1.0 8.2572e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               472 1.0 1.5582e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              671 1.0 2.6793e-01 1.6 2.44e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 181454
VecWAXPY              91 1.0 6.9191e-02 1.1 1.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47646
VecMAXPY           10580 1.0 5.8370e+01 1.1 5.87e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  8  0  0  0   6  8  0  0  0 200251
VecScatterBegin    10580 1.0 3.4347e+00 2.4 0.00e+00 0.0 1.2e+07 9.3e+04 0.0e+00  0  0 95 93  0   0  0 95 93  0    -0
VecScatterEnd      10580 1.0 4.5801e+01 61.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       182 1.0 4.4815e-02 3.6 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 294246
VecReduceComm         91 1.0 3.5992e-01 39.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       10580 1.0 7.2597e+00 4.3 5.77e+09 1.1 0.0e+00 0.0e+00 1.1e+04  0  1  0  0 48   0  1  0  0 48 158387
MatMult            10580 1.0 3.0004e+02 1.2 2.13e+11 1.1 1.2e+07 9.3e+04 0.0e+00 27 30 95 93  0  27 30 95 93  0 141050
MatSOR             10580 1.0 4.1144e+02 1.1 2.04e+11 1.1 0.0e+00 0.0e+00 0.0e+00 40 28  0  0  0  40 28  0  0  0 98072
MatAssemblyBegin     366 1.0 1.3798e+01 5.5 0.00e+00 0.0 1.1e+05 4.1e+05 3.7e+02  1  0  1  4  2   1  0  1  4  2    -0
MatAssemblyEnd       366 1.0 2.5478e+00 7.8 2.93e+07 0.0 2.3e+03 2.3e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0   981
MatZeroEntries        91 1.0 3.2730e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 3.4254e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            10580 1.0 4.1146e+02 1.1 2.04e+11 1.1 0.0e+00 0.0e+00 0.0e+00 40 28  0  0  0  40 28  0  0  0 98067
KSPSetUp              91 1.0 8.9483e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 7.7664e+02 1.0 5.35e+11 1.1 1.2e+07 9.3e+04 2.1e+04 79 75 94 92 95  79 75 94 92 95 136671
KSPGMRESOrthog     10199 1.0 1.3235e+02 1.4 1.10e+11 1.1 0.0e+00 0.0e+00 1.0e+04 11 15  0  0 47  11 15  0  0 47 165467
Mesh Partition         2 1.0 1.5299e-01 1.0 0.00e+00 0.0 1.4e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.1293e-02 1.0 0.00e+00 0.0 4.8e+04 3.1e+02 1.1e+02  0  0  0  0  1   0  0  0  0  1    -0
DMPlexPartSelf         1 1.0 9.7555e-03 3268.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.9866e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.6375e-03 1.6 0.00e+00 0.0 2.7e+03 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 3.2142e-03 5.3 0.00e+00 0.0 1.4e+03 8.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.0579e-03 1.4 0.00e+00 0.0 1.6e+03 1.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.7960e-01 1.0 0.00e+00 0.0 8.1e+03 1.7e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 3.1567e-03 1.0 0.00e+00 0.0 8.1e+03 5.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.9501e-02 1.0 0.00e+00 0.0 2.3e+04 3.3e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 9.3315e-03 1.1 0.00e+00 0.0 5.5e+04 1.1e+02 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 4.8679e-03 1.3 0.00e+00 0.0 1.2e+04 1.5e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.1128e-04 1.2 0.00e+00 0.0 5.7e+03 7.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 5.8514e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 2.2130e-03 104.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 9.1855e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 9.2293e+02 1.0 7.25e+11 1.1 1.2e+07 9.6e+04 2.2e+04 94 100 99 100 99  94 100 99 100 99 154041
SNESSetUp              1 1.0 3.1332e-05 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.5627e+01 1.1 7.74e+10 1.2 3.1e+05 9.3e+04 1.0e+00  4 10  2  2  0   4 10  2  2  0 320586
SNESJacobianEval      91 1.0 9.7628e+01 1.0 1.11e+11 1.2 2.1e+05 2.4e+05 3.6e+02 10 15  2  4  2  10 15  2  4  2 215049
SNESLineSearch        91 1.0 2.4614e+01 1.0 6.02e+10 1.2 3.1e+05 9.3e+04 3.6e+02  2  8  2  2  2   2  8  2  2  2 463196
firedrake              1 1.0 9.7299e+02 1.0 7.25e+11 1.1 1.3e+07 9.5e+04 2.2e+04 99 100 100 100 100  99 100 100 100 100 146116
firedrake.__init__       1 1.0 3.0626e+01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.9305e+01 76.4 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  1  0  1  0  1   1  0  1  0  1    -0
CreateMesh             1 1.0 2.4255e-01 1.0 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2125e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.6120e-06 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.0605e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.3329e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.1770e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 3.9894e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.1144e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.0513e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.0483e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 7.9593e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 7.3293e-03 1.2 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.1860e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.1812e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 1.5925e-01 43.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 4.9849e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.9634e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5857e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.8211e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 4.9809e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.1104e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3626e+02 1.1 1.89e+11 1.2 2.8e+05 9.1e+04 6.0e+00 13 25  2  2  0  13 25  2  2  0 261399
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 4.9480e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.6666e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.1037e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 1.9754e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.8710e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.5564e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.5563e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 9.8681e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 9.7783e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 2.8116e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.3108e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.9291e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 1.0888e+00 1.2 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   499
firedrake.interpolation.interpolate       1 1.0 3.9814e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 1.0884e+00 1.2 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   499
firedrake.formmanipulation.split_form       3 1.0 2.6729e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.5158e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.2871e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 2.9290e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.3412e-01 3.8 0.00e+00 0.0 2.8e+05 9.1e+04 2.0e+00  0  0  2  2  0   0  0  2  2  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 1.0235e+00 1.2 2.73e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   531
firedrake.halo.Halo.global_to_local_end     243 1.0 6.7949e+00 238.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.9394e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 3.7215e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5938e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 9.8485e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.4657e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6926e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.6120e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0822e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.4234e+00 1.0 0.00e+00 0.0 6.8e+03 5.2e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.2342e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6872e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1439e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1439e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.6064e+00 1.3 0.00e+00 0.0 3.4e+03 5.1e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.2839e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 9.2300e+02 1.0 7.25e+11 1.1 1.2e+07 9.6e+04 2.2e+04 94 100 99 100 99  94 100 99 100 99 154030
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.2648e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.6374e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.1058e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.5423e+00 1.3 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 354750
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0717e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4475
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0687e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4481
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0500e+01 1.1 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 330871
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6992e+01 1.3 4.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   2  5  0  0  0 455973
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.4517e-02 3.7 0.00e+00 0.0 1.4e+05 9.3e+04 0.0e+00  0  0  1  1  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 4.0518e+00 171.4 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   395
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5517e+01 1.1 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 298879
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4028e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3524
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3511e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3602
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7941e+01 1.1 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   3  3  0  0  0 174759
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.3754e+01 1.3 6.34e+10 1.3 0.0e+00 0.0e+00 0.0e+00  4  8  0  0  0   4  8  0  0  0 261805
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    65             65
              Viewer     1              1
           Index Set   792            792
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
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 7.9148e-06
Average time for zero size MPI_Send(): 2.02916e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/sor/medium.profile # (source: environment)
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

