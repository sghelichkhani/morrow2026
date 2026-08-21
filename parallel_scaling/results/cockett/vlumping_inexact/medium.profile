****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0683.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 23:42:03 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.457e+02     1.000   7.457e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.393e+11     1.142   6.016e+11  1.251e+14
Flops/sec:            8.574e+08     1.142   8.068e+08  1.678e+11
MPI Msg Count:        1.129e+05     3.457   7.787e+04  1.620e+07
MPI Msg Len (bytes):  7.949e+09     2.407   7.810e+04  1.265e+12
MPI Reductions:       9.635e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.2516e+02  43.6%  6.1667e+13  49.3%  4.115e+06  25.4%  1.055e+05       34.3%  7.201e+03  74.7%
 1:        MG Apply: 4.2052e+02  56.4%  6.3467e+13  50.7%  1.208e+07  74.6%  6.877e+04       65.7%  2.415e+03  25.1%

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

BuildTwoSided        501 1.0 1.6653e+01 6.3 0.00e+00 0.0 7.9e+04 4.0e+00 5.0e+02  1  0  0  0  5   3  0  2  0  7    -0
BuildTwoSidedF       461 1.0 1.6537e+01 6.1 0.00e+00 0.0 1.1e+05 4.1e+05 4.6e+02  1  0  1  3  5   3  0  3 10  6    -0
SFSetGraph            43 1.0 4.8684e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 1.8433e-01 5.8 0.00e+00 0.0 5.2e+04 2.3e+03 4.0e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         340 1.0 1.3504e-01 2.9 0.00e+00 0.0 3.5e+05 7.4e+04 0.0e+00  0  0  2  2  0   0  0  8  6  0    -0
SFBcastEnd           340 1.0 7.1983e+00 187.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.7651e-02 4.3 0.00e+00 0.0 1.5e+05 8.6e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
SFReduceEnd          134 1.0 3.3842e+00 150.3 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   473
SFFetchOpBegin         2 1.0 2.0582e-05 8.9 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 6.8921e-04 44.2 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.5554e-03 2.4 0.00e+00 0.0 1.4e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.1443e-02 1.4 0.00e+00 0.0 4.6e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 4.7802e-03 5.3 0.00e+00 0.0 2.1e+04 1.3e+02 2.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFPack              3437 1.0 8.6620e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3439 1.0 5.6275e-02 3.7 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 28431
VecDot                91 1.0 2.4293e-01 8.1 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 27141
VecMDot             2870 1.0 2.4033e+01 3.7 9.90e+09 1.1 0.0e+00 0.0e+00 2.9e+03  2  2  0  0 30   4  3  0  0 40 82083
VecNorm             3264 1.0 5.4073e+00 2.9 1.19e+09 1.1 0.0e+00 0.0e+00 3.3e+03  0  0  0  0 34   1  0  0  0 45 43735
VecScale            3052 1.0 1.4493e-01 1.2 5.55e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 762903
VecCopy              727 1.0 4.5057e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               364 1.0 1.1781e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              182 1.0 8.0155e-02 1.5 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 164514
VecWAXPY              91 1.0 6.9528e-02 1.2 1.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47415
VecMAXPY            3052 1.0 1.0964e+01 1.1 1.09e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   3  4  0  0  0 198885
VecScatterBegin     2961 1.0 8.5468e-01 2.5 0.00e+00 0.0 3.4e+06 9.3e+04 0.0e+00  0  0 21 25  0   0  0 81 72  0    -0
VecScatterEnd       2961 1.0 1.0793e+01 18.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       182 1.0 3.0435e-02 2.0 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 433274
VecReduceComm         91 1.0 6.8035e-02 7.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        1001 1.0 2.6824e+00 2.8 5.46e+08 1.1 0.0e+00 0.0e+00 1.0e+03  0  0  0  0 10   1  0  0  0 14 40557
MatMult             2961 1.0 7.9904e+01 1.1 5.97e+10 1.1 3.4e+06 9.3e+04 0.0e+00 10  9 21 25  0  23 19 81 72  0 148229
MatSolve            1001 1.0 2.3726e+01 1.1 1.91e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   7  6  0  0  0 159383
MatLUFactorSym         1 1.0 3.2419e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       182 1.0 1.5931e+01 1.2 2.00e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   5  6  0  0  0 243983
MatILUFactorSym        1 1.0 9.9539e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     648 1.0 1.6544e+01 4.5 0.00e+00 0.0 1.1e+05 4.1e+05 4.6e+02  1  0  1  3  5   3  0  3 10  6    -0
MatAssemblyEnd       648 1.0 2.7108e+00 6.4 2.93e+07 0.0 4.5e+03 1.2e+04 1.7e+01  0  0  0  0  0   0  0  0  0  0   922
MatGetRowIJ            1 1.0 3.5290e-06 29.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.3216e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.1850e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.4206e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.1923e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.2748e+00 1.1 2.65e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 411708
MatPtAPSymbolic        1 1.0 1.7626e-01 1.0 0.00e+00 0.0 3.4e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.8487e+00 1.0 1.01e+10 1.1 1.0e+05 3.7e+05 9.6e+01  1  2  1  3  1   2  3  3  9  1 254082
MatGetLocalMat        91 1.0 4.1339e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 3.2935e-01 1.8 0.00e+00 0.0 1.1e+05 3.7e+05 0.0e+00  0  0  1  3  0   0  0  3  9  0    -0
PCSetUp               91 1.0 7.6568e+01 1.0 7.20e+10 1.1 1.1e+06 1.2e+05 2.1e+03 10 11  7 11 22  24 23 28 31 30 185579
PCApply             1960 1.0 4.2963e+02 1.0 3.21e+11 1.1 1.2e+07 6.9e+04 2.4e+03 56 51 75 66 25 Multiple stages 147724
PCApplyOnBlocks     1001 1.0 2.3735e+01 1.1 1.91e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   7  6  0  0  0 159316
KSPSetUp              91 1.0 1.4076e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 4.9125e+02 1.0 3.79e+11 1.1 1.4e+07 7.3e+04 6.4e+03 66 60 88 82 67 Multiple stages 152464
KSPGMRESOrthog      2870 1.0 3.3527e+01 2.1 1.98e+10 1.1 0.0e+00 0.0e+00 2.9e+03  3  3  0  0 30   7  6  0  0 40 117677
Mesh Partition         2 1.0 1.3571e-01 1.0 0.00e+00 0.0 1.4e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.1770e-02 1.0 0.00e+00 0.0 4.8e+04 3.1e+02 1.1e+02  0  0  0  0  1   0  0  1  0  2    -0
DMPlexPartSelf         1 1.0 9.6598e-03 3159.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.9044e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.8323e-03 1.1 0.00e+00 0.0 2.7e+03 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.4131e-03 1.9 0.00e+00 0.0 1.4e+03 8.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 4.9900e-03 1.4 0.00e+00 0.0 1.6e+03 1.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.6366e-01 1.0 0.00e+00 0.0 8.1e+03 1.7e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 3.3801e-03 1.0 0.00e+00 0.0 8.1e+03 5.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.9902e-02 1.0 0.00e+00 0.0 2.3e+04 3.3e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 8.9212e-03 1.1 0.00e+00 0.0 5.5e+04 1.1e+02 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 4.8488e-03 1.3 0.00e+00 0.0 1.2e+04 1.5e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.0381e-04 1.2 0.00e+00 0.0 5.7e+03 7.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 6.0958e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 2.1107e-03 100.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.1482e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.1362e+02 1.0 6.39e+11 1.1 1.6e+07 7.9e+04 9.3e+03 96 100 99 100 97 Multiple stages 175348
SNESSetUp              1 1.0 4.1457e-05 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.3807e+01 1.0 7.74e+10 1.2 3.1e+05 9.3e+04 1.0e+00  6 12  2  2  0  13 24  8  7  0 333908
SNESJacobianEval      91 1.0 9.9014e+01 1.0 1.11e+11 1.2 2.1e+05 2.4e+05 3.6e+02 13 17  1  4  4  30 34  5 11  5 212040
SNESLineSearch        91 1.0 2.3371e+01 1.0 6.02e+10 1.2 3.1e+05 9.3e+04 3.6e+02  3  9  2  2  4   7 18  8  7  5 487819
firedrake              1 1.0 7.4222e+02 1.0 6.39e+11 1.1 1.6e+07 7.8e+04 9.6e+03 99 100 100 100 100 Multiple stages 168593
firedrake.__init__       1 1.0 1.4916e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 3.2622e+00 13.6 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  1  0  2   0  0  3  0  3    -0
CreateMesh             1 1.0 2.2826e-01 1.0 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  1  0  2   0  0  3  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.0280e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5120e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.8257e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.7739e-04 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 2.8981e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 8.0085e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 2.7854e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 2.6917e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 2.6864e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.2642e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 5.7441e-03 1.2 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.4714e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.3518e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.0713e-02 7.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.1457e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.9832e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.7257e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.2422e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.1416e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 4.2822e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3394e+02 1.1 1.89e+11 1.2 2.8e+05 9.1e+04 6.0e+00 17 28  2  2  0  39 58  7  6  0 265939
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.1083e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.3762e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0  10  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.0478e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 1.8791e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.8194e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.3274e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.3273e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 9.1412e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 9.0061e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 2.9236e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.4876e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.2406e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.5212e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   571
firedrake.interpolation.interpolate       2 1.0 6.2843e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 1.9281e+00 1.0 4.27e+06 1.1 6.9e+03 1.1e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   442
firedrake.formmanipulation.split_form       3 1.0 2.6485e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.3544e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 5.9157e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.8259e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.7195e-01 3.7 0.00e+00 0.0 2.8e+05 9.1e+04 2.0e+00  0  0  2  2  0   0  0  7  6  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.7632e+00 1.0 4.27e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   483
firedrake.halo.Halo.global_to_local_end     243 1.0 6.9805e+00 228.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.7259e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.4835e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.9077e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.5250e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.4694e-05 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.6363e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.6078e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.9879e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.3426e+00 1.0 0.00e+00 0.0 6.8e+03 5.2e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0823e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4527e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1418e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1418e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         2 1.0 2.5399e+00 1.2 0.00e+00 0.0 5.7e+03 3.0e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.2584e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.1369e+02 1.0 6.39e+11 1.1 1.6e+07 7.9e+04 9.4e+03 96 100 99 100 97 Multiple stages 175332
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.0531e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2519e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.0252e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1204e+00 1.1 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 416869
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9824e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  4676
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.7614e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  5263
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.8877e+00 1.1 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  6  0  0  0 351363
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6797e+01 1.3 4.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   5 13  0  0  0 461272
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.1395e-02 3.3 0.00e+00 0.0 1.4e+05 9.3e+04 0.0e+00  0  0  1  1  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.3854e+00 141.2 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   473
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5790e+01 1.1 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   5  8  0  0  0 293695
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3612e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3587
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3402e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3619
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8883e+01 1.2 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   8  8  0  0  0 169057
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.4012e+01 1.4 6.34e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5  9  0  0  0  12 19  0  0  0 260269
firedrake.dmhooks.get_function_space       1 1.0 1.2470e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.9068e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 6.1851e+00 1.0 9.55e+07 27.3 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   382
MGSetup Level 1       91 1.0 6.1391e+01 1.0 6.19e+10 1.1 1.0e+06 9.3e+04 1.9e+03  8 10  6  8 20  19 20 25 22 27 198932

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 1.3717e-02 3.0 0.00e+00 0.0 1.2e+05 4.0e+00 9.1e+01  0  0  1  0  1   0  0  1  0  4    -0
SFSetGraph            91 1.0 2.5187e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 1.7716e-02 1.9 0.00e+00 0.0 2.4e+05 1.4e+02 9.1e+01  0  0  1  0  1   0  0  2  0  4    -0
SFPack             13720 1.0 2.0729e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           13720 1.0 8.2917e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             5880 1.0 1.9335e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              7839 1.0 6.3943e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            11760 1.0 5.4907e+00 1.6 2.85e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 103454
VecAXPBYCZ          3920 1.0 2.6283e+00 1.4 3.57e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 270155
VecScatterBegin    13720 1.0 2.3826e+00 2.2 0.00e+00 0.0 1.1e+07 7.2e+04 0.0e+00  0  0 71 66  0   0  0 95 100  0    -0
VecScatterEnd      13720 1.0 2.9229e+01 19.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult             7840 1.0 2.1224e+02 1.2 1.58e+11 1.1 8.9e+06 9.3e+04 0.0e+00 27 25 55 66  0  47 49 73 100  0 147758
MatMultAdd          1960 1.0 5.4565e+00 1.2 2.85e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 104104
MatMultTranspose    1960 1.0 4.0644e+00 2.1 2.85e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 139759
MatSolve            9800 1.0 2.1893e+02 1.2 1.51e+11 1.1 3.2e+06 4.8e+02 4.6e+02 27 24 20  0  5  49 47 27  0 19 135625
MatResidual         1960 1.0 5.5913e+01 1.2 3.99e+10 1.1 2.2e+06 9.3e+04 0.0e+00  7  6 14 16  0  12 12 18 25  0 141490
PCSetUpOnBlocks     3920 1.0 3.4832e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             9800 1.0 2.1906e+02 1.2 1.51e+11 1.1 3.2e+06 4.8e+02 4.6e+02 27 24 20  0  5  49 47 27  0 19 135542
PCApplyOnBlocks     7840 1.0 2.0018e+02 1.2 1.49e+11 1.1 0.0e+00 0.0e+00 0.0e+00 25 24  0  0  0  43 47  0  0  0 147954
KSPSolve            5880 1.0 3.7294e+02 1.1 2.76e+11 1.1 9.9e+06 6.3e+04 2.4e+03 48 43 61 49 25  86 86 82 75 100 145920
MGSmooth Level 0    1960 1.0 3.0432e+01 1.7 3.11e+09 22.9 3.2e+06 4.8e+02 2.4e+03  3  0 20  0 25   5  0 27  0 100  2472
MGSmooth Level 1    3920 1.0 3.5529e+02 1.1 2.74e+11 1.1 6.7e+06 9.3e+04 0.0e+00 45 43 41 49  0  81 86 55 75  0 152957
MGResid Level 1     1960 1.0 5.5920e+01 1.2 3.99e+10 1.1 2.2e+06 9.3e+04 0.0e+00  7  6 14 16  0  12 12 18 25  0 141471
MGInterp Level 1    3920 1.0 9.3070e+00 1.4 5.70e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 122068
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
           Index Set   801            801
   IS L to G Mapping     5              5
             Section    76             76
   Star Forest Graph    78            169
              Vector   474            474
              Matrix    24             24
      Preconditioner     6              6
       Krylov Solver     5              5
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    14             14
            DM Label    50             50
    GraphPartitioner     3              3
     Discrete System    21             21
           Weak Form    21             21

--- Event Stage 1: MG Apply

           Index Set   182            182
   Star Forest Graph    91              0
              Vector    91             91
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 8.243e-06
Average time for zero size MPI_Send(): 2.15605e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_inexact/medium.profile # (source: environment)
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

