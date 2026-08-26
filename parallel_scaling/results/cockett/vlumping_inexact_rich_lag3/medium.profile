****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0070.gadi.nci.org.au with 208 processes, by sg8812 on Tue Aug 25 22:17:44 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.787e+02     1.000   7.787e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.558e+11     1.142   6.171e+11  1.284e+14
Flops/sec:            8.422e+08     1.142   7.924e+08  1.648e+11
MPI Msg Count:        1.236e+05     3.190   8.417e+04  1.751e+07
MPI Msg Len (bytes):  8.499e+09     2.407   7.725e+04  1.352e+12
MPI Reductions:       8.593e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.7746e+02  35.6%  5.1725e+13  40.3%  3.509e+06  20.0%  1.022e+05       26.5%  6.075e+03  70.7%
 1:        MG Apply: 5.0126e+02  64.4%  7.6627e+13  59.7%  1.400e+07  80.0%  7.098e+04       73.5%  2.499e+03  29.1%

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

BuildTwoSided        442 1.0 1.7227e+01 9.0 0.00e+00 0.0 7.9e+04 4.0e+00 4.4e+02  1  0  0  0  5   4  0  2  0  7    -0
BuildTwoSidedF       402 1.0 1.7060e+01 9.2 0.00e+00 0.0 1.1e+05 4.1e+05 4.0e+02  1  0  1  3  5   4  0  3 12  7    -0
SFSetGraph            43 1.0 4.9304e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 2.3969e-01 5.5 0.00e+00 0.0 5.2e+04 2.3e+03 4.0e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         340 1.0 1.4805e-01 2.8 0.00e+00 0.0 3.5e+05 7.4e+04 0.0e+00  0  0  2  2  0   0  0 10  7  0    -0
SFBcastEnd           340 1.0 6.8246e+00 120.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.8249e-02 3.7 0.00e+00 0.0 1.5e+05 8.6e+04 0.0e+00  0  0  1  1  0   0  0  4  4  0    -0
SFReduceEnd          134 1.0 3.5021e+00 160.5 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   457
SFFetchOpBegin         2 1.0 2.2323e-05 7.1 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 6.3901e-04 44.5 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.4911e-03 2.5 0.00e+00 0.0 1.4e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.0775e-02 1.4 0.00e+00 0.0 4.6e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 4.8825e-03 4.6 0.00e+00 0.0 2.1e+04 1.3e+02 2.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFPack              2961 1.0 7.3868e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2963 1.0 5.0612e-02 3.5 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 31613
VecDot                91 1.0 2.3784e-01 9.1 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 27722
VecMDot             2394 1.0 2.2737e+01 2.6 1.16e+10 1.1 0.0e+00 0.0e+00 2.4e+03  2  2  0  0 28   5  4  0  0 39 102041
VecNorm             2732 1.0 4.0659e+00 4.6 9.94e+08 1.1 0.0e+00 0.0e+00 2.7e+03  0  0  0  0 32   1  0  0  0 45 48684
VecScale            2488 1.0 1.0668e-01 1.1 4.53e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 844859
VecCopy              639 1.0 4.2052e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               186 1.0 6.3518e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               94 1.0 4.4417e-02 1.7 3.42e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 153334
VecWAXPY              91 1.0 7.0013e-02 1.1 1.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47086
VecMAXPY            2488 1.0 1.2450e+01 1.1 1.25e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 200292
VecScatterBegin     2485 1.0 7.2750e-01 2.3 0.00e+00 0.0 2.8e+06 9.3e+04 0.0e+00  0  0 16 19  0   0  0 80 73  0    -0
VecScatterEnd       2485 1.0 1.0799e+01 27.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 3.3922e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.0843e-02 2.0 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 427544
VecReduceComm         91 1.0 8.1781e-02 21.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize          53 1.0 1.3598e-01 5.6 2.89e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  1   0  0  0  0  1 42359
MatMult             2485 1.0 6.7888e+01 1.1 5.01e+10 1.1 2.8e+06 9.3e+04 0.0e+00  8  8 16 19  0  23 19 80 73  0 146419
MatSolve              53 1.0 1.2763e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 156876
MatLUFactorSym         1 1.0 3.2214e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum        35 1.0 2.3787e+00 1.0 6.62e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 54189
MatILUFactorSym        2 1.0 1.9821e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               30 1.0 1.0868e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             1 1.0 1.0224e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     471 1.0 1.7210e+01 7.5 0.00e+00 0.0 1.1e+05 4.1e+05 4.0e+02  1  0  1  3  5   4  0  3 12  7    -0
MatAssemblyEnd       471 1.0 2.5989e+00 5.1 2.93e+07 0.0 4.5e+03 1.2e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0   962
MatGetRowIJ            2 1.0 2.3220e-06 9.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 3.6160e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       123 1.0 3.1997e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 7.9429e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2524e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum         64 1.0 4.3694e-01 1.1 9.32e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 422403
MatPtAPSymbolic        1 1.0 1.8506e-01 1.0 0.00e+00 0.0 3.4e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        32 1.0 2.3573e+00 1.0 3.54e+09 1.1 3.7e+04 3.5e+05 3.7e+01  0  1  0  1  0   1  1  1  4  1 297487
MatGetLocalMat        32 1.0 1.3922e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         32 1.0 1.3193e-01 2.0 0.00e+00 0.0 3.8e+04 3.6e+05 0.0e+00  0  0  0  1  0   0  0  1  4  0    -0
PCSetUp               91 1.0 1.0700e+01 1.0 6.62e+09 1.1 1.0e+05 1.9e+05 2.4e+02  1  1  1  1  3   4  3  3  5  4 122567
PCApply             2344 1.0 5.0800e+02 1.0 3.86e+11 1.1 1.4e+07 7.1e+04 2.5e+03 64 60 80 73 29 Multiple stages 150840
PCApplyOnBlocks       53 1.0 1.2768e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 156808
KSPSetUp              91 1.0 1.4158e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.8750e+02 1.0 4.59e+11 1.1 1.7e+07 7.5e+04 7.3e+03 75 71 95 92 85 Multiple stages 154920
KSPGMRESOrthog      2394 1.0 3.3736e+01 1.7 2.33e+10 1.1 0.0e+00 0.0e+00 2.4e+03  3  4  0  0 28   9  9  0  0 39 137545
Mesh Partition         2 1.0 1.3511e-01 1.0 0.00e+00 0.0 1.4e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.1215e-02 1.0 0.00e+00 0.0 4.8e+04 3.1e+02 1.1e+02  0  0  0  0  1   0  0  1  0  2    -0
DMPlexPartSelf         1 1.0 9.6217e-03 3170.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.8609e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.4979e-03 1.5 0.00e+00 0.0 2.7e+03 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.3169e-03 2.3 0.00e+00 0.0 1.4e+03 8.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.1634e-03 1.4 0.00e+00 0.0 1.6e+03 1.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.6274e-01 1.0 0.00e+00 0.0 8.1e+03 1.7e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 3.1123e-03 1.0 0.00e+00 0.0 8.1e+03 5.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.9730e-02 1.0 0.00e+00 0.0 2.3e+04 3.3e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 8.9982e-03 1.1 0.00e+00 0.0 5.5e+04 1.1e+02 8.0e+01  0  0  0  0  1   0  0  2  0  1    -0
DMPlexDistField        3 1.0 4.6307e-03 1.3 0.00e+00 0.0 1.2e+04 1.5e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.1102e-04 1.2 0.00e+00 0.0 5.7e+03 7.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 5.9395e-03 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 2.1874e-03 104.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.2075e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.4585e+02 1.0 6.56e+11 1.1 1.7e+07 7.8e+04 8.3e+03 96 100 99 100 96 Multiple stages 172088
SNESSetUp              1 1.0 3.2824e-05 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4670e+01 1.1 7.74e+10 1.2 3.1e+05 9.3e+04 1.0e+00  6 11  2  2  0  16 28  9  8  0 327458
SNESJacobianEval      91 1.0 1.0001e+02 1.0 1.11e+11 1.2 2.1e+05 2.4e+05 3.6e+02 13 16  1  4  4  36 41  6 14  6 209937
SNESLineSearch        91 1.0 2.3593e+01 1.0 6.02e+10 1.2 3.1e+05 9.3e+04 3.6e+02  3  9  2  2  4   8 22  9  8  6 483237
firedrake              1 1.0 7.7565e+02 1.0 6.56e+11 1.1 1.8e+07 7.7e+04 8.6e+03 100 100 100 100 100 Multiple stages 165477
firedrake.__init__       1 1.0 1.6129e+01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.5496e+00 22.7 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  1  0  2   1  0  3  0  3    -0
CreateMesh             1 1.0 2.3128e-01 1.0 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  1  0  2   0  0  3  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.5082e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7730e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.3744e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.6453e-04 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 3.0454e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 7.4410e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 2.9227e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 2.8300e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 2.8250e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.3007e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 7.7354e-03 1.2 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.3630e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.2792e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 1.7291e-02 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.5586e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.8766e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.6134e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.3644e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.5544e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 4.1724e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3476e+02 1.1 1.89e+11 1.2 2.8e+05 9.1e+04 6.0e+00 16 28  2  2  0  46 69  8  7  0 264321
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.5219e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.4920e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0  12  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.1235e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 2.2362e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.8566e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.3649e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.3648e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 9.3278e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 9.2216e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 2.9440e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.4510e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.3680e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.5179e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   571
firedrake.interpolation.interpolate       2 1.0 6.1419e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 1.9389e+00 1.0 4.27e+06 1.1 6.9e+03 1.1e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   439
firedrake.formmanipulation.split_form       3 1.0 2.6553e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.6220e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 6.2035e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.8387e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.5226e-01 3.9 0.00e+00 0.0 2.8e+05 9.1e+04 2.0e+00  0  0  2  2  0   0  0  8  7  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.7754e+00 1.0 4.27e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   480
firedrake.halo.Halo.global_to_local_end     243 1.0 6.4048e+00 223.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.6082e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.3677e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5086e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.0599e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.0689e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.5431e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.5791e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 7.9170e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.2265e+00 1.0 0.00e+00 0.0 6.8e+03 5.2e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9460e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.0869e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1336e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1336e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
CreateSparsity         2 1.0 2.5339e+00 1.2 0.00e+00 0.0 5.7e+03 3.0e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.2476e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.4592e+02 1.0 6.56e+11 1.1 1.7e+07 7.8e+04 8.3e+03 96 100 99 100 97 Multiple stages 172073
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.7325e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1511e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.6462e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1817e+00 1.1 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  7  0  0  0 413744
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0631e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  4493
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0458e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  4531
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.9976e+00 1.1 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  7  0  0  0 347500
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6745e+01 1.3 4.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   5 15  0  0  0 462716
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.1737e-02 2.9 0.00e+00 0.0 1.4e+05 9.3e+04 0.0e+00  0  0  1  1  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.5031e+00 152.7 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   457
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5821e+01 1.1 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   5  9  0  0  0 293125
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3884e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3546
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3745e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3567
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 3.6150e+01 1.4 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0  10  9  0  0  0 135072
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.3992e+01 1.3 6.34e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5  9  0  0  0  14 22  0  0  0 260386
firedrake.dmhooks.get_function_space       1 1.0 1.1903e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.9254e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       32 1.0 2.3572e+00 1.0 3.56e+07 30.5 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0   354
MGSetup Level 1       32 1.0 8.0503e-01 1.0 6.80e+08 1.1 1.1e+04 9.3e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0 166708

