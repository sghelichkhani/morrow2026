****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0183.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 23:46:29 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.841e+02     1.000   5.841e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.661e+11     1.154   1.544e+11  1.606e+13
Flops/sec:            2.843e+08     1.154   2.644e+08  2.749e+10
MPI Msg Count:        1.425e+04     2.638   9.206e+03  9.575e+05
MPI Msg Len (bytes):  1.060e+09     2.351   9.049e+04  8.664e+10
MPI Reductions:       3.446e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.8413e+02 100.0%  1.6060e+13 100.0%  9.575e+05 100.0%  9.049e+04      100.0%  3.427e+03  99.4%

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

BuildTwoSided        280 1.0 8.4587e+00 8.1 0.00e+00 0.0 2.9e+04 4.0e+00 2.8e+02  1  0  3  0  8   1  0  3  0  8    -0
BuildTwoSidedF       242 1.0 8.4340e+00 7.9 0.00e+00 0.0 3.3e+04 3.9e+05 2.4e+02  1  0  3 15  7   1  0  3 15  7    -0
SFSetGraph            41 1.0 4.1180e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 1.4294e-01 4.2 0.00e+00 0.0 2.4e+04 2.2e+03 3.8e+01  0  0  3  0  1   0  0  3  0  1    -0
SFBcastBegin         276 1.0 9.3981e-02 2.7 0.00e+00 0.0 1.3e+05 6.4e+04 0.0e+00  0  0 14 10  0   0  0 14 10  0    -0
SFBcastEnd           276 1.0 4.5257e+00 84.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        103 1.0 1.6650e-02 2.8 0.00e+00 0.0 5.4e+04 7.7e+04 0.0e+00  0  0  6  5  0   0  0  6  5  0    -0
SFReduceEnd          103 1.0 2.5330e+00 120.9 6.40e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   204
SFFetchOpBegin         2 1.0 1.5404e-05 5.4 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.2120e-04 9.8 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 8.5277e-04 1.5 0.00e+00 0.0 6.5e+02 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 8.1077e-03 1.3 0.00e+00 0.0 2.2e+04 2.8e+02 2.5e+01  0  0  2  0  1   0  0  2  0  1    -0
SFSectionSF           22 1.0 3.5194e-03 3.2 0.00e+00 0.0 1.0e+04 1.5e+02 2.2e+01  0  0  1  0  1   0  0  1  0  1    -0
SFPack              1718 1.0 3.1928e-01 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1720 1.0 3.2228e-02 4.7 6.40e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16022
VecDot                60 1.0 1.7431e-01 10.5 2.17e+07 1.1 0.0e+00 0.0e+00 6.0e+01  0  0  0  0  2   0  0  0  0  2 12372
VecMDot             1277 1.0 4.9348e+00 1.4 5.16e+09 1.1 0.0e+00 0.0e+00 1.3e+03  1  3  0  0 37   1  3  0  0 37 103943
VecNorm             1487 1.0 2.3509e+00 4.7 5.38e+08 1.1 0.0e+00 0.0e+00 1.5e+03  0  0  0  0 43   0  0  0  0 43 22734
VecScale            1337 1.0 5.7497e-02 1.1 2.42e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 417889
VecCopy              450 1.0 2.8780e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1457 1.0 4.7017e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               60 1.0 2.8230e-02 1.5 2.17e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 76392
VecWAXPY              60 1.0 4.5303e-02 1.2 1.09e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23802
VecMAXPY            1337 1.0 5.5697e+00 1.1 5.63e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 100335
VecScatterBegin     1337 1.0 2.9043e-01 3.5 0.00e+00 0.0 7.1e+05 8.6e+04 0.0e+00  0  0 75 71  0   0  0 75 71  0    -0
VecScatterEnd       1337 1.0 2.4539e+00 29.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       120 1.0 1.9054e-02 1.8 4.34e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 226355
VecReduceComm         60 1.0 5.0814e-02 23.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+01  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        1337 1.0 7.4616e-01 3.3 7.26e+08 1.1 0.0e+00 0.0e+00 1.3e+03  0  0  0  0 39   0  0  0  0 39 96604
MatMult             1337 1.0 3.3857e+01 1.1 2.68e+10 1.1 7.1e+05 8.6e+04 0.0e+00  6 16 75 71  0   6 16 75 71  0 78249
MatConvert            60 1.0 5.1276e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatAssemblyBegin     363 1.0 8.6898e+00 5.6 0.00e+00 0.0 3.3e+04 3.9e+05 2.4e+02  1  0  3 15  7   1  0  3 15  7    -0
MatAssemblyEnd       363 1.0 2.0101e+00 2.5 1.48e+07 0.0 1.1e+03 2.1e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0   351
MatGetRowIJ            4 1.0 7.0070e-06 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        60 1.0 1.8654e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 2.4865e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO      120 1.0 4.2825e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp               60 1.0 7.6047e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00 13  0  0  0  0  13  0  0  0  0    -0
PCApply             1337 1.0 3.1221e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 53  0  0  0  0  53  0  0  0  0    -0
KSPSetUp              60 1.0 7.6053e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              60 1.0 3.5172e+02 1.0 3.71e+10 1.1 6.8e+05 8.6e+04 2.6e+03 60 23 71 68 76  60 23 71 68 76 10453
KSPGMRESOrthog      1277 1.0 1.0049e+01 1.2 1.03e+10 1.1 0.0e+00 0.0e+00 1.3e+03  2  6  0  0 37   2  6  0  0 37 102087
Mesh Partition         2 1.0 8.0235e-02 1.0 0.00e+00 0.0 6.8e+03 2.8e+02 2.5e+01  0  0  1  0  1   0  0  1  0  1    -0
Mesh Migration         2 1.0 2.2842e-02 1.1 0.00e+00 0.0 2.3e+04 3.7e+02 1.1e+02  0  0  2  0  3   0  0  2  0  3    -0
DMPlexPartSelf         1 1.0 6.1365e-03 2576.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.0129e-02 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.8741e-03 1.1 0.00e+00 0.0 1.3e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.2646e-03 1.4 0.00e+00 0.0 6.5e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.5800e-03 1.6 0.00e+00 0.0 7.6e+02 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.0176e-01 1.0 0.00e+00 0.0 4.2e+03 2.1e+03 6.3e+01  0  0  0  0  2   0  0  0  0  2    -0
DMPlexDistCones        2 1.0 2.5998e-03 1.0 0.00e+00 0.0 3.9e+03 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.4104e-02 1.0 0.00e+00 0.0 1.1e+04 3.9e+02 7.6e+01  0  0  1  0  2   0  0  1  0  2    -0
DMPlexDistOvrlp        1 1.0 4.4254e-03 1.1 0.00e+00 0.0 2.7e+04 1.3e+02 8.0e+01  0  0  3  0  2   0  0  3  0  2    -0
DMPlexDistField        3 1.0 2.9223e-03 1.2 0.00e+00 0.0 5.9e+03 1.8e+02 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistData         1 1.0 8.0662e-05 1.1 0.00e+00 0.0 2.7e+03 8.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 3.6842e-03 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 1.3078e-03 52.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 9.2288e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 5.3511e+02 1.0 1.66e+11 1.2 8.9e+05 9.5e+04 3.1e+03 92 100 93 98 91  92 100 93 98 91 30013
SNESSetUp              1 1.0 3.5041e-05 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      90 1.0 3.6281e+01 1.0 5.63e+10 1.2 1.1e+05 8.5e+04 1.0e+00  6 34 12 11  0   6 34 12 11  0 148622
SNESJacobianEval      60 1.0 6.9251e+01 1.0 7.17e+10 1.2 6.4e+04 2.2e+05 2.4e+02 12 43  7 16  7  12 43  7 16  7 99055
SNESLineSearch        60 1.0 1.5014e+01 1.0 3.88e+10 1.2 9.6e+04 8.6e+04 2.4e+02  3 23 10 10  7   3 23 10 10  7 248135
firedrake              1 1.0 5.8129e+02 1.0 1.66e+11 1.2 9.6e+05 9.0e+04 3.4e+03 100 100 100 100 99 100 100 100 100 100 27629
firedrake.__init__       1 1.0 3.3467e+01 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 2.3488e+01 139.6 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  3  0  6  0  6   3  0  6  0  6    -0
CreateMesh             1 1.0 1.5824e-01 1.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  6  0  5   0  0  6  0  6    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2548e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.4480e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 7.2702e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.2210e-04 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.2772e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 3.8513e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.2200e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.1592e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.1560e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.1092e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 4.5438e-03 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.3395e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.9758e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 9.4812e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.7203e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.7412e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.9064e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.2823e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.7162e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.5378e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       752 1.0 9.9595e+01 1.1 1.28e+11 1.2 1.0e+05 8.3e+04 6.0e+00 16 76 10 10  0  16 76 10 10  0 123008
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.6843e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    1504 1.0 3.2227e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0168e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 1.8487e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.7997e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.2044e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.2043e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.1575e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.0372e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin     752 1.0 1.8591e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       752 1.0 1.5539e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.7603e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.6746e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   279
firedrake.interpolation.interpolate       1 1.0 3.5573e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.6709e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   279
firedrake.formmanipulation.split_form       3 1.0 2.2054e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.0541e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.0486e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.1402e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     181 1.0 2.9775e-01 4.0 0.00e+00 0.0 1.0e+05 8.3e+04 2.0e+00  0  0 10 10  0   0  0 10 10  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 9.0604e-01 1.0 2.71e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   298
firedrake.halo.Halo.global_to_local_end     181 1.0 4.1805e+00 146.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.4146e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.1829e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6382e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.3960e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.9807e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 1.0230e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2419e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 9.6492e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.1847e+00 1.0 0.00e+00 0.0 3.2e+03 4.7e+05 2.3e+01  2  0  0  2  1   2  0  0  2  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0901e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.5256e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1301e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1301e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         1 1.0 2.2887e+00 1.2 0.00e+00 0.0 1.6e+03 4.6e+05 8.0e+00  0  0  0  1  0   0  0  0  1  0    -0
MatZeroInitial         1 1.0 4.2330e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 5.3518e+02 1.0 1.66e+11 1.2 8.9e+05 9.5e+04 3.2e+03 92 100 93 98 93  92 100 93 98 93 30009
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.1787e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1296e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.0123e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     180 1.0 6.4534e+00 1.1 1.26e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1  8  0  0  0 193547
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     180 1.0 1.7600e+00 1.0 4.33e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2442
Parloop_Cells_wrap_form0_exterior_facet_top_integral     180 1.0 1.9197e+00 1.0 4.33e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2239
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     180 1.0 7.8815e+00 1.1 1.29e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1  8  0  0  0 162433
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     180 1.0 1.2877e+01 1.2 3.11e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2 18  0  0  0   2 18  0  0  0 221626
firedrake.halo.Halo.local_to_global_begin      90 1.0 1.9202e-02 2.4 0.00e+00 0.0 4.8e+04 8.6e+04 0.0e+00  0  0  5  5  0   0  0  5  5  0    -0
firedrake.halo.Halo.local_to_global_end      90 1.0 2.5336e+00 114.9 6.40e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   204
Parloop_Cells_wrap_form00_cell_integral     120 1.0 1.1462e+01 1.1 1.53e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   2  9  0  0  0 132336
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     120 1.0 2.3420e+00 1.0 3.50e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1486
Parloop_Cells_wrap_form00_exterior_facet_top_integral     120 1.0 2.3036e+00 1.0 3.50e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1511
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     120 1.0 2.0102e+01 1.1 1.61e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   3 10  0  0  0 79344
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     120 1.0 2.8920e+01 1.2 4.07e+10 1.3 0.0e+00 0.0e+00 0.0e+00  4 23  0  0  0   4 23  0  0  0 129330
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    67             67
              Viewer     1              1
           Index Set   471            471
   IS L to G Mapping     4              4
             Section    72             72
   Star Forest Graph    71             71
              Vector    51             51
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
Average time to get PetscTime(): 3.05e-08
Average time for MPI_Barrier(): 4.1804e-06
Average time for zero size MPI_Send(): 1.92013e-06
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

