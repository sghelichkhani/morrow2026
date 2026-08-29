****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0422.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 13:38:43 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.017e+03     1.000   1.017e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.540e+12     1.145   1.465e+12  3.047e+14
Flops/sec:            1.514e+09     1.145   1.441e+09  2.997e+11
MPI Msg Count:        1.238e+05     3.448   7.380e+04  1.535e+07
MPI Msg Len (bytes):  1.392e+10     3.596   1.109e+05  1.702e+12
MPI Reductions:       1.385e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 6.1880e+02  60.9%  2.6158e+14  85.8%  5.944e+06  38.7%  1.972e+05       68.9%  1.015e+04  73.2%
 1:        MG Apply: 3.9807e+02  39.1%  4.3155e+13  14.2%  9.407e+06  61.3%  5.634e+04       31.1%  3.687e+03  26.6%

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

BuildTwoSided       1933 1.0 7.7880e+01 4.4 0.00e+00 0.0 2.5e+05 4.0e+00 1.7e+03  5  0  2  0 12   8  0  4  0 17    -0
BuildTwoSidedF      1611 1.0 7.9557e+01 3.0 0.00e+00 0.0 3.5e+05 1.4e+06 1.6e+03  5  0  2 29 12   9  0  6 42 16    -0
SFSetGraph           329 1.1 1.6530e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              322 1.1 1.1140e+00 24.8 0.00e+00 0.0 1.4e+05 1.1e+03 9.8e+01  0  0  1  0  1   0  0  2  0  1    -0
SFBcastBegin        1267 1.0 6.9306e-01 3.4 0.00e+00 0.0 1.3e+06 9.5e+04 0.0e+00  0  0  9  7  0   0  0 22 11  0    -0
SFBcastEnd          1267 1.0 2.1162e+01 78.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        665 1.0 1.9715e-01 4.8 0.00e+00 0.0 7.2e+05 1.1e+05 0.0e+00  0  0  5  5  0   0  0 12  7  0    -0
SFReduceEnd          665 1.0 5.7760e+00 41.0 8.09e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1710
SFFetchOpBegin         6 1.0 3.5063e-05 4.8 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 8.7025e-04 16.2 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.3862e-03 2.4 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.9170e-03 1.4 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  1  0  0   0  0  2  0  1    -0
SFSectionSF           51 1.0 4.5273e-03 3.1 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
SFRemoteOff            2 1.0 8.9787e-05 2.6 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            189231 1.1 2.0114e+00 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          189237 1.1 3.9405e-01 4.9 8.09e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 25061
VecDot               321 1.0 1.3888e+00 7.6 2.59e+08 1.1 0.0e+00 0.0e+00 3.2e+02  0  0  0  0  2   0  0  0  0  3 37890
VecMDot             2472 1.0 3.0569e+01 2.6 1.01e+10 1.1 0.0e+00 0.0e+00 2.5e+03  2  1  0  0 18   3  1  0  0 24 67006
VecNorm             4098 1.0 1.0841e+01 3.2 3.30e+09 1.1 0.0e+00 0.0e+00 4.1e+03  1  0  0  0 30   1  0  0  0 40 61966
VecScale            2813 1.0 9.1266e-01 1.3 1.13e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 252631
VecCopy             2588 1.0 3.4629e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              1483 1.0 1.2457e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              341 1.0 5.8656e-01 1.2 2.75e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 95301
VecWAXPY             590 1.0 1.2423e+00 1.2 3.46e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 56673
VecMAXPY            2813 1.0 1.5752e+01 1.1 1.21e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 155756
VecScatterBegin   187293 1.1 3.2663e+00 1.5 0.00e+00 0.0 3.0e+06 1.2e+05 0.0e+00  0  0 20 21  0   0  0 51 30  0    -0
VecScatterEnd     187293 1.1 3.2203e+01 38.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          19 1.0 6.9578e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       642 1.0 4.5415e-01 1.7 5.18e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 231738
VecReduceComm        321 1.0 3.4708e-01 21.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.2e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         410 1.0 1.4076e+00 3.1 4.96e+08 1.1 0.0e+00 0.0e+00 4.1e+02  0  0  0  0  3   0  0  0  0  4 71625
MatMult             2793 1.0 1.2946e+02 1.4 7.99e+10 1.1 3.0e+06 1.2e+05 0.0e+00 11  5 20 21  0  18  6 51 30  0 125138
MatSolve           91840 1.1 1.1014e+01 1.6 5.77e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0 106546
MatLUFactorSym       225 1.1 6.4674e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      4577 1.1 2.4474e+01 1.0 1.41e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0 10408
MatAssemblyBegin    6558 1.0 8.6161e+01 2.5 0.00e+00 0.0 3.5e+05 1.4e+06 1.6e+03  6  0  2 29 12  10  0  6 42 16    -0
MatAssemblyEnd      6558 1.0 2.8855e+01 7.9 3.57e+08 0.0 4.4e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0  1058
MatGetRowIJ          224 1.1 3.3372e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      19 1.0 2.7122e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2    -0
MatGetOrdering       224 1.1 4.2484e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       642 1.0 1.2288e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5518e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2448e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        642 1.0 5.4998e+00 1.1 9.32e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 343432
MatPtAPSymbolic        1 1.0 1.9963e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       321 1.0 3.6436e+01 1.0 3.72e+10 1.1 3.5e+05 3.5e+05 3.3e+02  4  2  2  7  2   6  3  6 10  3 207319
MatGetLocalMat       321 1.0 2.3795e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        321 1.0 1.4291e+00 2.4 0.00e+00 0.0 3.5e+05 3.5e+05 0.0e+00  0  0  2  7  0   0  0  6 10  0    -0
MatSetPreallCOO       32 1.0 6.3959e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.6145e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              321 1.0 1.0782e+02 1.0 6.32e+10 1.1 7.8e+05 2.2e+05 2.0e+03 11  4  5 10 15  17  5 13 15 20 118673
PCApply             2082 1.0 4.1483e+02 1.1 2.15e+11 1.1 9.4e+06 5.6e+04 3.7e+03 39 14 61 31 27 Multiple stages 104029
PCApplyOnBlocks    91840 1.1 1.2321e+01 1.6 6.99e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 115344
KSPSetUp             321 1.0 1.9166e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             321 1.0 5.0932e+02 1.0 2.93e+11 1.1 1.2e+07 6.8e+04 8.2e+03 50 19 76 47 59 Multiple stages 115812
KSPGMRESOrthog      2472 1.0 4.2416e+01 1.7 2.02e+10 1.1 0.0e+00 0.0e+00 2.5e+03  3  1  0  0 18   5  2  0  0 24 96581
DMRefine               2 1.0 2.2308e-01 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  0   0  0  0  0  1     2
DMPlexCreateGmsh       1 1.0 1.5898e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.1154e+00 307.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 1.6746e-01 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.7617e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 2.0903e-03 833.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.4825e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.8976e-03 1.3 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.5933e-03 1.5 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.9114e-03 2.9 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 6.9674e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.7023e-01 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 2.0686e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 6.7071e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 1.7097e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  1  0  2   0  0  3  0  2    -0
DMPlexDistField        7 1.0 4.0498e-03 1.4 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 5.3573e-03 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.4637e-04 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0592e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.3120e-03 1.5 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1278e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.1727e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 4.0507e-04 2.2 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.4971e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.4341e-04 1.8 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             34 1.0 9.5526e+02 1.0 1.54e+12 1.1 1.5e+07 1.1e+05 1.3e+04 94 100 97 100 95 Multiple stages 318992
SNESSetUp              1 1.0 6.2816e-05 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     624 1.0 5.3770e+01 1.1 5.66e+11 1.2 1.4e+06 1.2e+05 0.0e+00  5 36  9 10  0   8 42 24 14  0 2064795
SNESJacobianEval     321 1.0 2.6829e+02 1.0 6.09e+11 1.2 7.0e+05 7.6e+05 1.3e+03 26 39  5 31  9  43 46 12 45 13 446046
SNESLineSearch       321 1.0 5.7444e+01 1.0 5.46e+11 1.2 1.6e+06 1.2e+05 1.6e+03  6 35 11 11 11   9 41 28 16 15 1866407
DualSpaceSetUp         8 1.0 5.1206e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.9115e-01 29.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.0146e+03 1.0 1.54e+12 1.1 1.5e+07 1.1e+05 1.4e+04 100 100 100 100 100 Multiple stages 300339
firedrake.__init__       1 1.0 1.0845e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.3442e+00 21.8 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  0  0  2  0  3   1  0  6  0  4    -0
firedrake.mesh._from_gmsh       1 1.0 5.1161e+00 307.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.1933e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 7.0590e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 5.0684e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.2522e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 2.9240e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.8463e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 2.7012e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.4757e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.4637e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 8.6755e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 5.6112e-03 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.7611e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.6129e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 3.2882e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.7068e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2407e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9506e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3476e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.7004e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     400 1.0 6.9203e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      4424 1.0 2.6235e+02 1.2 1.17e+12 1.2 1.1e+06 1.1e+05 3.2e+01 24 76  7  7  0  39 88 18 11  0 879260
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.6579e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    8848 1.0 2.5622e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0795e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.3748e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.7935e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.4435e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.4435e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.1129e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.9473e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    4424 1.0 1.2660e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      4424 1.0 1.1766e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.3981e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 4.8596e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   569
firedrake.interpolation.interpolate      13 1.0 4.7393e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.0175e+00 1.0 8.46e+07 1.1 2.8e+04 4.0e+04 3.7e+01  1  0  0  0  0   1  0  0  0  0  2857
firedrake.formmanipulation.split_form      14 1.0 4.4583e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.9604e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5914e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0119e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1000 1.0 2.0312e+00 4.8 0.00e+00 0.0 1.1e+06 1.1e+05 4.0e+00  0  0  7  7  0   0  0 19 11  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.5528e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  3096
firedrake.halo.Halo.global_to_local_end    1000 1.0 2.1169e+01 126.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 1.2031e+00 19.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14837cfbfcd0_wrap_pyop2_kernel_prolong       4 0.0 7.4251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14837d38a590_wrap_pyop2_kernel_prolong       4 0.0 4.8415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.0020e+00 1.0 6.85e+07 1.1 1.7e+04 5.8e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  3482
firedrake.function.Function.assign     150 1.0 9.6506e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     149 1.0 9.1963e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1039e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      70 1.0 8.3878e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.8768e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5482e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9509e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2735e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.5444e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.9141e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.9678e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2111e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2111e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.1406e+00 1.1 0.00e+00 0.0 5.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.5575e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      34 1.0 9.5539e+02 1.0 1.54e+12 1.1 1.5e+07 1.1e+05 1.3e+04 94 100 97 100 95 Multiple stages 318948
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.7145e-01 1287.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0355e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.7140e-01 1549.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.7137e-01 1782.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1248 1.0 1.4720e+01 1.4 1.45e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   2 11  0  0  0 1996167
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1248 1.0 1.0243e+00 1.0 1.86e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3689
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1248 1.0 1.4990e+00 1.1 1.49e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 24213
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1248 1.0 9.1982e+00 1.1 1.37e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1 11  0  0  0 3036032
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1248 1.0 2.1152e+01 1.3 2.84e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 18  0  0  0   3 21  0  0  0 2537080
firedrake.halo.Halo.local_to_global_begin     624 1.0 2.1616e-01 3.9 0.00e+00 0.0 6.8e+05 1.2e+05 0.0e+00  0  0  4  5  0   0  0 11  7  0    -0
firedrake.halo.Halo.local_to_global_end     624 1.0 5.7823e+00 39.5 8.09e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1708
Parloop_Cells_wrap_form00_cell_integral     642 1.0 4.3087e+01 1.5 1.38e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   6 11  0  0  0 651459
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     642 1.0 2.4701e+00 2.2 7.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7605
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     642 1.0 5.1823e+01 1.2 1.82e+11 1.1 0.0e+00 0.0e+00 0.0e+00  5 12  0  0  0   7 14  0  0  0 712551
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     642 1.0 1.2256e+02 1.5 2.89e+11 1.3 0.0e+00 0.0e+00 0.0e+00 10 18  0  0  0  16 21  0  0  0 445709
firedrake.dmhooks.get_function_space       2 1.0 2.1750e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.3100e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      321 1.0 2.4037e+01 1.0 1.96e+08 21.5 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   4  0  0  0  0   293
MGSetup Level 1      321 1.0 1.8975e+00 1.1 6.16e+08 1.1 1.1e+04 1.2e+05 2.5e+02  0  0  0  0  2   0  0  0  0  2 65909
firedrake.constant.Constant.assign      34 1.0 1.8657e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c108be0b10_wrap_pyop2_kernel_prolong       4 0.0 7.4278e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c108be24d0_wrap_pyop2_kernel_prolong       4 0.0 5.0860e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0a73391d0_wrap_pyop2_kernel_prolong       4 0.0 7.3774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0a68c6490_wrap_pyop2_kernel_prolong       4 0.0 6.4939e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488779a4910_wrap_pyop2_kernel_prolong       4 0.0 7.4082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14887772d450_wrap_pyop2_kernel_prolong       4 0.0 5.6059e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8a1be4b50_wrap_pyop2_kernel_prolong       4 0.0 7.4235e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8a11c2650_wrap_pyop2_kernel_prolong       4 0.0 6.9696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537eff9f6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4097e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537eff8de90_wrap_pyop2_kernel_prolong       4 0.0 6.2684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7ac6a0a10_wrap_pyop2_kernel_prolong       4 0.0 7.4028e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7ac6a2450_wrap_pyop2_kernel_prolong       4 0.0 5.2979e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec0a084110_wrap_pyop2_kernel_prolong       4 0.0 7.4081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec0a9e6d50_wrap_pyop2_kernel_prolong       4 0.0 5.3481e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148afdc03550_wrap_pyop2_kernel_prolong       4 0.0 7.4189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148afcfc23d0_wrap_pyop2_kernel_prolong       4 0.0 5.2498e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb4dd40ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb4dd3be10_wrap_pyop2_kernel_prolong       4 0.0 5.3113e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fef63adad0_wrap_pyop2_kernel_prolong       4 0.0 7.4146e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fef6358790_wrap_pyop2_kernel_prolong       4 0.0 6.1917e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150134e28d50_wrap_pyop2_kernel_prolong       4 0.0 7.4282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150134e2a690_wrap_pyop2_kernel_prolong       4 0.0 6.0984e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5404a2d10_wrap_pyop2_kernel_prolong       4 0.0 7.4223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5404c1b90_wrap_pyop2_kernel_prolong       4 0.0 7.0467e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464937f3b90_wrap_pyop2_kernel_prolong       4 0.0 7.3709e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464937f1ed0_wrap_pyop2_kernel_prolong       4 0.0 5.4583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14929b010950_wrap_pyop2_kernel_prolong       4 0.0 7.3986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14929afee550_wrap_pyop2_kernel_prolong       4 0.0 6.2973e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547def37750_wrap_pyop2_kernel_prolong       4 0.0 7.3896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547def4fc90_wrap_pyop2_kernel_prolong       4 0.0 7.3941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458233e93d0_wrap_pyop2_kernel_prolong       4 0.0 7.3740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458233bc850_wrap_pyop2_kernel_prolong       4 0.0 5.0324e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3b080f810_wrap_pyop2_kernel_prolong       4 0.0 7.4038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3b080c850_wrap_pyop2_kernel_prolong       4 0.0 5.9717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e84a59290_wrap_pyop2_kernel_prolong       4 0.0 7.3874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e84a4d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.1490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522539c7990_wrap_pyop2_kernel_prolong       4 0.0 7.3834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522539cff90_wrap_pyop2_kernel_prolong       4 0.0 5.9557e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15436cf75d50_wrap_pyop2_kernel_prolong       4 0.0 7.3719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15436ce3e2d0_wrap_pyop2_kernel_prolong       4 0.0 4.9871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4a1950ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4a1949e90_wrap_pyop2_kernel_prolong       4 0.0 5.5686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14914a91bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.3852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14914a918a50_wrap_pyop2_kernel_prolong       4 0.0 6.4944e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146140a14dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146140a09a10_wrap_pyop2_kernel_prolong       4 0.0 7.2447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3fc3bf90_wrap_pyop2_kernel_prolong       4 0.0 7.3809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3fe7df10_wrap_pyop2_kernel_prolong       4 0.0 5.9363e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145605130dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145604393bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3994e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bd1fbb4d0_wrap_pyop2_kernel_prolong       4 0.0 7.3744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bd1fb8250_wrap_pyop2_kernel_prolong       4 0.0 5.3061e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba0db57990_wrap_pyop2_kernel_prolong       4 0.0 7.3810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba0dadabd0_wrap_pyop2_kernel_prolong       4 0.0 5.4181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146041c73650_wrap_pyop2_kernel_prolong       4 0.0 7.4052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146041c72fd0_wrap_pyop2_kernel_prolong       4 0.0 6.1184e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f4b465fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f4b680e50_wrap_pyop2_kernel_prolong       4 0.0 6.3190e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15175f4dafd0_wrap_pyop2_kernel_prolong       4 0.0 7.3859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15175f4b4250_wrap_pyop2_kernel_prolong       4 0.0 6.0575e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd4b4accd0_wrap_pyop2_kernel_prolong       4 0.0 7.3813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd4abc3150_wrap_pyop2_kernel_prolong       4 0.0 5.6978e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe664126d0_wrap_pyop2_kernel_prolong       4 0.0 7.3773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe6639aed0_wrap_pyop2_kernel_prolong       4 0.0 5.7036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bfe8f5d50_wrap_pyop2_kernel_prolong       4 0.0 7.3933e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bfe8f5890_wrap_pyop2_kernel_prolong       4 0.0 6.1146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7b4663610_wrap_pyop2_kernel_prolong       4 0.0 7.3792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7b4672050_wrap_pyop2_kernel_prolong       4 0.0 6.6422e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce14a8aed0_wrap_pyop2_kernel_prolong       4 0.0 7.4128e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce14a892d0_wrap_pyop2_kernel_prolong       4 0.0 5.6618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc659c8890_wrap_pyop2_kernel_prolong       4 0.0 7.4288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc659b7dd0_wrap_pyop2_kernel_prolong       4 0.0 6.9697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540b953e710_wrap_pyop2_kernel_prolong       4 0.0 7.3858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540b953dcd0_wrap_pyop2_kernel_prolong       4 0.0 6.4614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aab76a790_wrap_pyop2_kernel_prolong       4 0.0 7.3814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aab766690_wrap_pyop2_kernel_prolong       4 0.0 7.7162e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1eecfaad0_wrap_pyop2_kernel_prolong       4 0.0 7.3890e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1eeb2e090_wrap_pyop2_kernel_prolong       4 0.0 5.7849e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feaa8499d0_wrap_pyop2_kernel_prolong       4 0.0 7.3828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feaa6abb10_wrap_pyop2_kernel_prolong       4 0.0 6.0913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509be2e3890_wrap_pyop2_kernel_prolong       4 0.0 7.3804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509be28a150_wrap_pyop2_kernel_prolong       4 0.0 6.3615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cbdcac050_wrap_pyop2_kernel_prolong       4 0.0 7.3849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cbdcac810_wrap_pyop2_kernel_prolong       4 0.0 6.0923e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14796a481ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14796a4c91d0_wrap_pyop2_kernel_prolong       4 0.0 5.2580e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501ae113b10_wrap_pyop2_kernel_prolong       4 0.0 7.3816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501ae111550_wrap_pyop2_kernel_prolong       4 0.0 7.2071e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154477aa7ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154477aa7150_wrap_pyop2_kernel_prolong       4 0.0 6.6187e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c1e086590_wrap_pyop2_kernel_prolong       4 0.0 7.3820e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c1e085910_wrap_pyop2_kernel_prolong       4 0.0 7.0388e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fc489e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.3802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fbfe50910_wrap_pyop2_kernel_prolong       4 0.0 6.7772e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481346ff350_wrap_pyop2_kernel_prolong       4 0.0 7.3847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481347872d0_wrap_pyop2_kernel_prolong       4 0.0 6.1024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501a4635e50_wrap_pyop2_kernel_prolong       4 0.0 7.3825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501a4635490_wrap_pyop2_kernel_prolong       4 0.0 7.2289e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15146fd9a4d0_wrap_pyop2_kernel_prolong       4 0.0 7.3891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15146fd99c90_wrap_pyop2_kernel_prolong       4 0.0 6.4825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147970d86310_wrap_pyop2_kernel_prolong       4 0.0 7.4119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147970d95350_wrap_pyop2_kernel_prolong       4 0.0 7.6612e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149915224110_wrap_pyop2_kernel_prolong       4 0.0 7.3672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149915231650_wrap_pyop2_kernel_prolong       4 0.0 5.0423e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497ac7f1850_wrap_pyop2_kernel_prolong       4 0.0 7.3811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497ac5f60d0_wrap_pyop2_kernel_prolong       4 0.0 5.1974e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bcc6829d0_wrap_pyop2_kernel_prolong       4 0.0 7.3698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bcc681310_wrap_pyop2_kernel_prolong       4 0.0 5.2674e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b9a79b610_wrap_pyop2_kernel_prolong       4 0.0 7.3659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b9a653b50_wrap_pyop2_kernel_prolong       4 0.0 5.0626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14558feff390_wrap_pyop2_kernel_prolong       4 0.0 7.3973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14558fc3afd0_wrap_pyop2_kernel_prolong       4 0.0 5.8595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b5591df10_wrap_pyop2_kernel_prolong       4 0.0 7.4271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b55927cd0_wrap_pyop2_kernel_prolong       4 0.0 6.2501e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d67b6ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d67b5290_wrap_pyop2_kernel_prolong       4 0.0 4.4902e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15165a0f2490_wrap_pyop2_kernel_prolong       4 0.0 7.3727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15165a0f1bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8314e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb0f4a390_wrap_pyop2_kernel_prolong       4 0.0 7.3794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb182d690_wrap_pyop2_kernel_prolong       4 0.0 5.5753e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4b8b92c50_wrap_pyop2_kernel_prolong       4 0.0 7.3764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4b8a96f10_wrap_pyop2_kernel_prolong       4 0.0 5.4006e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf22a20cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf22a21950_wrap_pyop2_kernel_prolong       4 0.0 6.2176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524f397ca90_wrap_pyop2_kernel_prolong       4 0.0 7.3852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524f396dcd0_wrap_pyop2_kernel_prolong       4 0.0 6.8192e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150659340150_wrap_pyop2_kernel_prolong       4 0.0 7.3769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506595b7850_wrap_pyop2_kernel_prolong       4 0.0 6.9168e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2b1d20890_wrap_pyop2_kernel_prolong       4 0.0 7.3711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2b1c254d0_wrap_pyop2_kernel_prolong       4 0.0 5.1709e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c906761310_wrap_pyop2_kernel_prolong       4 0.0 7.3753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c906761d50_wrap_pyop2_kernel_prolong       4 0.0 5.9306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed8cb564d0_wrap_pyop2_kernel_prolong       4 0.0 7.3837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed8cb55d50_wrap_pyop2_kernel_prolong       4 0.0 6.6700e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec42b2ad50_wrap_pyop2_kernel_prolong       4 0.0 7.3929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec42b2a010_wrap_pyop2_kernel_prolong       4 0.0 5.9617e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc5a2f18d0_wrap_pyop2_kernel_prolong       4 0.0 7.3750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc5a52ab10_wrap_pyop2_kernel_prolong       4 0.0 5.9534e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a061dd4b90_wrap_pyop2_kernel_prolong       4 0.0 7.3850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a061ddf010_wrap_pyop2_kernel_prolong       4 0.0 7.0449e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cdadabdd0_wrap_pyop2_kernel_prolong       4 0.0 7.3719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cdadaabd0_wrap_pyop2_kernel_prolong       4 0.0 6.2874e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465f782a190_wrap_pyop2_kernel_prolong       4 0.0 7.3696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465f7a6cfd0_wrap_pyop2_kernel_prolong       4 0.0 5.3094e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a2407c250_wrap_pyop2_kernel_prolong       4 0.0 7.3892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a24075850_wrap_pyop2_kernel_prolong       4 0.0 6.8824e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15492e53f990_wrap_pyop2_kernel_prolong       4 0.0 7.3842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15492e53ca10_wrap_pyop2_kernel_prolong       4 0.0 5.5671e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a27b2a090_wrap_pyop2_kernel_prolong       4 0.0 7.3823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a2c571550_wrap_pyop2_kernel_prolong       4 0.0 6.2359e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548473b15d0_wrap_pyop2_kernel_prolong       4 0.0 7.3843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154846a3d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.0143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e844a2350_wrap_pyop2_kernel_prolong       4 0.0 7.4024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e844fcc10_wrap_pyop2_kernel_prolong       4 0.0 7.3618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542928c6850_wrap_pyop2_kernel_prolong       4 0.0 7.3842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154291d95a90_wrap_pyop2_kernel_prolong       4 0.0 6.0519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493eed32950_wrap_pyop2_kernel_prolong       4 0.0 7.3845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493ee655d90_wrap_pyop2_kernel_prolong       4 0.0 6.0740e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f2bd66510_wrap_pyop2_kernel_prolong       4 0.0 7.3791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f2bd5dbd0_wrap_pyop2_kernel_prolong       4 0.0 6.1413e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b248237d0_wrap_pyop2_kernel_prolong       4 0.0 7.4157e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b22230e50_wrap_pyop2_kernel_prolong       4 0.0 6.1686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481be3464d0_wrap_pyop2_kernel_prolong       4 0.0 7.3806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481be345c90_wrap_pyop2_kernel_prolong       4 0.0 5.2046e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e70405d90_wrap_pyop2_kernel_prolong       4 0.0 7.3871e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e703ede90_wrap_pyop2_kernel_prolong       4 0.0 7.3195e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515cb1731d0_wrap_pyop2_kernel_prolong       4 0.0 7.3678e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515cb172250_wrap_pyop2_kernel_prolong       4 0.0 5.0204e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b48f3e67d0_wrap_pyop2_kernel_prolong       4 0.0 7.3866e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b48f3c7410_wrap_pyop2_kernel_prolong       4 0.0 5.6093e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cfefe4250_wrap_pyop2_kernel_prolong       4 0.0 7.3770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cfee8d050_wrap_pyop2_kernel_prolong       4 0.0 5.5962e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154df2fcab90_wrap_pyop2_kernel_prolong       4 0.0 7.3728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154df2fc9d10_wrap_pyop2_kernel_prolong       4 0.0 6.6696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527596384d0_wrap_pyop2_kernel_prolong       4 0.0 7.3798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152759671910_wrap_pyop2_kernel_prolong       4 0.0 5.7822e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0aece510_wrap_pyop2_kernel_prolong       4 0.0 7.3761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0aece190_wrap_pyop2_kernel_prolong       4 0.0 6.6500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dff3ba0d10_wrap_pyop2_kernel_prolong       4 0.0 7.3772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dff3b5a090_wrap_pyop2_kernel_prolong       4 0.0 7.0649e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c9fd8d950_wrap_pyop2_kernel_prolong       4 0.0 7.3795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c9fd87250_wrap_pyop2_kernel_prolong       4 0.0 6.2264e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cce069ad10_wrap_pyop2_kernel_prolong       4 0.0 7.3690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cce093d450_wrap_pyop2_kernel_prolong       4 0.0 5.6552e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511e5b89d50_wrap_pyop2_kernel_prolong       4 0.0 7.3758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511e5bae890_wrap_pyop2_kernel_prolong       4 0.0 6.6781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d73a73ce10_wrap_pyop2_kernel_prolong       4 0.0 7.3696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d73a73e290_wrap_pyop2_kernel_prolong       4 0.0 5.5675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14582e374610_wrap_pyop2_kernel_prolong       4 0.0 7.3761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14582e369590_wrap_pyop2_kernel_prolong       4 0.0 6.9159e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfa372af10_wrap_pyop2_kernel_prolong       4 0.0 7.3782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfa3728a50_wrap_pyop2_kernel_prolong       4 0.0 7.1324e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b7ffd3850_wrap_pyop2_kernel_prolong       4 0.0 7.3782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b7ffd19d0_wrap_pyop2_kernel_prolong       4 0.0 5.8165e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150881de93d0_wrap_pyop2_kernel_prolong       4 0.0 7.3772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150881dea490_wrap_pyop2_kernel_prolong       4 0.0 6.0984e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150302344bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150302346010_wrap_pyop2_kernel_prolong       4 0.0 6.6509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486b7955010_wrap_pyop2_kernel_prolong       4 0.0 7.3772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486b773ded0_wrap_pyop2_kernel_prolong       4 0.0 6.4838e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455b5bf8e90_wrap_pyop2_kernel_prolong       4 0.0 7.3738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455b5bc4cd0_wrap_pyop2_kernel_prolong       4 0.0 6.3829e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552940ceb10_wrap_pyop2_kernel_prolong       4 0.0 7.3835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552940cd110_wrap_pyop2_kernel_prolong       4 0.0 6.3963e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9c998bc90_wrap_pyop2_kernel_prolong       4 0.0 7.3800e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9c9972a90_wrap_pyop2_kernel_prolong       4 0.0 7.3572e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2e9572010_wrap_pyop2_kernel_prolong       4 0.0 7.4905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2e9557e50_wrap_pyop2_kernel_prolong       4 0.0 5.2767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec4244fad0_wrap_pyop2_kernel_prolong       4 0.0 7.4707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec4244cdd0_wrap_pyop2_kernel_prolong       4 0.0 5.5071e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbb8a0b9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbb8a09590_wrap_pyop2_kernel_prolong       4 0.0 5.6465e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d26c6b65d0_wrap_pyop2_kernel_prolong       4 0.0 7.4923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d26c6d4690_wrap_pyop2_kernel_prolong       4 0.0 6.0752e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a41c54410_wrap_pyop2_kernel_prolong       4 0.0 7.4890e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a41c7ded0_wrap_pyop2_kernel_prolong       4 0.0 6.2825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fd2027650_wrap_pyop2_kernel_prolong       4 0.0 7.4963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fd20269d0_wrap_pyop2_kernel_prolong       4 0.0 7.4176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154855b43b50_wrap_pyop2_kernel_prolong       4 0.0 7.4813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154855b2db90_wrap_pyop2_kernel_prolong       4 0.0 5.6223e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530f0a4dd50_wrap_pyop2_kernel_prolong       4 0.0 7.4898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530f0905510_wrap_pyop2_kernel_prolong       4 0.0 6.0251e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468d1786cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468d1786ed0_wrap_pyop2_kernel_prolong       4 0.0 5.8338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca0aff01d0_wrap_pyop2_kernel_prolong       4 0.0 7.4901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca0a550c10_wrap_pyop2_kernel_prolong       4 0.0 5.9504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f4c1d6d10_wrap_pyop2_kernel_prolong       4 0.0 7.4918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f4c45ab50_wrap_pyop2_kernel_prolong       4 0.0 6.3976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f08ee3a290_wrap_pyop2_kernel_prolong       4 0.0 7.4909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f08ee382d0_wrap_pyop2_kernel_prolong       4 0.0 6.6834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9dd297d10_wrap_pyop2_kernel_prolong       4 0.0 7.4941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9dd4a9d50_wrap_pyop2_kernel_prolong       4 0.0 6.7193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15424580f850_wrap_pyop2_kernel_prolong       4 0.0 7.4715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154245830450_wrap_pyop2_kernel_prolong       4 0.0 4.8444e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521807df290_wrap_pyop2_kernel_prolong       4 0.0 7.4814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521807aec90_wrap_pyop2_kernel_prolong       4 0.0 5.6586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146397914990_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463970e01d0_wrap_pyop2_kernel_prolong       4 0.0 6.6473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d227b0250_wrap_pyop2_kernel_prolong       4 0.0 7.4766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d227a6390_wrap_pyop2_kernel_prolong       4 0.0 5.4061e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462984acfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4871e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462984ada50_wrap_pyop2_kernel_prolong       4 0.0 5.6101e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b289f73d0_wrap_pyop2_kernel_prolong       4 0.0 7.4910e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b29305e10_wrap_pyop2_kernel_prolong       4 0.0 6.1745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14723574b190_wrap_pyop2_kernel_prolong       4 0.0 7.4769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14723574b2d0_wrap_pyop2_kernel_prolong       4 0.0 5.1745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7dc3d0310_wrap_pyop2_kernel_prolong       4 0.0 7.4801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7dac020d0_wrap_pyop2_kernel_prolong       4 0.0 4.7288e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f9268aa50_wrap_pyop2_kernel_prolong       4 0.0 7.4831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f92689710_wrap_pyop2_kernel_prolong       4 0.0 5.7410e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc5a733ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4867e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc5a750f90_wrap_pyop2_kernel_prolong       4 0.0 5.4529e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154450a37850_wrap_pyop2_kernel_prolong       4 0.0 7.4773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154450a35d50_wrap_pyop2_kernel_prolong       4 0.0 6.8294e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dcdbdfc50_wrap_pyop2_kernel_prolong       4 0.0 7.4845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dcdbdce10_wrap_pyop2_kernel_prolong       4 0.0 5.2470e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14746b21d290_wrap_pyop2_kernel_prolong       4 0.0 7.4877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14746b564150_wrap_pyop2_kernel_prolong       4 0.0 6.8570e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f14d36c10_wrap_pyop2_kernel_prolong       4 0.0 7.4814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f14d36990_wrap_pyop2_kernel_prolong       4 0.0 5.2609e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb3a2d8cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb3a0e88d0_wrap_pyop2_kernel_prolong       4 0.0 6.0114e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e48f68c1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e48f682290_wrap_pyop2_kernel_prolong       4 0.0 6.8255e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3dc0f2a10_wrap_pyop2_kernel_prolong       4 0.0 7.4778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3dc117990_wrap_pyop2_kernel_prolong       4 0.0 5.6388e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfe4800c50_wrap_pyop2_kernel_prolong       4 0.0 7.4888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfe4a97a10_wrap_pyop2_kernel_prolong       4 0.0 6.5377e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461aae1e990_wrap_pyop2_kernel_prolong       4 0.0 7.4871e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461aae1cd10_wrap_pyop2_kernel_prolong       4 0.0 6.6511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eda1418190_wrap_pyop2_kernel_prolong       4 0.0 7.4813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eda0c06310_wrap_pyop2_kernel_prolong       4 0.0 5.2437e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2195fa710_wrap_pyop2_kernel_prolong       4 0.0 7.4887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2195f8050_wrap_pyop2_kernel_prolong       4 0.0 6.6911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2ea22b9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2ea278e90_wrap_pyop2_kernel_prolong       4 0.0 5.5362e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d92525b10_wrap_pyop2_kernel_prolong       4 0.0 7.4771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d922dabd0_wrap_pyop2_kernel_prolong       4 0.0 6.0943e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148115453a10_wrap_pyop2_kernel_prolong       4 0.0 7.4877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148114a38810_wrap_pyop2_kernel_prolong       4 0.0 6.8893e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e00d83650_wrap_pyop2_kernel_prolong       4 0.0 7.4843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e00f721d0_wrap_pyop2_kernel_prolong       4 0.0 6.2098e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454eb0dd1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454eb0ea150_wrap_pyop2_kernel_prolong       4 0.0 6.4652e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4a41c0e50_wrap_pyop2_kernel_prolong       4 0.0 7.4713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4a41f2990_wrap_pyop2_kernel_prolong       4 0.0 5.8550e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c2c3ed6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c2c3f4910_wrap_pyop2_kernel_prolong       4 0.0 6.4767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705aca4e90_wrap_pyop2_kernel_prolong       4 0.0 7.4848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705aca9d90_wrap_pyop2_kernel_prolong       4 0.0 5.8759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7d3553650_wrap_pyop2_kernel_prolong       4 0.0 7.4844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7d3550d50_wrap_pyop2_kernel_prolong       4 0.0 5.6317e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14645cb5a550_wrap_pyop2_kernel_prolong       4 0.0 7.4835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14645cb58610_wrap_pyop2_kernel_prolong       4 0.0 6.1849e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15091d2dacd0_wrap_pyop2_kernel_prolong       4 0.0 7.4953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15091d2d8450_wrap_pyop2_kernel_prolong       4 0.0 6.8557e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c31bbb8d90_wrap_pyop2_kernel_prolong       4 0.0 7.4850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c31bbba0d0_wrap_pyop2_kernel_prolong       4 0.0 5.9604e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15466154e750_wrap_pyop2_kernel_prolong       4 0.0 7.4917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15466154d910_wrap_pyop2_kernel_prolong       4 0.0 6.2190e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb432e550_wrap_pyop2_kernel_prolong       4 0.0 7.4789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb432c8d0_wrap_pyop2_kernel_prolong       4 0.0 5.9517e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2aecf9710_wrap_pyop2_kernel_prolong       4 0.0 7.4897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2ae344050_wrap_pyop2_kernel_prolong       4 0.0 6.0382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152de0ebe790_wrap_pyop2_kernel_prolong       4 0.0 7.4946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152de0ebd8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4780e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525a9a65cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4869e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525a9ab6fd0_wrap_pyop2_kernel_prolong       4 0.0 6.9055e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152345390c50_wrap_pyop2_kernel_prolong       4 0.0 7.4928e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15234528c750_wrap_pyop2_kernel_prolong       4 0.0 7.1173e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469fe8c5ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469fe8ba190_wrap_pyop2_kernel_prolong       4 0.0 5.4586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504489eb650_wrap_pyop2_kernel_prolong       4 0.0 7.4771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504489e8710_wrap_pyop2_kernel_prolong       4 0.0 6.3840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4caf97690_wrap_pyop2_kernel_prolong       4 0.0 7.4852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4caf95710_wrap_pyop2_kernel_prolong       4 0.0 6.8377e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9e1bda2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4800e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9e1ad0e10_wrap_pyop2_kernel_prolong       4 0.0 5.9474e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14622e02e9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14622e02ff50_wrap_pyop2_kernel_prolong       4 0.0 6.1492e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3e372e750_wrap_pyop2_kernel_prolong       4 0.0 7.4675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3e35b7050_wrap_pyop2_kernel_prolong       4 0.0 5.4437e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15496a1ffe10_wrap_pyop2_kernel_prolong       4 0.0 7.4675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154968f31450_wrap_pyop2_kernel_prolong       4 0.0 4.8330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfcd8de490_wrap_pyop2_kernel_prolong       4 0.0 7.4728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfcd8ddb10_wrap_pyop2_kernel_prolong       4 0.0 5.7879e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e99c4ad450_wrap_pyop2_kernel_prolong       4 0.0 7.4743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e997936150_wrap_pyop2_kernel_prolong       4 0.0 6.5820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487257ac550_wrap_pyop2_kernel_prolong       4 0.0 7.4794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487257aea10_wrap_pyop2_kernel_prolong       4 0.0 6.3724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d907e4aa50_wrap_pyop2_kernel_prolong       4 0.0 7.4836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d90c168a10_wrap_pyop2_kernel_prolong       4 0.0 7.2086e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d68281f50_wrap_pyop2_kernel_prolong       4 0.0 7.4689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d68156b90_wrap_pyop2_kernel_prolong       4 0.0 5.9607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522fe6310d0_wrap_pyop2_kernel_prolong       4 0.0 7.4798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522fef3e450_wrap_pyop2_kernel_prolong       4 0.0 7.2952e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6dfd4a190_wrap_pyop2_kernel_prolong       4 0.0 7.4735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6dfd48390_wrap_pyop2_kernel_prolong       4 0.0 6.1837e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153634812b10_wrap_pyop2_kernel_prolong       4 0.0 7.4766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153634a3a510_wrap_pyop2_kernel_prolong       4 0.0 6.1430e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c28889d50_wrap_pyop2_kernel_prolong       4 0.0 7.4791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c23ecf450_wrap_pyop2_kernel_prolong       4 0.0 6.7065e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f094ef6b50_wrap_pyop2_kernel_prolong       4 0.0 7.4717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f094eebc50_wrap_pyop2_kernel_prolong       4 0.0 6.8703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6a1a11b10_wrap_pyop2_kernel_prolong       4 0.0 7.4729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6a106a390_wrap_pyop2_kernel_prolong       4 0.0 6.0269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b54b4ffd0_wrap_pyop2_kernel_prolong       4 0.0 7.4874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b5419a910_wrap_pyop2_kernel_prolong       4 0.0 7.5834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503347214d0_wrap_pyop2_kernel_prolong       4 0.0 7.4700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15033471fdd0_wrap_pyop2_kernel_prolong       4 0.0 4.7569e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14614b989e50_wrap_pyop2_kernel_prolong       4 0.0 7.4748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14614b989a10_wrap_pyop2_kernel_prolong       4 0.0 5.9193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14679c5d1ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4714e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14679c5c3a50_wrap_pyop2_kernel_prolong       4 0.0 6.6127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c03ca6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c03656c90_wrap_pyop2_kernel_prolong       4 0.0 5.8915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146657190310_wrap_pyop2_kernel_prolong       4 0.0 7.4720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146657195e90_wrap_pyop2_kernel_prolong       4 0.0 7.2269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490f2d8a910_wrap_pyop2_kernel_prolong       4 0.0 7.4700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490f2d89f10_wrap_pyop2_kernel_prolong       4 0.0 6.6141e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151104fe26d0_wrap_pyop2_kernel_prolong       4 0.0 7.4843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151104fe1d50_wrap_pyop2_kernel_prolong       4 0.0 7.7855e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481701c9e50_wrap_pyop2_kernel_prolong       4 0.0 7.4754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481701c9910_wrap_pyop2_kernel_prolong       4 0.0 6.1502e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d6e8a510_wrap_pyop2_kernel_prolong       4 0.0 7.4724e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d6e786d0_wrap_pyop2_kernel_prolong       4 0.0 5.3533e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464c29f2150_wrap_pyop2_kernel_prolong       4 0.0 7.4682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464c29f3910_wrap_pyop2_kernel_prolong       4 0.0 5.5846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154db668a810_wrap_pyop2_kernel_prolong       4 0.0 7.4655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154db666bf50_wrap_pyop2_kernel_prolong       4 0.0 5.5657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5d1383910_wrap_pyop2_kernel_prolong       4 0.0 7.4693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5d1398bd0_wrap_pyop2_kernel_prolong       4 0.0 6.6146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd80c1ea50_wrap_pyop2_kernel_prolong       4 0.0 7.4765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd814107d0_wrap_pyop2_kernel_prolong       4 0.0 7.1863e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f89cccf250_wrap_pyop2_kernel_prolong       4 0.0 7.4659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f89cccd990_wrap_pyop2_kernel_prolong       4 0.0 5.7360e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8b1b9cfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8b119d690_wrap_pyop2_kernel_prolong       4 0.0 6.5700e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8796a0ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8796d7a90_wrap_pyop2_kernel_prolong       4 0.0 6.7253e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14561a2c7d90_wrap_pyop2_kernel_prolong       4 0.0 7.4704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14561a4393d0_wrap_pyop2_kernel_prolong       4 0.0 6.5794e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14677cd74c10_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14677cdcb210_wrap_pyop2_kernel_prolong       4 0.0 7.5943e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d09e9ece10_wrap_pyop2_kernel_prolong       4 0.0 7.4813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d09e106810_wrap_pyop2_kernel_prolong       4 0.0 6.3608e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502f1a66850_wrap_pyop2_kernel_prolong       4 0.0 7.4884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502f1a65e10_wrap_pyop2_kernel_prolong       4 0.0 7.7610e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154488a35650_wrap_pyop2_kernel_prolong       4 0.0 7.4730e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154488a83190_wrap_pyop2_kernel_prolong       4 0.0 5.7896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529e46bdd50_wrap_pyop2_kernel_prolong       4 0.0 7.4694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529e46b2050_wrap_pyop2_kernel_prolong       4 0.0 5.8446e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a52d3f990_wrap_pyop2_kernel_prolong       4 0.0 7.4752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a52d36850_wrap_pyop2_kernel_prolong       4 0.0 7.2270e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15426cebaf50_wrap_pyop2_kernel_prolong       4 0.0 7.4713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15426ceba990_wrap_pyop2_kernel_prolong       4 0.0 6.7303e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af9d8cf710_wrap_pyop2_kernel_prolong       4 0.0 7.4809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af9d8cdc50_wrap_pyop2_kernel_prolong       4 0.0 6.8244e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bcecd6d90_wrap_pyop2_kernel_prolong       4 0.0 7.4728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bcef1e4d0_wrap_pyop2_kernel_prolong       4 0.0 6.8268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504973ab950_wrap_pyop2_kernel_prolong       4 0.0 7.4762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150496cae490_wrap_pyop2_kernel_prolong       4 0.0 6.0680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bcc6325d0_wrap_pyop2_kernel_prolong       4 0.0 7.4779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bcc631c50_wrap_pyop2_kernel_prolong       4 0.0 6.1832e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca15831bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca15a6c990_wrap_pyop2_kernel_prolong       4 0.0 7.2855e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496ef69da90_wrap_pyop2_kernel_prolong       4 0.0 7.4693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496ef69f990_wrap_pyop2_kernel_prolong       4 0.0 6.3127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511006467d0_wrap_pyop2_kernel_prolong       4 0.0 7.4780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151100645710_wrap_pyop2_kernel_prolong       4 0.0 7.0524e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148def6c14d0_wrap_pyop2_kernel_prolong       4 0.0 7.4814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148def6d18d0_wrap_pyop2_kernel_prolong       4 0.0 6.7943e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a1044e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a0b7af510_wrap_pyop2_kernel_prolong       4 0.0 7.5899e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        321 1.0 5.3703e-02 3.7 0.00e+00 0.0 4.2e+05 4.0e+00 3.2e+02  0  0  3  0  2   0  0  5  0  9    -0
SFSetGraph           321 1.0 1.4396e-02 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              321 1.0 7.3690e-02 2.4 0.00e+00 0.0 8.5e+05 2.1e+02 3.2e+02  0  0  6  0  2   0  0  9  0  9    -0
SFPack           1884210 1.1 1.9742e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1884210 1.1 1.0186e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2082 1.0 2.7767e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             16655 1.0 8.7831e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             4164 1.0 6.0442e+00 2.1 3.36e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 112935
VecAYPX             4164 1.0 6.3031e+00 3.1 1.68e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 54149
VecScatterBegin  1884210 1.1 2.3687e+01 1.3 0.00e+00 0.0 7.3e+06 7.3e+04 0.0e+00  2  0 47 31  0   5  0 77 100  0    -0
VecScatterEnd    1884210 1.1 4.1236e+01 23.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             4164 1.0 1.8623e+02 1.3 1.19e+11 1.1 4.5e+06 1.2e+05 0.0e+00 16  8 30 31  0  41 56 48 99  0 129693
MatMultAdd          2082 1.0 1.0827e+01 1.3 5.04e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 94566
MatMultTranspose    2082 1.0 9.3141e+00 2.2 5.04e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 109931
MatSolve          934818 1.1 1.5158e+02 1.7 6.11e+10 1.1 4.9e+06 5.8e+02 1.6e+03 12  4 32  0 12  31 28 52  1 44 79122
MatLUFactorNum     67648 1.1 1.7776e+01 1.3 1.94e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  9  0  0  0 221461
MatResidual         2082 1.0 1.0937e+02 1.6 6.04e+10 1.1 2.3e+06 1.2e+05 0.0e+00  8  4 15 15  0  22 28 24 50  0 111978
MatAssemblyBegin   67648 1.1 1.3625e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     67648 1.1 1.5739e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     302 1.0 4.0622e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   9  0  0  0  0    -0
PCSetUp            67950 1.1 5.8376e+01 1.2 1.94e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  1  0  0  0  13  9  0  0  0 67438
PCApply             6246 1.0 2.3817e+02 1.5 8.04e+10 1.1 4.9e+06 5.8e+02 1.6e+03 20  5 32  0 12  52 37 52  1 44 66886
PCApplyOnBlocks   932736 1.1 1.4861e+02 1.9 7.80e+10 1.1 0.0e+00 0.0e+00 0.0e+00 11  5  0  0  0  29 37  0  0  0 106687
KSPSetUp           67649 1.1 8.6430e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            6246 1.0 3.2543e+02 1.3 1.44e+11 1.1 7.1e+06 3.7e+04 3.7e+03 29  9 46 16 27  74 67 76 50 100 88682
MGSmooth Level 0    2082 1.0 3.9583e+01 1.9 2.44e+09 38.6 4.9e+06 5.8e+02 3.7e+03  3  0 32  0 27   7  0 52  1 100  1902
MGSmooth Level 1    4164 1.0 3.0198e+02 1.3 1.42e+11 1.1 2.3e+06 1.2e+05 0.0e+00 26  9 15 15  0  67 67 24 50  0 95319
MGResid Level 1     2082 1.0 1.0938e+02 1.6 6.04e+10 1.1 2.3e+06 1.2e+05 0.0e+00  8  4 15 15  0  22 28 24 50  0 111969
MGInterp Level 1    4164 1.0 1.9594e+01 1.5 1.01e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  5  0  0  0 104515
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   147            147
              Viewer     3              3
         PetscRandom    19             19
           Index Set  3833           3833
   IS L to G Mapping   431            431
             Section   472            472
   Star Forest Graph   632            953
              Vector  2096           2095
              Matrix  1248           1248
      Preconditioner   230            230
       Krylov Solver   247            247
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   129            129
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   184            184
           Weak Form   184            184
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   642            642
   Star Forest Graph   321              0
              Vector   323            324
========================================================================================================================
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 7.0704e-06
Average time for zero size MPI_Send(): 2.41862e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal/vlumping_linesmooth/h2.profile # (source: code)
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

