****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0621.gadi.nci.org.au with 208 processes, by sg8812 on Fri Aug 21 23:33:30 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.030e+02     1.000   9.030e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.560e+11     1.190   2.355e+11  4.899e+13
Flops/sec:            2.835e+08     1.190   2.608e+08  5.426e+10
MPI Msg Count:        2.256e+04     3.958   1.539e+04  3.201e+06
MPI Msg Len (bytes):  2.013e+09     2.412   1.000e+05  3.202e+11
MPI Reductions:       5.491e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 9.0300e+02 100.0%  4.8994e+13 100.0%  3.201e+06 100.0%  1.000e+05      100.0%  5.472e+03  99.7%

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

BuildTwoSided        404 1.0 1.5817e+01 6.3 0.00e+00 0.0 7.8e+04 4.0e+00 4.0e+02  1  0  2  0  7   1  0  2  0  7    -0
BuildTwoSidedF       366 1.0 1.5557e+01 6.6 0.00e+00 0.0 1.1e+05 4.1e+05 3.7e+02  1  0  3 14  7   1  0  3 14  7    -0
SFSetGraph            41 1.0 4.9653e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 3.1119e-01 7.5 0.00e+00 0.0 5.0e+04 2.4e+03 3.8e+01  0  0  2  0  1   0  0  2  0  1    -0
SFBcastBegin         338 1.0 1.4134e-01 3.1 0.00e+00 0.0 3.5e+05 7.4e+04 0.0e+00  0  0 11  8  0   0  0 11  8  0    -0
SFBcastEnd           338 1.0 7.2373e+00 147.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        134 1.0 2.8143e-02 4.3 0.00e+00 0.0 1.5e+05 8.6e+04 0.0e+00  0  0  5  4  0   0  0  5  4  0    -0
SFReduceEnd          134 1.0 3.5043e+00 163.2 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   457
SFFetchOpBegin         2 1.0 1.7176e-05 4.7 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 6.7612e-04 41.0 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.5165e-03 3.9 0.00e+00 0.0 1.4e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.1051e-02 1.4 0.00e+00 0.0 4.6e+04 2.3e+02 2.5e+01  0  0  1  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 4.9419e-03 5.7 0.00e+00 0.0 2.1e+04 1.3e+02 2.2e+01  0  0  1  0  0   0  0  1  0  0    -0
SFPack              2725 1.0 7.2195e-01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2727 1.0 5.1097e-02 3.8 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 31313
VecDot                91 1.0 2.5005e-01 9.1 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  2   0  0  0  0  2 26368
VecMDot             2160 1.0 1.3592e+01 1.9 9.84e+09 1.1 0.0e+00 0.0e+00 2.2e+03  1  4  0  0 39   1  4  0  0 39 144228
VecNorm             2463 1.0 4.1701e+00 2.8 8.96e+08 1.1 0.0e+00 0.0e+00 2.5e+03  0  0  0  0 45   0  0  0  0 45 42794
VecScale            2251 1.0 9.7120e-02 1.2 4.09e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 839652
VecCopy              818 1.0 4.9950e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2433 1.0 7.9299e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               91 1.0 5.1057e-02 3.7 3.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 129135
VecWAXPY              91 1.0 6.9329e-02 1.1 1.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47551
VecMAXPY            2251 1.0 1.0748e+01 1.1 1.06e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 196966
VecScatterBegin     2251 1.0 6.5100e-01 2.3 0.00e+00 0.0 2.5e+06 9.3e+04 0.0e+00  0  0 80 74  0   0  0 80 74  0    -0
VecScatterEnd       2251 1.0 4.6338e+00 23.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 4.5335e-02 3.1 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 290871
VecReduceComm         91 1.0 8.0399e-02 21.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2251 1.0 1.3401e+00 2.8 1.23e+09 1.1 0.0e+00 0.0e+00 2.3e+03  0  0  0  0 41   0  0  0  0 41 182549
MatMult             2251 1.0 5.9153e+01 1.1 4.54e+10 1.1 2.5e+06 9.3e+04 0.0e+00  6 18 80 74  0   6 18 80 74  0 152216
MatConvert            91 1.0 7.3465e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatAssemblyBegin     549 1.0 1.5563e+01 6.0 0.00e+00 0.0 1.1e+05 4.1e+05 3.7e+02  1  0  3 14  7   1  0  3 14  7    -0
MatAssemblyEnd       549 1.0 3.0521e+00 3.1 2.93e+07 0.0 2.3e+03 2.3e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0   819
MatGetRowIJ            4 1.0 1.0410e-05 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        91 1.0 3.2448e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 2.5190e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO      182 1.0 6.5817e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp               91 1.0 1.2527e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00 14  0  0  0  0  14  0  0  0  0    -0
PCApply             2251 1.0 5.3167e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 59  0  0  0  0  59  0  0  0  0    -0
KSPSetUp              91 1.0 7.6689e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 6.0503e+02 1.0 6.53e+10 1.1 2.4e+06 9.3e+04 4.4e+03 67 26 76 71 80  67 26 76 71 81 21434
KSPGMRESOrthog      2160 1.0 2.3225e+01 1.4 1.97e+10 1.1 0.0e+00 0.0e+00 2.2e+03  2  8  0  0 39   2  8  0  0 39 168821
Mesh Partition         2 1.0 1.3030e-01 1.0 0.00e+00 0.0 1.4e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.1450e-02 1.0 0.00e+00 0.0 4.8e+04 3.1e+02 1.1e+02  0  0  1  0  2   0  0  1  0  2    -0
DMPlexPartSelf         1 1.0 9.6544e-03 3092.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.8959e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.6372e-03 1.2 0.00e+00 0.0 2.7e+03 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.3878e-03 2.3 0.00e+00 0.0 1.4e+03 8.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.4253e-03 1.4 0.00e+00 0.0 1.6e+03 1.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.5784e-01 1.0 0.00e+00 0.0 8.1e+03 1.7e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 3.2428e-03 1.0 0.00e+00 0.0 8.1e+03 5.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.9601e-02 1.0 0.00e+00 0.0 2.3e+04 3.3e+02 7.6e+01  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 8.9557e-03 1.1 0.00e+00 0.0 5.5e+04 1.1e+02 8.0e+01  0  0  2  0  1   0  0  2  0  1    -0
DMPlexDistField        3 1.0 4.8042e-03 1.3 0.00e+00 0.0 1.2e+04 1.5e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.2371e-04 1.4 0.00e+00 0.0 5.7e+03 7.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 6.1304e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 2.2161e-03 102.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 8.8871e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 8.7682e+02 1.0 2.56e+11 1.2 3.1e+06 1.0e+05 5.2e+03 97 100 96 99 94  97 100 96 99 95 55876
SNESSetUp              1 1.0 3.6597e-05 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4211e+01 1.1 7.74e+10 1.2 3.1e+05 9.3e+04 1.0e+00  5 30 10  9  0   5 30 10  9  0 330854
SNESJacobianEval      91 1.0 9.8853e+01 1.0 1.11e+11 1.2 2.1e+05 2.4e+05 3.6e+02 11 43  6 15  7  11 43  6 15  7 212384
SNESLineSearch        91 1.0 2.3799e+01 1.0 6.02e+10 1.2 3.1e+05 9.3e+04 3.6e+02  3 23 10  9  7   3 23 10  9  7 479049
firedrake              1 1.0 9.0025e+02 1.0 2.56e+11 1.2 3.2e+06 1.0e+05 5.5e+03 100 100 100 100 100 100 100 100 100 100 54423
firedrake.__init__       1 1.0 1.1198e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.5627e+00 24.4 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  4  0  3   0  0  4  0  4    -0
CreateMesh             1 1.0 2.1778e-01 1.0 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  4  0  3   0  0  4  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.0256e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.6620e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.5419e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.5907e-04 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.2282e-02 1.2 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 4.1007e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.1661e-02 1.2 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.1029e-02 1.2 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.0999e-02 1.2 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 7.7278e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 6.0719e-03 1.3 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.1561e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0125e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.1422e-02 6.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.5905e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.0252e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5699e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.6616e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.5489e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.1846e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3174e+02 1.1 1.89e+11 1.2 2.8e+05 9.1e+04 6.0e+00 14 73  9  8  0  14 73  9  8  0 270371
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.2318e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.1629e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0201e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.7293e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.7081e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.1396e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.1395e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.0366e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 7.9045e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 2.9872e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.8371e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.7084e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.7379e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   558
firedrake.interpolation.interpolate       1 1.0 3.6638e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.7344e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   558
firedrake.formmanipulation.split_form       3 1.0 2.2241e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.1777e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.1062e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 2.9694e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.9161e-01 4.9 0.00e+00 0.0 2.8e+05 9.1e+04 2.0e+00  0  0  9  8  0   0  0  9  8  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 9.1077e-01 1.0 2.73e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   597
firedrake.halo.Halo.global_to_local_end     243 1.0 6.6845e+00 236.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.6557e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.3798e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.7900e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.6810e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.9147e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.7544e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2652e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.1640e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.3693e+00 1.0 0.00e+00 0.0 6.8e+03 5.2e+05 2.3e+01  1  0  0  1  0   1  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.1006e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.9312e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1570e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1570e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.5018e+00 1.3 0.00e+00 0.0 3.4e+03 5.1e+05 8.0e+00  0  0  0  1  0   0  0  0  1  0    -0
MatZeroInitial         1 1.0 4.1951e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 8.7689e+02 1.0 2.56e+11 1.2 3.1e+06 1.0e+05 5.2e+03 97 100 96 99 95  97 100 96 99 96 55872
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.1835e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1940e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.0605e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.2094e+00 1.2 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 367574
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9622e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4724
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9463e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4763
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0361e+01 1.2 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 335323
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6792e+01 1.3 4.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2 16  0  0  0   2 16  0  0  0 461397
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.1636e-02 3.3 0.00e+00 0.0 1.4e+05 9.3e+04 0.0e+00  0  0  4  4  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.5053e+00 155.2 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   456
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5887e+01 1.1 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   2  9  0  0  0 291911
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3647e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3581
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3280e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3638
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7885e+01 1.1 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   3 10  0  0  0 175107
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.4033e+01 1.3 6.34e+10 1.3 0.0e+00 0.0e+00 0.0e+00  4 23  0  0  0   4 23  0  0  0 260148
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    67             67
              Viewer     1              1
           Index Set   792            792
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
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 7.704e-06
Average time for zero size MPI_Send(): 2.01131e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/boomeramg/medium.profile # (source: environment)
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

