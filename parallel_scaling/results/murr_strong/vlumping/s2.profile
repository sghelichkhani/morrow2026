****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0209.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 18:22:10 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.447e+03     1.000   5.447e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.290e+12     1.107   6.013e+12  1.251e+15
Flops/sec:            1.155e+09     1.107   1.104e+09  2.296e+11
MPI Msg Count:        1.652e+05     3.674   1.052e+05  2.188e+07
MPI Msg Len (bytes):  3.062e+10     3.320   1.976e+05  4.324e+12
MPI Reductions:       1.320e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.7932e+03  32.9%  7.0477e+14  56.4%  5.455e+06  24.9%  3.335e+05       42.1%  9.494e+03  71.9%
 1:        MG Apply: 3.6539e+03  67.1%  5.4589e+14  43.6%  1.642e+07  75.1%  1.525e+05       57.9%  3.684e+03  27.9%

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

BuildTwoSided       1233 1.0 1.4833e+02 6.1 0.00e+00 0.0 2.0e+05 4.0e+00 1.2e+03  1  0  1  0  9   4  0  4  0 13    -0
BuildTwoSidedF      1136 1.0 1.4594e+02 5.9 0.00e+00 0.0 2.5e+05 2.6e+06 1.1e+03  1  0  1 15  9   4  0  5 37 12    -0
SFSetGraph           104 1.0 1.5579e-02 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 3.7441e+00 104.6 0.00e+00 0.0 1.4e+05 2.2e+03 9.7e+01  0  0  1  0  1   0  0  3  0  1    -0
SFBcastBegin         890 1.0 6.8289e-01 3.5 0.00e+00 0.0 9.2e+05 1.6e+05 0.0e+00  0  0  4  3  0   0  0 17  8  0    -0
SFBcastEnd           890 1.0 3.7280e+01 66.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        342 1.0 3.0364e-01 36.5 0.00e+00 0.0 3.7e+05 2.0e+05 0.0e+00  0  0  2  2  0   0  0  7  4  0    -0
SFReduceEnd          342 1.0 8.2197e+00 67.0 6.50e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1116
SFFetchOpBegin         6 1.0 3.9840e-05 5.3 0.00e+00 0.0 5.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 6.7418e-04 17.7 0.00e+00 0.0 5.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.3575e-03 2.0 0.00e+00 0.0 2.5e+03 2.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 8.7004e-03 1.3 0.00e+00 0.0 1.2e+05 1.6e+02 5.8e+01  0  0  1  0  0   0  0  2  0  1    -0
SFSectionSF           51 1.0 5.0929e-03 2.5 0.00e+00 0.0 5.8e+04 7.5e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
SFRemoteOff            2 1.0 8.4990e-05 2.3 0.00e+00 0.0 2.3e+03 2.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4368 1.0 3.1444e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4374 1.0 5.2354e-01 7.0 6.50e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 17525
VecDot               226 1.0 2.6727e+00 3.3 7.55e+08 1.1 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  2   0  0  0  0  2 56577
VecMDot             2904 1.0 1.4293e+02 2.7 6.90e+10 1.1 0.0e+00 0.0e+00 2.9e+03  2  1  0  0 22   5  2  0  0 31 96688
VecNorm             3918 1.0 3.5242e+01 3.2 1.31e+10 1.1 0.0e+00 0.0e+00 3.9e+03  0  0  0  0 30   1  0  0  0 41 74385
VecScale            3148 1.0 1.5216e+01 1.1 5.26e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 69212
VecCopy             1601 1.0 1.0045e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet               471 1.0 1.8525e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              244 1.0 1.9870e+00 1.1 8.15e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 82164
VecWAXPY             226 1.0 1.9818e+00 1.2 3.78e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 38150
VecMAXPY            3148 1.0 1.0535e+02 1.1 7.87e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   6  2  0  0  0 149615
VecScatterBegin     3130 1.0 2.5504e+00 3.2 0.00e+00 0.0 3.5e+06 2.2e+05 0.0e+00  0  0 16 18  0   0  0 64 42  0    -0
VecScatterEnd       3130 1.0 7.6109e+01 48.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          17 1.0 2.7335e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       452 1.0 1.4826e+00 1.7 1.51e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 203982
VecReduceComm        226 1.0 8.1868e-01 74.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize         368 1.0 6.5141e+00 2.2 1.84e+09 1.1 0.0e+00 0.0e+00 3.7e+02  0  0  0  0  3   0  0  0  0  4 56697
MatMult             3130 1.0 5.1974e+02 1.1 3.71e+11 1.1 3.5e+06 2.2e+05 0.0e+00  9  6 16 18  0  27 11 64 42  0 142728
MatSolve             368 1.0 6.2103e+01 1.2 4.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  1  0  0  0 138271
MatLUFactorSym         1 1.0 2.0371e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       243 1.0 7.1222e+01 1.0 1.83e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  1  0  0  0 51142
MatILUFactorSym        1 1.0 7.7457e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1637 1.0 1.4596e+02 4.2 0.00e+00 0.0 2.5e+05 2.6e+06 1.1e+03  2  0  1 15  9   5  0  5 37 12    -0
MatAssemblyEnd      1637 1.0 3.0732e+01 6.9 4.69e+08 0.0 4.5e+03 2.7e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  1345
MatGetRowIJ            1 1.0 8.2460e-06 69.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 3.3822e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       452 1.0 3.2858e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 6.1993e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 5.0245e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        452 1.0 1.6840e+01 1.2 2.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 322833
MatPtAPSymbolic        1 1.0 8.1478e-01 1.0 0.00e+00 0.0 3.4e+03 3.6e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       226 1.0 1.0346e+02 1.0 1.09e+11 1.1 2.5e+05 6.5e+05 2.3e+02  2  2  1  4  2   6  3  5  9  2 210065
MatGetLocalMat       226 1.0 7.1292e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        226 1.0 1.6916e+00 2.1 0.00e+00 0.0 2.5e+05 6.5e+05 0.0e+00  0  0  1  4  0   0  0  5  9  0    -0
MatSetPreallCOO       32 1.0 6.1811e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.6758e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              226 1.0 3.4279e+02 1.0 2.39e+11 1.1 6.5e+05 3.9e+05 1.5e+03  6  4  3  6 11  19  7 12 14 15 139702
PCApply             2554 1.0 3.7009e+03 1.0 2.73e+12 1.1 1.6e+07 1.5e+05 3.7e+03 67 44 75 58 28 Multiple stages 147501
PCApplyOnBlocks      368 1.0 6.2107e+01 1.2 4.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  1  0  0  0 138262
KSPSetUp             226 1.0 1.1919e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 4.2472e+03 1.0 3.17e+12 1.1 1.9e+07 1.6e+05 9.0e+03 78 51 88 72 68 Multiple stages 149241
KSPGMRESOrthog      2904 1.0 2.3019e+02 1.6 1.38e+11 1.1 0.0e+00 0.0e+00 2.9e+03  3  2  0  0 22  10  4  0  0 31 120068
DMRefine               2 1.0 2.2351e-01 1.0 2.09e+03 1.0 1.5e+04 6.3e+01 6.3e+01  0  0  0  0  0   0  0  0  0  1     2
DMPlexCreateGmsh       1 1.0 3.4812e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.1290e+00 117.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 1.2110e-01 1.0 0.00e+00 0.0 3.7e+04 1.3e+02 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
Mesh Migration         4 1.0 2.3463e-02 1.1 0.00e+00 0.0 1.4e+05 1.5e+02 2.4e+02  0  0  1  0  2   0  0  3  0  2    -0
DMPlexPartSelf         1 1.0 4.7945e-03 1823.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.6310e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 5.0025e-03 1.1 0.00e+00 0.0 7.2e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.7694e-03 1.5 0.00e+00 0.0 3.6e+03 4.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 3.0559e-03 1.8 0.00e+00 0.0 3.8e+03 5.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.6846e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.2986e-01 1.0 0.00e+00 0.0 8.6e+03 6.3e+02 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 3.1783e-03 1.1 0.00e+00 0.0 2.2e+04 2.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.0693e-02 1.0 0.00e+00 0.0 7.0e+04 1.5e+02 1.5e+02  0  0  0  0  1   0  0  1  0  2    -0
DMPlexDistOvrlp        3 1.0 1.7605e-02 1.0 0.00e+00 0.0 1.7e+05 1.3e+02 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexDistField        7 1.0 4.3506e-03 1.2 0.00e+00 0.0 3.1e+04 1.1e+02 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 1.4334e-02 8.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.2095e-03 7.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.3470e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 4.2263e-03 1.4 0.00e+00 0.0 8.5e+03 5.2e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 2.9952e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 6.7716e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 4.0380e-04 1.9 0.00e+00 0.0 6.8e+03 4.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 2.2042e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 1.2558e-03 1.5 0.00e+00 0.0 1.7e+03 6.4e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 5.3495e+03 1.0 6.29e+12 1.1 2.1e+07 2.0e+05 1.2e+04 98 100 98 100 94 Multiple stages 233777
SNESSetUp              1 1.0 6.6316e-05 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 9.6634e+01 1.2 1.11e+12 1.1 7.6e+05 2.2e+05 0.0e+00  2 17  3  4  0   5 31 14  9  0 2261777
SNESJacobianEval     226 1.0 6.1946e+02 1.0 1.75e+12 1.1 5.1e+05 1.4e+06 9.0e+02 11 28  2 17  7  35 49  9 39 10 555398
SNESLineSearch       226 1.0 1.0857e+02 1.0 8.65e+11 1.1 7.6e+05 2.2e+05 9.0e+02  2 14  3  4  7   6 24 14  9 10 1568563
DualSpaceSetUp         8 1.0 5.2870e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.8895e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 5.4441e+03 1.0 6.29e+12 1.1 2.2e+07 2.0e+05 1.3e+04 100 100 100 100 100 Multiple stages 229728
firedrake.__init__       1 1.0 1.5987e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 4.3325e+00 18.2 0.00e+00 0.0 3.3e+05 1.5e+02 4.4e+02  0  0  2  0  3   0  0  6  0  5    -0
firedrake.mesh._from_gmsh       1 1.0 4.1299e+00 117.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0524e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.3510e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 8.8686e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.6477e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.5309e-02 1.1 0.00e+00 0.0 6.8e+03 1.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.4212e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.3592e-02 1.1 0.00e+00 0.0 6.8e+03 1.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 3.1158e-02 1.1 0.00e+00 0.0 6.8e+03 1.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 3.1022e-02 1.1 0.00e+00 0.0 6.8e+03 1.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.2855e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 7.1630e-03 1.1 0.00e+00 0.0 6.8e+03 1.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.6101e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3372e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 8.1370e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.5447e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.5156e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9082e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3985e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.5376e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 1.6538e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2429 1.0 6.4040e+02 1.2 2.86e+12 1.1 7.0e+05 2.1e+05 3.2e+01 11 45  3  3  0  33 80 13  8  0 878563
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.4932e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4858 1.0 2.7109e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0664e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.6877e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.2398e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.6186e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.6185e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 1.0432e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 1.0279e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2429 1.0 1.0626e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2429 1.0 9.1324e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.0780e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 1.2441e+01 1.0 5.64e+07 1.1 1.8e+04 2.5e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   908
firedrake.interpolation.interpolate      13 1.0 5.1616e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 7.3417e+00 1.0 3.49e+08 1.1 2.8e+04 7.8e+04 3.7e+01  0  0  0  0  0   0  0  1  0  0  9512
firedrake.formmanipulation.split_form      14 1.0 4.5287e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.5066e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5307e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0018e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     623 1.0 5.0619e+00 12.4 0.00e+00 0.0 7.1e+05 2.1e+05 4.0e+00  0  0  3  3  0   0  0 13  8  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.9048e+00 1.0 3.49e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11827
firedrake.halo.Halo.global_to_local_end     623 1.0 3.4448e+01 147.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 1.7435e+00 27.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15203e27e190_wrap_pyop2_kernel_prolong       4 0.0 8.0447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15203e25ba50_wrap_pyop2_kernel_prolong       4 0.0 2.1971e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.5104e+00 1.0 2.82e+08 1.1 1.7e+04 1.1e+05 1.1e+01  0  0  0  0  0   0  0  0  0  0 12535
firedrake.function.Function.assign     314 1.0 9.2851e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 9.2001e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2037e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.9412e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.2294e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 1.4855e-01 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9978e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 1.4608e-01 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 2.1305e+01 1.0 0.00e+00 0.0 6.7e+03 8.9e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 8.0182e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.4826e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1275e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1275e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 1.6505e+01 1.0 0.00e+00 0.0 5.6e+03 5.2e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 2.3704e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 5.3504e+03 1.0 6.29e+12 1.1 2.1e+07 2.0e+05 1.3e+04 98 100 98 100 95 Multiple stages 233737
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2624e-01 1101.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 9.3960e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2619e-01 1329.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2616e-01 1510.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 2.9226e+01 1.5 2.88e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  8  0  0  0 1972511
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 1.1063e+00 1.0 3.72e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6725
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.5033e+00 1.1 1.18e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23327
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 1.7260e+01 1.2 2.75e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  8  0  0  0 3185435
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 3.7740e+01 1.2 5.48e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   2 15  0  0  0 2805581
firedrake.halo.Halo.local_to_global_begin     301 1.0 3.2763e-01 18.1 0.00e+00 0.0 3.4e+05 2.2e+05 0.0e+00  0  0  2  2  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 8.2272e+00 63.9 6.50e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1115
Parloop_Cells_wrap_form00_cell_integral     452 1.0 1.2232e+02 1.5 4.02e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   5 11  0  0  0 658202
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 2.9018e+00 2.2 9.06e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9240
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 1.3670e+02 1.1 5.30e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   7 15  0  0  0 776240
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 2.9445e+02 1.2 8.14e+11 1.2 0.0e+00 0.0e+00 0.0e+00  5 13  0  0  0  15 22  0  0  0 534408
firedrake.dmhooks.get_function_space       1 1.0 9.5880e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 6.5825e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      226 1.0 6.1414e+01 1.0 2.49e+08 3.3 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   3  0  0  0  0   451
MGSetup Level 1      226 1.0 5.5990e+00 1.0 4.00e+09 1.1 1.1e+04 2.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 142580
firedrake.constant.Constant.assign      75 1.0 3.9825e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d359305a90_wrap_pyop2_kernel_prolong       4 0.0 7.9407e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d359287010_wrap_pyop2_kernel_prolong       4 0.0 2.1382e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd119600d0_wrap_pyop2_kernel_prolong       4 0.0 8.0613e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd1100d710_wrap_pyop2_kernel_prolong       4 0.0 2.3544e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f79ef13d50_wrap_pyop2_kernel_prolong       4 0.0 8.0278e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f79f061c50_wrap_pyop2_kernel_prolong       4 0.0 2.2274e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c539252150_wrap_pyop2_kernel_prolong       4 0.0 8.0541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c539493410_wrap_pyop2_kernel_prolong       4 0.0 2.4361e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e4bc2fd0_wrap_pyop2_kernel_prolong       4 0.0 7.9813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e4bc3e50_wrap_pyop2_kernel_prolong       4 0.0 2.2950e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2444fe390_wrap_pyop2_kernel_prolong       4 0.0 8.0295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2444ad910_wrap_pyop2_kernel_prolong       4 0.0 2.1202e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546a2532510_wrap_pyop2_kernel_prolong       4 0.0 8.0736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546a1a5dc50_wrap_pyop2_kernel_prolong       4 0.0 2.1251e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0bbfeac50_wrap_pyop2_kernel_prolong       4 0.0 8.0034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0bb549850_wrap_pyop2_kernel_prolong       4 0.0 2.5762e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491e7e34c90_wrap_pyop2_kernel_prolong       4 0.0 7.9727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491ec155650_wrap_pyop2_kernel_prolong       4 0.0 2.1849e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fce8e1210_wrap_pyop2_kernel_prolong       4 0.0 8.0756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fce02d9d0_wrap_pyop2_kernel_prolong       4 0.0 2.3268e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3c1f77890_wrap_pyop2_kernel_prolong       4 0.0 8.0639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3c1d32a10_wrap_pyop2_kernel_prolong       4 0.0 2.5221e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff2f69a250_wrap_pyop2_kernel_prolong       4 0.0 8.0864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff2f6b5f90_wrap_pyop2_kernel_prolong       4 0.0 2.4470e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c9e56210_wrap_pyop2_kernel_prolong       4 0.0 8.0086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c9f01f90_wrap_pyop2_kernel_prolong       4 0.0 2.1910e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149045294090_wrap_pyop2_kernel_prolong       4 0.0 7.9775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490454b6110_wrap_pyop2_kernel_prolong       4 0.0 2.1784e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3de252450_wrap_pyop2_kernel_prolong       4 0.0 7.9718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3de251f90_wrap_pyop2_kernel_prolong       4 0.0 2.5197e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c4dc80050_wrap_pyop2_kernel_prolong       4 0.0 7.9547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c4dcae950_wrap_pyop2_kernel_prolong       4 0.0 2.2071e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed25d4c810_wrap_pyop2_kernel_prolong       4 0.0 7.9840e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed25d4f290_wrap_pyop2_kernel_prolong       4 0.0 2.2335e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145532ed78d0_wrap_pyop2_kernel_prolong       4 0.0 7.9653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145532ed7390_wrap_pyop2_kernel_prolong       4 0.0 2.6015e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec0072f7d0_wrap_pyop2_kernel_prolong       4 0.0 8.0016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec006f8150_wrap_pyop2_kernel_prolong       4 0.0 2.2659e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d59069b5d0_wrap_pyop2_kernel_prolong       4 0.0 8.0829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d590661bd0_wrap_pyop2_kernel_prolong       4 0.0 2.4780e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf48ff90d0_wrap_pyop2_kernel_prolong       4 0.0 8.0040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf48ffa550_wrap_pyop2_kernel_prolong       4 0.0 2.7769e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b849b4a450_wrap_pyop2_kernel_prolong       4 0.0 7.9508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b849bb5cd0_wrap_pyop2_kernel_prolong       4 0.0 2.4012e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146da94530d0_wrap_pyop2_kernel_prolong       4 0.0 8.0012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146da9453c10_wrap_pyop2_kernel_prolong       4 0.0 2.5281e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1bc7b9610_wrap_pyop2_kernel_prolong       4 0.0 8.0430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1bc726250_wrap_pyop2_kernel_prolong       4 0.0 2.2656e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcceae8590_wrap_pyop2_kernel_prolong       4 0.0 7.9904e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcceae9dd0_wrap_pyop2_kernel_prolong       4 0.0 2.5751e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbf7746a90_wrap_pyop2_kernel_prolong       4 0.0 7.9741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbf779cbd0_wrap_pyop2_kernel_prolong       4 0.0 2.2892e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cc3d87590_wrap_pyop2_kernel_prolong       4 0.0 7.9581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cc3d86850_wrap_pyop2_kernel_prolong       4 0.0 2.2587e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d0c86850_wrap_pyop2_kernel_prolong       4 0.0 7.9588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d0c86790_wrap_pyop2_kernel_prolong       4 0.0 2.4188e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbec30c490_wrap_pyop2_kernel_prolong       4 0.0 7.9470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbec2e5d50_wrap_pyop2_kernel_prolong       4 0.0 2.2736e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513f6d2cc50_wrap_pyop2_kernel_prolong       4 0.0 8.0400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513f6d2e710_wrap_pyop2_kernel_prolong       4 0.0 2.3256e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6652de6d0_wrap_pyop2_kernel_prolong       4 0.0 8.0057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6652de050_wrap_pyop2_kernel_prolong       4 0.0 2.5559e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dbb960610_wrap_pyop2_kernel_prolong       4 0.0 8.0889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dbb858d50_wrap_pyop2_kernel_prolong       4 0.0 2.3662e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150454ec7910_wrap_pyop2_kernel_prolong       4 0.0 7.9561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150454c96750_wrap_pyop2_kernel_prolong       4 0.0 2.2605e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a494fd4d0_wrap_pyop2_kernel_prolong       4 0.0 7.9637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a48231dd0_wrap_pyop2_kernel_prolong       4 0.0 2.5099e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d9f754d90_wrap_pyop2_kernel_prolong       4 0.0 7.9644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d9f549f10_wrap_pyop2_kernel_prolong       4 0.0 2.5487e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154071e82010_wrap_pyop2_kernel_prolong       4 0.0 7.9608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154071e82c10_wrap_pyop2_kernel_prolong       4 0.0 2.4261e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bcf256f90_wrap_pyop2_kernel_prolong       4 0.0 7.9623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bcfedca90_wrap_pyop2_kernel_prolong       4 0.0 2.4654e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ad991a850_wrap_pyop2_kernel_prolong       4 0.0 7.9990e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ad991a910_wrap_pyop2_kernel_prolong       4 0.0 2.5958e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff2dd47a90_wrap_pyop2_kernel_prolong       4 0.0 7.9452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff2d3c22d0_wrap_pyop2_kernel_prolong       4 0.0 2.1142e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adfbd4d850_wrap_pyop2_kernel_prolong       4 0.0 7.9549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adfbf65f90_wrap_pyop2_kernel_prolong       4 0.0 2.2999e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148846edf550_wrap_pyop2_kernel_prolong       4 0.0 8.0646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148847137150_wrap_pyop2_kernel_prolong       4 0.0 2.4569e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edf66f8d50_wrap_pyop2_kernel_prolong       4 0.0 8.0399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edf5d47f50_wrap_pyop2_kernel_prolong       4 0.0 2.3905e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147257967ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147257964650_wrap_pyop2_kernel_prolong       4 0.0 2.3280e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba6644ac10_wrap_pyop2_kernel_prolong       4 0.0 8.0762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba66411dd0_wrap_pyop2_kernel_prolong       4 0.0 2.4956e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4950f6610_wrap_pyop2_kernel_prolong       4 0.0 7.9602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4950f7b90_wrap_pyop2_kernel_prolong       4 0.0 2.3897e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a62b223a10_wrap_pyop2_kernel_prolong       4 0.0 7.9560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a62b1fda10_wrap_pyop2_kernel_prolong       4 0.0 2.3168e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe0583a610_wrap_pyop2_kernel_prolong       4 0.0 8.1100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe05839e50_wrap_pyop2_kernel_prolong       4 0.0 2.7017e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146abceb74d0_wrap_pyop2_kernel_prolong       4 0.0 8.0839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146abcd7a810_wrap_pyop2_kernel_prolong       4 0.0 2.3297e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15361f646710_wrap_pyop2_kernel_prolong       4 0.0 7.9614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15361f647a10_wrap_pyop2_kernel_prolong       4 0.0 2.5476e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a90101610_wrap_pyop2_kernel_prolong       4 0.0 8.0352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a900b6110_wrap_pyop2_kernel_prolong       4 0.0 2.3926e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e7639ce90_wrap_pyop2_kernel_prolong       4 0.0 8.0876e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e76387bd0_wrap_pyop2_kernel_prolong       4 0.0 2.6505e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149255492f10_wrap_pyop2_kernel_prolong       4 0.0 7.9456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149255491e90_wrap_pyop2_kernel_prolong       4 0.0 2.1218e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b8bc6a10_wrap_pyop2_kernel_prolong       4 0.0 7.9539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b8bc5390_wrap_pyop2_kernel_prolong       4 0.0 2.4097e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fd8515f90_wrap_pyop2_kernel_prolong       4 0.0 7.9611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fd8514e10_wrap_pyop2_kernel_prolong       4 0.0 2.4597e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a0b256e50_wrap_pyop2_kernel_prolong       4 0.0 7.9539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a0a75a150_wrap_pyop2_kernel_prolong       4 0.0 2.3353e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c51d85ad50_wrap_pyop2_kernel_prolong       4 0.0 8.0149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c51d88bf90_wrap_pyop2_kernel_prolong       4 0.0 2.2285e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe97023710_wrap_pyop2_kernel_prolong       4 0.0 7.9590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe96ff6210_wrap_pyop2_kernel_prolong       4 0.0 2.4689e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f817711d0_wrap_pyop2_kernel_prolong       4 0.0 7.9492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f81743dd0_wrap_pyop2_kernel_prolong       4 0.0 2.2521e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487996250d0_wrap_pyop2_kernel_prolong       4 0.0 8.0049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14879967fa50_wrap_pyop2_kernel_prolong       4 0.0 2.4316e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1f262ff50_wrap_pyop2_kernel_prolong       4 0.0 7.9489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1f26295d0_wrap_pyop2_kernel_prolong       4 0.0 2.2380e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474f9235f90_wrap_pyop2_kernel_prolong       4 0.0 8.0182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474f92356d0_wrap_pyop2_kernel_prolong       4 0.0 2.2572e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14648184b190_wrap_pyop2_kernel_prolong       4 0.0 7.9560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146481885910_wrap_pyop2_kernel_prolong       4 0.0 2.3240e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4d28e5390_wrap_pyop2_kernel_prolong       4 0.0 8.0181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4d2af9b90_wrap_pyop2_kernel_prolong       4 0.0 2.4356e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152754462310_wrap_pyop2_kernel_prolong       4 0.0 7.9832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527543098d0_wrap_pyop2_kernel_prolong       4 0.0 2.6532e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b21adefe50_wrap_pyop2_kernel_prolong       4 0.0 7.9522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b21adbe090_wrap_pyop2_kernel_prolong       4 0.0 2.3187e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497740feb90_wrap_pyop2_kernel_prolong       4 0.0 7.9476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497740dc090_wrap_pyop2_kernel_prolong       4 0.0 2.1914e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153269d79690_wrap_pyop2_kernel_prolong       4 0.0 8.0067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153269e82990_wrap_pyop2_kernel_prolong       4 0.0 2.3261e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15136cef4750_wrap_pyop2_kernel_prolong       4 0.0 7.9873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15136cdb1750_wrap_pyop2_kernel_prolong       4 0.0 2.4395e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f15fb89650_wrap_pyop2_kernel_prolong       4 0.0 7.9635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f15f221410_wrap_pyop2_kernel_prolong       4 0.0 2.2333e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472fc212510_wrap_pyop2_kernel_prolong       4 0.0 8.0366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472fc212c50_wrap_pyop2_kernel_prolong       4 0.0 2.2402e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145831df7090_wrap_pyop2_kernel_prolong       4 0.0 7.9547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14583202af10_wrap_pyop2_kernel_prolong       4 0.0 2.2145e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15146d4a8dd0_wrap_pyop2_kernel_prolong       4 0.0 7.9720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15146d48c310_wrap_pyop2_kernel_prolong       4 0.0 2.3699e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a9efa110_wrap_pyop2_kernel_prolong       4 0.0 8.0220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a9ef9e10_wrap_pyop2_kernel_prolong       4 0.0 2.5943e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154384612210_wrap_pyop2_kernel_prolong       4 0.0 8.0254e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543845f21d0_wrap_pyop2_kernel_prolong       4 0.0 2.4186e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508e878e750_wrap_pyop2_kernel_prolong       4 0.0 8.0361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508e89c5b50_wrap_pyop2_kernel_prolong       4 0.0 2.4998e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14794d6eec10_wrap_pyop2_kernel_prolong       4 0.0 8.0426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14794d91dbd0_wrap_pyop2_kernel_prolong       4 0.0 2.5040e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e75549890_wrap_pyop2_kernel_prolong       4 0.0 7.9620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e75548350_wrap_pyop2_kernel_prolong       4 0.0 2.5388e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e5a8c9ad0_wrap_pyop2_kernel_prolong       4 0.0 8.0365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e5a8c9310_wrap_pyop2_kernel_prolong       4 0.0 2.2116e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487e0a76090_wrap_pyop2_kernel_prolong       4 0.0 7.9580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487e0a75950_wrap_pyop2_kernel_prolong       4 0.0 2.2790e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535b6f93ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535b6f93210_wrap_pyop2_kernel_prolong       4 0.0 2.4544e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fdda9be90_wrap_pyop2_kernel_prolong       4 0.0 8.0127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fdda98d10_wrap_pyop2_kernel_prolong       4 0.0 2.2683e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acc4a56090_wrap_pyop2_kernel_prolong       4 0.0 8.0215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acc4a55690_wrap_pyop2_kernel_prolong       4 0.0 2.4778e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532a9b0f790_wrap_pyop2_kernel_prolong       4 0.0 7.9992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532a9b1cf10_wrap_pyop2_kernel_prolong       4 0.0 2.4399e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467ad043850_wrap_pyop2_kernel_prolong       4 0.0 7.9534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467ad0411d0_wrap_pyop2_kernel_prolong       4 0.0 2.3705e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0f6488310_wrap_pyop2_kernel_prolong       4 0.0 7.9488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0f5b329d0_wrap_pyop2_kernel_prolong       4 0.0 2.2810e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149836936390_wrap_pyop2_kernel_prolong       4 0.0 7.9529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149836935ad0_wrap_pyop2_kernel_prolong       4 0.0 2.2549e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462f8201e90_wrap_pyop2_kernel_prolong       4 0.0 7.9562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462f81a9d90_wrap_pyop2_kernel_prolong       4 0.0 2.3296e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc801285d0_wrap_pyop2_kernel_prolong       4 0.0 7.9625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc7bf551d0_wrap_pyop2_kernel_prolong       4 0.0 2.5229e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148368346e90_wrap_pyop2_kernel_prolong       4 0.0 7.9639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483685d2bd0_wrap_pyop2_kernel_prolong       4 0.0 2.6363e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154daf962250_wrap_pyop2_kernel_prolong       4 0.0 7.9667e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154daf9ab290_wrap_pyop2_kernel_prolong       4 0.0 2.5536e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c84a1177d0_wrap_pyop2_kernel_prolong       4 0.0 8.0097e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c84a184bd0_wrap_pyop2_kernel_prolong       4 0.0 2.2577e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d27a56310_wrap_pyop2_kernel_prolong       4 0.0 8.0226e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d27a55b10_wrap_pyop2_kernel_prolong       4 0.0 2.1986e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15312be91ed0_wrap_pyop2_kernel_prolong       4 0.0 8.0322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15312be92050_wrap_pyop2_kernel_prolong       4 0.0 2.4844e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f51be8ed0_wrap_pyop2_kernel_prolong       4 0.0 8.0289e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f51bea450_wrap_pyop2_kernel_prolong       4 0.0 2.3628e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aabf7e2190_wrap_pyop2_kernel_prolong       4 0.0 8.0064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aabf7e17d0_wrap_pyop2_kernel_prolong       4 0.0 2.5317e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15473f234bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15473f279150_wrap_pyop2_kernel_prolong       4 0.0 2.5972e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0dcbeb5d0_wrap_pyop2_kernel_prolong       4 0.0 7.9746e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0dc9977d0_wrap_pyop2_kernel_prolong       4 0.0 2.3365e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146db8f563d0_wrap_pyop2_kernel_prolong       4 0.0 7.9692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146db8f56350_wrap_pyop2_kernel_prolong       4 0.0 2.2130e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4e259ad90_wrap_pyop2_kernel_prolong       4 0.0 7.9731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4e2598d90_wrap_pyop2_kernel_prolong       4 0.0 2.6467e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15296c269590_wrap_pyop2_kernel_prolong       4 0.0 7.9481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15296c103050_wrap_pyop2_kernel_prolong       4 0.0 2.1576e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b5c1c6810_wrap_pyop2_kernel_prolong       4 0.0 7.9794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b5c179550_wrap_pyop2_kernel_prolong       4 0.0 2.4125e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bbab78790_wrap_pyop2_kernel_prolong       4 0.0 8.0148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bbacb0090_wrap_pyop2_kernel_prolong       4 0.0 2.5607e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153756aff790_wrap_pyop2_kernel_prolong       4 0.0 7.9709e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153756ad9590_wrap_pyop2_kernel_prolong       4 0.0 2.7667e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f5b7f2950_wrap_pyop2_kernel_prolong       4 0.0 8.2545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f5b7d3750_wrap_pyop2_kernel_prolong       4 0.0 2.3961e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e87b4dbed0_wrap_pyop2_kernel_prolong       4 0.0 8.2452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e87ab53cd0_wrap_pyop2_kernel_prolong       4 0.0 2.3098e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15018dd7a210_wrap_pyop2_kernel_prolong       4 0.0 8.2397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15018dd790d0_wrap_pyop2_kernel_prolong       4 0.0 2.4653e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507ebe62490_wrap_pyop2_kernel_prolong       4 0.0 8.2471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507f0132bd0_wrap_pyop2_kernel_prolong       4 0.0 2.2404e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467a3519dd0_wrap_pyop2_kernel_prolong       4 0.0 8.2392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467a3519690_wrap_pyop2_kernel_prolong       4 0.0 2.0922e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b8f859690_wrap_pyop2_kernel_prolong       4 0.0 8.2529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b8f813e10_wrap_pyop2_kernel_prolong       4 0.0 2.4458e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddf935c510_wrap_pyop2_kernel_prolong       4 0.0 8.2421e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddf935fdd0_wrap_pyop2_kernel_prolong       4 0.0 2.1889e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb3f34dd0_wrap_pyop2_kernel_prolong       4 0.0 8.2396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb3d14d90_wrap_pyop2_kernel_prolong       4 0.0 2.0911e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501e6617090_wrap_pyop2_kernel_prolong       4 0.0 8.2542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501e6615e90_wrap_pyop2_kernel_prolong       4 0.0 2.4512e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ddd814c10_wrap_pyop2_kernel_prolong       4 0.0 8.2466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ddd815990_wrap_pyop2_kernel_prolong       4 0.0 2.2886e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aec886410_wrap_pyop2_kernel_prolong       4 0.0 8.2579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aec887b90_wrap_pyop2_kernel_prolong       4 0.0 2.5689e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca5a2ca9d0_wrap_pyop2_kernel_prolong       4 0.0 8.2545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca5a3e1f10_wrap_pyop2_kernel_prolong       4 0.0 2.4145e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15229afb6cd0_wrap_pyop2_kernel_prolong       4 0.0 8.2544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15229af8be10_wrap_pyop2_kernel_prolong       4 0.0 2.4418e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513173c2850_wrap_pyop2_kernel_prolong       4 0.0 8.2396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151316ad4690_wrap_pyop2_kernel_prolong       4 0.0 2.3153e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e427fbed90_wrap_pyop2_kernel_prolong       4 0.0 8.2472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e427d36350_wrap_pyop2_kernel_prolong       4 0.0 2.3182e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be62d0c750_wrap_pyop2_kernel_prolong       4 0.0 8.2566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be62d0db50_wrap_pyop2_kernel_prolong       4 0.0 2.4499e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d57899ed0_wrap_pyop2_kernel_prolong       4 0.0 8.2394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d57898250_wrap_pyop2_kernel_prolong       4 0.0 2.3450e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15356ab188d0_wrap_pyop2_kernel_prolong       4 0.0 8.2228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15356aaf1810_wrap_pyop2_kernel_prolong       4 0.0 2.3011e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae3a2b2bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae3a2e0fd0_wrap_pyop2_kernel_prolong       4 0.0 2.4962e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15309f1288d0_wrap_pyop2_kernel_prolong       4 0.0 8.2269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15309f12a210_wrap_pyop2_kernel_prolong       4 0.0 2.1771e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c48bb73750_wrap_pyop2_kernel_prolong       4 0.0 8.2475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c48bb71f50_wrap_pyop2_kernel_prolong       4 0.0 2.2857e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d5143450_wrap_pyop2_kernel_prolong       4 0.0 8.2452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d4936290_wrap_pyop2_kernel_prolong       4 0.0 2.3417e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9c4a19a90_wrap_pyop2_kernel_prolong       4 0.0 8.2501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9bfe7dc10_wrap_pyop2_kernel_prolong       4 0.0 2.3637e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549446d7d90_wrap_pyop2_kernel_prolong       4 0.0 8.2555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15494455cb10_wrap_pyop2_kernel_prolong       4 0.0 2.4936e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf55955bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf55955650_wrap_pyop2_kernel_prolong       4 0.0 2.3883e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521d8697d50_wrap_pyop2_kernel_prolong       4 0.0 8.2675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521d8697810_wrap_pyop2_kernel_prolong       4 0.0 2.6609e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0348d690_wrap_pyop2_kernel_prolong       4 0.0 8.2432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa03491450_wrap_pyop2_kernel_prolong       4 0.0 2.1674e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e827801f50_wrap_pyop2_kernel_prolong       4 0.0 8.2443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8278038d0_wrap_pyop2_kernel_prolong       4 0.0 2.4998e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539ac9ed710_wrap_pyop2_kernel_prolong       4 0.0 8.2516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539ac9a1fd0_wrap_pyop2_kernel_prolong       4 0.0 2.4611e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145750a23050_wrap_pyop2_kernel_prolong       4 0.0 8.2510e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457509f2150_wrap_pyop2_kernel_prolong       4 0.0 2.3668e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f2dfb5d90_wrap_pyop2_kernel_prolong       4 0.0 8.2498e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f2dfb4050_wrap_pyop2_kernel_prolong       4 0.0 2.4631e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddfda01750_wrap_pyop2_kernel_prolong       4 0.0 8.2566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddfd9e5ed0_wrap_pyop2_kernel_prolong       4 0.0 2.4753e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14655ba5fa90_wrap_pyop2_kernel_prolong       4 0.0 8.2450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14655ba5d890_wrap_pyop2_kernel_prolong       4 0.0 2.5775e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4a7d72210_wrap_pyop2_kernel_prolong       4 0.0 8.2467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4a7d71a10_wrap_pyop2_kernel_prolong       4 0.0 2.4313e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523452fd810_wrap_pyop2_kernel_prolong       4 0.0 8.2653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523452b3150_wrap_pyop2_kernel_prolong       4 0.0 2.6606e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489a9f06250_wrap_pyop2_kernel_prolong       4 0.0 8.2492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489a950c9d0_wrap_pyop2_kernel_prolong       4 0.0 2.3649e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475cbf11b50_wrap_pyop2_kernel_prolong       4 0.0 8.2312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475c98bd7d0_wrap_pyop2_kernel_prolong       4 0.0 2.1739e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487a9de60d0_wrap_pyop2_kernel_prolong       4 0.0 8.2554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487a9de5b50_wrap_pyop2_kernel_prolong       4 0.0 2.5027e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7d76249d0_wrap_pyop2_kernel_prolong       4 0.0 8.2364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7d75d1710_wrap_pyop2_kernel_prolong       4 0.0 2.3971e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15509eafb250_wrap_pyop2_kernel_prolong       4 0.0 8.2405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15509eaf0150_wrap_pyop2_kernel_prolong       4 0.0 2.2340e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a80322450_wrap_pyop2_kernel_prolong       4 0.0 8.2449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a80322050_wrap_pyop2_kernel_prolong       4 0.0 2.5115e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15387b87e2d0_wrap_pyop2_kernel_prolong       4 0.0 8.2522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537a872db50_wrap_pyop2_kernel_prolong       4 0.0 2.4378e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15234a753690_wrap_pyop2_kernel_prolong       4 0.0 8.2403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15234a773850_wrap_pyop2_kernel_prolong       4 0.0 2.3065e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15008f39a550_wrap_pyop2_kernel_prolong       4 0.0 8.2431e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15008f36f390_wrap_pyop2_kernel_prolong       4 0.0 2.3332e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d54ca37850_wrap_pyop2_kernel_prolong       4 0.0 8.2482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d54ca37810_wrap_pyop2_kernel_prolong       4 0.0 2.5201e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ca315e710_wrap_pyop2_kernel_prolong       4 0.0 8.2497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ca30ea790_wrap_pyop2_kernel_prolong       4 0.0 2.2633e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152217416010_wrap_pyop2_kernel_prolong       4 0.0 8.2417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152217415990_wrap_pyop2_kernel_prolong       4 0.0 2.3236e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b2a257750_wrap_pyop2_kernel_prolong       4 0.0 8.2465e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b2a256210_wrap_pyop2_kernel_prolong       4 0.0 2.5190e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdef3e6510_wrap_pyop2_kernel_prolong       4 0.0 8.2527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdef3b98d0_wrap_pyop2_kernel_prolong       4 0.0 2.4917e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540d0543490_wrap_pyop2_kernel_prolong       4 0.0 8.2603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540d0779850_wrap_pyop2_kernel_prolong       4 0.0 2.4659e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d21fa63690_wrap_pyop2_kernel_prolong       4 0.0 8.2607e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d21fa61950_wrap_pyop2_kernel_prolong       4 0.0 2.4653e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149083ab7850_wrap_pyop2_kernel_prolong       4 0.0 8.2637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149082ff2290_wrap_pyop2_kernel_prolong       4 0.0 2.6354e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511196144d0_wrap_pyop2_kernel_prolong       4 0.0 8.2312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151119614810_wrap_pyop2_kernel_prolong       4 0.0 2.3979e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9d0120810_wrap_pyop2_kernel_prolong       4 0.0 8.2397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9d024fb10_wrap_pyop2_kernel_prolong       4 0.0 2.4961e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4e97d1010_wrap_pyop2_kernel_prolong       4 0.0 8.2337e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4e8dcd190_wrap_pyop2_kernel_prolong       4 0.0 2.3662e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d8c611650_wrap_pyop2_kernel_prolong       4 0.0 8.2349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d8c5e9450_wrap_pyop2_kernel_prolong       4 0.0 2.3506e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a26121bf90_wrap_pyop2_kernel_prolong       4 0.0 8.2296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a261511f10_wrap_pyop2_kernel_prolong       4 0.0 2.3104e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca2b826b50_wrap_pyop2_kernel_prolong       4 0.0 8.2296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca2b824bd0_wrap_pyop2_kernel_prolong       4 0.0 2.3097e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d08da2a710_wrap_pyop2_kernel_prolong       4 0.0 8.2286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d08da2bbd0_wrap_pyop2_kernel_prolong       4 0.0 2.3607e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f4ef9f110_wrap_pyop2_kernel_prolong       4 0.0 8.2264e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f4ef9d590_wrap_pyop2_kernel_prolong       4 0.0 2.2053e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ae9502350_wrap_pyop2_kernel_prolong       4 0.0 8.2433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ae95025d0_wrap_pyop2_kernel_prolong       4 0.0 2.6516e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15068c621e50_wrap_pyop2_kernel_prolong       4 0.0 8.2227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15068cf96050_wrap_pyop2_kernel_prolong       4 0.0 2.2102e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b56a53afd0_wrap_pyop2_kernel_prolong       4 0.0 8.2408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b56a769fd0_wrap_pyop2_kernel_prolong       4 0.0 2.5101e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ace623a4d0_wrap_pyop2_kernel_prolong       4 0.0 8.2350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ace623be50_wrap_pyop2_kernel_prolong       4 0.0 2.4210e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e1cecb490_wrap_pyop2_kernel_prolong       4 0.0 8.2313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e1cea1490_wrap_pyop2_kernel_prolong       4 0.0 2.4118e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5f2daa5d0_wrap_pyop2_kernel_prolong       4 0.0 8.2292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5f2da9f90_wrap_pyop2_kernel_prolong       4 0.0 2.3800e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152024b9d490_wrap_pyop2_kernel_prolong       4 0.0 8.2352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152024b52290_wrap_pyop2_kernel_prolong       4 0.0 2.4093e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f988b5150_wrap_pyop2_kernel_prolong       4 0.0 8.2356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f988cfb10_wrap_pyop2_kernel_prolong       4 0.0 2.4329e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af61a36bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af6109b150_wrap_pyop2_kernel_prolong       4 0.0 2.3637e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153466f76410_wrap_pyop2_kernel_prolong       4 0.0 8.2382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153466fc4110_wrap_pyop2_kernel_prolong       4 0.0 2.3277e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549b0dc3b10_wrap_pyop2_kernel_prolong       4 0.0 8.2516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549b0d7d150_wrap_pyop2_kernel_prolong       4 0.0 2.7256e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152da72bf310_wrap_pyop2_kernel_prolong       4 0.0 8.2426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152da7560fd0_wrap_pyop2_kernel_prolong       4 0.0 2.1862e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489c1d1db90_wrap_pyop2_kernel_prolong       4 0.0 8.2430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489c1cefc90_wrap_pyop2_kernel_prolong       4 0.0 2.5622e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff42729a50_wrap_pyop2_kernel_prolong       4 0.0 8.2439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff427e6a90_wrap_pyop2_kernel_prolong       4 0.0 2.3333e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee15490d90_wrap_pyop2_kernel_prolong       4 0.0 8.2400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee15493410_wrap_pyop2_kernel_prolong       4 0.0 2.2792e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476e58b1590_wrap_pyop2_kernel_prolong       4 0.0 8.2431e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476e5961f90_wrap_pyop2_kernel_prolong       4 0.0 2.4340e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd0b18f150_wrap_pyop2_kernel_prolong       4 0.0 8.2401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd0a6e2c10_wrap_pyop2_kernel_prolong       4 0.0 2.3704e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507e1674350_wrap_pyop2_kernel_prolong       4 0.0 8.2514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507e16c56d0_wrap_pyop2_kernel_prolong       4 0.0 2.4942e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f4a3fe90_wrap_pyop2_kernel_prolong       4 0.0 8.2313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457f4a3edd0_wrap_pyop2_kernel_prolong       4 0.0 2.3385e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517cecd3f10_wrap_pyop2_kernel_prolong       4 0.0 8.2343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517cecd1050_wrap_pyop2_kernel_prolong       4 0.0 2.2964e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487789afdd0_wrap_pyop2_kernel_prolong       4 0.0 8.2446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148773d16350_wrap_pyop2_kernel_prolong       4 0.0 2.3515e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15028f972c10_wrap_pyop2_kernel_prolong       4 0.0 8.2368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15028f9d2450_wrap_pyop2_kernel_prolong       4 0.0 2.2910e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f42572510_wrap_pyop2_kernel_prolong       4 0.0 8.2368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f4250ead0_wrap_pyop2_kernel_prolong       4 0.0 2.4326e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb72415c90_wrap_pyop2_kernel_prolong       4 0.0 8.2468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb72417ed0_wrap_pyop2_kernel_prolong       4 0.0 2.5640e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520e462a510_wrap_pyop2_kernel_prolong       4 0.0 8.2374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520e4629c50_wrap_pyop2_kernel_prolong       4 0.0 2.3975e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cc06e1290_wrap_pyop2_kernel_prolong       4 0.0 8.2357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cbbedbf90_wrap_pyop2_kernel_prolong       4 0.0 2.4131e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf87697950_wrap_pyop2_kernel_prolong       4 0.0 8.2473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf87638f50_wrap_pyop2_kernel_prolong       4 0.0 2.4449e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540b99ce3d0_wrap_pyop2_kernel_prolong       4 0.0 8.2419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540b99cca10_wrap_pyop2_kernel_prolong       4 0.0 2.2594e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c177365050_wrap_pyop2_kernel_prolong       4 0.0 8.2393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c177390850_wrap_pyop2_kernel_prolong       4 0.0 2.4742e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150831b6ced0_wrap_pyop2_kernel_prolong       4 0.0 8.2454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150831ca9a10_wrap_pyop2_kernel_prolong       4 0.0 2.3872e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e86bd9cbd0_wrap_pyop2_kernel_prolong       4 0.0 8.2474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e86bd79610_wrap_pyop2_kernel_prolong       4 0.0 2.6146e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15330281bdd0_wrap_pyop2_kernel_prolong       4 0.0 8.2405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153302b07110_wrap_pyop2_kernel_prolong       4 0.0 2.4370e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14857f5b5850_wrap_pyop2_kernel_prolong       4 0.0 8.2443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14857f6f1750_wrap_pyop2_kernel_prolong       4 0.0 2.3742e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea6c1b1a50_wrap_pyop2_kernel_prolong       4 0.0 8.2449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea67e60150_wrap_pyop2_kernel_prolong       4 0.0 2.3890e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462b39a9d50_wrap_pyop2_kernel_prolong       4 0.0 8.2450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462b3031610_wrap_pyop2_kernel_prolong       4 0.0 2.3493e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a1187ba10_wrap_pyop2_kernel_prolong       4 0.0 8.2387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a1183be10_wrap_pyop2_kernel_prolong       4 0.0 2.2753e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146492841ed0_wrap_pyop2_kernel_prolong       4 0.0 8.2476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146492841710_wrap_pyop2_kernel_prolong       4 0.0 2.5533e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2aa0502d0_wrap_pyop2_kernel_prolong       4 0.0 8.2512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2aa052ed0_wrap_pyop2_kernel_prolong       4 0.0 2.2908e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7c6153b10_wrap_pyop2_kernel_prolong       4 0.0 8.2321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7c5471290_wrap_pyop2_kernel_prolong       4 0.0 2.2159e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff716527d0_wrap_pyop2_kernel_prolong       4 0.0 8.2437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff71cb98d0_wrap_pyop2_kernel_prolong       4 0.0 2.5400e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a1842b8d0_wrap_pyop2_kernel_prolong       4 0.0 8.2346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a18428410_wrap_pyop2_kernel_prolong       4 0.0 2.3736e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e601bb790_wrap_pyop2_kernel_prolong       4 0.0 8.2398e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e5bb5a790_wrap_pyop2_kernel_prolong       4 0.0 2.4757e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14845a3323d0_wrap_pyop2_kernel_prolong       4 0.0 8.2491e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14845a2fc2d0_wrap_pyop2_kernel_prolong       4 0.0 2.4540e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b09caedf90_wrap_pyop2_kernel_prolong       4 0.0 8.2471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b09caecf10_wrap_pyop2_kernel_prolong       4 0.0 2.6455e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        226 1.0 8.5369e-02 5.7 0.00e+00 0.0 3.1e+05 4.0e+00 2.3e+02  0  0  1  0  2   0  0  2  0  6    -0
SFSetGraph           226 1.0 3.9574e-02 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.0 1.2230e-01 3.0 0.00e+00 0.0 6.1e+05 8.2e+02 2.3e+02  0  0  3  0  2   0  0  4  0  6    -0
SFPack             17878 1.0 8.0761e+00 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           17878 1.0 2.8943e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2554 1.0 1.4789e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             10215 1.0 9.3705e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY            10216 1.0 5.6192e+01 1.6 3.41e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 121642
VecAYPX            10216 1.0 7.3040e+01 3.2 1.71e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 46792
VecScatterBegin    17878 1.0 8.5564e+00 3.1 0.00e+00 0.0 1.5e+07 1.7e+05 0.0e+00  0  0 68 58  0   0  0 91 100  0    -0
VecScatterEnd      17878 1.0 2.6415e+02 41.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
MatMult            10216 1.0 1.7310e+03 1.2 1.21e+12 1.1 1.1e+07 2.2e+05 0.0e+00 29 19 52 58  0  43 44 70 99  0 139870
MatMultAdd          2554 1.0 5.1229e+01 1.1 2.56e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 100070
MatMultTranspose    2554 1.0 4.1749e+01 2.0 2.56e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 122793
MatSolve           12770 1.0 1.8186e+03 1.1 1.19e+12 1.1 5.0e+06 2.6e+03 1.1e+03 32 19 23  0  9  47 44 30  1 31 131318
MatLUFactorNum       209 1.0 1.4558e+02 1.3 2.24e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   4  8  0  0  0 305271
MatResidual         2554 1.0 4.4985e+02 1.2 3.07e+11 1.1 2.9e+06 2.2e+05 0.0e+00  8  5 13 14  0  11 11 17 25  0 136454
PCSetUpOnBlocks     5108 1.0 1.4564e+02 1.3 2.24e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   4  8  0  0  0 305142
PCApply            12770 1.0 1.8189e+03 1.1 1.19e+12 1.1 5.0e+06 2.6e+03 1.1e+03 32 19 23  0  9  47 44 30  1 31 131302
PCApplyOnBlocks    10216 1.0 1.7439e+03 1.1 1.19e+12 1.1 0.0e+00 0.0e+00 0.0e+00 30 19  0  0  0  45 44  0  0  0 136697
KSPSetUp               1 1.0 2.3403e-02 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            7662 1.0 3.0718e+03 1.0 2.15e+12 1.1 1.4e+07 1.4e+05 3.7e+03 55 34 62 44 28  83 79 83 75 100 139923
MGSmooth Level 0    2554 1.0 1.3670e+02 2.6 3.84e+09 3.4 5.0e+06 2.6e+03 3.7e+03  2  0 23  0 28   2  0 30  1 100  3211
MGSmooth Level 1    5108 1.0 3.1495e+03 1.1 2.37e+12 1.1 8.6e+06 2.2e+05 0.0e+00 56 38 39 43  0  84 87 52 75  0 150438
MGResid Level 1     2554 1.0 4.4986e+02 1.2 3.07e+11 1.1 2.9e+06 2.2e+05 0.0e+00  8  5 13 14  0  11 11 17 25  0 136451
MGInterp Level 1    5108 1.0 9.1236e+01 1.3 5.12e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   2  2  0  0  0 112379
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
         PetscRandom    17             17
           Index Set  1787           1787
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   402            628
              Vector  1189           1188
              Matrix   132            132
      Preconditioner     6              6
       Krylov Solver    22             22
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   127            127
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   182            182
           Weak Form   182            182
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   452            452
   Star Forest Graph   226              0
              Vector   228            229
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 8.4394e-06
Average time for zero size MPI_Send(): 2.44371e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_strong/vlumping/s2.profile # (source: code)
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

