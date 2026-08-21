****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0341.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 23:50:18 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.255e+03     1.000   1.255e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                8.455e+11     1.152   7.995e+11  6.652e+14
Flops/sec:            6.735e+08     1.152   6.368e+08  5.298e+11
MPI Msg Count:        2.084e+05     4.497   1.195e+05  9.942e+07
MPI Msg Len (bytes):  1.571e+10     2.991   9.656e+04  9.600e+12
MPI Reductions:       1.299e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.3110e+02  34.3%  2.7555e+14  41.4%  2.270e+07  22.8%  1.274e+05       30.1%  9.459e+03  72.8%
 1:        MG Apply: 8.2434e+02  65.7%  3.8962e+14  58.6%  7.672e+07  77.2%  8.744e+04       69.9%  3.508e+03  27.0%

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

BuildTwoSided        501 1.0 2.1620e+01 6.0 0.00e+00 0.0 3.3e+05 4.0e+00 5.0e+02  1  0  0  0  4   3  0  1  0  5    -0
BuildTwoSidedF       461 1.0 2.1494e+01 6.2 0.00e+00 0.0 4.4e+05 5.1e+05 4.6e+02  1  0  0  2  4   3  0  2  8  5    -0
SFSetGraph            43 1.0 5.8907e-03 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 3.2209e-01 5.4 0.00e+00 0.0 2.2e+05 2.9e+03 4.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         340 1.0 1.6997e-01 3.0 0.00e+00 0.0 1.5e+06 9.2e+04 0.0e+00  0  0  1  1  0   0  0  6  5  0    -0
SFBcastEnd           340 1.0 9.9233e+00 125.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 3.4649e-02 16.6 0.00e+00 0.0 6.2e+05 1.1e+05 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
SFReduceEnd          134 1.0 3.4237e+00 148.3 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2425
SFFetchOpBegin         2 1.0 1.8956e-05 6.1 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 9.6471e-04 55.8 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.0705e-03 4.6 0.00e+00 0.0 5.7e+03 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 2.3338e-02 1.4 0.00e+00 0.0 1.9e+05 1.6e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 1.0722e-02 6.1 0.00e+00 0.0 8.2e+04 9.4e+01 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4601 1.0 1.5005e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4603 1.0 7.1620e-02 12.1 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 115911
VecDot                91 1.0 3.4064e-01 10.3 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 76814
VecMDot             3963 1.0 4.7105e+01 2.8 1.71e+10 1.1 0.0e+00 0.0e+00 4.0e+03  2  2  0  0 31   6  5  0  0 42 290801
VecNorm             4428 1.0 8.8284e+00 2.8 1.59e+09 1.1 0.0e+00 0.0e+00 4.4e+03  0  0  0  0 34   1  0  0  0 47 144218
VecScale            4216 1.0 1.7971e-01 1.1 7.58e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3372919
VecCopy              727 1.0 4.6142e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               435 1.0 1.5005e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              253 1.0 1.0757e-01 1.4 9.09e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 676273
VecWAXPY             162 1.0 1.2560e-01 1.6 2.91e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 185428
VecMAXPY            4216 1.0 1.8236e+01 1.2 1.85e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   4  5  0  0  0 813641
VecScatterBegin     4125 1.0 1.4975e+00 2.9 0.00e+00 0.0 2.0e+07 1.2e+05 0.0e+00  0  0 20 24  0   0  0 86 78  0    -0
VecScatterEnd       4125 1.0 1.9509e+01 40.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       182 1.0 3.3098e-02 2.1 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1581108
VecReduceComm         91 1.0 7.0554e-02 7.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        1001 1.0 3.3650e+00 2.9 5.40e+08 1.1 0.0e+00 0.0e+00 1.0e+03  0  0  0  0  8   1  0  0  0 11 128303
MatMult             4125 1.0 1.1620e+02 1.2 8.22e+10 1.1 2.0e+07 1.2e+05 0.0e+00  9 10 20 24  0  25 24 86 78  0 564642
MatSolve            1001 1.0 2.3442e+01 1.2 1.86e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  5  0  0  0 629870
MatLUFactorSym         1 1.0 2.2446e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatLUFactorNum       182 1.0 5.2791e+01 1.1 1.95e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  2  0  0  0  12  5  0  0  0 285697
MatILUFactorSym        1 1.0 9.9044e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     648 1.0 2.1923e+01 4.7 0.00e+00 0.0 4.4e+05 5.1e+05 4.6e+02  1  0  0  2  4   3  0  2  8  5    -0
MatAssemblyEnd       648 1.0 3.4595e+00 6.5 3.77e+07 0.0 1.9e+04 1.5e+04 1.7e+01  0  0  0  0  0   0  0  0  0  0  3749
MatGetRowIJ            1 1.0 5.4350e-06 67.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.3556e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.2150e+00 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.4268e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.1798e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.3622e+00 1.2 2.62e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1531826
MatPtAPSymbolic        1 1.0 1.8124e-01 1.0 0.00e+00 0.0 1.4e+04 2.5e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.9389e+00 1.0 9.94e+09 1.1 4.4e+05 4.5e+05 9.6e+01  1  1  0  2  1   2  3  2  7  1 998753
MatGetLocalMat        91 1.0 4.2022e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 4.3773e-01 2.4 0.00e+00 0.0 4.4e+05 4.6e+05 0.0e+00  0  0  0  2  0   0  0  2  7  0    -0
PCSetUp               91 1.0 1.1585e+02 1.0 7.06e+10 1.1 4.8e+06 1.5e+05 2.1e+03  9  8  5  7 16  27 20 21 24 23 482096
PCApply             3053 1.0 8.3549e+02 1.0 4.91e+11 1.1 7.7e+07 8.7e+04 3.5e+03 66 59 77 70 27 Multiple stages 466336
PCApplyOnBlocks     1001 1.0 2.3453e+01 1.2 1.86e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  5  0  0  0 629578
KSPSetUp              91 1.0 1.3073e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 9.4708e+02 1.0 5.87e+11 1.1 9.2e+07 9.2e+04 9.8e+03 75 70 92 88 75 Multiple stages 492194
KSPGMRESOrthog      3963 1.0 6.2478e+01 1.9 3.42e+10 1.1 0.0e+00 0.0e+00 4.0e+03  3  4  0  0 31  10 10  0  0 42 438493
Mesh Partition         2 1.0 5.3410e-01 1.0 0.00e+00 0.0 5.9e+04 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 7.5264e-02 1.0 0.00e+00 0.0 2.0e+05 2.1e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 2.5144e-02 5158.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 5.9046e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 9.8040e-03 3.8 0.00e+00 0.0 1.1e+04 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.7093e-03 1.9 0.00e+00 0.0 5.7e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1634e-02 1.2 0.00e+00 0.0 6.5e+03 9.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.9931e-01 1.0 0.00e+00 0.0 3.2e+04 1.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 8.3003e-03 1.1 0.00e+00 0.0 3.4e+04 3.6e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 5.0926e-02 1.0 0.00e+00 0.0 9.3e+04 2.3e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 2.4105e-02 1.0 0.00e+00 0.0 2.3e+05 9.1e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.0367e-02 1.2 0.00e+00 0.0 5.2e+04 1.0e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.2367e-04 1.2 0.00e+00 0.0 2.4e+04 5.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.4920e-02 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 5.4264e-03 367.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.8209e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.2112e+03 1.0 8.46e+11 1.2 9.9e+07 9.7e+04 1.3e+04 96 100 99 100 98 Multiple stages 549186
SNESSetUp              1 1.0 3.6926e-05 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4427e+01 1.1 7.85e+10 1.3 1.3e+06 1.1e+05 1.0e+00  3  9  1  2  0  10 21  6  5  0 1308341
SNESJacobianEval      91 1.0 1.0047e+02 1.0 1.13e+11 1.3 8.6e+05 3.0e+05 3.6e+02  8 13  1  3  3  23 30  4  9  4 830555
SNESLineSearch        91 1.0 2.4007e+01 1.0 6.10e+10 1.3 1.3e+06 1.2e+05 3.6e+02  2  7  1  2  3   6 16  6  5  4 1887164
firedrake              1 1.0 1.2476e+03 1.0 8.46e+11 1.2 9.9e+07 9.7e+04 1.3e+04 99 100 100 100 100 Multiple stages 533157
firedrake.__init__       1 1.0 1.8899e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 9.2643e+00 12.8 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  1  0  1   1  0  2  0  2    -0
CreateMesh             1 1.0 7.0530e-01 1.0 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  1  0  1   0  0  2  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.4674e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.4650e-06 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 4.0425e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.9801e-04 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 2.7512e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 8.9156e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 2.6411e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 2.5530e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 2.5482e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 8.4127e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 8.9575e-03 1.2 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 7.2983e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0787e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 9.3696e-02 26.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 3.2229e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.9190e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5875e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.9716e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 3.2188e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 3.5466e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3877e+02 1.2 1.91e+11 1.3 1.2e+06 1.1e+05 6.0e+00 10 21  1  1  0  30 51  5  5  0 1020047
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 3.1853e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.5989e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 1.9620e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 1.7525e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.7137e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.6623e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.6622e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 9.5882e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 9.4669e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 3.4326e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.5199e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.5137e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 3.2581e+00 1.0 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   1  0  0  0  0   662
firedrake.interpolation.interpolate       2 1.0 6.4473e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 4.2479e+00 1.0 4.22e+06 1.1 2.9e+04 1.4e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   795
firedrake.formmanipulation.split_form       3 1.0 2.3158e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.8963e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 6.0114e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.9074e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.0576e-01 4.3 0.00e+00 0.0 1.2e+06 1.1e+05 2.0e+00  0  0  1  1  0   0  0  5  5  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 4.0674e+00 1.0 4.22e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   831
firedrake.halo.Halo.global_to_local_end     243 1.0 9.7760e+00 266.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.7303e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 3.4310e-01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8786e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.0946e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.5334e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.9792e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3171e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.3888e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.6383e+00 1.0 0.00e+00 0.0 2.9e+04 6.4e+05 2.3e+01  1  0  0  0  0   2  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0494e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8499e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1560e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1560e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         2 1.0 2.9065e+00 1.4 0.00e+00 0.0 2.4e+04 3.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.5124e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.2112e+03 1.0 8.46e+11 1.2 9.9e+07 9.7e+04 1.3e+04 96 100 99 100 98 Multiple stages 549156
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.0233e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.3061e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 4.1324e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.0231e+00 1.1 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 1674436
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9326e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11959
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9181e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12049
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0236e+01 1.2 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 1349541
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7642e+01 1.4 4.43e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   3 11  0  0  0 1747111
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.8547e-02 7.5 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.4247e+00 143.0 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2424
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5524e+01 1.1 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  7  0  0  0 1185545
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.2242e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  9493
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.2091e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  9557
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7457e+01 1.2 2.43e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   6  7  0  0  0 707116
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5660e+01 1.5 6.55e+10 1.5 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   9 17  0  0  0 997961
firedrake.dmhooks.get_function_space       1 1.0 1.5294e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.7916e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 4.4540e+01 1.0 2.52e+08 105.5 0.0e+00 0.0e+00 2.0e+00  4  0  0  0  0  10  0  0  0  0   169
MGSetup Level 1       91 1.0 6.2213e+01 1.0 6.06e+10 1.1 4.3e+06 1.2e+05 1.9e+03  5  7  4  5 15  14 17 19 17 20 770126

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 4.2401e-02 3.2 0.00e+00 0.0 4.9e+05 4.0e+00 9.1e+01  0  0  0  0  1   0  0  1  0  3    -0
SFSetGraph            91 1.0 3.6050e-03 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 5.1780e-02 2.4 0.00e+00 0.0 9.8e+05 8.7e+01 9.1e+01  0  0  1  0  1   0  0  1  0  3    -0
SFPack             21371 1.0 4.2470e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           21371 1.0 1.4910e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             9159 1.0 3.1003e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             12211 1.0 9.9371e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            18318 1.0 9.6825e+00 1.8 4.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 362658
VecAXPBYCZ          6106 1.0 4.3273e+00 1.4 5.49e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 1014332
VecScatterBegin    21371 1.0 4.7993e+00 2.8 0.00e+00 0.0 7.4e+07 9.0e+04 0.0e+00  0  0 75 70  0   0  0 97 100  0    -0
VecScatterEnd      21371 1.0 5.5242e+01 38.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult            12212 1.0 3.4563e+02 1.2 2.43e+11 1.1 5.8e+07 1.2e+05 0.0e+00 25 29 58 70  0  38 50 75 100  0 561977
MatMultAdd          3053 1.0 8.7141e+00 1.2 4.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 402959
MatMultTranspose    3053 1.0 6.7321e+00 2.6 4.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 521596
MatSolve           15265 1.0 5.0241e+02 1.1 2.36e+11 1.2 1.9e+07 3.1e+02 4.6e+02 38 27 19  0  4  58 46 25  0 13 359182
MatResidual         3053 1.0 8.9754e+01 1.3 6.14e+10 1.1 1.4e+07 1.2e+05 0.0e+00  6  7 15 17  0  10 13 19 25  0 545915
PCSetUpOnBlocks     6106 1.0 5.8898e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            15265 1.0 5.0264e+02 1.1 2.36e+11 1.2 1.9e+07 3.1e+02 4.6e+02 38 27 19  0  4  58 46 25  0 13 359022
PCApplyOnBlocks    12212 1.0 3.0055e+02 1.2 2.27e+11 1.1 0.0e+00 0.0e+00 0.0e+00 22 27  0  0  0  34 46  0  0  0 599351
KSPSolve            9159 1.0 7.4490e+02 1.0 4.22e+11 1.1 6.2e+07 8.1e+04 3.5e+03 58 50 63 52 27  88 86 81 75 100 447844
MGSmooth Level 0    3053 1.0 2.1555e+02 1.1 1.27e+10 173.9 1.9e+07 3.1e+02 3.5e+03 16  0 19  0 27  24  0 25  0 100  1490
MGSmooth Level 1    6106 1.0 5.4924e+02 1.1 4.19e+11 1.1 4.3e+07 1.2e+05 0.0e+00 42 50 44 52  0  64 86 56 75  0 606789
MGResid Level 1     3053 1.0 8.9766e+01 1.3 6.14e+10 1.1 1.4e+07 1.2e+05 0.0e+00  6  7 15 17  0  10 13 19 25  0 545841
MGInterp Level 1    6106 1.0 1.5115e+01 1.5 8.78e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 464614
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
           Index Set  2673           2673
   IS L to G Mapping     5              5
             Section    76             76
   Star Forest Graph    78            169
              Vector   484            484
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
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 7.6812e-06
Average time for zero size MPI_Send(): 2.19835e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_inexact/large.profile # (source: environment)
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

