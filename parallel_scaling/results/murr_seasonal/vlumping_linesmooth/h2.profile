****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0694.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 07:24:41 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.078e+03     1.000   1.078e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.481e+12     1.141   1.411e+12  2.936e+14
Flops/sec:            1.374e+09     1.141   1.310e+09  2.724e+11
MPI Msg Count:        1.362e+05     3.986   7.704e+04  1.602e+07
MPI Msg Len (bytes):  1.436e+10     3.592   1.096e+05  1.756e+12
MPI Reductions:       1.335e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.8811e+02  54.6%  2.4045e+14  81.9%  6.045e+06  37.7%  1.798e+05       61.9%  1.021e+04  76.5%
 1:        MG Apply: 4.8962e+02  45.4%  5.3107e+13  18.1%  9.980e+06  62.3%  6.701e+04       38.1%  3.119e+03  23.4%

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

BuildTwoSided       1595 1.0 6.1143e+01 2.5 0.00e+00 0.0 2.3e+05 4.0e+00 1.4e+03  4  0  1  0 10   7  0  4  0 13    -0
BuildTwoSidedF      1273 1.0 6.1009e+01 2.5 0.00e+00 0.0 3.2e+05 1.4e+06 1.3e+03  4  0  2 25 10   7  0  5 41 12    -0
SFSetGraph           329 1.1 1.6361e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              322 1.1 4.1664e+00 96.3 0.00e+00 0.0 1.4e+05 1.1e+03 9.8e+01  0  0  1  0  1   0  0  2  0  1    -0
SFBcastBegin        1179 1.0 6.5527e-01 3.6 0.00e+00 0.0 1.2e+06 9.3e+04 0.0e+00  0  0  8  7  0   0  0 20 11  0    -0
SFBcastEnd          1179 1.0 2.0184e+01 62.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        606 1.0 1.6767e-01 5.3 0.00e+00 0.0 6.5e+05 1.1e+05 0.0e+00  0  0  4  4  0   0  0 11  7  0    -0
SFReduceEnd          606 1.0 5.7624e+00 53.3 7.32e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1552
SFFetchOpBegin         6 1.0 3.1680e-05 5.3 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 7.3532e-04 17.5 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.1313e-03 1.9 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.4760e-03 1.4 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  1  0  0   0  0  2  0  1    -0
SFSectionSF           51 1.0 4.5980e-03 2.7 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 9.1828e-05 3.3 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            170674 1.1 2.1057e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          170680 1.1 3.7299e-01 5.5 7.32e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23973
VecDot               291 1.0 1.2590e+00 7.3 2.35e+08 1.1 0.0e+00 0.0e+00 2.9e+02  0  0  0  0  2   0  0  0  0  3 37890
VecMDot             2979 1.0 3.8147e+01 2.0 1.64e+10 1.1 0.0e+00 0.0e+00 3.0e+03  2  1  0  0 22   4  1  0  0 29 87571
VecNorm             4272 1.0 1.1501e+01 3.4 3.44e+09 1.1 0.0e+00 0.0e+00 4.3e+03  1  0  0  0 32   1  0  0  0 42 60889
VecScale            3302 1.0 1.0643e+00 1.2 1.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 254302
VecCopy             2350 1.0 3.1908e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1352 1.0 1.1446e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              323 1.0 5.7098e-01 1.2 2.60e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 92734
VecWAXPY             544 1.0 1.1426e+00 1.2 3.16e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 56239
VecMAXPY            3302 1.0 2.4022e+01 1.1 1.88e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  2  0  0  0 159388
VecScatterBegin   168883 1.1 3.3203e+00 1.4 0.00e+00 0.0 3.6e+06 1.2e+05 0.0e+00  0  0 22 24  0   0  0 59 38  0    -0
VecScatterEnd     168883 1.1 2.4457e+01 15.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          17 1.0 6.1320e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       582 1.0 4.3294e-01 2.1 4.69e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 220372
VecReduceComm        291 1.0 3.3253e-01 30.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.9e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         368 1.0 1.2580e+00 2.5 4.45e+08 1.1 0.0e+00 0.0e+00 3.7e+02  0  0  0  0  3   0  0  0  0  4 71932
MatMult             3283 1.0 1.4072e+02 1.2 9.39e+10 1.1 3.6e+06 1.2e+05 0.0e+00 12  6 22 24  0  22  8 59 38  0 135317
MatSolve           82432 1.1 9.2986e+00 1.3 5.18e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 113274
MatLUFactorSym       225 1.1 6.3870e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      3907 1.1 9.6933e+00 1.0 1.15e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0 23080
MatCopy               97 1.0 5.1032e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 2.0472e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    5328 1.1 6.6572e+01 2.3 0.00e+00 0.0 3.2e+05 1.4e+06 1.3e+03  4  0  2 25 10   8  0  5 41 12    -0
MatAssemblyEnd      5328 1.1 1.8059e+01 6.8 3.25e+08 0.0 4.4e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0  1538
MatGetRowIJ          224 1.1 3.5375e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      17 1.0 2.3037e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2    -0
MatGetOrdering       224 1.1 3.9177e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       391 1.0 1.1272e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5927e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2609e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        198 1.0 2.1107e+00 1.3 2.87e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 275994
MatPtAPSymbolic        1 1.0 2.0257e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        99 1.0 1.4955e+01 1.0 1.15e+10 1.1 1.1e+05 3.4e+05 1.0e+02  1  1  1  2  1   3  1  2  3  1 155780
MatGetLocalMat        99 1.0 7.3423e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         99 1.0 4.5254e-01 2.3 0.00e+00 0.0 1.1e+05 3.4e+05 0.0e+00  0  0  1  2  0   0  0  2  3  0    -0
MatSetPreallCOO       32 1.0 6.4246e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.9630e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              292 1.0 7.0373e+01 1.0 3.45e+10 1.1 5.0e+05 1.7e+05 1.3e+03  7  2  3  5 10  12  3  8  8 13 99404
PCApply             2629 1.0 5.0068e+02 1.1 2.64e+11 1.1 1.0e+07 6.7e+04 3.1e+03 45 18 62 38 23 Multiple stages 106069
PCApplyOnBlocks    82432 1.1 1.0478e+01 1.3 6.27e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 121669
KSPSetUp             292 1.0 1.3977e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             292 1.0 6.4131e+02 1.0 3.73e+11 1.1 1.3e+07 7.8e+04 8.7e+03 59 26 80 57 65 Multiple stages 117148
KSPGMRESOrthog      2979 1.0 5.7240e+01 1.4 3.29e+10 1.1 0.0e+00 0.0e+00 3.0e+03  4  2  0  0 22   8  3  0  0 29 116721
DMRefine               2 1.0 2.3576e-01 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  0   0  0  0  0  1     2
DMPlexCreateGmsh       1 1.0 1.6945e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.3863e+00 303.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 8.6710e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
Mesh Migration         4 1.0 1.7456e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 2.0948e-03 839.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 2.4201e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.5739e-03 1.4 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.8762e-03 1.7 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 2.0634e-03 3.4 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 7.0976e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 8.0121e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 2.0399e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 6.7259e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 2.5992e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  1  0  2   0  0  3  0  2    -0
DMPlexDistField        7 1.0 3.7984e-03 1.3 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 6.0380e-03 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.1024e-04 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1628e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.4424e-03 1.7 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1628e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.4928e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.8859e-04 2.1 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.6205e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.9536e-04 1.8 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             34 1.0 1.0104e+03 1.0 1.48e+12 1.1 1.6e+07 1.1e+05 1.3e+04 94 100 97 100 94 Multiple stages 290520
SNESSetUp              1 1.0 6.1534e-05 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     565 1.0 5.0280e+01 1.1 5.13e+11 1.2 1.3e+06 1.2e+05 0.0e+00  4 34  8  8  0   8 42 21 14  0 1999347
SNESJacobianEval     292 1.0 2.3377e+02 1.0 5.54e+11 1.2 6.4e+05 7.6e+05 1.2e+03 22 37  4 27  9  40 45 11 44 11 465670
SNESLineSearch       291 1.0 5.2540e+01 1.0 4.92e+11 1.2 1.5e+06 1.2e+05 1.4e+03  5 33  9 10 11   9 40 24 16 14 1836803
DualSpaceSetUp         8 1.0 5.1156e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.9987e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.0755e+03 1.0 1.48e+12 1.1 1.6e+07 1.1e+05 1.3e+04 100 100 100 100 100 Multiple stages 272940
firedrake.__init__       1 1.0 1.1626e+01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 5.5370e+00 33.1 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  0  0  2  0  3   0  0  6  0  4    -0
firedrake.mesh._from_gmsh       1 1.0 5.3873e+00 303.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0698e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 7.0960e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.8116e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0522e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 3.3804e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.7992e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.1542e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.9089e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.8966e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.2857e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 9.9808e-03 1.8 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.6500e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.6561e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 4.6232e-02 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.2136e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.4089e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.2556e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3242e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.2071e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     400 1.0 6.4988e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      4013 1.0 2.3818e+02 1.2 1.07e+12 1.2 1.0e+06 1.1e+05 3.2e+01 20 71  6  7  0  37 87 17 11  0 879017
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.1609e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    8026 1.0 2.6198e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0805e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.4085e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5202e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.5130e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.5129e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.9047e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.6459e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    4013 1.0 1.1564e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      4013 1.0 1.0714e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.0295e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.5974e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   322
firedrake.interpolation.interpolate      13 1.0 4.8134e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.9903e+00 1.0 8.46e+07 1.1 2.8e+04 4.0e+04 3.7e+01  1  0  0  0  0   1  0  0  0  0  2870
firedrake.formmanipulation.split_form      14 1.0 5.0588e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.7222e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.6030e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0139e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     912 1.0 4.9296e+00 14.3 0.00e+00 0.0 1.0e+06 1.1e+05 4.0e+00  0  0  6  7  0   0  0 17 11  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4949e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  3129
firedrake.halo.Halo.global_to_local_end     912 1.0 1.9608e+01 137.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.7809e+00 74.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e7737ee10_wrap_pyop2_kernel_prolong       4 0.0 7.5088e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e770d4bd0_wrap_pyop2_kernel_prolong       4 0.0 4.9231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9796e+00 1.0 6.85e+07 1.1 1.7e+04 5.8e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  3501
firedrake.function.Function.assign     150 1.0 9.3286e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     149 1.0 8.9297e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2338e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      70 1.0 8.1487e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.5170e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.6506e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.0156e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.3856e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.4809e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.8504e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.7611e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1966e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1966e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.0695e+00 1.1 0.00e+00 0.0 5.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.5619e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      34 1.0 1.0105e+03 1.0 1.48e+12 1.1 1.6e+07 1.1e+05 1.3e+04 94 100 97 100 95 Multiple stages 290483
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0752e-01 1156.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.4020e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0747e-01 1392.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0744e-01 1606.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1130 1.0 1.3732e+01 1.4 1.31e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   2 11  0  0  0 1937414
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1130 1.0 1.1451e+00 1.1 1.68e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2988
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1130 1.0 1.4964e+00 1.1 1.35e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 21962
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1130 1.0 8.9070e+00 1.2 1.24e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1 11  0  0  0 2838858
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1130 1.0 1.9709e+01 1.3 2.57e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 17  0  0  0   3 20  0  0  0 2465444
firedrake.halo.Halo.local_to_global_begin     565 1.0 1.8798e-01 4.2 0.00e+00 0.0 6.2e+05 1.2e+05 0.0e+00  0  0  4  4  0   0  0 10  7  0    -0
firedrake.halo.Halo.local_to_global_end     565 1.0 5.7679e+00 50.8 7.32e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1550
Parloop_Cells_wrap_form00_cell_integral     584 1.0 3.8767e+01 1.4 1.26e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   5 11  0  0  0 658641
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     584 1.0 2.3781e+00 1.9 7.02e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7185
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     584 1.0 4.6778e+01 1.2 1.65e+11 1.1 0.0e+00 0.0e+00 0.0e+00  4 11  0  0  0   7 14  0  0  0 718073
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     584 1.0 1.0402e+02 1.4 2.63e+11 1.3 0.0e+00 0.0e+00 0.0e+00  8 17  0  0  0  15 21  0  0  0 477694
firedrake.dmhooks.get_function_space       2 1.0 2.0314e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 1.3026e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       99 1.0 9.3644e+00 1.0 6.21e+07 21.9 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   226
MGSetup Level 1       99 1.0 1.7476e+00 1.0 6.16e+08 1.1 1.1e+04 1.2e+05 2.5e+02  0  0  0  0  2   0  0  0  0  2 71561
firedrake.constant.Constant.assign      34 1.0 1.6649e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150390bb2f90_wrap_pyop2_kernel_prolong       4 0.0 7.4934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150390de6310_wrap_pyop2_kernel_prolong       4 0.0 4.9040e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a795efb90_wrap_pyop2_kernel_prolong       4 0.0 7.5145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a79807e50_wrap_pyop2_kernel_prolong       4 0.0 6.2599e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d590b93c90_wrap_pyop2_kernel_prolong       4 0.0 7.4490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d590bca090_wrap_pyop2_kernel_prolong       4 0.0 5.6022e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0304fc2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0304d58d0_wrap_pyop2_kernel_prolong       4 0.0 6.8142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aab7c0ce10_wrap_pyop2_kernel_prolong       4 0.0 7.4881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aab7c265d0_wrap_pyop2_kernel_prolong       4 0.0 6.2997e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493f3d6e810_wrap_pyop2_kernel_prolong       4 0.0 7.4054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493f3d6ec50_wrap_pyop2_kernel_prolong       4 0.0 5.0525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c5b1426d0_wrap_pyop2_kernel_prolong       4 0.0 7.5116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c5b333410_wrap_pyop2_kernel_prolong       4 0.0 5.0898e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15544d387c50_wrap_pyop2_kernel_prolong       4 0.0 7.4677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15544d27d390_wrap_pyop2_kernel_prolong       4 0.0 5.3058e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517107275d0_wrap_pyop2_kernel_prolong       4 0.0 7.5066e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151710725c10_wrap_pyop2_kernel_prolong       4 0.0 5.3675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14796b868c10_wrap_pyop2_kernel_prolong       4 0.0 7.5054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14796b86a250_wrap_pyop2_kernel_prolong       4 0.0 6.2703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482f9e1a790_wrap_pyop2_kernel_prolong       4 0.0 7.5008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482f9e11ad0_wrap_pyop2_kernel_prolong       4 0.0 5.8833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532d759ad10_wrap_pyop2_kernel_prolong       4 0.0 7.5023e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532d7565890_wrap_pyop2_kernel_prolong       4 0.0 7.1877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15490d384510_wrap_pyop2_kernel_prolong       4 0.0 7.4108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15490d501c90_wrap_pyop2_kernel_prolong       4 0.0 5.7452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb6897d190_wrap_pyop2_kernel_prolong       4 0.0 7.4201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb63fc8090_wrap_pyop2_kernel_prolong       4 0.0 6.2978e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504930dd150_wrap_pyop2_kernel_prolong       4 0.0 7.4473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150492f7eb10_wrap_pyop2_kernel_prolong       4 0.0 7.3920e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465e6a31e10_wrap_pyop2_kernel_prolong       4 0.0 7.4586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465e6a33710_wrap_pyop2_kernel_prolong       4 0.0 4.8932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdf135f290_wrap_pyop2_kernel_prolong       4 0.0 7.4655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdf1c62410_wrap_pyop2_kernel_prolong       4 0.0 5.9992e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ded96739d0_wrap_pyop2_kernel_prolong       4 0.0 7.4150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ded9670050_wrap_pyop2_kernel_prolong       4 0.0 7.4480e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a440128190_wrap_pyop2_kernel_prolong       4 0.0 7.4562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a44010b250_wrap_pyop2_kernel_prolong       4 0.0 5.6289e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493f3b5bf10_wrap_pyop2_kernel_prolong       4 0.0 7.4093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493f3b31e90_wrap_pyop2_kernel_prolong       4 0.0 4.9322e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bca69d24d0_wrap_pyop2_kernel_prolong       4 0.0 7.4108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bca69d1b10_wrap_pyop2_kernel_prolong       4 0.0 5.3813e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faf2c87310_wrap_pyop2_kernel_prolong       4 0.0 7.5070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faf2cb2210_wrap_pyop2_kernel_prolong       4 0.0 6.2322e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14894b73f310_wrap_pyop2_kernel_prolong       4 0.0 7.4574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14894b745f50_wrap_pyop2_kernel_prolong       4 0.0 6.9442e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d3f073390_wrap_pyop2_kernel_prolong       4 0.0 7.4503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d3f1b1850_wrap_pyop2_kernel_prolong       4 0.0 6.3263e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f71e5db50_wrap_pyop2_kernel_prolong       4 0.0 7.4630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f7149dd90_wrap_pyop2_kernel_prolong       4 0.0 7.4259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdea86e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4146e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdea5fa850_wrap_pyop2_kernel_prolong       4 0.0 5.6618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d92081b310_wrap_pyop2_kernel_prolong       4 0.0 7.4227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d920a5f690_wrap_pyop2_kernel_prolong       4 0.0 5.4347e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dac6ee290_wrap_pyop2_kernel_prolong       4 0.0 7.4284e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dacfe22d0_wrap_pyop2_kernel_prolong       4 0.0 6.1612e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15060e828b50_wrap_pyop2_kernel_prolong       4 0.0 7.4801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15060e874590_wrap_pyop2_kernel_prolong       4 0.0 6.1034e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d830d67510_wrap_pyop2_kernel_prolong       4 0.0 7.4348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d830d11790_wrap_pyop2_kernel_prolong       4 0.0 6.3423e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8d4e2c350_wrap_pyop2_kernel_prolong       4 0.0 7.4854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8d4e2d750_wrap_pyop2_kernel_prolong       4 0.0 5.4268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15254e7eb790_wrap_pyop2_kernel_prolong       4 0.0 7.4875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15254eaa4550_wrap_pyop2_kernel_prolong       4 0.0 5.4617e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e94381a350_wrap_pyop2_kernel_prolong       4 0.0 7.4937e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e943815d90_wrap_pyop2_kernel_prolong       4 0.0 6.1309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afaf82c7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afaf82f410_wrap_pyop2_kernel_prolong       4 0.0 6.6778e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da8ac67050_wrap_pyop2_kernel_prolong       4 0.0 7.4360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da8b7d2490_wrap_pyop2_kernel_prolong       4 0.0 5.6690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d08ef7190_wrap_pyop2_kernel_prolong       4 0.0 7.4887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d08ef5090_wrap_pyop2_kernel_prolong       4 0.0 7.0441e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb4ca9a350_wrap_pyop2_kernel_prolong       4 0.0 7.4739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb4d132050_wrap_pyop2_kernel_prolong       4 0.0 6.4771e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15533149aa10_wrap_pyop2_kernel_prolong       4 0.0 7.4999e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155331495fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155443f3a450_wrap_pyop2_kernel_prolong       4 0.0 7.4729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15544193cbd0_wrap_pyop2_kernel_prolong       4 0.0 5.8514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3dc5d6050_wrap_pyop2_kernel_prolong       4 0.0 7.4466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3dc5d4090_wrap_pyop2_kernel_prolong       4 0.0 6.8242e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506f5742890_wrap_pyop2_kernel_prolong       4 0.0 7.4627e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506f5608c10_wrap_pyop2_kernel_prolong       4 0.0 6.3674e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15285773d190_wrap_pyop2_kernel_prolong       4 0.0 7.4685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528579b4410_wrap_pyop2_kernel_prolong       4 0.0 6.3444e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473559dfad0_wrap_pyop2_kernel_prolong       4 0.0 7.4062e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147355282250_wrap_pyop2_kernel_prolong       4 0.0 5.5624e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513cd209a90_wrap_pyop2_kernel_prolong       4 0.0 7.4890e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513cd0bdb90_wrap_pyop2_kernel_prolong       4 0.0 7.4744e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edc5089110_wrap_pyop2_kernel_prolong       4 0.0 7.4363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edc5049e50_wrap_pyop2_kernel_prolong       4 0.0 5.8857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ec2976310_wrap_pyop2_kernel_prolong       4 0.0 7.5077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ec2974b10_wrap_pyop2_kernel_prolong       4 0.0 7.3614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519535d65d0_wrap_pyop2_kernel_prolong       4 0.0 7.4489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519535b26d0_wrap_pyop2_kernel_prolong       4 0.0 6.8220e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151336ae1fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151336ae3250_wrap_pyop2_kernel_prolong       4 0.0 6.1146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15113f5dfc90_wrap_pyop2_kernel_prolong       4 0.0 7.4645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15113f494110_wrap_pyop2_kernel_prolong       4 0.0 7.2862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476dcf0d5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476dc0ab090_wrap_pyop2_kernel_prolong       4 0.0 6.5320e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbb45d31d0_wrap_pyop2_kernel_prolong       4 0.0 7.4848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbb45d0d90_wrap_pyop2_kernel_prolong       4 0.0 7.6949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14927e07d990_wrap_pyop2_kernel_prolong       4 0.0 7.4041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14927df22090_wrap_pyop2_kernel_prolong       4 0.0 5.2494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b5654e590_wrap_pyop2_kernel_prolong       4 0.0 7.4080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b55c66fd0_wrap_pyop2_kernel_prolong       4 0.0 5.2231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510ab56e650_wrap_pyop2_kernel_prolong       4 0.0 7.4111e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510ab5960d0_wrap_pyop2_kernel_prolong       4 0.0 5.2400e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ac767edd0_wrap_pyop2_kernel_prolong       4 0.0 7.4218e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151acde5cfd0_wrap_pyop2_kernel_prolong       4 0.0 4.9018e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e68ffcf2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4079e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e68ffce990_wrap_pyop2_kernel_prolong       4 0.0 5.6797e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491af941290_wrap_pyop2_kernel_prolong       4 0.0 7.4102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491af95a7d0_wrap_pyop2_kernel_prolong       4 0.0 6.2554e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddf9ba6610_wrap_pyop2_kernel_prolong       4 0.0 7.4120e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddf9ba5dd0_wrap_pyop2_kernel_prolong       4 0.0 4.4868e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500cc9e9290_wrap_pyop2_kernel_prolong       4 0.0 7.4133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500cc8baed0_wrap_pyop2_kernel_prolong       4 0.0 5.8008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbea2b27d0_wrap_pyop2_kernel_prolong       4 0.0 7.4068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbe97f6c50_wrap_pyop2_kernel_prolong       4 0.0 5.6266e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b2ea0e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4138e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b2ea0c5d0_wrap_pyop2_kernel_prolong       4 0.0 5.3812e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b05725fa50_wrap_pyop2_kernel_prolong       4 0.0 7.4100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b05729f590_wrap_pyop2_kernel_prolong       4 0.0 6.1689e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469b3277d50_wrap_pyop2_kernel_prolong       4 0.0 7.4154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469b329d850_wrap_pyop2_kernel_prolong       4 0.0 6.8209e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549636cb8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549637e4190_wrap_pyop2_kernel_prolong       4 0.0 6.9601e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15357b3dba50_wrap_pyop2_kernel_prolong       4 0.0 7.4071e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15357b3d9110_wrap_pyop2_kernel_prolong       4 0.0 5.2040e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b68d01450_wrap_pyop2_kernel_prolong       4 0.0 7.4137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b68d5c210_wrap_pyop2_kernel_prolong       4 0.0 6.1538e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14734b19a410_wrap_pyop2_kernel_prolong       4 0.0 7.4210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14734b1bb7d0_wrap_pyop2_kernel_prolong       4 0.0 6.6730e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd1a273350_wrap_pyop2_kernel_prolong       4 0.0 7.4162e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd19ff8590_wrap_pyop2_kernel_prolong       4 0.0 5.9839e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b2f67bad0_wrap_pyop2_kernel_prolong       4 0.0 7.4160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b2f679490_wrap_pyop2_kernel_prolong       4 0.0 5.8954e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147532196b10_wrap_pyop2_kernel_prolong       4 0.0 7.4186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147532195850_wrap_pyop2_kernel_prolong       4 0.0 7.0136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d9f2e6ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d9f2e5410_wrap_pyop2_kernel_prolong       4 0.0 6.0048e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da62a831d0_wrap_pyop2_kernel_prolong       4 0.0 7.4064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da635c87d0_wrap_pyop2_kernel_prolong       4 0.0 5.2228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153900cf9290_wrap_pyop2_kernel_prolong       4 0.0 7.4194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153900d38250_wrap_pyop2_kernel_prolong       4 0.0 6.8793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf4aaf7490_wrap_pyop2_kernel_prolong       4 0.0 7.4105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf4aaf5290_wrap_pyop2_kernel_prolong       4 0.0 5.7971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503da647510_wrap_pyop2_kernel_prolong       4 0.0 7.4397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503d9f40390_wrap_pyop2_kernel_prolong       4 0.0 6.0526e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513517b05d0_wrap_pyop2_kernel_prolong       4 0.0 7.4403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513517af190_wrap_pyop2_kernel_prolong       4 0.0 6.7520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f291ee7a50_wrap_pyop2_kernel_prolong       4 0.0 7.4166e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f291d69f50_wrap_pyop2_kernel_prolong       4 0.0 7.4115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bce0cb7f50_wrap_pyop2_kernel_prolong       4 0.0 7.4236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bce0cb7d50_wrap_pyop2_kernel_prolong       4 0.0 6.0530e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d20e44e10_wrap_pyop2_kernel_prolong       4 0.0 7.4110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d20dea250_wrap_pyop2_kernel_prolong       4 0.0 6.0380e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb79d8b490_wrap_pyop2_kernel_prolong       4 0.0 7.4094e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb79d8a910_wrap_pyop2_kernel_prolong       4 0.0 6.1692e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f363d52e50_wrap_pyop2_kernel_prolong       4 0.0 7.4192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f363f91c10_wrap_pyop2_kernel_prolong       4 0.0 6.1744e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151642425310_wrap_pyop2_kernel_prolong       4 0.0 7.4426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151642662010_wrap_pyop2_kernel_prolong       4 0.0 5.3760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548bb298d90_wrap_pyop2_kernel_prolong       4 0.0 7.4367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548bb2e3050_wrap_pyop2_kernel_prolong       4 0.0 7.3440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb105cbdd0_wrap_pyop2_kernel_prolong       4 0.0 7.4041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb105da110_wrap_pyop2_kernel_prolong       4 0.0 5.2565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c57c36d650_wrap_pyop2_kernel_prolong       4 0.0 7.4424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c57c26af90_wrap_pyop2_kernel_prolong       4 0.0 5.6481e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f4a313bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f4a31c2d0_wrap_pyop2_kernel_prolong       4 0.0 5.8308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459467d4b50_wrap_pyop2_kernel_prolong       4 0.0 7.4114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459467b8690_wrap_pyop2_kernel_prolong       4 0.0 6.6366e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d3f129cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4079e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d3efabed0_wrap_pyop2_kernel_prolong       4 0.0 5.8098e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481d2cab0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481d2a1bb50_wrap_pyop2_kernel_prolong       4 0.0 6.6231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539a4326350_wrap_pyop2_kernel_prolong       4 0.0 7.4174e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539a433d050_wrap_pyop2_kernel_prolong       4 0.0 7.0985e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e658560cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6585614d0_wrap_pyop2_kernel_prolong       4 0.0 5.9909e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed1d927910_wrap_pyop2_kernel_prolong       4 0.0 7.4310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed1c396290_wrap_pyop2_kernel_prolong       4 0.0 5.6037e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db4de15010_wrap_pyop2_kernel_prolong       4 0.0 7.4325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db4de16390_wrap_pyop2_kernel_prolong       4 0.0 6.8566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7e7b022d0_wrap_pyop2_kernel_prolong       4 0.0 7.4090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7e7d94590_wrap_pyop2_kernel_prolong       4 0.0 5.5173e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3d4b47b10_wrap_pyop2_kernel_prolong       4 0.0 7.4188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3d4bb8550_wrap_pyop2_kernel_prolong       4 0.0 6.9670e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15029d8ea9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15029cfcdc10_wrap_pyop2_kernel_prolong       4 0.0 6.8645e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14857130a350_wrap_pyop2_kernel_prolong       4 0.0 7.4131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14857118b750_wrap_pyop2_kernel_prolong       4 0.0 6.0673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462d8e27a50_wrap_pyop2_kernel_prolong       4 0.0 7.4178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462d8e25190_wrap_pyop2_kernel_prolong       4 0.0 6.0868e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac26a31110_wrap_pyop2_kernel_prolong       4 0.0 7.4121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac26a1c410_wrap_pyop2_kernel_prolong       4 0.0 6.6838e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a851d829d0_wrap_pyop2_kernel_prolong       4 0.0 7.4388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a851d81f10_wrap_pyop2_kernel_prolong       4 0.0 6.4384e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489869c4390_wrap_pyop2_kernel_prolong       4 0.0 7.4216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489869aa150_wrap_pyop2_kernel_prolong       4 0.0 6.4049e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b04f70950_wrap_pyop2_kernel_prolong       4 0.0 7.4184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b045627d0_wrap_pyop2_kernel_prolong       4 0.0 6.3871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15536f835a90_wrap_pyop2_kernel_prolong       4 0.0 7.4887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15536ee6ab90_wrap_pyop2_kernel_prolong       4 0.0 7.1250e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470278e9550_wrap_pyop2_kernel_prolong       4 0.0 7.6723e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470278abe50_wrap_pyop2_kernel_prolong       4 0.0 5.1393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa74133610_wrap_pyop2_kernel_prolong       4 0.0 7.6618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa74240610_wrap_pyop2_kernel_prolong       4 0.0 5.2410e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c80b506d0_wrap_pyop2_kernel_prolong       4 0.0 7.6753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c80a404d0_wrap_pyop2_kernel_prolong       4 0.0 5.6386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150efeedd490_wrap_pyop2_kernel_prolong       4 0.0 7.6718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150efeeaac90_wrap_pyop2_kernel_prolong       4 0.0 6.0656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5742e3a10_wrap_pyop2_kernel_prolong       4 0.0 7.6479e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5742e1e50_wrap_pyop2_kernel_prolong       4 0.0 6.0851e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15188938d6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151888bbb510_wrap_pyop2_kernel_prolong       4 0.0 7.3470e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c06bc6950_wrap_pyop2_kernel_prolong       4 0.0 7.6696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c06bc6110_wrap_pyop2_kernel_prolong       4 0.0 6.0619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b7bca350_wrap_pyop2_kernel_prolong       4 0.0 7.6672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b7bc9e90_wrap_pyop2_kernel_prolong       4 0.0 6.0372e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7078ec310_wrap_pyop2_kernel_prolong       4 0.0 7.5470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7078ee890_wrap_pyop2_kernel_prolong       4 0.0 5.6269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505b2486550_wrap_pyop2_kernel_prolong       4 0.0 7.6756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505b24a5d10_wrap_pyop2_kernel_prolong       4 0.0 5.9402e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a70f05cad0_wrap_pyop2_kernel_prolong       4 0.0 7.6620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a70f067890_wrap_pyop2_kernel_prolong       4 0.0 6.3803e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a919684590_wrap_pyop2_kernel_prolong       4 0.0 7.6699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9196870d0_wrap_pyop2_kernel_prolong       4 0.0 6.7011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e58dc7f9d0_wrap_pyop2_kernel_prolong       4 0.0 7.6686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e58dc9e390_wrap_pyop2_kernel_prolong       4 0.0 6.7131e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a725d3450_wrap_pyop2_kernel_prolong       4 0.0 7.6189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a7240cf50_wrap_pyop2_kernel_prolong       4 0.0 5.0509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499fd873950_wrap_pyop2_kernel_prolong       4 0.0 7.6440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499fcfa5310_wrap_pyop2_kernel_prolong       4 0.0 5.9150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14635b2de310_wrap_pyop2_kernel_prolong       4 0.0 7.5951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14635b2bb090_wrap_pyop2_kernel_prolong       4 0.0 6.6433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9d76d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9d4ea5d0_wrap_pyop2_kernel_prolong       4 0.0 5.6391e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e9f9e1c50_wrap_pyop2_kernel_prolong       4 0.0 7.5513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e9f9e1510_wrap_pyop2_kernel_prolong       4 0.0 5.5936e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15199244cd10_wrap_pyop2_kernel_prolong       4 0.0 7.5496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519926b6550_wrap_pyop2_kernel_prolong       4 0.0 6.1007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e0eaa3650_wrap_pyop2_kernel_prolong       4 0.0 7.6370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e0d80f810_wrap_pyop2_kernel_prolong       4 0.0 5.2201e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5834ef150_wrap_pyop2_kernel_prolong       4 0.0 7.6305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5834c2590_wrap_pyop2_kernel_prolong       4 0.0 4.7864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7e68e05d0_wrap_pyop2_kernel_prolong       4 0.0 7.6425e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7e68e1e90_wrap_pyop2_kernel_prolong       4 0.0 5.6992e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a36e2ae90_wrap_pyop2_kernel_prolong       4 0.0 7.5606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a36e28090_wrap_pyop2_kernel_prolong       4 0.0 5.4342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498e40f7f10_wrap_pyop2_kernel_prolong       4 0.0 7.5540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498e40bea50_wrap_pyop2_kernel_prolong       4 0.0 7.1514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c64958950_wrap_pyop2_kernel_prolong       4 0.0 7.6444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c65eef510_wrap_pyop2_kernel_prolong       4 0.0 5.2574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a9c9ad50_wrap_pyop2_kernel_prolong       4 0.0 7.5556e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a9ee1c90_wrap_pyop2_kernel_prolong       4 0.0 7.1650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481b9c180d0_wrap_pyop2_kernel_prolong       4 0.0 7.6106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481b9c3c310_wrap_pyop2_kernel_prolong       4 0.0 5.2913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504889798d0_wrap_pyop2_kernel_prolong       4 0.0 7.6538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150488629610_wrap_pyop2_kernel_prolong       4 0.0 6.0086e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecb22dad10_wrap_pyop2_kernel_prolong       4 0.0 7.6407e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecb2be64d0_wrap_pyop2_kernel_prolong       4 0.0 6.7266e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cadf0efd90_wrap_pyop2_kernel_prolong       4 0.0 7.6007e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cadf114c10_wrap_pyop2_kernel_prolong       4 0.0 5.6553e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150752af36d0_wrap_pyop2_kernel_prolong       4 0.0 7.5994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150752af3410_wrap_pyop2_kernel_prolong       4 0.0 6.5385e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff6ad37a10_wrap_pyop2_kernel_prolong       4 0.0 7.5704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff6ad37150_wrap_pyop2_kernel_prolong       4 0.0 6.6798e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489bd2d15d0_wrap_pyop2_kernel_prolong       4 0.0 7.5843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489bcbc5f50_wrap_pyop2_kernel_prolong       4 0.0 5.2409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493860aa650_wrap_pyop2_kernel_prolong       4 0.0 7.5566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493860d9c50_wrap_pyop2_kernel_prolong       4 0.0 6.5869e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15016f593a10_wrap_pyop2_kernel_prolong       4 0.0 7.5454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15016f590e50_wrap_pyop2_kernel_prolong       4 0.0 5.5528e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b2d05af90_wrap_pyop2_kernel_prolong       4 0.0 7.6388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b2d05a990_wrap_pyop2_kernel_prolong       4 0.0 6.0227e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15093912c390_wrap_pyop2_kernel_prolong       4 0.0 7.6213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15093916d390_wrap_pyop2_kernel_prolong       4 0.0 6.8232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14830f33b0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14830f0bacd0_wrap_pyop2_kernel_prolong       4 0.0 6.2311e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba6635410_wrap_pyop2_kernel_prolong       4 0.0 7.6106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba67f4890_wrap_pyop2_kernel_prolong       4 0.0 6.5025e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa1508ccd0_wrap_pyop2_kernel_prolong       4 0.0 7.5711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa150546d0_wrap_pyop2_kernel_prolong       4 0.0 6.0859e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146682c4de50_wrap_pyop2_kernel_prolong       4 0.0 7.5662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146682c9ce50_wrap_pyop2_kernel_prolong       4 0.0 6.5166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15401b67e390_wrap_pyop2_kernel_prolong       4 0.0 7.5845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15401b545a10_wrap_pyop2_kernel_prolong       4 0.0 5.8483e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154437b6a2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544379cb350_wrap_pyop2_kernel_prolong       4 0.0 5.9038e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d45082e90_wrap_pyop2_kernel_prolong       4 0.0 7.5629e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d45083010_wrap_pyop2_kernel_prolong       4 0.0 6.4050e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530be0025d0_wrap_pyop2_kernel_prolong       4 0.0 7.5707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530be087bd0_wrap_pyop2_kernel_prolong       4 0.0 7.1256e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14798dcb14d0_wrap_pyop2_kernel_prolong       4 0.0 7.5487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14798dcb6950_wrap_pyop2_kernel_prolong       4 0.0 5.9615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b602308690_wrap_pyop2_kernel_prolong       4 0.0 7.5973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b602311d90_wrap_pyop2_kernel_prolong       4 0.0 6.4823e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152700e3be90_wrap_pyop2_kernel_prolong       4 0.0 7.6557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527021db090_wrap_pyop2_kernel_prolong       4 0.0 5.9428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153407993b90_wrap_pyop2_kernel_prolong       4 0.0 7.5832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153407b25850_wrap_pyop2_kernel_prolong       4 0.0 5.9798e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ea016c9d0_wrap_pyop2_kernel_prolong       4 0.0 7.6126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ea016cc90_wrap_pyop2_kernel_prolong       4 0.0 7.4140e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c42cce44d0_wrap_pyop2_kernel_prolong       4 0.0 7.5843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c42cf2e910_wrap_pyop2_kernel_prolong       4 0.0 6.9186e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153016b13bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153016b45190_wrap_pyop2_kernel_prolong       4 0.0 7.1276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e839aff390_wrap_pyop2_kernel_prolong       4 0.0 7.5456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e839afe490_wrap_pyop2_kernel_prolong       4 0.0 5.6276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a698c8450_wrap_pyop2_kernel_prolong       4 0.0 7.6272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a63f5e450_wrap_pyop2_kernel_prolong       4 0.0 6.0725e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff4ae53d90_wrap_pyop2_kernel_prolong       4 0.0 7.5501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff4bba3dd0_wrap_pyop2_kernel_prolong       4 0.0 6.6708e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d71abef590_wrap_pyop2_kernel_prolong       4 0.0 7.6189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d71abedd90_wrap_pyop2_kernel_prolong       4 0.0 5.7521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cf37daf10_wrap_pyop2_kernel_prolong       4 0.0 7.6588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cf37d9ed0_wrap_pyop2_kernel_prolong       4 0.0 6.1093e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb611860d0_wrap_pyop2_kernel_prolong       4 0.0 7.6145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb611c20d0_wrap_pyop2_kernel_prolong       4 0.0 5.2889e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d13103450_wrap_pyop2_kernel_prolong       4 0.0 7.5461e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d13100390_wrap_pyop2_kernel_prolong       4 0.0 4.7335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15099d5a1b50_wrap_pyop2_kernel_prolong       4 0.0 7.5991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15099d5986d0_wrap_pyop2_kernel_prolong       4 0.0 5.5979e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530c3712850_wrap_pyop2_kernel_prolong       4 0.0 7.5490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530c36d1950_wrap_pyop2_kernel_prolong       4 0.0 6.4352e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489f3def8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489f34b7d10_wrap_pyop2_kernel_prolong       4 0.0 5.9809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc97db0fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc97df5910_wrap_pyop2_kernel_prolong       4 0.0 7.0803e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150239764390_wrap_pyop2_kernel_prolong       4 0.0 7.5506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15023975d3d0_wrap_pyop2_kernel_prolong       4 0.0 5.7489e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a758e7b650_wrap_pyop2_kernel_prolong       4 0.0 7.5774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7590c5810_wrap_pyop2_kernel_prolong       4 0.0 7.6547e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b3af78690_wrap_pyop2_kernel_prolong       4 0.0 7.5478e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b3af7a010_wrap_pyop2_kernel_prolong       4 0.0 6.0029e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150305e9ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.5502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503052a6310_wrap_pyop2_kernel_prolong       4 0.0 5.6947e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147230913bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472309137d0_wrap_pyop2_kernel_prolong       4 0.0 6.9004e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a617736f10_wrap_pyop2_kernel_prolong       4 0.0 7.5604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a617734e10_wrap_pyop2_kernel_prolong       4 0.0 6.6688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d017c3a710_wrap_pyop2_kernel_prolong       4 0.0 7.5530e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d017eadf90_wrap_pyop2_kernel_prolong       4 0.0 6.6580e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e436af610_wrap_pyop2_kernel_prolong       4 0.0 7.5535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e42c7ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.4124e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f99e40d50_wrap_pyop2_kernel_prolong       4 0.0 7.6064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f99e2db10_wrap_pyop2_kernel_prolong       4 0.0 4.9578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7a4d6c750_wrap_pyop2_kernel_prolong       4 0.0 7.5528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7a4d6d4d0_wrap_pyop2_kernel_prolong       4 0.0 6.0732e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d13844210_wrap_pyop2_kernel_prolong       4 0.0 7.5474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d182d4890_wrap_pyop2_kernel_prolong       4 0.0 6.4863e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e99ca6a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e99ca69650_wrap_pyop2_kernel_prolong       4 0.0 5.7186e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b560b1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b4ceddd0_wrap_pyop2_kernel_prolong       4 0.0 7.0575e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6e7cd3850_wrap_pyop2_kernel_prolong       4 0.0 7.6497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6e73d1e50_wrap_pyop2_kernel_prolong       4 0.0 6.4143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eba68dac50_wrap_pyop2_kernel_prolong       4 0.0 7.6633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eba6896250_wrap_pyop2_kernel_prolong       4 0.0 7.5946e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517d1ccf5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517d1ccdb90_wrap_pyop2_kernel_prolong       4 0.0 6.0675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15422e741510_wrap_pyop2_kernel_prolong       4 0.0 7.5913e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15422de0fcd0_wrap_pyop2_kernel_prolong       4 0.0 5.2604e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498d17fa650_wrap_pyop2_kernel_prolong       4 0.0 7.5976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498d17f9c90_wrap_pyop2_kernel_prolong       4 0.0 5.7485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd1445ea90_wrap_pyop2_kernel_prolong       4 0.0 7.6445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd1445f4d0_wrap_pyop2_kernel_prolong       4 0.0 5.4356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14637d2c2d10_wrap_pyop2_kernel_prolong       4 0.0 7.6266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14637d2b8f90_wrap_pyop2_kernel_prolong       4 0.0 6.4724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507becc4590_wrap_pyop2_kernel_prolong       4 0.0 7.6186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507beaa6490_wrap_pyop2_kernel_prolong       4 0.0 7.0522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a35b68a10_wrap_pyop2_kernel_prolong       4 0.0 7.5480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a35b6aa90_wrap_pyop2_kernel_prolong       4 0.0 5.6372e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151344d32350_wrap_pyop2_kernel_prolong       4 0.0 7.5529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151344d31b10_wrap_pyop2_kernel_prolong       4 0.0 6.4252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9bba72910_wrap_pyop2_kernel_prolong       4 0.0 7.5581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9bba37490_wrap_pyop2_kernel_prolong       4 0.0 6.6012e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464a6865650_wrap_pyop2_kernel_prolong       4 0.0 7.6318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464a6865d50_wrap_pyop2_kernel_prolong       4 0.0 6.3717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503ea0da390_wrap_pyop2_kernel_prolong       4 0.0 7.5564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503ea0da3d0_wrap_pyop2_kernel_prolong       4 0.0 7.3670e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493c4324bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493bf8fa310_wrap_pyop2_kernel_prolong       4 0.0 6.1998e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e7b7b59d0_wrap_pyop2_kernel_prolong       4 0.0 7.5567e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e7b8e0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5889e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536e3e96490_wrap_pyop2_kernel_prolong       4 0.0 7.5814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536e3e7e0d0_wrap_pyop2_kernel_prolong       4 0.0 5.6235e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bfc13eb10_wrap_pyop2_kernel_prolong       4 0.0 7.5465e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bfc13f8d0_wrap_pyop2_kernel_prolong       4 0.0 5.7520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d769c6b90_wrap_pyop2_kernel_prolong       4 0.0 7.5569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d769a5e50_wrap_pyop2_kernel_prolong       4 0.0 7.0798e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15205bb5c510_wrap_pyop2_kernel_prolong       4 0.0 7.6082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15205b2ce110_wrap_pyop2_kernel_prolong       4 0.0 6.5513e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae24a023d0_wrap_pyop2_kernel_prolong       4 0.0 7.5947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae1ff660d0_wrap_pyop2_kernel_prolong       4 0.0 6.7172e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a30a61f3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a30a61d490_wrap_pyop2_kernel_prolong       4 0.0 6.7180e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457c679a750_wrap_pyop2_kernel_prolong       4 0.0 7.5598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457c5dd3250_wrap_pyop2_kernel_prolong       4 0.0 5.9566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e2b3d8390_wrap_pyop2_kernel_prolong       4 0.0 7.6224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e2b3e2950_wrap_pyop2_kernel_prolong       4 0.0 5.9861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2aa571490_wrap_pyop2_kernel_prolong       4 0.0 7.6346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2aa570710_wrap_pyop2_kernel_prolong       4 0.0 7.0671e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd31022390_wrap_pyop2_kernel_prolong       4 0.0 7.5520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd3128a650_wrap_pyop2_kernel_prolong       4 0.0 6.1626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479b1ca25d0_wrap_pyop2_kernel_prolong       4 0.0 7.5559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479b1317c50_wrap_pyop2_kernel_prolong       4 0.0 6.9281e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14693411ca10_wrap_pyop2_kernel_prolong       4 0.0 7.5864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14693411db90_wrap_pyop2_kernel_prolong       4 0.0 6.8823e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487de92e450_wrap_pyop2_kernel_prolong       4 0.0 7.5574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487de92dd90_wrap_pyop2_kernel_prolong       4 0.0 7.4472e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         98 1.0 2.0152e-02 5.3 0.00e+00 0.0 1.3e+05 4.0e+00 9.8e+01  0  0  1  0  1   0  0  1  0  3    -0
SFSetGraph            98 1.0 4.2969e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               98 1.0 2.6796e-02 2.3 0.00e+00 0.0 2.7e+05 2.0e+02 9.8e+01  0  0  2  0  1   0  0  3  0  3    -0
SFPack           2379245 1.1 2.5450e+00 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2379245 1.1 1.3468e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2629 1.0 3.4434e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             21031 1.0 1.0916e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             5258 1.0 8.7147e+00 1.8 4.24e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  2  0  0  0 98907
VecAYPX             5258 1.0 8.2379e+00 3.4 2.12e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 52315
VecScatterBegin  2379245 1.1 3.1196e+01 1.2 0.00e+00 0.0 9.3e+06 7.2e+04 0.0e+00  3  0 58 38  0   6  0 93 100  0    -0
VecScatterEnd    2379245 1.1 3.4032e+01 12.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             5258 1.0 2.2256e+02 1.2 1.50e+11 1.1 5.7e+06 1.2e+05 0.0e+00 19 10 36 38  0  42 57 57 100  0 137031
MatMultAdd          2629 1.0 1.3145e+01 1.2 6.36e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  2  0  0  0 98355
MatMultTranspose    2629 1.0 1.0095e+01 2.1 6.36e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 128069
MatSolve         1180421 1.1 1.7658e+02 1.3 7.72e+10 1.1 4.2e+06 7.1e+02 4.9e+02 14  5 27  0  4  32 29 43  0 16 85767
MatLUFactorNum     61600 1.1 1.5442e+01 1.3 1.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  7  0  0  0 232148
MatResidual         2629 1.0 1.2406e+02 1.3 7.62e+10 1.1 2.9e+06 1.2e+05 0.0e+00 10  5 18 19  0  22 29 29 50  0 124657
MatAssemblyBegin   61600 1.1 1.2874e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     61600 1.1 1.4611e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     275 1.0 3.4658e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   7  0  0  0  0    -0
PCSetUp            61875 1.1 5.0434e+01 1.2 1.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  1  0  0  0  10  7  0  0  0 71079
PCApply             7887 1.0 2.6697e+02 1.2 9.48e+10 1.1 4.2e+06 7.1e+02 4.9e+02 23  6 27  0  4  50 35 43  0 16 70157
PCApplyOnBlocks  1177792 1.1 1.6203e+02 1.4 9.17e+10 1.1 0.0e+00 0.0e+00 0.0e+00 13  6  0  0  0  28 35  0  0  0 115009
KSPSetUp           61600 1.1 4.6442e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            7887 1.0 3.8004e+02 1.1 1.75e+11 1.1 7.1e+06 4.7e+04 3.1e+03 33 12 44 19 23  73 66 71 50 100 92245
MGSmooth Level 0    2629 1.0 5.1285e+01 1.8 3.15e+09 21.2 4.2e+06 7.1e+02 3.1e+03  3  0 27  0 23   7  0 43  0 100  1866
MGSmooth Level 1    5258 1.0 3.4677e+02 1.2 1.72e+11 1.1 2.9e+06 1.2e+05 0.0e+00 30 12 18 19  0  66 66 29 50  0 100818
MGResid Level 1     2629 1.0 1.2407e+02 1.3 7.62e+10 1.1 2.9e+06 1.2e+05 0.0e+00 10  5 18 19  0  22 29 29 50  0 124646
MGInterp Level 1    5258 1.0 2.3033e+01 1.4 1.27e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  5  0  0  0 112267
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   147            147
              Viewer     3              3
         PetscRandom    17             17
           Index Set  3833           3833
   IS L to G Mapping   431            431
             Section   472            472
   Star Forest Graph   628            726
              Vector  1620           1620
              Matrix  1251           1251
      Preconditioner   230            230
       Krylov Solver   245            245
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

           Index Set   196            196
   Star Forest Graph    98              0
              Vector    98             98
========================================================================================================================
Average time to get PetscTime(): 2.61e-08
Average time for MPI_Barrier(): 8.0476e-06
Average time for zero size MPI_Send(): 2.46798e-06
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