--- Event Stage 1: MG Apply

BuildTwoSided         31 1.0 5.6750e-03 4.3 0.00e+00 0.0 4.2e+04 4.0e+00 3.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            31 1.0 9.2120e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               31 1.0 7.4229e-03 2.5 0.00e+00 0.0 8.4e+04 1.4e+02 3.1e+01  0  0  0  0  0   0  0  1  0  1    -0
SFPack             16408 1.0 2.4838e+00 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           16408 1.0 1.0016e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2344 1.0 9.4090e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              9375 1.0 7.6007e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             9376 1.0 4.7619e+00 1.3 3.41e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 142661
VecAYPX             9376 1.0 4.9992e+00 2.0 1.71e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 67943
VecScatterBegin    16408 1.0 2.8631e+00 2.3 0.00e+00 0.0 1.4e+07 7.2e+04 0.0e+00  0  0 79 73  0   0  0 98 100  0    -0
VecScatterEnd      16408 1.0 3.3381e+01 17.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
MatMult             9376 1.0 2.5443e+02 1.1 1.89e+11 1.1 1.1e+07 9.3e+04 0.0e+00 31 29 61 73  0  47 49 76 100  0 147407
MatMultAdd          2344 1.0 6.2645e+00 1.1 3.41e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 108441
MatMultTranspose    2344 1.0 4.7687e+00 2.4 3.41e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 142456
MatSolve           11720 1.0 2.5246e+02 1.1 1.79e+11 1.1 3.4e+06 5.2e+02 1.6e+02 31 28 19  0  2  48 46 24  0  6 140643
MatLUFactorNum        29 1.0 3.3146e+00 1.3 6.36e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  2  0  0  0 373484
MatResidual         2344 1.0 6.5641e+01 1.2 4.77e+10 1.1 2.7e+06 9.3e+04 0.0e+00  8  7 15 18  0  12 12 19 25  0 144131
PCSetUpOnBlocks     4688 1.0 3.3451e+00 1.3 6.36e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  2  0  0  0 370077
PCApply            11720 1.0 2.5263e+02 1.1 1.79e+11 1.1 3.4e+06 5.2e+02 1.6e+02 31 28 19  0  2  48 46 24  0  6 140550
PCApplyOnBlocks     9376 1.0 2.3187e+02 1.1 1.79e+11 1.1 0.0e+00 0.0e+00 0.0e+00 28 28  0  0  0  43 46  0  0  0 152754
KSPSolve            7032 1.0 4.3656e+02 1.0 3.26e+11 1.1 1.1e+07 6.6e+04 2.5e+03 55 50 65 55 29  85 84 81 75 100 147907
MGSmooth Level 0    2344 1.0 3.2439e+01 1.7 3.92e+09 22.1 3.4e+06 5.2e+02 2.5e+03  3  0 19  0 29   5  0 24  0 100  2714
MGSmooth Level 1    4688 1.0 4.1941e+02 1.1 3.31e+11 1.1 8.0e+06 9.3e+04 0.0e+00 52 51 45 55  0  81 86 57 75  0 156697
MGResid Level 1     2344 1.0 6.5649e+01 1.2 4.77e+10 1.1 2.7e+06 9.3e+04 0.0e+00  8  7 15 18  0  12 12 19 25  0 144115
MGInterp Level 1    4688 1.0 1.0836e+01 1.4 6.82e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 125381
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set   806            806
   IS L to G Mapping     5              5
             Section    76             76
   Star Forest Graph    82            113
              Vector   253            253
              Matrix    28             28
      Preconditioner     6              6
       Krylov Solver     7              7
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    16             16
            DM Label    50             50
    GraphPartitioner     3              3
     Discrete System    23             23
           Weak Form    23             23

--- Event Stage 1: MG Apply

           Index Set    62             62
   Star Forest Graph    31              0
              Vector    31             31
========================================================================================================================
Average time to get PetscTime(): 2.61e-08
Average time for MPI_Barrier(): 8.3936e-06
Average time for zero size MPI_Send(): 2.1389e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_inexact_rich_lag3/medium.profile # (source: environment)
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

