****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0205.gadi.nci.org.au with 416 processes, by sg8812 on Tue Aug 25 22:25:40 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.256e+03     1.000   1.256e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                9.356e+11     1.141   8.790e+11  3.657e+14
Flops/sec:            7.448e+08     1.141   6.998e+08  2.911e+11
MPI Msg Count:        1.207e+05     3.995   8.450e+04  3.515e+07
MPI Msg Len (bytes):  1.269e+10     2.766   1.053e+05  3.703e+12
MPI Reductions:       2.959e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.2562e+03 100.0%  3.6568e+14 100.0%  3.515e+07 100.0%  1.053e+05      100.0%  2.957e+04  99.9%

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

BuildTwoSided        404 1.0 1.6940e+01 9.1 0.00e+00 0.0 1.6e+05 4.0e+00 4.0e+02  1  0  0  0  1   1  0  0  0  1    -0
BuildTwoSidedF       366 1.0 1.6787e+01 9.9 0.00e+00 0.0 2.2e+05 4.6e+05 3.7e+02  1  0  1  3  1   1  0  1  3  1    -0
SFSetGraph            41 1.0 5.4247e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 2.6281e-01 5.4 0.00e+00 0.0 1.0e+05 2.7e+03 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         338 1.0 1.7774e-01 3.5 0.00e+00 0.0 7.1e+05 8.3e+04 0.0e+00  0  0  2  2  0   0  0  2  2  0    -0
SFBcastEnd           338 1.0 8.6002e+00 127.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        134 1.0 3.2412e-02 4.5 0.00e+00 0.0 3.1e+05 9.5e+04 0.0e+00  0  0  1  1  0   0  0  1  1  0    -0
SFReduceEnd          134 1.0 3.2899e+00 141.2 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1114
SFFetchOpBegin         2 1.0 1.9090e-05 7.7 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.0005e-03 76.6 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.8285e-03 2.9 0.00e+00 0.0 2.8e+03 8.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.4720e-02 1.3 0.00e+00 0.0 9.4e+04 2.0e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 5.3730e-03 4.9 0.00e+00 0.0 4.1e+04 1.1e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             14985 1.0 4.9424e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           14987 1.0 7.0393e-02 4.3 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 52053
VecDot                91 1.0 2.9760e-01 15.2 3.34e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 44548
VecMDot            13999 1.0 1.3064e+02 2.8 7.72e+10 1.1 0.0e+00 0.0e+00 1.4e+04  7  8  0  0 47   7  8  0  0 47 234340
VecNorm            14723 1.0 1.5006e+01 3.9 5.41e+09 1.1 0.0e+00 0.0e+00 1.5e+04  1  1  0  0 50   1  1  0  0 50 142942
VecScale           14511 1.0 5.9302e-01 1.2 2.67e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1782435
VecCopy             2081 1.0 1.0011e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               603 1.0 1.9753e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              933 1.0 3.7590e-01 1.7 3.43e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 361600
VecWAXPY              91 1.0 6.9902e-02 1.2 1.67e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 94829
VecMAXPY           14511 1.0 8.1203e+01 1.2 8.24e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  9  0  0  0   6  9  0  0  0 402114
VecScatterBegin    14511 1.0 5.4390e+00 2.6 0.00e+00 0.0 3.4e+07 1.0e+05 0.0e+00  0  0 96 95  0   0  0 96 95  0    -0
VecScatterEnd      14511 1.0 9.2502e+01 93.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       182 1.0 2.9528e-02 2.3 6.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 897954
VecReduceComm         91 1.0 4.3597e-01 78.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       14511 1.0 1.3687e+01 4.5 8.00e+09 1.1 0.0e+00 0.0e+00 1.5e+04  1  1  0  0 49   1  1  0  0 49 231681
MatMult            14511 1.0 4.3425e+02 1.3 2.96e+11 1.1 3.4e+07 1.0e+05 0.0e+00 30 32 96 95  0  30 32 96 95  0 269066
MatSOR             14511 1.0 5.6546e+02 1.2 2.80e+11 1.1 0.0e+00 0.0e+00 0.0e+00 42 30  0  0  0  42 30  0  0  0 195429
MatAssemblyBegin     366 1.0 1.7131e+01 6.5 0.00e+00 0.0 2.2e+05 4.6e+05 3.7e+02  1  0  1  3  1   1  0  1  3  1    -0
MatAssemblyEnd       366 1.0 2.8072e+00 7.7 3.42e+07 0.0 4.7e+03 2.6e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  2039
MatZeroEntries        91 1.0 3.2267e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 2.7303e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            14511 1.0 5.6549e+02 1.2 2.80e+11 1.1 0.0e+00 0.0e+00 0.0e+00 42 30  0  0  0  42 30  0  0  0 195419
KSPSetUp              91 1.0 9.8485e-03 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.0762e+03 1.0 7.42e+11 1.1 3.4e+07 1.0e+05 2.9e+04 86 80 96 94 96  86 80 96 94 96 272440
KSPGMRESOrthog     13999 1.0 2.0176e+02 1.7 1.54e+11 1.1 0.0e+00 0.0e+00 1.4e+04 13 17  0  0 47  13 17  0  0 47 303459
Mesh Partition         2 1.0 2.5407e-01 1.0 0.00e+00 0.0 2.9e+04 1.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.5523e-02 1.0 0.00e+00 0.0 9.7e+04 2.5e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 1.5406e-02 4117.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 3.1862e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.4867e-03 1.7 0.00e+00 0.0 5.6e+03 1.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.9987e-03 1.8 0.00e+00 0.0 2.8e+03 7.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 7.3708e-03 1.3 0.00e+00 0.0 3.2e+03 1.2e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.9364e-01 1.0 0.00e+00 0.0 1.6e+04 1.4e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 4.3646e-03 1.1 0.00e+00 0.0 1.7e+04 4.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.0462e-02 1.0 0.00e+00 0.0 4.6e+04 2.8e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 1.3268e-02 1.0 0.00e+00 0.0 1.1e+05 1.0e+02 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 6.2063e-03 1.2 0.00e+00 0.0 2.5e+04 1.2e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.2817e-04 1.2 0.00e+00 0.0 1.2e+04 6.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 9.3646e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 3.4103e-03 198.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.5240e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.2229e+03 1.0 9.36e+11 1.1 3.5e+07 1.1e+05 2.9e+04 97 100 99 100 99  97 100 99 100 99 299019
SNESSetUp              1 1.0 3.5782e-05 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4576e+01 1.1 7.91e+10 1.3 6.4e+05 1.0e+05 1.0e+00  3  8  2  2  0   3  8  2  2  0 660303
SNESJacobianEval      91 1.0 9.9110e+01 1.0 1.14e+11 1.3 4.2e+05 2.7e+05 3.6e+02  8 12  1  3  1   8 12  1  3  1 426296
SNESLineSearch        91 1.0 2.3873e+01 1.0 6.16e+10 1.2 6.4e+05 1.0e+05 3.6e+02  2  6  2  2  1   2  6  2  2  1 960977
firedrake              1 1.0 1.2531e+03 1.0 9.36e+11 1.1 3.5e+07 1.1e+05 3.0e+04 100 100 100 100 100 100 100 100 100 100 291828
firedrake.__init__       1 1.0 1.5549e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.0230e+00 12.7 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  1  0  1   0  0  1  0  1    -0
CreateMesh             1 1.0 3.7887e-01 1.0 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.5121e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7870e-06 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.7956e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.3559e-04 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.9702e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 4.0971e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.9105e-02 1.2 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.8466e-02 1.2 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.8437e-02 1.2 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.2725e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 8.5836e-03 1.2 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.3834e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0519e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.5447e-02 7.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.6238e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.3447e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.6371e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.9763e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.6197e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 3.9880e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3527e+02 1.1 1.93e+11 1.3 5.8e+05 1.0e+05 6.0e+00 10 20  2  2  0  10 20  2  2  0 529861
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.5855e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.3332e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0221e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.0233e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.7723e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.3074e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.3073e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 9.0684e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.9532e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 3.1068e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.3682e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.1940e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.6932e-01 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1127
firedrake.interpolation.interpolate       1 1.0 3.8874e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.6897e-01 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1128
firedrake.formmanipulation.split_form       3 1.0 3.1021e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.1115e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 5.0689e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 2.9454e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.8358e-01 3.7 0.00e+00 0.0 5.8e+05 1.0e+05 2.0e+00  0  0  2  2  0   0  0  2  2  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.9223e-01 1.0 2.76e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1225
firedrake.halo.Halo.global_to_local_end     243 1.0 8.0884e+00 263.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.7873e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.4161e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.7441e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.1430e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.4373e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.5706e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3012e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 7.9746e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.6610e+00 1.0 0.00e+00 0.0 1.4e+04 5.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9357e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1950e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1650e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1650e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.7496e+00 1.3 0.00e+00 0.0 7.1e+03 5.6e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.6043e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.2230e+03 1.0 9.36e+11 1.1 3.5e+07 1.1e+05 2.9e+04 97 100 99 100 99  97 100 99 100 99 299004
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 8.9050e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2000e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.6377e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.2189e+00 1.2 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 738335
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0200e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7322
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.8357e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8058
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0407e+01 1.1 1.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 671933
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7279e+01 1.3 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 902856
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.6615e-02 3.5 0.00e+00 0.0 2.8e+05 1.0e+05 0.0e+00  0  0  1  1  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.2910e+00 132.9 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1113
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.7432e+01 1.2 2.35e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 534938
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3404e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5774
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.1171e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6383
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.9105e+01 1.2 2.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 337691
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5026e+01 1.4 6.54e+10 1.4 0.0e+00 0.0e+00 0.0e+00  3  6  0  0  0   3  6  0  0  0 512235
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    65             65
              Viewer     1              1
           Index Set  1407           1407
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
Average time to get PetscTime(): 2.47e-08
Average time for MPI_Barrier(): 1.15394e-05
Average time for zero size MPI_Send(): 2.06353e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/sor/large.profile # (source: environment)
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

