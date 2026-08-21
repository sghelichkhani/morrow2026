****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0485.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 23:40:54 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           6.847e+02     1.000   6.847e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.786e+11     1.387   5.207e+11  4.332e+14
Flops/sec:            8.450e+08     1.387   7.604e+08  6.327e+11
MPI Msg Count:        1.834e+05     4.957   1.031e+05  8.581e+07
MPI Msg Len (bytes):  1.747e+10     3.250   1.085e+05  9.311e+12
MPI Reductions:       2.055e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.5888e+02  67.0%  3.7162e+14  85.8%  3.585e+07  41.8%  1.875e+05       72.2%  1.616e+04  78.6%
 1:        MG Apply: 2.2581e+02  33.0%  6.1573e+13  14.2%  4.996e+07  58.2%  5.184e+04       27.8%  4.373e+03  21.3%

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

BuildTwoSided       1471 1.0 9.7186e+01 5.6 0.00e+00 0.0 7.4e+05 4.0e+00 1.4e+03  8  0  1  0  7  12  0  2  0  9    -0
BuildTwoSidedF      1362 1.0 9.3158e+01 3.7 0.00e+00 0.0 1.0e+06 2.2e+06 1.4e+03  9  0  1 24  7  13  0  3 33  8    -0
SFSetGraph           115 1.0 1.4804e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              109 1.0 4.8348e+00 105.5 0.00e+00 0.0 4.8e+05 2.0e+03 8.1e+01  0  0  1  0  0   0  0  1  0  1    -0
SFBcastBegin         818 1.0 5.7799e-01 4.1 0.00e+00 0.0 3.5e+06 1.4e+05 0.0e+00  0  0  4  5  0   0  0 10  7  0    -0
SFBcastEnd           818 1.0 1.9300e+01 167.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin        331 1.0 1.6335e-01 42.9 0.00e+00 0.0 1.5e+06 1.6e+05 0.0e+00  0  0  2  3  0   0  0  4  4  0    -0
SFReduceEnd          331 1.0 3.4342e+00 34.4 5.62e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8699
SFFetchOpBegin         4 1.0 2.8702e-05 9.4 0.00e+00 0.0 1.6e+04 3.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 9.5665e-04 37.4 0.00e+00 0.0 1.6e+04 3.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 2.5704e-03 4.6 0.00e+00 0.0 9.6e+03 6.9e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         36 1.0 1.3617e-02 1.4 0.00e+00 0.0 4.1e+05 3.3e+01 4.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           37 1.0 1.0856e-02 5.0 0.00e+00 0.0 1.8e+05 1.8e+01 3.7e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            1 1.0 6.7227e-05 4.2 0.00e+00 0.0 5.2e+03 7.7e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            150884 1.2 2.6918e+00 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          150888 1.2 3.7709e-01 11.6 5.62e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 79226
VecDot               225 1.0 9.4557e-01 9.3 9.07e+07 1.2 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1 78590
VecMDot             5956 1.0 3.9734e+01 4.4 7.79e+09 1.2 0.0e+00 0.0e+00 6.0e+03  3  1  0  0 29   5  2  0  0 37 160537
VecNorm             7156 1.0 1.1871e+01 3.9 1.96e+09 1.2 0.0e+00 0.0e+00 7.2e+03  1  0  0  0 35   1  0  0  0 44 134937
VecScale            6631 1.0 2.2888e-01 1.3 8.72e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3120491
VecCopy             2026 1.0 1.0211e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6300 1.0 2.2000e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              675 1.0 2.4751e-01 1.4 1.81e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 600612
VecWAXPY             225 1.0 1.9456e-01 1.3 4.54e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 190976
VecMAXPY            6631 1.0 1.0275e+01 1.2 9.35e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  2  0  0  0 745357
VecScatterBegin   149731 1.2 7.5731e+00 1.6 0.00e+00 0.0 2.7e+07 1.2e+05 0.0e+00  1  0 32 35  0   1  0 76 49  0    -0
VecScatterEnd     149731 1.2 2.2084e+01 22.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       450 1.0 1.3410e-01 1.9 1.81e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1108283
VecReduceComm        225 1.0 2.1535e-01 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        4782 1.0 8.6119e+00 4.4 1.50e+09 1.2 0.0e+00 0.0e+00 4.8e+03  1  0  0  0 23   1  0  0  0 30 142434
MatMult             6181 1.0 9.4690e+01 1.2 5.87e+10 1.2 2.7e+07 1.2e+05 0.0e+00 13 11 32 35  0  19 13 76 49  0 505892
MatSolve           71607 1.2 3.5705e+01 1.7 1.75e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  3  0  0  0   6  4  0  0  0 400508
MatLUFactorSym        29 1.2 4.3867e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      6526 1.2 6.3075e+00 1.4 7.23e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 939050
MatILUFactorSym        1 1.0 2.9627e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    8598 1.1 9.4327e+01 2.1 0.00e+00 0.0 1.0e+06 2.2e+06 1.4e+03 10  0  1 24  7  15  0  3 33  8    -0
MatAssemblyEnd      8598 1.1 3.2597e+01 11.7 5.05e+08 0.0 2.7e+04 1.5e+04 4.4e+01  2  0  0  0  0   3  0  0  0  0  4160
MatGetRowIJ           29 1.2 2.2503e-05 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     225 1.0 1.5261e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.9e+01  2  0  0  0  0   3  0  0  0  0    -0
MatGetOrdering        29 1.2 1.6391e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       675 1.0 3.7976e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 6.6796e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 9.8004e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        901 1.0 2.2433e+00 1.2 3.27e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 1187580
MatPtAPSymbolic        2 1.0 1.2423e-01 1.0 0.00e+00 0.0 2.7e+04 1.5e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       450 1.0 1.9193e+01 1.0 1.31e+10 1.2 2.0e+06 2.7e+05 4.6e+02  3  2  2  6  2   4  3  6  8  3 555660
MatGetLocalMat       452 1.0 9.2317e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        452 1.0 1.5561e+00 2.5 0.00e+00 0.0 2.0e+06 2.7e+05 0.0e+00  0  0  2  6  0   0  0  6  8  0    -0
MatSetPreallCOO       16 1.0 7.2028e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 3.6438e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 1.5469e+02 1.0 8.24e+10 1.2 2.1e+07 1.1e+05 1.0e+04 23 16 25 25 50  34 18 59 35 63 435751
PCApply             1624 1.0 2.3364e+02 1.1 7.55e+10 1.2 5.0e+07 5.2e+04 4.4e+03 33 14 58 28 21 Multiple stages 263539
PCApplyOnBlocks    71607 1.2 4.2137e+01 1.7 2.47e+10 1.2 0.0e+00 0.0e+00 0.0e+00  5  5  0  0  0   7  5  0  0  0 479910
KSPSetUp             225 1.0 7.0521e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 2.7446e+02 1.0 1.06e+11 1.2 5.7e+07 6.8e+04 7.8e+03 40 20 67 42 38 Multiple stages 315742
KSPGMRESOrthog      5956 1.0 4.7031e+01 2.8 1.56e+10 1.2 0.0e+00 0.0e+00 6.0e+03  4  3  0  0 29   6  3  0  0 37 271264
DMRefine               1 1.0 3.0016e-01 1.0 1.04e+03 1.0 3.1e+04 1.7e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     3
DMPlexCreateGmsh       1 1.0 2.0882e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 8.0486e+00 374.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         3 1.0 2.0090e-01 1.0 0.00e+00 0.0 1.2e+05 3.0e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 3.8584e-02 1.0 0.00e+00 0.0 4.4e+05 3.3e+01 1.8e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 5.7160e-03 1205.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 5.3160e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 1.0336e-02 3.3 0.00e+00 0.0 2.4e+04 2.3e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 1.5284e-03 4.4 0.00e+00 0.0 1.2e+04 8.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 2.8436e-03 2.6 0.00e+00 0.0 1.3e+04 1.0e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          15 1.0 9.9807e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.0158e-01 1.0 0.00e+00 0.0 3.4e+04 1.0e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 5.6125e-03 1.2 0.00e+00 0.0 6.8e+04 5.1e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 1.6803e-02 1.0 0.00e+00 0.0 2.2e+05 3.2e+01 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        2 1.0 4.2193e-02 1.0 0.00e+00 0.0 5.4e+05 2.9e+01 1.6e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 8.1280e-03 1.2 0.00e+00 0.0 9.8e+04 2.5e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 4.9369e-04 1.1 0.00e+00 0.0 2.6e+04 1.3e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        23 1.0 8.2996e-03 8.0 0.00e+00 0.0 0.0e+00 0.0e+00 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      23 1.0 5.2286e-04 29.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 2.8779e-04 13.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.4948e-03 2.1 0.00e+00 0.0 1.5e+04 1.3e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 4.2675e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 1.8870e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 3.0733e-04 2.7 0.00e+00 0.0 1.5e+04 1.3e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.3482e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 5.1900e-04 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 6.3792e-05 14.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 6.1395e+02 1.0 5.79e+11 1.4 8.4e+07 1.1e+05 2.0e+04 90 100 98 100 97 Multiple stages 705530
SNESSetUp              1 1.0 6.1757e-05 9.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 2.2837e+01 1.2 1.51e+11 1.6 3.0e+06 1.8e+05 0.0e+00  3 25  3  6  0   5 29  8  8  0 4696373
SNESJacobianEval     225 1.0 1.5586e+02 1.0 2.35e+11 1.5 2.0e+06 1.2e+06 9.0e+02 23 39  2 25  4  34 45  6 35  6 1082914
SNESLineSearch       225 1.0 1.5426e+01 1.0 1.17e+11 1.5 3.0e+06 1.8e+05 9.0e+02  2 19  3  6  4   3 22  8  8  6 5411468
DualSpaceSetUp         4 1.0 6.5527e-03 2.3 5.40e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     7
FESetUp                4 1.0 2.8460e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 6.8239e+02 1.0 5.79e+11 1.4 8.6e+07 1.1e+05 2.1e+04 100 100 100 100 100 Multiple stages 634815
firedrake.__init__       1 1.0 1.6714e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
CreateMesh             2 1.0 8.3498e+00 25.9 0.00e+00 0.0 1.1e+06 3.3e+01 3.2e+02  1  0  1  0  2   1  0  3  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 8.0493e+00 373.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.3740e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 6.0510e-06 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 4.6664e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 9.7900e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      24 1.0 3.1870e-02 1.3 0.00e+00 0.0 4.0e+04 4.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      29 1.0 2.4330e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      26 1.0 2.8959e-02 1.2 0.00e+00 0.0 4.0e+04 4.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      25 1.0 2.5885e-02 1.3 0.00e+00 0.0 4.0e+04 4.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      25 1.0 2.5733e-02 1.3 0.00e+00 0.0 4.0e+04 4.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      50 1.0 9.4782e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 4.6863e-03 1.1 0.00e+00 0.0 2.3e+04 3.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.7686e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.9800e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      66 1.0 3.1168e-02 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 3.1922e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 2.0463e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       5 1.0 6.2119e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0952e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 3.1871e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     648 1.0 7.2997e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2418 1.0 1.2585e+02 1.5 3.86e+11 1.5 2.8e+06 1.8e+05 2.6e+01 15 64  3  5  0  23 74  8  7  0 2192353
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 3.1475e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4836 1.0 2.8823e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.1437e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.6257e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.5714e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      20 1.0 2.2449e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.2448e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.1185e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0963e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2418 1.0 7.4611e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2418 1.0 6.8716e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.6307e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       2 1.0 7.7602e+00 1.0 5.44e+06 1.2 5.2e+04 2.4e+04 7.0e+00  1  0  0  0  0   2  0  0  0  0   575
firedrake.interpolation.interpolate      16 1.0 5.0190e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 1.3692e+01 1.0 4.07e+07 1.2 1.9e+05 3.7e+04 1.1e+02  2  0  0  0  1   3  0  1  0  1  2437
firedrake.formmanipulation.split_form      14 1.0 6.6626e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.6436e-03 10.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      14 1.0 3.4085e-01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.1 2.8404e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     618 1.0 5.7062e+00 15.9 0.00e+00 0.0 2.8e+06 1.7e+05 3.0e+00  0  0  3  5  0   1  0  8  7  0    -0
Parloop_Cells_wrap_expression_kernel      28 1.0 7.2666e+00 1.0 4.07e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  4591
firedrake.halo.Halo.global_to_local_end     618 1.0 1.6194e+01 165.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       2 1.0 9.1072e+00 56.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
Parloop_set_#x14f805713c90_wrap_pyop2_kernel_prolong       4 0.0 7.7300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9633e+00 1.0 3.41e+07 1.2 7.2e+04 8.5e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  7042
firedrake.function.Function.assign     314 1.0 8.8166e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.9204e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.0006e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.7440e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.7117e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5502e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9689e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2995e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.5371e+00 1.0 0.00e+00 0.0 2.8e+04 7.0e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.5816e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5174e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0752e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0752e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         3 1.0 2.3021e+00 1.2 0.00e+00 0.0 4.6e+04 2.1e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 2.9157e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 6.1410e+02 1.0 5.79e+11 1.4 8.4e+07 1.1e+05 2.0e+04 90 100 98 100 98 Multiple stages 705358
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.5161e-01 1207.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0794e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.5156e-01 1444.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.5153e-01 1634.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 4.8990e+00 1.4 3.44e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  8  0  0  0 5749078
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.1160e+00 1.1 1.12e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   820
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2921e+00 1.1 9.45e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 38017
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 3.6191e+00 1.2 3.31e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  6  0  0  0   1  7  0  0  0 7493045
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 7.6344e+00 1.5 8.35e+10 2.1 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   1 14  0  0  0 6796745
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.7311e-01 18.0 0.00e+00 0.0 1.3e+06 1.8e+05 0.0e+00  0  0  2  3  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 3.4374e+00 33.1 5.62e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8691
Parloop_Cells_wrap_form00_cell_integral     450 1.0 1.6884e+01 1.6 4.81e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   3 11  0  0  0 2334607
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 2.3292e+00 2.1 7.21e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16106
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 1.9371e+01 1.3 6.38e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3 12  0  0  0   4 14  0  0  0 2698768
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 5.8174e+01 2.4 1.23e+11 2.1 0.0e+00 0.0e+00 0.0e+00  6 18  0  0  0   9 21  0  0  0 1322102
firedrake.dmhooks.get_function_space       2 1.0 2.7912e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 9.3020e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 5.8560e+00 1.0 0.00e+00 0.0 6.1e+04 3.8e+01 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 5.8491e+00 1.0 0.00e+00 0.0 4.3e+04 3.1e+01 6.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 5.8094e+00 1.0 0.00e+00 0.0 2.6e+04 1.3e+01 4.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.5205e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.5142e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.0887e+00 30.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.0805e+00 47.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 4.3984e+00 663.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 4.3983e+00 670.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 2.5453e-02 8.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 2.3535e-02 24.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.2256e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.9094e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.5419e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.7156e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 4.3254e-03 12.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 3.6390e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 9.4328e-03 1.8 0.00e+00 0.0 1.8e+04 5.6e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.3960e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.2752e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 9.6448e-01 1.2 1.62e+07 1.3 1.0e+07 9.0e+01 4.9e+03  0  0 12  0 24   0  0 29  0 30 13367
MGSetup Level 1      225 1.0 1.2601e+02 1.0 6.94e+10 1.2 1.0e+07 1.8e+05 4.8e+03 18 13 12 19 23  27 15 28 27 29 450187
firedrake.constant.Constant.assign      75 1.0 3.6663e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c698d30d0_wrap_pyop2_kernel_prolong       4 0.0 7.7311e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466275fdc90_wrap_pyop2_kernel_prolong       4 0.0 7.7359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d29fbbda10_wrap_pyop2_kernel_prolong       4 0.0 7.7384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0a9fcc050_wrap_pyop2_kernel_prolong       4 0.0 7.7312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510fc09add0_wrap_pyop2_kernel_prolong       4 0.0 7.7495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af9f2f8a90_wrap_pyop2_kernel_prolong       4 0.0 7.7324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15260b8f8a90_wrap_pyop2_kernel_prolong       4 0.0 7.7458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2b4c61810_wrap_pyop2_kernel_prolong       4 0.0 7.7559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a5bbe4b10_wrap_pyop2_kernel_prolong       4 0.0 7.7481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c642c1790_wrap_pyop2_kernel_prolong       4 0.0 7.7361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b4a58a950_wrap_pyop2_kernel_prolong       4 0.0 7.7399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcf7ea76d0_wrap_pyop2_kernel_prolong       4 0.0 7.7340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15312baeb5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf24ccd090_wrap_pyop2_kernel_prolong       4 0.0 7.7360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b93659590_wrap_pyop2_kernel_prolong       4 0.0 7.7463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468fd574f90_wrap_pyop2_kernel_prolong       4 0.0 7.7319e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147452a69fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7076e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d88a5050_wrap_pyop2_kernel_prolong       4 0.0 7.7392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baa01bb010_wrap_pyop2_kernel_prolong       4 0.0 7.7194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508de49c810_wrap_pyop2_kernel_prolong       4 0.0 7.7427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b2f90ee10_wrap_pyop2_kernel_prolong       4 0.0 7.7263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d3782bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14826a930290_wrap_pyop2_kernel_prolong       4 0.0 7.7179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc2a0b01d0_wrap_pyop2_kernel_prolong       4 0.0 7.7277e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a980d98d0_wrap_pyop2_kernel_prolong       4 0.0 7.7485e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf8845c450_wrap_pyop2_kernel_prolong       4 0.0 7.7292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14553c677450_wrap_pyop2_kernel_prolong       4 0.0 7.7332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d29855810_wrap_pyop2_kernel_prolong       4 0.0 7.7289e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0e0c60190_wrap_pyop2_kernel_prolong       4 0.0 7.7416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee727fd850_wrap_pyop2_kernel_prolong       4 0.0 7.7351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532ad104a90_wrap_pyop2_kernel_prolong       4 0.0 7.7456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507abf64d10_wrap_pyop2_kernel_prolong       4 0.0 7.7161e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d34200e90_wrap_pyop2_kernel_prolong       4 0.0 7.7354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d7a248d90_wrap_pyop2_kernel_prolong       4 0.0 7.7406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b37935d50_wrap_pyop2_kernel_prolong       4 0.0 7.7282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af940b9250_wrap_pyop2_kernel_prolong       4 0.0 7.7495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15311aed64d0_wrap_pyop2_kernel_prolong       4 0.0 7.7191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b35b98510_wrap_pyop2_kernel_prolong       4 0.0 7.7497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151731578590_wrap_pyop2_kernel_prolong       4 0.0 7.7187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ecfe46ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552cb281310_wrap_pyop2_kernel_prolong       4 0.0 7.7372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537940b4710_wrap_pyop2_kernel_prolong       4 0.0 7.7471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147eec74eb50_wrap_pyop2_kernel_prolong       4 0.0 7.7645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14967cb3b050_wrap_pyop2_kernel_prolong       4 0.0 7.7259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e69f43ff50_wrap_pyop2_kernel_prolong       4 0.0 7.7445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e700cd8d0_wrap_pyop2_kernel_prolong       4 0.0 7.7282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7f5d9eed0_wrap_pyop2_kernel_prolong       4 0.0 7.7628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d56b4f6e50_wrap_pyop2_kernel_prolong       4 0.0 7.7420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea347f1910_wrap_pyop2_kernel_prolong       4 0.0 7.7496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15179f0c6b90_wrap_pyop2_kernel_prolong       4 0.0 7.7516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce730f96d0_wrap_pyop2_kernel_prolong       4 0.0 7.7572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148074b85ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdcfdaa490_wrap_pyop2_kernel_prolong       4 0.0 7.7222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2eeb8b4d0_wrap_pyop2_kernel_prolong       4 0.0 7.7423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459b5bf80d0_wrap_pyop2_kernel_prolong       4 0.0 7.7330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146180853a90_wrap_pyop2_kernel_prolong       4 0.0 7.7276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c761dcbbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515a3666b10_wrap_pyop2_kernel_prolong       4 0.0 7.7169e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147113256790_wrap_pyop2_kernel_prolong       4 0.0 7.7273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15192c969050_wrap_pyop2_kernel_prolong       4 0.0 7.7369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14858e267d10_wrap_pyop2_kernel_prolong       4 0.0 7.7340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d19256ead0_wrap_pyop2_kernel_prolong       4 0.0 7.7543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513b7b28450_wrap_pyop2_kernel_prolong       4 0.0 7.7304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1127ff1d0_wrap_pyop2_kernel_prolong       4 0.0 7.7464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495d72de510_wrap_pyop2_kernel_prolong       4 0.0 7.7299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151385ac0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454c5308910_wrap_pyop2_kernel_prolong       4 0.0 7.7264e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fa31c1950_wrap_pyop2_kernel_prolong       4 0.0 7.7290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534816ca490_wrap_pyop2_kernel_prolong       4 0.0 7.7538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473d0df4fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b2a4456d0_wrap_pyop2_kernel_prolong       4 0.0 7.7362e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e8bdc02d0_wrap_pyop2_kernel_prolong       4 0.0 7.7269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbdc370bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7277e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b5b809750_wrap_pyop2_kernel_prolong       4 0.0 7.7354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a786a9b210_wrap_pyop2_kernel_prolong       4 0.0 7.7334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475cb971a90_wrap_pyop2_kernel_prolong       4 0.0 7.7474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c0796a910_wrap_pyop2_kernel_prolong       4 0.0 7.7562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14835ae71510_wrap_pyop2_kernel_prolong       4 0.0 7.7086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ece177f010_wrap_pyop2_kernel_prolong       4 0.0 7.7239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b924e86450_wrap_pyop2_kernel_prolong       4 0.0 7.7297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4332dad10_wrap_pyop2_kernel_prolong       4 0.0 7.7426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6d7652890_wrap_pyop2_kernel_prolong       4 0.0 7.7288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549e131a550_wrap_pyop2_kernel_prolong       4 0.0 7.7272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c952633d10_wrap_pyop2_kernel_prolong       4 0.0 7.7200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149061f34fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7418e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147744f2b750_wrap_pyop2_kernel_prolong       4 0.0 7.7429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d743b78d0_wrap_pyop2_kernel_prolong       4 0.0 7.7515e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501cd0c2050_wrap_pyop2_kernel_prolong       4 0.0 7.7335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483933b2dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14668b9c0810_wrap_pyop2_kernel_prolong       4 0.0 7.7315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c313e75dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496d9c7cb10_wrap_pyop2_kernel_prolong       4 0.0 7.7265e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d476ccde50_wrap_pyop2_kernel_prolong       4 0.0 7.7322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153055b695d0_wrap_pyop2_kernel_prolong       4 0.0 7.7360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461d5f4e690_wrap_pyop2_kernel_prolong       4 0.0 7.7568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15298c746d50_wrap_pyop2_kernel_prolong       4 0.0 7.7430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1c09b5c10_wrap_pyop2_kernel_prolong       4 0.0 7.7373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477307b0850_wrap_pyop2_kernel_prolong       4 0.0 7.7285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491547253d0_wrap_pyop2_kernel_prolong       4 0.0 7.7598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471938fe790_wrap_pyop2_kernel_prolong       4 0.0 7.7293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d157035d0_wrap_pyop2_kernel_prolong       4 0.0 7.7414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c317d1950_wrap_pyop2_kernel_prolong       4 0.0 7.7574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15281f793250_wrap_pyop2_kernel_prolong       4 0.0 7.7561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510574e9290_wrap_pyop2_kernel_prolong       4 0.0 7.9074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de8b986550_wrap_pyop2_kernel_prolong       4 0.0 7.7624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548cfef92d0_wrap_pyop2_kernel_prolong       4 0.0 7.7918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146410a39510_wrap_pyop2_kernel_prolong       4 0.0 7.7291e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d9f673e10_wrap_pyop2_kernel_prolong       4 0.0 7.7280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147386f05d50_wrap_pyop2_kernel_prolong       4 0.0 7.7288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5921b1090_wrap_pyop2_kernel_prolong       4 0.0 7.8082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0a339c510_wrap_pyop2_kernel_prolong       4 0.0 7.7286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3db623790_wrap_pyop2_kernel_prolong       4 0.0 7.7315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15184d4f1890_wrap_pyop2_kernel_prolong       4 0.0 7.8259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5f1e90d90_wrap_pyop2_kernel_prolong       4 0.0 7.7651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462740fe310_wrap_pyop2_kernel_prolong       4 0.0 7.7641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155035e3d4d0_wrap_pyop2_kernel_prolong       4 0.0 7.8019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484d4dd8510_wrap_pyop2_kernel_prolong       4 0.0 7.7288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476af5d6ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6995e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca15584550_wrap_pyop2_kernel_prolong       4 0.0 7.7131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14954c27eb10_wrap_pyop2_kernel_prolong       4 0.0 7.9666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15061e195650_wrap_pyop2_kernel_prolong       4 0.0 7.7905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db72a26790_wrap_pyop2_kernel_prolong       4 0.0 7.9764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f709c1edd0_wrap_pyop2_kernel_prolong       4 0.0 7.7577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6753f4050_wrap_pyop2_kernel_prolong       4 0.0 7.8828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9d6504bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f313c8050_wrap_pyop2_kernel_prolong       4 0.0 7.7145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14810e642d10_wrap_pyop2_kernel_prolong       4 0.0 7.9577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482a8b34450_wrap_pyop2_kernel_prolong       4 0.0 7.9131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14854cb2db50_wrap_pyop2_kernel_prolong       4 0.0 7.8397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14722287d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.8782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1965c55d0_wrap_pyop2_kernel_prolong       4 0.0 7.9290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471527c5990_wrap_pyop2_kernel_prolong       4 0.0 7.8616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15484e9df0d0_wrap_pyop2_kernel_prolong       4 0.0 7.8114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147eb70795d0_wrap_pyop2_kernel_prolong       4 0.0 7.8033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ea3892250_wrap_pyop2_kernel_prolong       4 0.0 7.7408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504862ed910_wrap_pyop2_kernel_prolong       4 0.0 7.6977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15403fd8d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.7502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14560b17d490_wrap_pyop2_kernel_prolong       4 0.0 7.7831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b3fd7a890_wrap_pyop2_kernel_prolong       4 0.0 7.7653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f995f8450_wrap_pyop2_kernel_prolong       4 0.0 7.6932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8106d8f50_wrap_pyop2_kernel_prolong       4 0.0 7.7083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c312f7590_wrap_pyop2_kernel_prolong       4 0.0 7.7319e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adf4068590_wrap_pyop2_kernel_prolong       4 0.0 7.7202e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaafbdb650_wrap_pyop2_kernel_prolong       4 0.0 7.7085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd4fa6ce10_wrap_pyop2_kernel_prolong       4 0.0 7.8080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a75f28590_wrap_pyop2_kernel_prolong       4 0.0 7.9822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1cb44f550_wrap_pyop2_kernel_prolong       4 0.0 7.8075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bee9c8ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7826e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b0b25c810_wrap_pyop2_kernel_prolong       4 0.0 7.8200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ff9644b50_wrap_pyop2_kernel_prolong       4 0.0 7.7550e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151860648c50_wrap_pyop2_kernel_prolong       4 0.0 7.7221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d910e2de90_wrap_pyop2_kernel_prolong       4 0.0 7.8007e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15031c132ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2ec7e1950_wrap_pyop2_kernel_prolong       4 0.0 7.8431e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481b6fa5bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dbd4d9210_wrap_pyop2_kernel_prolong       4 0.0 7.7008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14990743d190_wrap_pyop2_kernel_prolong       4 0.0 7.6884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0be402f50_wrap_pyop2_kernel_prolong       4 0.0 7.7019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b65007990_wrap_pyop2_kernel_prolong       4 0.0 7.7772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14676c29b810_wrap_pyop2_kernel_prolong       4 0.0 7.7413e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e01c440d50_wrap_pyop2_kernel_prolong       4 0.0 7.7222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154210f4a5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a262d3d110_wrap_pyop2_kernel_prolong       4 0.0 7.7349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15302ff8d9d0_wrap_pyop2_kernel_prolong       4 0.0 7.7315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150730b2ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.7239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eaca73190_wrap_pyop2_kernel_prolong       4 0.0 7.7217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec6f3f2dd0_wrap_pyop2_kernel_prolong       4 0.0 7.8341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eff59a2ad0_wrap_pyop2_kernel_prolong       4 0.0 7.8040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153019ad6950_wrap_pyop2_kernel_prolong       4 0.0 7.7327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477b8bccb90_wrap_pyop2_kernel_prolong       4 0.0 7.7444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0f84de310_wrap_pyop2_kernel_prolong       4 0.0 7.7564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c530e25490_wrap_pyop2_kernel_prolong       4 0.0 7.7924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148423f8c090_wrap_pyop2_kernel_prolong       4 0.0 7.6894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a6d981c90_wrap_pyop2_kernel_prolong       4 0.0 7.7103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a5d79ad10_wrap_pyop2_kernel_prolong       4 0.0 7.7074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b11f17fb50_wrap_pyop2_kernel_prolong       4 0.0 7.6937e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a58e7e7710_wrap_pyop2_kernel_prolong       4 0.0 7.7025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151548e48bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151727088210_wrap_pyop2_kernel_prolong       4 0.0 7.7063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14686a40f350_wrap_pyop2_kernel_prolong       4 0.0 7.7909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c10b676490_wrap_pyop2_kernel_prolong       4 0.0 7.7239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147687a87950_wrap_pyop2_kernel_prolong       4 0.0 7.6900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150da234abd0_wrap_pyop2_kernel_prolong       4 0.0 7.7095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd868b02d0_wrap_pyop2_kernel_prolong       4 0.0 7.7196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ce38cd790_wrap_pyop2_kernel_prolong       4 0.0 7.7132e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15082a74ad50_wrap_pyop2_kernel_prolong       4 0.0 7.6921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fada15810_wrap_pyop2_kernel_prolong       4 0.0 7.8102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c34ad69290_wrap_pyop2_kernel_prolong       4 0.0 7.7135e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9af9305d0_wrap_pyop2_kernel_prolong       4 0.0 7.7321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d170f7c50_wrap_pyop2_kernel_prolong       4 0.0 7.7844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f13e89590_wrap_pyop2_kernel_prolong       4 0.0 7.7740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15341d3c4210_wrap_pyop2_kernel_prolong       4 0.0 7.7615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14babe0f8910_wrap_pyop2_kernel_prolong       4 0.0 7.7997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151dc622bc90_wrap_pyop2_kernel_prolong       4 0.0 7.7646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c10b14650_wrap_pyop2_kernel_prolong       4 0.0 7.7494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ced4eccd0_wrap_pyop2_kernel_prolong       4 0.0 7.7298e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498ff1bd910_wrap_pyop2_kernel_prolong       4 0.0 7.8258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546f8dc91d0_wrap_pyop2_kernel_prolong       4 0.0 7.7841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f888bac10_wrap_pyop2_kernel_prolong       4 0.0 7.8490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519fc73f590_wrap_pyop2_kernel_prolong       4 0.0 7.8428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4333d6310_wrap_pyop2_kernel_prolong       4 0.0 7.7643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a062fd5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14901028dd50_wrap_pyop2_kernel_prolong       4 0.0 7.8239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b752303190_wrap_pyop2_kernel_prolong       4 0.0 7.7948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6574c8dd0_wrap_pyop2_kernel_prolong       4 0.0 7.8238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dc02682d0_wrap_pyop2_kernel_prolong       4 0.0 7.7545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539490ee610_wrap_pyop2_kernel_prolong       4 0.0 7.8009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154eae793310_wrap_pyop2_kernel_prolong       4 0.0 7.8370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f17fe78a50_wrap_pyop2_kernel_prolong       4 0.0 7.8530e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf87fea390_wrap_pyop2_kernel_prolong       4 0.0 7.8025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b19b73a10_wrap_pyop2_kernel_prolong       4 0.0 7.7815e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488f067d450_wrap_pyop2_kernel_prolong       4 0.0 7.7402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15539d6a17d0_wrap_pyop2_kernel_prolong       4 0.0 7.8510e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b52f425a10_wrap_pyop2_kernel_prolong       4 0.0 7.7478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df9aa6cb90_wrap_pyop2_kernel_prolong       4 0.0 7.7580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471cf47fe50_wrap_pyop2_kernel_prolong       4 0.0 7.7602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d7625cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0e750bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8203e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb5f8f4d0_wrap_pyop2_kernel_prolong       4 0.0 7.8336e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473a5c5e390_wrap_pyop2_kernel_prolong       4 0.0 7.7881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c203f81490_wrap_pyop2_kernel_prolong       4 0.0 7.7537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd45783490_wrap_pyop2_kernel_prolong       4 0.0 7.7533e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efb46d2910_wrap_pyop2_kernel_prolong       4 0.0 7.8148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c966aeaed0_wrap_pyop2_kernel_prolong       4 0.0 7.7425e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15201ecffb10_wrap_pyop2_kernel_prolong       4 0.0 7.7643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482d151e610_wrap_pyop2_kernel_prolong       4 0.0 7.7997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c501d96590_wrap_pyop2_kernel_prolong       4 0.0 7.7590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2d8ae5610_wrap_pyop2_kernel_prolong       4 0.0 7.7463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d227519b50_wrap_pyop2_kernel_prolong       4 0.0 7.7574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeaad07510_wrap_pyop2_kernel_prolong       4 0.0 7.7622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e44629c610_wrap_pyop2_kernel_prolong       4 0.0 7.7578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c66ce2e8d0_wrap_pyop2_kernel_prolong       4 0.0 7.7561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14727d0d0e10_wrap_pyop2_kernel_prolong       4 0.0 7.7732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c42a57ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f04dc3b910_wrap_pyop2_kernel_prolong       4 0.0 7.7502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b978bb210_wrap_pyop2_kernel_prolong       4 0.0 7.7681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a9be9c890_wrap_pyop2_kernel_prolong       4 0.0 7.7673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3886b5b10_wrap_pyop2_kernel_prolong       4 0.0 7.7640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3be29ae10_wrap_pyop2_kernel_prolong       4 0.0 7.7592e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fa397b750_wrap_pyop2_kernel_prolong       4 0.0 7.7429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15064e74bf90_wrap_pyop2_kernel_prolong       4 0.0 7.7537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fab9af2090_wrap_pyop2_kernel_prolong       4 0.0 7.8159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c04a40c290_wrap_pyop2_kernel_prolong       4 0.0 7.7591e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6b9ee6810_wrap_pyop2_kernel_prolong       4 0.0 7.7641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a80394290_wrap_pyop2_kernel_prolong       4 0.0 7.7464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a2d498550_wrap_pyop2_kernel_prolong       4 0.0 7.7716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a07bf5ce50_wrap_pyop2_kernel_prolong       4 0.0 7.7381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492638ff550_wrap_pyop2_kernel_prolong       4 0.0 7.7571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0fd8327d0_wrap_pyop2_kernel_prolong       4 0.0 7.8025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154da7234650_wrap_pyop2_kernel_prolong       4 0.0 7.7772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf9660c810_wrap_pyop2_kernel_prolong       4 0.0 7.7524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e881dced0_wrap_pyop2_kernel_prolong       4 0.0 7.7621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0fcd13f90_wrap_pyop2_kernel_prolong       4 0.0 7.7748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b99b08f10_wrap_pyop2_kernel_prolong       4 0.0 7.8086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fe99f2810_wrap_pyop2_kernel_prolong       4 0.0 7.7588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dd02cdbd0_wrap_pyop2_kernel_prolong       4 0.0 7.8204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbedaed890_wrap_pyop2_kernel_prolong       4 0.0 7.7770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c01f925ad0_wrap_pyop2_kernel_prolong       4 0.0 7.8217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146612652910_wrap_pyop2_kernel_prolong       4 0.0 7.7811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3b5177550_wrap_pyop2_kernel_prolong       4 0.0 7.7405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15441b9646d0_wrap_pyop2_kernel_prolong       4 0.0 7.8182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cdf8f7290_wrap_pyop2_kernel_prolong       4 0.0 7.7474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a1ea0fd50_wrap_pyop2_kernel_prolong       4 0.0 7.7417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a3d4c8110_wrap_pyop2_kernel_prolong       4 0.0 7.7442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490b4cfc910_wrap_pyop2_kernel_prolong       4 0.0 7.7893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ca1c89950_wrap_pyop2_kernel_prolong       4 0.0 7.7429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d27991e50_wrap_pyop2_kernel_prolong       4 0.0 7.8279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de1029e890_wrap_pyop2_kernel_prolong       4 0.0 7.7735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f591a7b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552feca5710_wrap_pyop2_kernel_prolong       4 0.0 7.7658e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466d688d190_wrap_pyop2_kernel_prolong       4 0.0 7.7595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476abe48750_wrap_pyop2_kernel_prolong       4 0.0 7.7787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f000bf310_wrap_pyop2_kernel_prolong       4 0.0 7.7488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15086e25d450_wrap_pyop2_kernel_prolong       4 0.0 7.7440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b5039d190_wrap_pyop2_kernel_prolong       4 0.0 7.7921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca664e9850_wrap_pyop2_kernel_prolong       4 0.0 7.8054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15277ecb9c10_wrap_pyop2_kernel_prolong       4 0.0 7.8360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d5f74f250_wrap_pyop2_kernel_prolong       4 0.0 7.7749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464cecc5bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfdf663010_wrap_pyop2_kernel_prolong       4 0.0 7.8186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155364711950_wrap_pyop2_kernel_prolong       4 0.0 7.7701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c590a4f10_wrap_pyop2_kernel_prolong       4 0.0 7.8194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd7e7df5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152659e66d10_wrap_pyop2_kernel_prolong       4 0.0 7.8538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fb6261d90_wrap_pyop2_kernel_prolong       4 0.0 7.8268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14737cc646d0_wrap_pyop2_kernel_prolong       4 0.0 7.7463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d778989010_wrap_pyop2_kernel_prolong       4 0.0 7.7527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485ca091350_wrap_pyop2_kernel_prolong       4 0.0 7.7915e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e9d9b5050_wrap_pyop2_kernel_prolong       4 0.0 7.8222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e4e4bb550_wrap_pyop2_kernel_prolong       4 0.0 7.7706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149776bf4b10_wrap_pyop2_kernel_prolong       4 0.0 7.8336e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b8f4e5790_wrap_pyop2_kernel_prolong       4 0.0 7.7963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550d105b390_wrap_pyop2_kernel_prolong       4 0.0 7.7723e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14677f0d1cd0_wrap_pyop2_kernel_prolong       4 0.0 7.7886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15209d722890_wrap_pyop2_kernel_prolong       4 0.0 7.8230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e12a78990_wrap_pyop2_kernel_prolong       4 0.0 7.8384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db8af3d310_wrap_pyop2_kernel_prolong       4 0.0 7.7537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14761ce63090_wrap_pyop2_kernel_prolong       4 0.0 7.8126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8b60b3390_wrap_pyop2_kernel_prolong       4 0.0 7.7451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c062056410_wrap_pyop2_kernel_prolong       4 0.0 7.7641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459497f6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15266f7045d0_wrap_pyop2_kernel_prolong       4 0.0 7.8220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473192d1150_wrap_pyop2_kernel_prolong       4 0.0 7.7862e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a04add110_wrap_pyop2_kernel_prolong       4 0.0 7.7699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503ac4c67d0_wrap_pyop2_kernel_prolong       4 0.0 7.8354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcdc6b16d0_wrap_pyop2_kernel_prolong       4 0.0 7.8520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456f49d6890_wrap_pyop2_kernel_prolong       4 0.0 7.8576e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154abda24110_wrap_pyop2_kernel_prolong       4 0.0 7.7863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea1d858350_wrap_pyop2_kernel_prolong       4 0.0 7.7713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c8f1ffe90_wrap_pyop2_kernel_prolong       4 0.0 7.8081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2c04a4390_wrap_pyop2_kernel_prolong       4 0.0 7.8376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513d7dc1010_wrap_pyop2_kernel_prolong       4 0.0 7.7348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14977ee6d990_wrap_pyop2_kernel_prolong       4 0.0 7.7468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495f5e33390_wrap_pyop2_kernel_prolong       4 0.0 7.7503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a62543ec50_wrap_pyop2_kernel_prolong       4 0.0 7.7329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148716622650_wrap_pyop2_kernel_prolong       4 0.0 7.7421e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a977ff5090_wrap_pyop2_kernel_prolong       4 0.0 7.7535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ff67a1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a86595ab50_wrap_pyop2_kernel_prolong       4 0.0 7.7476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524188ec590_wrap_pyop2_kernel_prolong       4 0.0 7.7394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514181e2990_wrap_pyop2_kernel_prolong       4 0.0 7.7501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5d9ad9410_wrap_pyop2_kernel_prolong       4 0.0 7.7466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153804e71190_wrap_pyop2_kernel_prolong       4 0.0 7.7565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537bbed6ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8240f3e90_wrap_pyop2_kernel_prolong       4 0.0 7.7201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468b2d42d90_wrap_pyop2_kernel_prolong       4 0.0 7.7393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be91f29f90_wrap_pyop2_kernel_prolong       4 0.0 7.7357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151decce0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498c0111f10_wrap_pyop2_kernel_prolong       4 0.0 7.7284e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494cc326e10_wrap_pyop2_kernel_prolong       4 0.0 7.7334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cf74a4090_wrap_pyop2_kernel_prolong       4 0.0 7.7112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd373a5650_wrap_pyop2_kernel_prolong       4 0.0 7.7330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b28ae8a350_wrap_pyop2_kernel_prolong       4 0.0 7.7282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14698ec28810_wrap_pyop2_kernel_prolong       4 0.0 7.7283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154081737790_wrap_pyop2_kernel_prolong       4 0.0 7.7435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e512dc050_wrap_pyop2_kernel_prolong       4 0.0 7.7300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504b1675e50_wrap_pyop2_kernel_prolong       4 0.0 7.7340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e95f44e950_wrap_pyop2_kernel_prolong       4 0.0 7.7381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549d02a5ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5e31e6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491c3542790_wrap_pyop2_kernel_prolong       4 0.0 7.7163e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b7d423610_wrap_pyop2_kernel_prolong       4 0.0 7.7257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532436f4a90_wrap_pyop2_kernel_prolong       4 0.0 7.7401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e50b094d0_wrap_pyop2_kernel_prolong       4 0.0 7.7318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520d3b62d50_wrap_pyop2_kernel_prolong       4 0.0 7.7602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8151f9e90_wrap_pyop2_kernel_prolong       4 0.0 7.7500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499972eded0_wrap_pyop2_kernel_prolong       4 0.0 7.7412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6934ff250_wrap_pyop2_kernel_prolong       4 0.0 7.7256e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15059dbc0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f39b9adf10_wrap_pyop2_kernel_prolong       4 0.0 7.7551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fe97286d0_wrap_pyop2_kernel_prolong       4 0.0 7.7358e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d5be8b290_wrap_pyop2_kernel_prolong       4 0.0 7.7188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f5baaded0_wrap_pyop2_kernel_prolong       4 0.0 7.7501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c439085c90_wrap_pyop2_kernel_prolong       4 0.0 7.7218e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15150e6e70d0_wrap_pyop2_kernel_prolong       4 0.0 7.7484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498cfe77310_wrap_pyop2_kernel_prolong       4 0.0 7.7485e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e4f38f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.7470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15275b1a18d0_wrap_pyop2_kernel_prolong       4 0.0 7.7282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd454757d0_wrap_pyop2_kernel_prolong       4 0.0 7.7454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f42bcf0d0_wrap_pyop2_kernel_prolong       4 0.0 7.7509e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2de697210_wrap_pyop2_kernel_prolong       4 0.0 7.7537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150df6f5c350_wrap_pyop2_kernel_prolong       4 0.0 7.7427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d2611b0d0_wrap_pyop2_kernel_prolong       4 0.0 7.7609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f87bd49fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e7dd2f190_wrap_pyop2_kernel_prolong       4 0.0 7.7430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484ba62c5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff62feeb50_wrap_pyop2_kernel_prolong       4 0.0 7.7275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf9def5cd0_wrap_pyop2_kernel_prolong       4 0.0 7.7141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ade817890_wrap_pyop2_kernel_prolong       4 0.0 7.7246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148af2f3ad10_wrap_pyop2_kernel_prolong       4 0.0 7.7149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b19a960d0_wrap_pyop2_kernel_prolong       4 0.0 7.7200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b28cc89fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9ad58c790_wrap_pyop2_kernel_prolong       4 0.0 7.7377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152245e66f50_wrap_pyop2_kernel_prolong       4 0.0 7.7314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145745791cd0_wrap_pyop2_kernel_prolong       4 0.0 7.7463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e36f12290_wrap_pyop2_kernel_prolong       4 0.0 7.7553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1f782a510_wrap_pyop2_kernel_prolong       4 0.0 7.7191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b16f1a390_wrap_pyop2_kernel_prolong       4 0.0 7.7508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b51134750_wrap_pyop2_kernel_prolong       4 0.0 7.7296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e44182af90_wrap_pyop2_kernel_prolong       4 0.0 7.7426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a88ec91050_wrap_pyop2_kernel_prolong       4 0.0 7.7449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea57401290_wrap_pyop2_kernel_prolong       4 0.0 7.7383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547f9371e90_wrap_pyop2_kernel_prolong       4 0.0 7.7302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517ccac2f10_wrap_pyop2_kernel_prolong       4 0.0 7.7198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bec12e6890_wrap_pyop2_kernel_prolong       4 0.0 7.7162e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af7a3e8c10_wrap_pyop2_kernel_prolong       4 0.0 7.7588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e351e91810_wrap_pyop2_kernel_prolong       4 0.0 7.7561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d2bd8da10_wrap_pyop2_kernel_prolong       4 0.0 7.7427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15200596cd50_wrap_pyop2_kernel_prolong       4 0.0 7.7625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552d249a710_wrap_pyop2_kernel_prolong       4 0.0 7.7180e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f73b55dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0c7bb2bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f52e118e50_wrap_pyop2_kernel_prolong       4 0.0 7.7324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147871dabf90_wrap_pyop2_kernel_prolong       4 0.0 7.7433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbe72a5350_wrap_pyop2_kernel_prolong       4 0.0 7.7491e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd4bf8af90_wrap_pyop2_kernel_prolong       4 0.0 7.7501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489e9581590_wrap_pyop2_kernel_prolong       4 0.0 7.7371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15056bd3c050_wrap_pyop2_kernel_prolong       4 0.0 7.7584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15524f2e53d0_wrap_pyop2_kernel_prolong       4 0.0 7.7473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151898c91290_wrap_pyop2_kernel_prolong       4 0.0 7.7466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145749206f50_wrap_pyop2_kernel_prolong       4 0.0 7.7463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f01f88450_wrap_pyop2_kernel_prolong       4 0.0 7.7597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150372ec1fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee3c6eb790_wrap_pyop2_kernel_prolong       4 0.0 7.7394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab667a4290_wrap_pyop2_kernel_prolong       4 0.0 7.7546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1bc5931d0_wrap_pyop2_kernel_prolong       4 0.0 7.7413e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b45488090_wrap_pyop2_kernel_prolong       4 0.0 7.7354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9eade3090_wrap_pyop2_kernel_prolong       4 0.0 7.7416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517e30e0d10_wrap_pyop2_kernel_prolong       4 0.0 7.7418e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec47d7abd0_wrap_pyop2_kernel_prolong       4 0.0 7.7562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552973d8b10_wrap_pyop2_kernel_prolong       4 0.0 7.7469e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3636993d0_wrap_pyop2_kernel_prolong       4 0.0 7.7427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15220ad2a890_wrap_pyop2_kernel_prolong       4 0.0 7.7528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e7b369a90_wrap_pyop2_kernel_prolong       4 0.0 7.7362e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492b0becbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14809c101e90_wrap_pyop2_kernel_prolong       4 0.0 7.7220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b264aa3990_wrap_pyop2_kernel_prolong       4 0.0 7.7211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cb56e81d0_wrap_pyop2_kernel_prolong       4 0.0 7.7279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eadae1f3d0_wrap_pyop2_kernel_prolong       4 0.0 7.7252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd4b2abc90_wrap_pyop2_kernel_prolong       4 0.0 7.7721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0e6e91550_wrap_pyop2_kernel_prolong       4 0.0 7.7278e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba66651190_wrap_pyop2_kernel_prolong       4 0.0 7.7199e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527d288ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.7267e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a91e4ea610_wrap_pyop2_kernel_prolong       4 0.0 7.7363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eecc4e7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507f5b1ca90_wrap_pyop2_kernel_prolong       4 0.0 7.7335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150aecf79850_wrap_pyop2_kernel_prolong       4 0.0 7.7244e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0b1d3ac90_wrap_pyop2_kernel_prolong       4 0.0 7.7276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5763dcd90_wrap_pyop2_kernel_prolong       4 0.0 7.7254e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df5cf4c410_wrap_pyop2_kernel_prolong       4 0.0 7.7688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14affacc2e50_wrap_pyop2_kernel_prolong       4 0.0 7.7417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4401aa150_wrap_pyop2_kernel_prolong       4 0.0 7.7084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be05e308d0_wrap_pyop2_kernel_prolong       4 0.0 7.7327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1404ac490_wrap_pyop2_kernel_prolong       4 0.0 7.7198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bf5699a90_wrap_pyop2_kernel_prolong       4 0.0 7.7292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484850002d0_wrap_pyop2_kernel_prolong       4 0.0 7.7283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485a8e15bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7274e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ea6628a10_wrap_pyop2_kernel_prolong       4 0.0 7.7612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f9f618e50_wrap_pyop2_kernel_prolong       4 0.0 7.7262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b585870190_wrap_pyop2_kernel_prolong       4 0.0 7.7534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ee4d69750_wrap_pyop2_kernel_prolong       4 0.0 7.7634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495b424d2d0_wrap_pyop2_kernel_prolong       4 0.0 7.7561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf36fb6a10_wrap_pyop2_kernel_prolong       4 0.0 7.7045e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14667d38d690_wrap_pyop2_kernel_prolong       4 0.0 7.7639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef5c9d5f50_wrap_pyop2_kernel_prolong       4 0.0 7.7683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15281edd14d0_wrap_pyop2_kernel_prolong       4 0.0 7.7495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3694ec510_wrap_pyop2_kernel_prolong       4 0.0 7.7266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15219d33c490_wrap_pyop2_kernel_prolong       4 0.0 7.7075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e875091710_wrap_pyop2_kernel_prolong       4 0.0 7.7266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed218779d0_wrap_pyop2_kernel_prolong       4 0.0 7.7532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cce14c110_wrap_pyop2_kernel_prolong       4 0.0 7.7174e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9dd8a0e50_wrap_pyop2_kernel_prolong       4 0.0 7.7404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fd8dabb50_wrap_pyop2_kernel_prolong       4 0.0 7.7469e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539ece99b10_wrap_pyop2_kernel_prolong       4 0.0 7.7623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f218373c90_wrap_pyop2_kernel_prolong       4 0.0 7.7686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aea59f9650_wrap_pyop2_kernel_prolong       4 0.0 7.7149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525b17291d0_wrap_pyop2_kernel_prolong       4 0.0 7.7280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14940c2454d0_wrap_pyop2_kernel_prolong       4 0.0 7.7245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546341d14d0_wrap_pyop2_kernel_prolong       4 0.0 7.7630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14565a844050_wrap_pyop2_kernel_prolong       4 0.0 7.7498e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489f4c89c50_wrap_pyop2_kernel_prolong       4 0.0 7.7215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ec4ac3e10_wrap_pyop2_kernel_prolong       4 0.0 7.7204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4b497aa50_wrap_pyop2_kernel_prolong       4 0.0 7.7439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146de332c9d0_wrap_pyop2_kernel_prolong       4 0.0 7.7314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3c2432e90_wrap_pyop2_kernel_prolong       4 0.0 7.7543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb1882c090_wrap_pyop2_kernel_prolong       4 0.0 7.7554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c7aebcad0_wrap_pyop2_kernel_prolong       4 0.0 7.7434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547fe437e10_wrap_pyop2_kernel_prolong       4 0.0 7.7053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a627fb7d0_wrap_pyop2_kernel_prolong       4 0.0 7.7521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d566258e90_wrap_pyop2_kernel_prolong       4 0.0 7.7298e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14786a9f5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492373e4b50_wrap_pyop2_kernel_prolong       4 0.0 7.7260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e1306ac90_wrap_pyop2_kernel_prolong       4 0.0 7.7154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478deaa3bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520b7229850_wrap_pyop2_kernel_prolong       4 0.0 7.7112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b86a0fae90_wrap_pyop2_kernel_prolong       4 0.0 7.7419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496ddec4b90_wrap_pyop2_kernel_prolong       4 0.0 7.7399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484086f1ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7362e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c40734ed90_wrap_pyop2_kernel_prolong       4 0.0 7.7238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546c8f84610_wrap_pyop2_kernel_prolong       4 0.0 7.7320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15526c276510_wrap_pyop2_kernel_prolong       4 0.0 7.7328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c7dc44690_wrap_pyop2_kernel_prolong       4 0.0 7.7338e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459a16a3dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ee9001e90_wrap_pyop2_kernel_prolong       4 0.0 7.7238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490df247b10_wrap_pyop2_kernel_prolong       4 0.0 7.7139e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe65794590_wrap_pyop2_kernel_prolong       4 0.0 7.7525e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d481729e10_wrap_pyop2_kernel_prolong       4 0.0 7.7154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146010b4e8d0_wrap_pyop2_kernel_prolong       4 0.0 7.7391e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471f96d1050_wrap_pyop2_kernel_prolong       4 0.0 7.7170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1f56e0b10_wrap_pyop2_kernel_prolong       4 0.0 7.7262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0ce180d90_wrap_pyop2_kernel_prolong       4 0.0 7.7336e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469eec0a110_wrap_pyop2_kernel_prolong       4 0.0 7.7441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd0de7e950_wrap_pyop2_kernel_prolong       4 0.0 7.7357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d01ad1c50_wrap_pyop2_kernel_prolong       4 0.0 7.7169e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d9920f7d0_wrap_pyop2_kernel_prolong       4 0.0 7.7308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c5babf210_wrap_pyop2_kernel_prolong       4 0.0 7.7224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d99ca28dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7165e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f93bb90150_wrap_pyop2_kernel_prolong       4 0.0 7.7749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f58e56610_wrap_pyop2_kernel_prolong       4 0.0 7.7376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14786c769690_wrap_pyop2_kernel_prolong       4 0.0 7.7191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb7005cd0_wrap_pyop2_kernel_prolong       4 0.0 7.7114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146983dcd6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee4070fb50_wrap_pyop2_kernel_prolong       4 0.0 7.7345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a9bf49a50_wrap_pyop2_kernel_prolong       4 0.0 7.7476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145625d9a910_wrap_pyop2_kernel_prolong       4 0.0 7.7352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c74b78e50_wrap_pyop2_kernel_prolong       4 0.0 7.7486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb79ac5c90_wrap_pyop2_kernel_prolong       4 0.0 7.7186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4e68eab90_wrap_pyop2_kernel_prolong       4 0.0 7.7639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa5a4f8150_wrap_pyop2_kernel_prolong       4 0.0 7.7346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e2763aad0_wrap_pyop2_kernel_prolong       4 0.0 7.7441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466f1154150_wrap_pyop2_kernel_prolong       4 0.0 7.7631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e50b659d0_wrap_pyop2_kernel_prolong       4 0.0 7.7533e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154811480990_wrap_pyop2_kernel_prolong       4 0.0 7.7660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae2bcfcbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d64a9d7e10_wrap_pyop2_kernel_prolong       4 0.0 7.7425e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddb4641390_wrap_pyop2_kernel_prolong       4 0.0 7.7165e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471324d57d0_wrap_pyop2_kernel_prolong       4 0.0 7.7668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528a29c5290_wrap_pyop2_kernel_prolong       4 0.0 7.7489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f4c067550_wrap_pyop2_kernel_prolong       4 0.0 7.7743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495a3b14050_wrap_pyop2_kernel_prolong       4 0.0 7.8747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e821d8ba90_wrap_pyop2_kernel_prolong       4 0.0 7.8778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e02558d0_wrap_pyop2_kernel_prolong       4 0.0 7.8743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151193e57ad0_wrap_pyop2_kernel_prolong       4 0.0 7.8856e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15259a77c3d0_wrap_pyop2_kernel_prolong       4 0.0 7.8600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147172b41390_wrap_pyop2_kernel_prolong       4 0.0 7.8372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c81db8ef10_wrap_pyop2_kernel_prolong       4 0.0 7.8918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493ff1698d0_wrap_pyop2_kernel_prolong       4 0.0 7.8976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508c533d550_wrap_pyop2_kernel_prolong       4 0.0 7.8396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148eec258750_wrap_pyop2_kernel_prolong       4 0.0 7.8963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a3a3ddf50_wrap_pyop2_kernel_prolong       4 0.0 7.8560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2daa7d310_wrap_pyop2_kernel_prolong       4 0.0 7.9155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb10fe3a10_wrap_pyop2_kernel_prolong       4 0.0 7.8947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c71e2a1350_wrap_pyop2_kernel_prolong       4 0.0 7.8229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150480667290_wrap_pyop2_kernel_prolong       4 0.0 7.8432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da95969950_wrap_pyop2_kernel_prolong       4 0.0 7.8228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edce8e29d0_wrap_pyop2_kernel_prolong       4 0.0 7.8848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d793acc10_wrap_pyop2_kernel_prolong       4 0.0 7.8126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0db058c50_wrap_pyop2_kernel_prolong       4 0.0 7.8424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483f6496690_wrap_pyop2_kernel_prolong       4 0.0 7.8733e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14568320ab90_wrap_pyop2_kernel_prolong       4 0.0 7.8282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e333a59d10_wrap_pyop2_kernel_prolong       4 0.0 7.8099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147caf200bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500db548150_wrap_pyop2_kernel_prolong       4 0.0 7.8128e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150aef3b1890_wrap_pyop2_kernel_prolong       4 0.0 7.8261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473617e5b10_wrap_pyop2_kernel_prolong       4 0.0 7.8176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b9420d890_wrap_pyop2_kernel_prolong       4 0.0 7.8208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3dc2d8710_wrap_pyop2_kernel_prolong       4 0.0 7.8351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15323f8a6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14588b52be10_wrap_pyop2_kernel_prolong       4 0.0 7.8822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3423bab50_wrap_pyop2_kernel_prolong       4 0.0 7.8155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14712dd96c50_wrap_pyop2_kernel_prolong       4 0.0 7.9199e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146551adb090_wrap_pyop2_kernel_prolong       4 0.0 7.8721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8b7841090_wrap_pyop2_kernel_prolong       4 0.0 7.8396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a8e53cc90_wrap_pyop2_kernel_prolong       4 0.0 7.8878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ec5810250_wrap_pyop2_kernel_prolong       4 0.0 7.8539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14930638b310_wrap_pyop2_kernel_prolong       4 0.0 7.8645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14611751e150_wrap_pyop2_kernel_prolong       4 0.0 7.8575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d0d358c50_wrap_pyop2_kernel_prolong       4 0.0 7.8698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e906871bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aeab44290_wrap_pyop2_kernel_prolong       4 0.0 7.8709e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496406d1390_wrap_pyop2_kernel_prolong       4 0.0 7.8453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15438dc37810_wrap_pyop2_kernel_prolong       4 0.0 7.8901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad03b5fd90_wrap_pyop2_kernel_prolong       4 0.0 7.8453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0aaaa6c50_wrap_pyop2_kernel_prolong       4 0.0 7.8553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467a6dc1d90_wrap_pyop2_kernel_prolong       4 0.0 7.8569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0be265290_wrap_pyop2_kernel_prolong       4 0.0 7.8172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b6c353650_wrap_pyop2_kernel_prolong       4 0.0 7.8647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c18f602b90_wrap_pyop2_kernel_prolong       4 0.0 7.8338e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e65f1dbe90_wrap_pyop2_kernel_prolong       4 0.0 7.8476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f1a1e6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b45ff60910_wrap_pyop2_kernel_prolong       4 0.0 7.8340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e697e35610_wrap_pyop2_kernel_prolong       4 0.0 7.8096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152da7704590_wrap_pyop2_kernel_prolong       4 0.0 7.7985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbcca79d90_wrap_pyop2_kernel_prolong       4 0.0 7.8140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15273a8b8210_wrap_pyop2_kernel_prolong       4 0.0 7.8117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3d1671a50_wrap_pyop2_kernel_prolong       4 0.0 7.7947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b61356a50_wrap_pyop2_kernel_prolong       4 0.0 7.7922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af92690190_wrap_pyop2_kernel_prolong       4 0.0 7.8088e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464a1abbbd0_wrap_pyop2_kernel_prolong       4 0.0 7.8044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b1067d490_wrap_pyop2_kernel_prolong       4 0.0 7.8341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d6b88eb10_wrap_pyop2_kernel_prolong       4 0.0 7.7958e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d415e658d0_wrap_pyop2_kernel_prolong       4 0.0 7.8249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15041bf83590_wrap_pyop2_kernel_prolong       4 0.0 7.7984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522c541b350_wrap_pyop2_kernel_prolong       4 0.0 7.8243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544fbc5b790_wrap_pyop2_kernel_prolong       4 0.0 7.8029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15136d336010_wrap_pyop2_kernel_prolong       4 0.0 7.8151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcc691cc10_wrap_pyop2_kernel_prolong       4 0.0 7.7965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3f77d1310_wrap_pyop2_kernel_prolong       4 0.0 7.8166e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dcb1ab310_wrap_pyop2_kernel_prolong       4 0.0 7.8209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f769c42e10_wrap_pyop2_kernel_prolong       4 0.0 7.8164e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a56f38050_wrap_pyop2_kernel_prolong       4 0.0 7.8050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f22d79dd90_wrap_pyop2_kernel_prolong       4 0.0 7.8131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f296b67350_wrap_pyop2_kernel_prolong       4 0.0 7.8323e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151268a31610_wrap_pyop2_kernel_prolong       4 0.0 7.8016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15103dcd2e50_wrap_pyop2_kernel_prolong       4 0.0 7.8374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14612f60f8d0_wrap_pyop2_kernel_prolong       4 0.0 7.8214e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14883ad38d50_wrap_pyop2_kernel_prolong       4 0.0 7.8261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9c6b8b010_wrap_pyop2_kernel_prolong       4 0.0 7.7921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e61bd57750_wrap_pyop2_kernel_prolong       4 0.0 7.7942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3ad881e50_wrap_pyop2_kernel_prolong       4 0.0 7.8041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9d12fa2d0_wrap_pyop2_kernel_prolong       4 0.0 7.8110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcbfa7f8d0_wrap_pyop2_kernel_prolong       4 0.0 7.8042e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153aa210b590_wrap_pyop2_kernel_prolong       4 0.0 7.8005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3adc6cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149779465710_wrap_pyop2_kernel_prolong       4 0.0 7.8314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14936f38e990_wrap_pyop2_kernel_prolong       4 0.0 7.8342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dc15ddb50_wrap_pyop2_kernel_prolong       4 0.0 7.8237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c72a002d0_wrap_pyop2_kernel_prolong       4 0.0 7.8216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147129ae59d0_wrap_pyop2_kernel_prolong       4 0.0 7.8330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c3b0fcb10_wrap_pyop2_kernel_prolong       4 0.0 7.8180e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb48205b90_wrap_pyop2_kernel_prolong       4 0.0 7.8128e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552efd834d0_wrap_pyop2_kernel_prolong       4 0.0 7.8260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a3ee8ec90_wrap_pyop2_kernel_prolong       4 0.0 7.8278e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b9a6d6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4e16a8290_wrap_pyop2_kernel_prolong       4 0.0 7.8288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f71762890_wrap_pyop2_kernel_prolong       4 0.0 7.8208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adbaeaaa90_wrap_pyop2_kernel_prolong       4 0.0 7.8211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552340b32d0_wrap_pyop2_kernel_prolong       4 0.0 7.8204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15340493d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.8357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc5f545290_wrap_pyop2_kernel_prolong       4 0.0 7.8362e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b24cf7210_wrap_pyop2_kernel_prolong       4 0.0 7.8216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14beff426bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504c15a0ad0_wrap_pyop2_kernel_prolong       4 0.0 7.8476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a864433310_wrap_pyop2_kernel_prolong       4 0.0 7.8360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a0a0e5e10_wrap_pyop2_kernel_prolong       4 0.0 7.7707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ba2662ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0e7ed6dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7714e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fcb5f9810_wrap_pyop2_kernel_prolong       4 0.0 7.7728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0d1c10a90_wrap_pyop2_kernel_prolong       4 0.0 7.7272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a8c51c6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3566797d0_wrap_pyop2_kernel_prolong       4 0.0 7.7873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a220800150_wrap_pyop2_kernel_prolong       4 0.0 7.7171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489d084ab90_wrap_pyop2_kernel_prolong       4 0.0 7.7739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c41539acd0_wrap_pyop2_kernel_prolong       4 0.0 7.7484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bb4cd0ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d298e8ca10_wrap_pyop2_kernel_prolong       4 0.0 7.7257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f563907ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da10d0a510_wrap_pyop2_kernel_prolong       4 0.0 7.7424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1c3702790_wrap_pyop2_kernel_prolong       4 0.0 7.7253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491894a9c90_wrap_pyop2_kernel_prolong       4 0.0 7.7190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153926911090_wrap_pyop2_kernel_prolong       4 0.0 7.7638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5340e5410_wrap_pyop2_kernel_prolong       4 0.0 7.7319e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14626f934a90_wrap_pyop2_kernel_prolong       4 0.0 7.7190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a4b8a9bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec7dcb0e50_wrap_pyop2_kernel_prolong       4 0.0 7.7604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515dd759090_wrap_pyop2_kernel_prolong       4 0.0 7.7143e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478380c9750_wrap_pyop2_kernel_prolong       4 0.0 7.7632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518046e8590_wrap_pyop2_kernel_prolong       4 0.0 7.7327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14815e3d2fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d868355b50_wrap_pyop2_kernel_prolong       4 0.0 7.7801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf1095250_wrap_pyop2_kernel_prolong       4 0.0 7.7634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a902bbd810_wrap_pyop2_kernel_prolong       4 0.0 7.7375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151633f9a590_wrap_pyop2_kernel_prolong       4 0.0 7.7524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154048910350_wrap_pyop2_kernel_prolong       4 0.0 7.7481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146245a9c510_wrap_pyop2_kernel_prolong       4 0.0 7.8136e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d1f955290_wrap_pyop2_kernel_prolong       4 0.0 7.7422e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bf257ed50_wrap_pyop2_kernel_prolong       4 0.0 7.7090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c508e82d90_wrap_pyop2_kernel_prolong       4 0.0 7.7216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153263b6ca90_wrap_pyop2_kernel_prolong       4 0.0 7.7316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14665138d150_wrap_pyop2_kernel_prolong       4 0.0 7.7493e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7b559d710_wrap_pyop2_kernel_prolong       4 0.0 7.7310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd5c3ff790_wrap_pyop2_kernel_prolong       4 0.0 7.7405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c309af1ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149619fa5410_wrap_pyop2_kernel_prolong       4 0.0 7.7270e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15291b1ff090_wrap_pyop2_kernel_prolong       4 0.0 7.7524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539ebe74c50_wrap_pyop2_kernel_prolong       4 0.0 7.7105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a8b8f8b50_wrap_pyop2_kernel_prolong       4 0.0 7.7172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147699457ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d94c25810_wrap_pyop2_kernel_prolong       4 0.0 7.7291e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f96ba09f90_wrap_pyop2_kernel_prolong       4 0.0 7.7376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c31a3fa790_wrap_pyop2_kernel_prolong       4 0.0 7.7397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b012bb150_wrap_pyop2_kernel_prolong       4 0.0 7.7342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529f6fd5b10_wrap_pyop2_kernel_prolong       4 0.0 7.7151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455fdf8cb10_wrap_pyop2_kernel_prolong       4 0.0 7.7375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466ce3a6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5a37b2590_wrap_pyop2_kernel_prolong       4 0.0 7.7216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501f4485650_wrap_pyop2_kernel_prolong       4 0.0 7.8260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15411747a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545b679b010_wrap_pyop2_kernel_prolong       4 0.0 7.7825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482b1bccf10_wrap_pyop2_kernel_prolong       4 0.0 7.8401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470d2862810_wrap_pyop2_kernel_prolong       4 0.0 7.8682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465833d5610_wrap_pyop2_kernel_prolong       4 0.0 7.8076e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c55b7bcd0_wrap_pyop2_kernel_prolong       4 0.0 7.7472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526d6b5d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.8565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea5149abd0_wrap_pyop2_kernel_prolong       4 0.0 7.8434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15052ffe5810_wrap_pyop2_kernel_prolong       4 0.0 7.8518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de99143550_wrap_pyop2_kernel_prolong       4 0.0 7.8318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536b64d4390_wrap_pyop2_kernel_prolong       4 0.0 7.8426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521a8850a50_wrap_pyop2_kernel_prolong       4 0.0 7.8216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cb96d7750_wrap_pyop2_kernel_prolong       4 0.0 7.7782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146de1616b10_wrap_pyop2_kernel_prolong       4 0.0 7.8024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb03ab9390_wrap_pyop2_kernel_prolong       4 0.0 7.8632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501cbc10cd0_wrap_pyop2_kernel_prolong       4 0.0 7.8236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e434516c10_wrap_pyop2_kernel_prolong       4 0.0 7.7169e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9c644a190_wrap_pyop2_kernel_prolong       4 0.0 7.7786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151808a2f810_wrap_pyop2_kernel_prolong       4 0.0 7.8500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8ee042650_wrap_pyop2_kernel_prolong       4 0.0 7.7581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149508bfa350_wrap_pyop2_kernel_prolong       4 0.0 7.7364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14869af60bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea33bf4f10_wrap_pyop2_kernel_prolong       4 0.0 7.7440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15205b5e2ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d770afd490_wrap_pyop2_kernel_prolong       4 0.0 7.7099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b376d9cd0_wrap_pyop2_kernel_prolong       4 0.0 7.8386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f4f95ae50_wrap_pyop2_kernel_prolong       4 0.0 7.7260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ef08a4050_wrap_pyop2_kernel_prolong       4 0.0 7.7406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d813cef50_wrap_pyop2_kernel_prolong       4 0.0 7.8416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14726de6f7d0_wrap_pyop2_kernel_prolong       4 0.0 7.8572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149076675c90_wrap_pyop2_kernel_prolong       4 0.0 7.8317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467fecafa90_wrap_pyop2_kernel_prolong       4 0.0 7.8427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461f50cb490_wrap_pyop2_kernel_prolong       4 0.0 7.8176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153656633110_wrap_pyop2_kernel_prolong       4 0.0 7.8158e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f504c7ec10_wrap_pyop2_kernel_prolong       4 0.0 7.7980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a001c0f790_wrap_pyop2_kernel_prolong       4 0.0 7.7775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a6d2d1410_wrap_pyop2_kernel_prolong       4 0.0 7.7902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522ce6ed090_wrap_pyop2_kernel_prolong       4 0.0 7.8348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b37ff90c50_wrap_pyop2_kernel_prolong       4 0.0 7.7614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152987555a50_wrap_pyop2_kernel_prolong       4 0.0 7.7924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8649c8990_wrap_pyop2_kernel_prolong       4 0.0 7.7488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516817babd0_wrap_pyop2_kernel_prolong       4 0.0 7.8402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14739ab57410_wrap_pyop2_kernel_prolong       4 0.0 7.7813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461de66c0d0_wrap_pyop2_kernel_prolong       4 0.0 7.8334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d62dffd90_wrap_pyop2_kernel_prolong       4 0.0 7.8568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b300e2c3d0_wrap_pyop2_kernel_prolong       4 0.0 7.8478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d9b6cabd0_wrap_pyop2_kernel_prolong       4 0.0 7.8207e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df3859ac90_wrap_pyop2_kernel_prolong       4 0.0 7.7813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f81ea5090_wrap_pyop2_kernel_prolong       4 0.0 7.8298e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c911d3250_wrap_pyop2_kernel_prolong       4 0.0 7.8139e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f2c126a90_wrap_pyop2_kernel_prolong       4 0.0 7.7440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f95116ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7407e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa4a6cbc10_wrap_pyop2_kernel_prolong       4 0.0 7.7503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d85225710_wrap_pyop2_kernel_prolong       4 0.0 7.7353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4ea4e4c10_wrap_pyop2_kernel_prolong       4 0.0 7.7382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f90c80810_wrap_pyop2_kernel_prolong       4 0.0 7.7594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542f3a5f090_wrap_pyop2_kernel_prolong       4 0.0 7.7510e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc2e234590_wrap_pyop2_kernel_prolong       4 0.0 7.7558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eadff1210_wrap_pyop2_kernel_prolong       4 0.0 7.7488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503cbe973d0_wrap_pyop2_kernel_prolong       4 0.0 7.7478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a65c70210_wrap_pyop2_kernel_prolong       4 0.0 7.7534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529ede0d350_wrap_pyop2_kernel_prolong       4 0.0 7.7762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b5666f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.7722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483e5430dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14892b037710_wrap_pyop2_kernel_prolong       4 0.0 7.7464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15236d1ad150_wrap_pyop2_kernel_prolong       4 0.0 7.7383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499de193ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f087e49350_wrap_pyop2_kernel_prolong       4 0.0 7.7458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147845fb2bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15332c1d5c10_wrap_pyop2_kernel_prolong       4 0.0 7.7533e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfd3908c90_wrap_pyop2_kernel_prolong       4 0.0 7.7384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470c1503710_wrap_pyop2_kernel_prolong       4 0.0 7.7640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14592ed24d10_wrap_pyop2_kernel_prolong       4 0.0 7.7504e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489e10d8a10_wrap_pyop2_kernel_prolong       4 0.0 7.7682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccc6900810_wrap_pyop2_kernel_prolong       4 0.0 7.7656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca164db350_wrap_pyop2_kernel_prolong       4 0.0 7.7732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151df1633a50_wrap_pyop2_kernel_prolong       4 0.0 7.7353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ad30d81d0_wrap_pyop2_kernel_prolong       4 0.0 7.7471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6aa47cc90_wrap_pyop2_kernel_prolong       4 0.0 7.7368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4598a4f90_wrap_pyop2_kernel_prolong       4 0.0 7.7469e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1a23b4a90_wrap_pyop2_kernel_prolong       4 0.0 7.7536e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15000aa9cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152585d9aad0_wrap_pyop2_kernel_prolong       4 0.0 7.7555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f40980bbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a602f0d10_wrap_pyop2_kernel_prolong       4 0.0 7.7546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153299a04b50_wrap_pyop2_kernel_prolong       4 0.0 7.7624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5cfee87d0_wrap_pyop2_kernel_prolong       4 0.0 7.7589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147181b021d0_wrap_pyop2_kernel_prolong       4 0.0 7.7370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad87a424d0_wrap_pyop2_kernel_prolong       4 0.0 7.7584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc007de950_wrap_pyop2_kernel_prolong       4 0.0 7.7523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbb6b26c10_wrap_pyop2_kernel_prolong       4 0.0 7.7640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0cac06b50_wrap_pyop2_kernel_prolong       4 0.0 7.7443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155062e6abd0_wrap_pyop2_kernel_prolong       4 0.0 7.7579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcb8c01850_wrap_pyop2_kernel_prolong       4 0.0 7.7585e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496519496d0_wrap_pyop2_kernel_prolong       4 0.0 7.7606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b83fa780d0_wrap_pyop2_kernel_prolong       4 0.0 7.7444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d09f6a5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527c08c9a50_wrap_pyop2_kernel_prolong       4 0.0 7.7601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5a014ab10_wrap_pyop2_kernel_prolong       4 0.0 7.7562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbbe0d7710_wrap_pyop2_kernel_prolong       4 0.0 7.7636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adfb2b8910_wrap_pyop2_kernel_prolong       4 0.0 7.7600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147649ca9510_wrap_pyop2_kernel_prolong       4 0.0 7.7845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151312b18190_wrap_pyop2_kernel_prolong       4 0.0 7.7182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522b9a651d0_wrap_pyop2_kernel_prolong       4 0.0 7.7267e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f9c8a6290_wrap_pyop2_kernel_prolong       4 0.0 7.7409e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c63624d10_wrap_pyop2_kernel_prolong       4 0.0 7.7290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ea1182a90_wrap_pyop2_kernel_prolong       4 0.0 7.7370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d65e842f90_wrap_pyop2_kernel_prolong       4 0.0 7.7666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145502471490_wrap_pyop2_kernel_prolong       4 0.0 7.7363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b5ccc8910_wrap_pyop2_kernel_prolong       4 0.0 7.7405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f42e36fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a1bab2e10_wrap_pyop2_kernel_prolong       4 0.0 7.7514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151856a14890_wrap_pyop2_kernel_prolong       4 0.0 7.7458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150319a5d150_wrap_pyop2_kernel_prolong       4 0.0 7.7505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525bca8bed0_wrap_pyop2_kernel_prolong       4 0.0 7.7652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d5d4acbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ed431c210_wrap_pyop2_kernel_prolong       4 0.0 7.7193e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154722e69850_wrap_pyop2_kernel_prolong       4 0.0 7.7367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f891512d0_wrap_pyop2_kernel_prolong       4 0.0 7.7438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef71693090_wrap_pyop2_kernel_prolong       4 0.0 7.7329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f82f75e10_wrap_pyop2_kernel_prolong       4 0.0 7.7611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ff70343d0_wrap_pyop2_kernel_prolong       4 0.0 7.7421e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c239a2f6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2a546bc90_wrap_pyop2_kernel_prolong       4 0.0 7.7620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14990bd8a990_wrap_pyop2_kernel_prolong       4 0.0 7.7365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a31e2aab10_wrap_pyop2_kernel_prolong       4 0.0 7.7421e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d114cc5f50_wrap_pyop2_kernel_prolong       4 0.0 7.7477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150114d85c50_wrap_pyop2_kernel_prolong       4 0.0 7.7485e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e751fee10_wrap_pyop2_kernel_prolong       4 0.0 7.7384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e886fdd690_wrap_pyop2_kernel_prolong       4 0.0 7.7313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14577242f290_wrap_pyop2_kernel_prolong       4 0.0 7.7316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f66e34fad0_wrap_pyop2_kernel_prolong       4 0.0 7.7390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b11082a310_wrap_pyop2_kernel_prolong       4 0.0 7.7611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15327544b250_wrap_pyop2_kernel_prolong       4 0.0 7.7573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae46e5f350_wrap_pyop2_kernel_prolong       4 0.0 7.7451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509a3642690_wrap_pyop2_kernel_prolong       4 0.0 7.7295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f41bd39610_wrap_pyop2_kernel_prolong       4 0.0 7.7490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cd33e0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcadc6a1d0_wrap_pyop2_kernel_prolong       4 0.0 7.7485e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14922ef37750_wrap_pyop2_kernel_prolong       4 0.0 7.7527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14564c9a4cd0_wrap_pyop2_kernel_prolong       4 0.0 7.7702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14801f534050_wrap_pyop2_kernel_prolong       4 0.0 7.7238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515ff09ad90_wrap_pyop2_kernel_prolong       4 0.0 7.7380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481af256bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a3c8ef450_wrap_pyop2_kernel_prolong       4 0.0 7.7341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2aed3f390_wrap_pyop2_kernel_prolong       4 0.0 7.7560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498d29e6850_wrap_pyop2_kernel_prolong       4 0.0 7.7390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ab42cca50_wrap_pyop2_kernel_prolong       4 0.0 7.7384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549c741aad0_wrap_pyop2_kernel_prolong       4 0.0 7.7334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab40acc590_wrap_pyop2_kernel_prolong       4 0.0 7.7438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1d4597890_wrap_pyop2_kernel_prolong       4 0.0 7.7518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e99cf39d0_wrap_pyop2_kernel_prolong       4 0.0 7.7604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b19a48450_wrap_pyop2_kernel_prolong       4 0.0 7.7567e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9bcb31090_wrap_pyop2_kernel_prolong       4 0.0 7.7630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 4.3823e-02 6.2 0.00e+00 0.0 5.6e+05 4.0e+00 2.2e+02  0  0  1  0  1   0  0  1  0  5    -0
SFSetGraph           225 1.0 5.4865e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 5.2232e-02 4.8 0.00e+00 0.0 1.1e+06 1.6e+01 2.2e+02  0  0  1  0  1   0  0  2  0  5    -0
SFPack            206248 1.1 1.9854e+00 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFUnpack          206248 1.1 2.4788e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             9744 1.0 1.6441e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             17862 1.0 3.3876e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAYPX            16240 1.0 3.5237e+00 1.5 1.97e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  3  0  0  0 456907
VecAXPBYCZ          3248 1.0 1.5618e-03 2.3 1.36e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 715465
VecScatterBegin   206248 1.1 9.7301e+00 1.5 0.00e+00 0.0 4.7e+07 5.5e+04 0.0e+00  1  0 55 28  0   4  0 94 100  0    -0
VecScatterEnd     206248 1.1 2.2109e+01 8.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
MatMult             9744 1.0 8.1155e+01 1.3 4.65e+10 1.2 4.3e+07 6.0e+04 0.0e+00 11  9 50 28  0  32 62 86 100  0 467812
MatMultAdd          3248 1.0 4.7953e+00 1.5 1.97e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 335699
MatMultTranspose    3248 1.0 3.5613e+00 2.3 1.97e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  3  0  0  0 452027
MatSolve           99064 1.2 1.2427e+02 1.2 2.31e+10 1.2 6.9e+06 4.0e+01 1.1e+03 16  4  8  0  5  50 30 14  0 26 151089
MatLUFactorNum       224 1.0 1.8638e+01 1.0 1.69e+07 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    21
MatResidual         3248 1.0 4.4121e+01 1.4 2.36e+10 1.2 1.4e+07 9.0e+04 0.0e+00  5  4 17 14  0  16 31 29 50  0 436259
PCSetUp              224 1.0 1.8640e+01 1.0 1.69e+07 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    21
PCSetUpOnBlocks     3248 1.0 1.5230e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             4872 1.0 1.5347e+02 1.2 2.31e+10 1.2 3.6e+07 6.8e+01 2.7e+03 21  4 41  0 13  64 31 71  0 63 122439
PCApplyOnBlocks    97440 1.2 5.3579e+01 1.8 2.29e+10 1.2 0.0e+00 0.0e+00 0.0e+00  6  4  0  0  0  18 30  0  0  0 350339
KSPSolve            4872 1.0 1.9412e+02 1.2 4.80e+10 1.2 4.3e+07 3.0e+04 4.4e+03 27  9 50 14 21  81 64 86 50 100 201472
MGSmooth Level 0    1624 1.0 9.9821e+01 1.1 2.66e+08 12.0 3.6e+07 6.8e+01 4.4e+03 13  0 41  0 21  41  0 71  0 100   282
MGSmooth Level 1    3248 1.0 1.0427e+02 1.4 4.78e+10 1.2 7.2e+06 1.8e+05 0.0e+00 13  9  8 14  0  40 63 14 50  0 374788
MGResid Level 1     1624 1.0 4.3737e+01 1.4 2.36e+10 1.2 7.2e+06 1.8e+05 0.0e+00  5  4  8 14  0  16 31 14 50  0 440031
MGInterp Level 1    3248 1.0 7.7409e+00 1.5 3.93e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  5  0  0  0 415745
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   200            199
              Viewer     3              3
           Index Set  3481           3481
   IS L to G Mapping   137            133
             Section   294            294
   Star Forest Graph   293            292
              Vector  1622           1618
              Matrix   243            229
      Preconditioner    38             38
       Krylov Solver    36             36
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    73             74
            DM Label   206            206
          Quadrature    72             72
      Mesh Transform     1              1
       Swarm Cell DM     2              2
    GraphPartitioner    23             23
     Discrete System   105            106
           Weak Form   105            106
        Linear Space     6              6
          Dual Space    26             26
            FE Space     4              4

--- Event Stage 1: MG Apply

           Index Set   450            450
   Star Forest Graph   227            224
              Vector   449            449
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.55e-08
Average time for MPI_Barrier(): 6.8088e-06
Average time for zero size MPI_Send(): 2.95826e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_hmg/large.profile # (source: code)
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

