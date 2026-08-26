****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0197.gadi.nci.org.au with 832 processes, by sg8812 on Tue Aug 25 22:22:30 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.066e+03     1.000   1.066e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.741e+11     1.230   2.496e+11  2.077e+14
Flops/sec:            2.572e+08     1.230   2.342e+08  1.949e+11
MPI Msg Count:        2.904e+04     4.379   1.872e+04  1.558e+07
MPI Msg Len (bytes):  3.131e+09     2.973   1.231e+05  1.917e+12
MPI Reductions:       6.395e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.0658e+03 100.0%  2.0771e+14 100.0%  1.558e+07 100.0%  1.231e+05      100.0%  6.376e+03  99.7%

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

BuildTwoSided        404 1.0 2.0842e+01 8.9 0.00e+00 0.0 3.2e+05 4.0e+00 4.0e+02  1  0  2  0  6   1  0  2  0  6    -0
BuildTwoSidedF       366 1.0 2.0577e+01 8.9 0.00e+00 0.0 4.4e+05 5.1e+05 3.7e+02  1  0  3 12  6   1  0  3 12  6    -0
SFSetGraph            41 1.0 5.9164e-03 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 3.6058e-01 6.2 0.00e+00 0.0 2.1e+05 3.0e+03 3.8e+01  0  0  1  0  1   0  0  1  0  1    -0
SFBcastBegin         338 1.0 1.9195e-01 3.3 0.00e+00 0.0 1.4e+06 9.2e+04 0.0e+00  0  0  9  7  0   0  0  9  7  0    -0
SFBcastEnd           338 1.0 1.0250e+01 115.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        134 1.0 3.7837e-02 19.7 0.00e+00 0.0 6.2e+05 1.1e+05 0.0e+00  0  0  4  3  0   0  0  4  3  0    -0
SFReduceEnd          134 1.0 3.2738e+00 127.3 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2536
SFFetchOpBegin         2 1.0 2.4144e-05 8.0 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.0014e-03 66.1 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.9814e-03 4.0 0.00e+00 0.0 5.7e+03 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 2.2293e-02 1.4 0.00e+00 0.0 1.9e+05 1.6e+02 2.5e+01  0  0  1  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 1.0141e-02 5.6 0.00e+00 0.0 8.2e+04 9.4e+01 2.2e+01  0  0  1  0  0   0  0  1  0  0    -0
SFPack              3191 1.0 1.2780e+00 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3193 1.0 7.0062e-02 13.6 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 118488
VecDot                91 1.0 3.5081e-01 8.1 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 74588
VecMDot             2598 1.0 2.0353e+01 1.8 1.30e+10 1.1 0.0e+00 0.0e+00 2.6e+03  1  5  0  0 41   1  5  0  0 41 511188
VecNorm             2929 1.0 5.3464e+00 3.0 1.05e+09 1.1 0.0e+00 0.0e+00 2.9e+03  0  0  0  0 46   0  0  0  0 46 157527
VecScale            2717 1.0 1.1767e-01 1.2 4.88e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3319705
VecCopy              902 1.0 5.2300e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2927 1.0 9.3443e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              147 1.0 7.5475e-02 1.3 5.28e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 560031
VecWAXPY              91 1.0 6.7600e-02 1.2 1.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 193535
VecMAXPY            2717 1.0 1.3706e+01 1.1 1.39e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 813599
VecScatterBegin     2717 1.0 1.2008e+00 3.3 0.00e+00 0.0 1.3e+07 1.2e+05 0.0e+00  0  0 83 78  0   0  0 83 78  0    -0
VecScatterEnd       2717 1.0 7.0475e+00 34.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 4.5771e-02 1.7 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1143350
VecReduceComm         91 1.0 5.4587e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        2717 1.0 2.1003e+00 3.1 1.46e+09 1.1 0.0e+00 0.0e+00 2.7e+03  0  1  0  0 42   0  1  0  0 43 557959
MatMult             2717 1.0 7.1887e+01 1.2 5.41e+10 1.1 1.3e+07 1.2e+05 0.0e+00  6 21 83 78  0   6 21 83 78  0 601150
MatConvert            91 1.0 8.3904e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatAssemblyBegin     549 1.0 2.0788e+01 5.9 0.00e+00 0.0 4.4e+05 5.1e+05 3.7e+02  1  0  3 12  6   1  0  3 12  6    -0
MatAssemblyEnd       549 1.0 4.9490e+00 2.4 3.77e+07 0.0 9.5e+03 2.9e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  2621
MatGetRowIJ            4 1.0 1.2991e-05 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        91 1.0 3.2757e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 2.9136e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO      182 1.0 6.5287e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp               91 1.0 1.4777e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00 14  0  0  0  0  14  0  0  0  0    -0
PCApply             2717 1.0 6.3968e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 60  0  0  0  0  60  0  0  0  0    -0
KSPSetUp              91 1.0 8.6354e-03 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 7.3421e+02 1.0 8.08e+10 1.1 1.2e+07 1.2e+05 5.3e+03 69 31 80 75 83  69 31 80 75 83 87899
KSPGMRESOrthog      2598 1.0 3.2369e+01 1.4 2.60e+10 1.1 0.0e+00 0.0e+00 2.6e+03  2 10  0  0 41   2 10  0  0 41 642845
Mesh Partition         2 1.0 5.4762e-01 1.0 0.00e+00 0.0 5.9e+04 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 7.3377e-02 1.0 0.00e+00 0.0 2.0e+05 2.1e+02 1.1e+02  0  0  1  0  2   0  0  1  0  2    -0
DMPlexPartSelf         1 1.0 2.5000e-02 4983.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 6.2148e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.6472e-03 1.4 0.00e+00 0.0 1.1e+04 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.5811e-03 1.9 0.00e+00 0.0 5.7e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1460e-02 1.2 0.00e+00 0.0 6.5e+03 9.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.1262e-01 1.0 0.00e+00 0.0 3.2e+04 1.1e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 7.7475e-03 1.1 0.00e+00 0.0 3.4e+04 3.6e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 4.9806e-02 1.0 0.00e+00 0.0 9.3e+04 2.3e+02 7.6e+01  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 2.6772e-02 1.1 0.00e+00 0.0 2.3e+05 9.1e+01 8.0e+01  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.0011e-02 1.2 0.00e+00 0.0 5.2e+04 1.0e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.3258e-04 1.2 0.00e+00 0.0 2.4e+04 5.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.4778e-02 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 5.3290e-03 371.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 2.1187e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.0322e+03 1.0 2.74e+11 1.2 1.5e+07 1.3e+05 6.1e+03 97 100 96 99 95  97 100 96 99 95 201216
SNESSetUp              1 1.0 4.0234e-05 6.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4395e+01 1.1 7.85e+10 1.3 1.3e+06 1.1e+05 1.0e+00  4 28  8  8  0   4 28  8  8  0 1309293
SNESJacobianEval      91 1.0 1.0216e+02 1.0 1.13e+11 1.3 8.6e+05 3.0e+05 3.6e+02 10 40  6 13  6  10 40  6 13  6 816741
SNESLineSearch        91 1.0 2.3655e+01 1.0 6.10e+10 1.3 1.3e+06 1.2e+05 3.6e+02  2 22  8  8  6   2 22  8  8  6 1915267
firedrake              1 1.0 1.0626e+03 1.0 2.74e+11 1.2 1.6e+07 1.2e+05 6.4e+03 100 100 100 100 100 100 100 100 100 100 195465
firedrake.__init__       1 1.0 1.5684e+01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.5280e+00 7.3 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  3  0  3   0  0  3  0  3    -0
CreateMesh             1 1.0 7.3204e-01 1.0 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  3  0  3   0  0  3  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.3856e-03 19.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5619e-05 17.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 4.0231e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 7.1979e-04 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 3.0979e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 4.9243e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 3.0294e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.9624e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.9592e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.4490e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.0758e-02 1.3 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.4184e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0564e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 6.2677e-02 9.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.6149e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.7720e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.8812e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 9.5623e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.6107e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 3.6876e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3660e+02 1.2 1.91e+11 1.3 1.2e+06 1.1e+05 6.0e+00 12 68  8  7  0  12 68  8  7  0 1036245
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.5774e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.3482e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0662e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.4638e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.7426e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.2802e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.2801e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 9.1184e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.9918e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 3.3111e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.7293e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.9057e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.7142e-01 1.0 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  2220
firedrake.interpolation.interpolate       1 1.0 3.9692e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.7105e-01 1.0 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  2221
firedrake.formmanipulation.split_form       3 1.0 2.8523e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.1118e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.5503e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.0228e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.2211e-01 4.2 0.00e+00 0.0 1.2e+06 1.1e+05 2.0e+00  0  0  8  7  0   0  0  8  7  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 9.0140e-01 1.0 2.70e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2392
firedrake.halo.Halo.global_to_local_end     243 1.0 9.9503e+00 266.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.9878e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.7381e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2199e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.0559e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.4985e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.7851e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3660e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.1907e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.6252e+00 1.0 0.00e+00 0.0 2.9e+04 6.4e+05 2.3e+01  1  0  0  1  0   1  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9450e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2987e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1602e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1602e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.6922e+00 1.3 0.00e+00 0.0 1.4e+04 6.3e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.5205e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.0323e+03 1.0 2.74e+11 1.2 1.5e+07 1.3e+05 6.1e+03 97 100 96 99 96  97 100 96 99 96 201203
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.4346e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 2.1548e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.3335e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.8080e+00 1.2 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 1525213
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9853e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11641
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9625e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11777
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.1009e+01 1.3 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 1254764
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7245e+01 1.4 4.43e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1 15  0  0  0   1 15  0  0  0 1787393
firedrake.halo.Halo.local_to_global_begin     121 1.0 4.3947e-02 8.8 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  4  3  0   0  0  4  3  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.2748e+00 121.3 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2535
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.8112e+01 1.3 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1  9  0  0  0 1016146
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3919e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8827
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3345e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9044
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 3.3015e+01 1.4 2.43e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   2  9  0  0  0 588064
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.6464e+01 1.5 6.55e+10 1.5 0.0e+00 0.0e+00 0.0e+00  4 22  0  0  0   4 22  0  0  0 980706
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    67             67
              Viewer     1              1
           Index Set  2664           2664
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
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 7.7684e-06
Average time for zero size MPI_Send(): 2.02772e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/boomeramg/huge.profile # (source: environment)
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

