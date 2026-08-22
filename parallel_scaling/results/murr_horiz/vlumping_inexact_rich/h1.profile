****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0578.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:39:02 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.575e+02     1.000   8.575e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.196e+12     1.195   1.128e+12  1.173e+14
Flops/sec:            1.394e+09     1.195   1.316e+09  1.368e+11
MPI Msg Count:        7.343e+04     2.948   5.352e+04  5.566e+06
MPI Msg Len (bytes):  9.068e+09     2.996   1.195e+05  6.653e+11
MPI Reductions:       8.844e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.2755e+02  49.9%  8.3470e+13  71.1%  1.804e+06  32.4%  2.105e+05       57.1%  6.577e+03  74.4%
 1:        MG Apply: 4.2996e+02  50.1%  3.3853e+13  28.9%  3.762e+06  67.6%  7.587e+04       42.9%  2.248e+03  25.4%

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

BuildTwoSided       1228 1.0 4.8801e+01 7.3 0.00e+00 0.0 9.4e+04 4.0e+00 1.2e+03  3  0  2  0 14   6  0  5  0 19    -0
BuildTwoSidedF      1131 1.0 4.8758e+01 8.0 0.00e+00 0.0 1.2e+05 1.5e+06 1.1e+03  3  0  2 26 13   6  0  7 45 17    -0
SFSetGraph           104 1.0 6.9779e-03 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 2.4865e+00 114.9 0.00e+00 0.0 6.9e+04 1.1e+03 9.7e+01  0  0  1  0  1   0  0  4  0  1    -0
SFBcastBegin         888 1.0 4.0166e-01 3.4 0.00e+00 0.0 4.4e+05 8.8e+04 0.0e+00  0  0  8  6  0   0  0 24 10  0    -0
SFBcastEnd           888 1.0 1.7744e+01 40.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin        341 1.0 7.5464e-02 15.9 0.00e+00 0.0 1.7e+05 1.1e+05 0.0e+00  0  0  3  3  0   0  0 10  5  0    -0
SFReduceEnd          341 1.0 3.9693e+00 72.9 3.24e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   599
SFFetchOpBegin         6 1.0 2.5810e-05 3.9 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.7672e-04 7.9 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.3977e-04 1.3 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.6701e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  1   0  0  3  0  1    -0
SFSectionSF           51 1.0 2.7810e-03 1.9 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  1  0  1   0  0  2  0  1    -0
SFRemoteOff            2 1.0 7.5233e-05 2.3 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              2913 1.0 1.0440e+00 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2919 1.0 1.8051e-01 10.0 3.24e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13162
VecDot               225 1.0 9.3219e-01 5.4 1.94e+08 1.2 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  3   0  0  0  0  3 20910
VecMDot             1453 1.0 1.6347e+01 3.4 6.06e+09 1.2 0.0e+00 0.0e+00 1.5e+03  1  1  0  0 16   2  1  0  0 22 37171
VecNorm             2461 1.0 7.9913e+00 5.1 2.13e+09 1.2 0.0e+00 0.0e+00 2.5e+03  1  0  0  0 28   1  0  0  0 37 26679
VecScale            1695 1.0 6.6325e-01 1.3 7.32e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110696
VecCopy             1594 1.0 2.2391e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               468 1.0 4.3059e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              242 1.0 4.5805e-01 1.2 2.09e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 45769
VecWAXPY             225 1.0 4.6659e-01 1.2 9.72e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 20887
VecMAXPY            1695 1.0 9.5069e+00 1.2 7.32e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 77155
VecScatterBegin     1678 1.0 6.8556e-01 3.1 0.00e+00 0.0 8.8e+05 1.2e+05 0.0e+00  0  0 16 16  0   0  0 49 28  0    -0
VecScatterEnd       1678 1.0 1.3577e+01 32.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          16 1.0 6.8363e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       450 1.0 3.5697e-01 1.4 3.89e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 109208
VecReduceComm        225 1.0 2.4782e-01 30.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  3   0  0  0  0  3    -0
VecNormalize         347 1.0 1.2041e+00 3.5 4.50e+08 1.2 0.0e+00 0.0e+00 3.5e+02  0  0  0  0  4   0  0  0  0  5 37448
MatMult             1678 1.0 7.4465e+01 1.1 5.14e+10 1.2 8.8e+05 1.2e+05 0.0e+00  8  4 16 16  0  16  6 49 28  0 69016
MatSolve             347 1.0 1.4957e+01 1.2 1.04e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  1  0  0  0 68846
MatLUFactorSym         1 1.0 3.4134e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       241 1.0 9.8556e+00 1.0 4.40e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 43556
MatILUFactorSym        1 1.0 1.5908e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1630 1.0 4.8783e+01 3.4 0.00e+00 0.0 1.2e+05 1.5e+06 1.1e+03  4  0  2 26 13   7  0  7 45 17    -0
MatAssemblyEnd      1630 1.0 1.1349e+01 6.7 2.53e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0   943
MatGetRowIJ            1 1.0 5.2660e-06 42.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.6267e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       450 1.0 8.1939e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5306e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3525e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        450 1.0 3.9202e+00 1.1 7.00e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 178260
MatPtAPSymbolic        1 1.0 2.1107e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       225 1.0 2.5684e+01 1.0 2.80e+10 1.2 1.2e+05 3.6e+05 2.3e+02  3  2  2  6  3   6  3  7 11  3 108846
MatGetLocalMat       225 1.0 1.7153e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        225 1.0 8.5723e-01 1.9 0.00e+00 0.0 1.2e+05 3.6e+05 0.0e+00  0  0  2  6  0   0  0  7 11  0    -0
MatSetPreallCOO       32 1.0 6.0436e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.5009e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 7.5981e+01 1.0 5.97e+10 1.2 2.9e+05 2.2e+05 1.4e+03  9  5  5 10 16  18  7 16 17 21 78352
PCApply             1123 1.0 4.3490e+02 1.0 3.41e+11 1.2 3.8e+06 7.6e+04 2.2e+03 50 29 68 43 25 Multiple stages 77842
PCApplyOnBlocks      347 1.0 1.4962e+01 1.2 1.04e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  1  0  0  0 68825
KSPSetUp             225 1.0 2.1457e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 4.9048e+02 1.0 3.84e+11 1.2 4.4e+06 8.2e+04 4.7e+03 57 33 78 54 53 Multiple stages 77899
KSPGMRESOrthog      1453 1.0 2.3465e+01 1.9 1.21e+10 1.2 0.0e+00 0.0e+00 1.5e+03  2  1  0  0 16   4  1  0  0 22 51791
DMRefine               2 1.0 2.4838e-02 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     9
DMPlexCreateGmsh       1 1.0 1.0167e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.6703e+00 504.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 5.0545e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.0971e-02 1.1 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  3   0  0  4  0  4    -0
DMPlexPartSelf         1 1.0 1.2194e-03 549.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 5.4945e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.3406e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 5.6495e-04 2.9 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.0423e-03 3.7 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 4.4187e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.4082e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.3858e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 4.3907e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 8.6980e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  3   0  0  5  0  4    -0
DMPlexDistField        7 1.0 2.0343e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 3.1443e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.0135e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0246e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.9261e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1494e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.2595e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.4371e-04 2.1 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.0703e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.3918e-04 2.0 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 7.9210e+02 1.0 1.20e+12 1.2 5.4e+06 1.2e+05 8.0e+03 92 100 96 100 90 Multiple stages 148106
SNESSetUp              1 1.0 5.0261e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.3512e+01 1.2 2.91e+11 1.2 3.5e+05 1.2e+05 0.0e+00  4 24  6  6  0   7 34 20 11  0 838831
SNESJacobianEval     225 1.0 1.8068e+02 1.0 4.57e+11 1.2 2.4e+05 7.9e+05 9.0e+02 21 38  4 28 10  42 53 13 49 14 244844
SNESLineSearch       225 1.0 2.9070e+01 1.0 2.26e+11 1.2 3.5e+05 1.2e+05 9.0e+02  3 19  6  6 10   7 26 20 11 14 752652
DualSpaceSetUp         8 1.0 5.4155e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 9.7116e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 8.5537e+02 1.0 1.20e+12 1.2 5.6e+06 1.2e+05 8.8e+03 100 100 100 100 100 Multiple stages 137161
firedrake.__init__       1 1.0 1.0575e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 5.7681e+00 53.1 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  3  0  5   1  0  9  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 5.6709e+00 502.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.2384e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.7810e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.2932e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.9089e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 2.9338e-02 1.3 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.7285e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 2.7389e-02 1.3 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.5011e-02 1.3 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.4897e-02 1.3 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.0903e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.1616e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.2499e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3829e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.7362e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.6376e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.3716e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.0692e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2790e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.5735e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 8.9293e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2420 1.0 1.8785e+02 1.2 7.48e+11 1.2 3.3e+05 1.2e+05 3.2e+01 20 62  6  6  0  40 87 18 10  0 385132
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.1570e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4840 1.0 2.4370e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0495e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.3124e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5392e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.3677e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.3676e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 8.9164e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.7580e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2420 1.0 7.0835e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2420 1.0 6.0803e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.2882e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.5876e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  1  0  0  0  0   2  0  0  0  0   170
firedrake.interpolation.interpolate      13 1.0 5.7970e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.9051e+00 1.0 9.02e+07 1.2 1.4e+04 4.2e+04 3.7e+01  1  0  0  0  0   1  0  1  0  1  1531
firedrake.formmanipulation.split_form      14 1.0 4.8636e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.9419e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.4844e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0051e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 5.4783e+00 21.1 0.00e+00 0.0 3.3e+05 1.2e+05 4.0e+00  0  0  6  6  0   1  0 18 10  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4140e+00 1.0 9.02e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1670
firedrake.halo.Halo.global_to_local_end     621 1.0 1.3061e+01 93.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 1.9063e-01 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d1327fa10_wrap_pyop2_kernel_prolong       4 0.0 7.4755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d13281d50_wrap_pyop2_kernel_prolong       4 0.0 5.5294e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9094e+00 1.0 7.30e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  1872
firedrake.function.Function.assign     314 1.0 1.8291e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.7663e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.4684e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6995e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.8672e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5252e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9224e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2720e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.1536e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.4909e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8063e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1648e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1647e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 3.7656e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 6.0393e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 7.9238e+02 1.0 1.20e+12 1.2 5.4e+06 1.2e+05 8.2e+03 92 100 96 100 92 Multiple stages 148055
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.9977e-01 1131.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 9.6910e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.9971e-01 1370.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.9968e-01 1572.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 8.3460e+00 1.4 7.37e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   2  9  0  0  0 885144
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0035e+00 1.0 9.58e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   957
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2506e+00 1.1 7.08e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10008
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.7327e+00 1.2 7.08e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  9  0  0  0 1237663
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.2184e+01 1.3 1.46e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   3 16  0  0  0 1117255
firedrake.halo.Halo.local_to_global_begin     300 1.0 8.4857e-02 7.7 0.00e+00 0.0 1.6e+05 1.2e+05 0.0e+00  0  0  3  3  0   0  0  9  5  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 3.9723e+00 69.3 3.24e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   598
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.1422e+01 1.5 1.03e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   6 12  0  0  0 329025
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.9599e+00 1.8 5.41e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4877
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 3.7810e+01 1.2 1.36e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   8 16  0  0  0 361760
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 8.3829e+01 1.4 2.17e+11 1.3 0.0e+00 0.0e+00 0.0e+00  8 17  0  0  0  17 24  0  0  0 240994
firedrake.dmhooks.get_function_space       1 1.0 1.5768e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.0156e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 7.6501e+00 1.0 8.42e+07 9.3 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   294
MGSetup Level 1      225 1.0 1.4034e+00 1.0 1.03e+09 1.2 5.2e+03 1.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 72591
firedrake.constant.Constant.assign      75 1.0 3.7996e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b30bac210_wrap_pyop2_kernel_prolong       4 0.0 7.4728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b309f84d0_wrap_pyop2_kernel_prolong       4 0.0 5.4385e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15220de6da50_wrap_pyop2_kernel_prolong       4 0.0 7.4735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15220de6f990_wrap_pyop2_kernel_prolong       4 0.0 6.5198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490e4bb5d90_wrap_pyop2_kernel_prolong       4 0.0 7.4794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490e4bb7750_wrap_pyop2_kernel_prolong       4 0.0 6.4799e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503be8a9490_wrap_pyop2_kernel_prolong       4 0.0 7.4798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503bd52fd90_wrap_pyop2_kernel_prolong       4 0.0 6.6818e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508e3fada90_wrap_pyop2_kernel_prolong       4 0.0 7.4808e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508e3fccbd0_wrap_pyop2_kernel_prolong       4 0.0 7.6420e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544bac4dd10_wrap_pyop2_kernel_prolong       4 0.0 7.4716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544bac4d3d0_wrap_pyop2_kernel_prolong       4 0.0 6.0989e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f28f266790_wrap_pyop2_kernel_prolong       4 0.0 7.4735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f28e813c10_wrap_pyop2_kernel_prolong       4 0.0 5.3176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489b17c0190_wrap_pyop2_kernel_prolong       4 0.0 7.4776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489b178ce10_wrap_pyop2_kernel_prolong       4 0.0 6.7434e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15525506e290_wrap_pyop2_kernel_prolong       4 0.0 7.4730e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552551e73d0_wrap_pyop2_kernel_prolong       4 0.0 5.4668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518b6989ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518b698b3d0_wrap_pyop2_kernel_prolong       4 0.0 7.6180e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514fb51f4d0_wrap_pyop2_kernel_prolong       4 0.0 7.4773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514fb526e90_wrap_pyop2_kernel_prolong       4 0.0 6.6650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dd9bfc510_wrap_pyop2_kernel_prolong       4 0.0 7.4802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dd9e13bd0_wrap_pyop2_kernel_prolong       4 0.0 6.5668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153933daeb90_wrap_pyop2_kernel_prolong       4 0.0 7.4694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153933ed6310_wrap_pyop2_kernel_prolong       4 0.0 5.3074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe3c070fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe3c085150_wrap_pyop2_kernel_prolong       4 0.0 6.5725e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a624adb10_wrap_pyop2_kernel_prolong       4 0.0 7.4773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a624ad450_wrap_pyop2_kernel_prolong       4 0.0 6.5971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535c2751710_wrap_pyop2_kernel_prolong       4 0.0 7.4629e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535c283fe50_wrap_pyop2_kernel_prolong       4 0.0 5.5045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cb617bc90_wrap_pyop2_kernel_prolong       4 0.0 7.4700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cb61c7b10_wrap_pyop2_kernel_prolong       4 0.0 7.1239e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce6537c910_wrap_pyop2_kernel_prolong       4 0.0 7.4765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce65283cd0_wrap_pyop2_kernel_prolong       4 0.0 6.5562e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba70435fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba70435550_wrap_pyop2_kernel_prolong       4 0.0 6.2569e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474ad9e3a90_wrap_pyop2_kernel_prolong       4 0.0 7.4768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474ad9e2810_wrap_pyop2_kernel_prolong       4 0.0 6.2882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504d7e6fc10_wrap_pyop2_kernel_prolong       4 0.0 7.4778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504d7cf9190_wrap_pyop2_kernel_prolong       4 0.0 8.3015e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505f67c6550_wrap_pyop2_kernel_prolong       4 0.0 7.4841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505f67c5b90_wrap_pyop2_kernel_prolong       4 0.0 7.3338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d048cd10_wrap_pyop2_kernel_prolong       4 0.0 7.4819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d048e150_wrap_pyop2_kernel_prolong       4 0.0 6.6170e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e922f7850_wrap_pyop2_kernel_prolong       4 0.0 7.4719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e92519150_wrap_pyop2_kernel_prolong       4 0.0 6.9923e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a54afa5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a54a12210_wrap_pyop2_kernel_prolong       4 0.0 7.9452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6a168c890_wrap_pyop2_kernel_prolong       4 0.0 7.4729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6a149c4d0_wrap_pyop2_kernel_prolong       4 0.0 5.4403e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479422775d0_wrap_pyop2_kernel_prolong       4 0.0 7.4763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14794211d410_wrap_pyop2_kernel_prolong       4 0.0 5.6388e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de8c40da10_wrap_pyop2_kernel_prolong       4 0.0 7.4721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de8c40c8d0_wrap_pyop2_kernel_prolong       4 0.0 6.9179e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a94986ce50_wrap_pyop2_kernel_prolong       4 0.0 7.4766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9495d9050_wrap_pyop2_kernel_prolong       4 0.0 6.1227e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149540db3e50_wrap_pyop2_kernel_prolong       4 0.0 7.4752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149540d882d0_wrap_pyop2_kernel_prolong       4 0.0 7.0090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550ffd2f350_wrap_pyop2_kernel_prolong       4 0.0 7.4753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551046ff310_wrap_pyop2_kernel_prolong       4 0.0 6.3030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baf25ec4d0_wrap_pyop2_kernel_prolong       4 0.0 7.4688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baf1d2fe50_wrap_pyop2_kernel_prolong       4 0.0 5.8073e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b88a4bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b88a484d0_wrap_pyop2_kernel_prolong       4 0.0 5.9897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151343f72ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151343e2c750_wrap_pyop2_kernel_prolong       4 0.0 5.9979e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151158d3f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151158c7d450_wrap_pyop2_kernel_prolong       4 0.0 7.1021e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149840c13850_wrap_pyop2_kernel_prolong       4 0.0 7.4709e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149840c10750_wrap_pyop2_kernel_prolong       4 0.0 7.0521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dbff92150_wrap_pyop2_kernel_prolong       4 0.0 7.4764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dbf8a20d0_wrap_pyop2_kernel_prolong       4 0.0 7.5560e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b53fcbd50_wrap_pyop2_kernel_prolong       4 0.0 7.4798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b53fc9010_wrap_pyop2_kernel_prolong       4 0.0 7.7364e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e4a2f0fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e4a98b110_wrap_pyop2_kernel_prolong       4 0.0 5.3264e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d04bb5e90_wrap_pyop2_kernel_prolong       4 0.0 7.4711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d04bb5350_wrap_pyop2_kernel_prolong       4 0.0 6.0357e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15163fb6a490_wrap_pyop2_kernel_prolong       4 0.0 7.4777e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15163f258850_wrap_pyop2_kernel_prolong       4 0.0 6.9882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15169fea3150_wrap_pyop2_kernel_prolong       4 0.0 7.4676e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516a4187c10_wrap_pyop2_kernel_prolong       4 0.0 5.7110e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fad848ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fad8ceb90_wrap_pyop2_kernel_prolong       4 0.0 6.6123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c78ced410_wrap_pyop2_kernel_prolong       4 0.0 7.4712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c78cd3250_wrap_pyop2_kernel_prolong       4 0.0 6.8991e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e5f21d910_wrap_pyop2_kernel_prolong       4 0.0 7.4836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e3d382610_wrap_pyop2_kernel_prolong       4 0.0 7.3356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cbc6072d0_wrap_pyop2_kernel_prolong       4 0.0 7.4727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cbc605310_wrap_pyop2_kernel_prolong       4 0.0 6.8738e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15316b1bfe90_wrap_pyop2_kernel_prolong       4 0.0 7.4774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15316be07210_wrap_pyop2_kernel_prolong       4 0.0 6.7835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469b9ff3b50_wrap_pyop2_kernel_prolong       4 0.0 7.4789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469b9ef5c90_wrap_pyop2_kernel_prolong       4 0.0 6.6768e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150907cbdc90_wrap_pyop2_kernel_prolong       4 0.0 7.4789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509073c8050_wrap_pyop2_kernel_prolong       4 0.0 7.2613e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc3e825bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc3e61ce50_wrap_pyop2_kernel_prolong       4 0.0 7.3113e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbe9230890_wrap_pyop2_kernel_prolong       4 0.0 7.4832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbe92354d0_wrap_pyop2_kernel_prolong       4 0.0 6.9455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14726fe9f110_wrap_pyop2_kernel_prolong       4 0.0 7.4672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14726fe9df90_wrap_pyop2_kernel_prolong       4 0.0 5.5320e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a67fd0990_wrap_pyop2_kernel_prolong       4 0.0 7.4597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a67eeed10_wrap_pyop2_kernel_prolong       4 0.0 6.3491e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ec97efed0_wrap_pyop2_kernel_prolong       4 0.0 7.4649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ec99d4d50_wrap_pyop2_kernel_prolong       4 0.0 7.8672e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8627b4750_wrap_pyop2_kernel_prolong       4 0.0 7.4650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f86270dd90_wrap_pyop2_kernel_prolong       4 0.0 6.8043e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c40cfe61d0_wrap_pyop2_kernel_prolong       4 0.0 7.4661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c40cfe6290_wrap_pyop2_kernel_prolong       4 0.0 6.4332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545cc660ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545cc68e310_wrap_pyop2_kernel_prolong       4 0.0 5.6401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d691635d0_wrap_pyop2_kernel_prolong       4 0.0 7.4623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d692a2d90_wrap_pyop2_kernel_prolong       4 0.0 5.4297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14817433bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481741e6f10_wrap_pyop2_kernel_prolong       4 0.0 5.3885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15272b52b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15272b3cd610_wrap_pyop2_kernel_prolong       4 0.0 6.1638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538bd63f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538bd63d450_wrap_pyop2_kernel_prolong       4 0.0 6.9893e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15232670f910_wrap_pyop2_kernel_prolong       4 0.0 7.4640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152326585c50_wrap_pyop2_kernel_prolong       4 0.0 6.5287e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a4be6f190_wrap_pyop2_kernel_prolong       4 0.0 7.4700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a4be4ed10_wrap_pyop2_kernel_prolong       4 0.0 7.3144e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2d0c5bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2d0b4fad0_wrap_pyop2_kernel_prolong       4 0.0 8.1561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15373e3f3490_wrap_pyop2_kernel_prolong       4 0.0 7.4597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15373e3faa10_wrap_pyop2_kernel_prolong       4 0.0 5.5317e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14783ef7e390_wrap_pyop2_kernel_prolong       4 0.0 7.4566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14783e6becd0_wrap_pyop2_kernel_prolong       4 0.0 6.1613e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4ffeb97d0_wrap_pyop2_kernel_prolong       4 0.0 7.4600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4ffeefd10_wrap_pyop2_kernel_prolong       4 0.0 5.4574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d293007d0_wrap_pyop2_kernel_prolong       4 0.0 7.4666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d28c123d0_wrap_pyop2_kernel_prolong       4 0.0 6.4238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ef8be2450_wrap_pyop2_kernel_prolong       4 0.0 7.4593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ef8be3e10_wrap_pyop2_kernel_prolong       4 0.0 5.7722e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b79d8aa710_wrap_pyop2_kernel_prolong       4 0.0 7.4701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b79d8aa950_wrap_pyop2_kernel_prolong       4 0.0 7.8398e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9f9f96a50_wrap_pyop2_kernel_prolong       4 0.0 7.4580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9f9e9d090_wrap_pyop2_kernel_prolong       4 0.0 6.4268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479ffbcbf90_wrap_pyop2_kernel_prolong       4 0.0 7.4648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479ffbc8190_wrap_pyop2_kernel_prolong       4 0.0 6.5893e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a64384b90_wrap_pyop2_kernel_prolong       4 0.0 7.4742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a5ff6d550_wrap_pyop2_kernel_prolong       4 0.0 7.8843e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5c5a5ff10_wrap_pyop2_kernel_prolong       4 0.0 7.4575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5c5a5d110_wrap_pyop2_kernel_prolong       4 0.0 5.9501e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d70429f50_wrap_pyop2_kernel_prolong       4 0.0 7.4624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d702e5b50_wrap_pyop2_kernel_prolong       4 0.0 6.9942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa2c467f50_wrap_pyop2_kernel_prolong       4 0.0 7.4660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa2c4c3ad0_wrap_pyop2_kernel_prolong       4 0.0 7.2428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab084fa8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab0826fa10_wrap_pyop2_kernel_prolong       4 0.0 6.4510e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0c0d601d0_wrap_pyop2_kernel_prolong       4 0.0 7.4641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0c0d3e050_wrap_pyop2_kernel_prolong       4 0.0 5.0784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492bd9d18d0_wrap_pyop2_kernel_prolong       4 0.0 7.4668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492bd9d20d0_wrap_pyop2_kernel_prolong       4 0.0 7.0125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d79a0bf90_wrap_pyop2_kernel_prolong       4 0.0 7.4658e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d79a08c10_wrap_pyop2_kernel_prolong       4 0.0 6.9906e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b7ea03a50_wrap_pyop2_kernel_prolong       4 0.0 7.4594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b7e9d9350_wrap_pyop2_kernel_prolong       4 0.0 6.4897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e6d2ae7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e6d275990_wrap_pyop2_kernel_prolong       4 0.0 6.5912e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c27025150_wrap_pyop2_kernel_prolong       4 0.0 7.4700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c2660d2d0_wrap_pyop2_kernel_prolong       4 0.0 7.0003e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2002ab190_wrap_pyop2_kernel_prolong       4 0.0 7.4556e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c200a8db50_wrap_pyop2_kernel_prolong       4 0.0 5.7522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a940bd28d0_wrap_pyop2_kernel_prolong       4 0.0 7.4566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a940bb3c10_wrap_pyop2_kernel_prolong       4 0.0 6.5480e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148596abcc50_wrap_pyop2_kernel_prolong       4 0.0 7.4653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148596d02110_wrap_pyop2_kernel_prolong       4 0.0 6.1597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519a645f590_wrap_pyop2_kernel_prolong       4 0.0 7.4672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519a5b33c10_wrap_pyop2_kernel_prolong       4 0.0 6.3649e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e38935650_wrap_pyop2_kernel_prolong       4 0.0 7.4662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e38937b90_wrap_pyop2_kernel_prolong       4 0.0 7.3318e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d7f429b10_wrap_pyop2_kernel_prolong       4 0.0 7.4560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d7f429f90_wrap_pyop2_kernel_prolong       4 0.0 6.2772e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455f2238f10_wrap_pyop2_kernel_prolong       4 0.0 7.4602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455f2202dd0_wrap_pyop2_kernel_prolong       4 0.0 6.3427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151abff57d50_wrap_pyop2_kernel_prolong       4 0.0 7.4551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151abfd49350_wrap_pyop2_kernel_prolong       4 0.0 5.4129e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6c01c3e50_wrap_pyop2_kernel_prolong       4 0.0 7.4652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6c01f01d0_wrap_pyop2_kernel_prolong       4 0.0 7.4557e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5358e0d50_wrap_pyop2_kernel_prolong       4 0.0 7.4561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c53575f810_wrap_pyop2_kernel_prolong       4 0.0 5.9135e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d25ca0a50_wrap_pyop2_kernel_prolong       4 0.0 7.4630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d25ca2a90_wrap_pyop2_kernel_prolong       4 0.0 7.2479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c58cf63f50_wrap_pyop2_kernel_prolong       4 0.0 7.4631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c58ce03350_wrap_pyop2_kernel_prolong       4 0.0 6.7884e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151aac4ea310_wrap_pyop2_kernel_prolong       4 0.0 7.4644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151aac4e9b90_wrap_pyop2_kernel_prolong       4 0.0 7.2319e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14803296f310_wrap_pyop2_kernel_prolong       4 0.0 7.4662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148032845510_wrap_pyop2_kernel_prolong       4 0.0 6.3496e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac5ff47590_wrap_pyop2_kernel_prolong       4 0.0 7.4614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac64291110_wrap_pyop2_kernel_prolong       4 0.0 5.3654e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478dc0e0e10_wrap_pyop2_kernel_prolong       4 0.0 7.4650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478d7e9ea10_wrap_pyop2_kernel_prolong       4 0.0 7.9574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb84a16ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb849e9110_wrap_pyop2_kernel_prolong       4 0.0 6.3941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bae8c96050_wrap_pyop2_kernel_prolong       4 0.0 7.4680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bae8bd1110_wrap_pyop2_kernel_prolong       4 0.0 8.1328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15134de976d0_wrap_pyop2_kernel_prolong       4 0.0 7.4715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15134dc71990_wrap_pyop2_kernel_prolong       4 0.0 7.4174e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14865a417dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14865a2f58d0_wrap_pyop2_kernel_prolong       4 0.0 7.6136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 1.4214e-02 4.7 0.00e+00 0.0 1.4e+05 4.0e+00 2.2e+02  0  0  3  0  3   0  0  4  0 10    -0
SFSetGraph           225 1.0 1.0020e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 2.0141e-02 2.0 0.00e+00 0.0 2.8e+05 2.3e+02 2.2e+02  0  0  5  0  3   0  0  7  0 10    -0
SFPack              7861 1.0 1.8620e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            7861 1.0 7.2236e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1123 1.0 1.5137e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              4491 1.0 1.0295e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             4492 1.0 6.5552e+00 1.4 3.88e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 59364
VecAYPX             4492 1.0 7.5771e+00 3.2 1.94e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 25679
VecScatterBegin     7861 1.0 2.0574e+00 3.3 0.00e+00 0.0 3.1e+06 9.3e+04 0.0e+00  0  0 55 43  0   0  0 81 100  0    -0
VecScatterEnd       7861 1.0 3.9914e+01 27.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             4492 1.0 2.0667e+02 1.2 1.38e+11 1.2 2.4e+06 1.2e+05 0.0e+00 21 12 42 43  0  43 41 63 100  0 66569
MatMultAdd          1123 1.0 6.2668e+00 1.3 2.91e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 46572
MatMultTranspose    1123 1.0 5.2098e+00 2.4 2.91e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 56021
MatSolve            5615 1.0 2.0236e+02 1.2 1.34e+11 1.2 1.4e+06 5.9e+02 1.1e+03 22 11 25  0 13  44 39 37  0 50 65971
MatLUFactorNum       209 1.0 3.3540e+01 1.2 5.71e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   7 16  0  0  0 166309
MatResidual         1123 1.0 5.3833e+01 1.2 3.49e+10 1.2 5.9e+05 1.2e+05 0.0e+00  6  3 11 11  0  11 10 16 25  0 64795
PCSetUpOnBlocks     2246 1.0 3.3565e+01 1.2 5.71e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   7 16  0  0  0 166186
PCApply             5615 1.0 2.0246e+02 1.2 1.34e+11 1.2 1.4e+06 5.9e+02 1.1e+03 22 11 25  0 13  44 39 37  0 50 65938
PCApplyOnBlocks     4492 1.0 1.9383e+02 1.2 1.34e+11 1.2 0.0e+00 0.0e+00 0.0e+00 21 11  0  0  0  43 39  0  0  0 68774
KSPSetUp               1 1.0 1.8853e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            3369 1.0 3.4470e+02 1.0 2.43e+11 1.2 3.2e+06 6.8e+04 2.2e+03 40 21 57 32 25  79 71 84 75 100 70217
MGSmooth Level 0    1123 1.0 1.5037e+01 3.6 8.08e+08 19.4 1.4e+06 5.9e+02 2.2e+03  1  0 25  0 25   2  0 37  0 100  1313
MGSmooth Level 1    2246 1.0 3.7258e+02 1.1 3.00e+11 1.2 1.8e+06 1.2e+05 0.0e+00 42 25 32 32  0  85 88 47 75  0 79880
MGResid Level 1     1123 1.0 5.3839e+01 1.2 3.49e+10 1.2 5.9e+05 1.2e+05 0.0e+00  6  3 11 11  0  11 10 16 25  0 64788
MGInterp Level 1    2246 1.0 1.0934e+01 1.5 5.82e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 53386
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
         PetscRandom    16             16
           Index Set  1515           1515
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   400            625
              Vector  1135           1134
              Matrix   132            132
      Preconditioner     6              6
       Krylov Solver    21             21
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   126            126
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   181            181
           Weak Form   181            181
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   450            450
   Star Forest Graph   225              0
              Vector   227            228
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 4.4068e-06
Average time for zero size MPI_Send(): 2.31173e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/vlumping_inexact_rich/h1.profile # (source: code)
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

