****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0429.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 17:10:58 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.178e+03     1.000   1.178e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.691e+12     1.140   1.614e+12  3.358e+14
Flops/sec:            1.435e+09     1.140   1.370e+09  2.850e+11
MPI Msg Count:        1.167e+05     3.264   7.725e+04  1.607e+07
MPI Msg Len (bytes):  1.507e+10     3.596   1.147e+05  1.842e+12
MPI Reductions:       1.166e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.9955e+02  50.9%  2.4788e+14  73.8%  5.189e+06  32.3%  2.045e+05       57.6%  8.566e+03  73.5%
 1:        MG Apply: 5.7866e+02  49.1%  8.7887e+13  26.2%  1.088e+07  67.7%  7.179e+04       42.4%  3.073e+03  26.4%

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

BuildTwoSided       1638 1.0 8.4060e+01 3.9 0.00e+00 0.0 2.4e+05 4.0e+00 1.6e+03  5  0  1  0 14   9  0  5  0 19    -0
BuildTwoSidedF      1541 1.0 8.3028e+01 2.7 0.00e+00 0.0 3.4e+05 1.4e+06 1.5e+03  5  0  2 26 13  10  0  6 44 18    -0
SFSetGraph           104 1.0 8.3202e-03 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 2.8448e+00 100.7 0.00e+00 0.0 1.4e+05 1.1e+03 9.7e+01  0  0  1  0  1   0  0  3  0  1    -0
SFBcastBegin        1226 1.0 6.7057e-01 3.7 0.00e+00 0.0 1.3e+06 9.4e+04 0.0e+00  0  0  8  7  0   0  0 25 11  0    -0
SFBcastEnd          1226 1.0 2.3025e+01 110.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        639 1.0 2.2656e-01 6.4 0.00e+00 0.0 6.9e+05 1.1e+05 0.0e+00  0  0  4  4  0   0  0 13  7  0    -0
SFReduceEnd          639 1.0 6.5250e+00 49.6 7.75e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1450
SFFetchOpBegin         6 1.0 2.9848e-05 4.7 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 7.5448e-04 16.9 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.2177e-03 2.3 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.5360e-03 1.4 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  1  0  0   0  0  2  0  1    -0
SFSectionSF           51 1.0 4.2507e-03 3.1 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
SFRemoteOff            2 1.0 1.0656e-04 3.0 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4066 1.0 1.4881e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4072 1.0 3.7845e-01 5.5 7.75e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 25006
VecDot               307 1.0 1.2793e+00 8.1 2.48e+08 1.1 0.0e+00 0.0e+00 3.1e+02  0  0  0  0  3   0  0  0  0  4 39338
VecMDot             1888 1.0 2.7737e+01 2.3 6.90e+09 1.1 0.0e+00 0.0e+00 1.9e+03  1  0  0  0 16   3  1  0  0 22 50602
VecNorm             3442 1.0 1.2090e+01 4.0 2.78e+09 1.1 0.0e+00 0.0e+00 3.4e+03  1  0  0  0 30   1  0  0  0 40 46672
VecScale            2213 1.0 7.4528e-01 1.3 8.92e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 243383
VecCopy             2477 1.0 3.3494e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet               633 1.0 5.3339e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              325 1.0 5.3292e-01 1.2 2.62e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 99972
VecWAXPY             565 1.0 1.1723e+00 1.2 3.32e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 57544
VecMAXPY            2213 1.0 1.0991e+01 1.1 8.43e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 155859
VecScatterBegin     2195 1.0 8.9501e-01 2.7 0.00e+00 0.0 2.4e+06 1.2e+05 0.0e+00  0  0 15 15  0   0  0 46 26  0    -0
VecScatterEnd       2195 1.0 2.2452e+01 11.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          17 1.0 9.9522e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       614 1.0 4.2686e-01 1.4 4.95e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 235800
VecReduceComm        307 1.0 2.5289e-01 16.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.1e+02  0  0  0  0  3   0  0  0  0  4    -0
VecNormalize         368 1.0 1.3898e+00 2.5 4.45e+08 1.1 0.0e+00 0.0e+00 3.7e+02  0  0  0  0  3   0  0  0  0  4 65110
MatMult             2195 1.0 9.9343e+01 1.3 6.28e+10 1.1 2.4e+06 1.2e+05 0.0e+00  7  4 15 15  0  14  5 46 26  0 128159
MatSolve             368 1.0 1.5787e+01 1.3 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 130761
MatLUFactorSym         1 1.0 5.5472e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       324 1.0 2.5268e+01 1.0 4.44e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0 34160
MatILUFactorSym        1 1.0 1.4978e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    2204 1.0 8.8312e+01 2.2 0.00e+00 0.0 3.4e+05 1.4e+06 1.5e+03  6  0  2 26 13  11  0  6 44 18    -0
MatAssemblyEnd      2204 1.0 2.5143e+01 5.0 3.42e+08 0.0 4.4e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0  1162
MatGetRowIJ            1 1.0 5.7860e-06 50.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.2748e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       614 1.0 1.1912e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5495e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2409e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        614 1.0 5.7820e+00 1.2 8.91e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 312425
MatPtAPSymbolic        1 1.0 2.0006e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       307 1.0 4.2974e+01 1.0 3.56e+10 1.1 3.4e+05 3.5e+05 3.1e+02  4  2  2  6  3   7  3  6 11  4 168115
MatGetLocalMat       307 1.0 2.2808e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        307 1.0 1.3696e+00 2.3 0.00e+00 0.0 3.4e+05 3.5e+05 0.0e+00  0  0  2  6  0   0  0  6 11  0    -0
MatSetPreallCOO       32 1.0 7.0514e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.0991e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              307 1.0 1.1099e+02 1.0 6.71e+10 1.1 7.2e+05 2.2e+05 1.7e+03  9  4  4  9 15  19  5 14 15 20 122305
PCApply             1538 1.0 5.9009e+02 1.0 4.36e+11 1.1 1.1e+07 7.2e+04 3.1e+03 49 26 68 42 26 Multiple stages 148939
PCApplyOnBlocks      368 1.0 1.5790e+01 1.3 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 130733
KSPSetUp             307 1.0 1.4008e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             307 1.0 6.6392e+02 1.0 4.92e+11 1.1 1.3e+07 7.8e+04 6.5e+03 56 30 78 53 55 Multiple stages 149390
KSPGMRESOrthog      1888 1.0 3.5779e+01 1.7 1.38e+10 1.1 0.0e+00 0.0e+00 1.9e+03  2  1  0  0 16   4  1  0  0 22 78458
DMRefine               2 1.0 4.5866e-02 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     9
DMPlexCreateGmsh       1 1.0 1.3910e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 2.8830e+00 206.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 8.7941e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.7078e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexPartSelf         1 1.0 2.0566e-03 813.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.4309e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.6817e-03 1.2 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.0979e-03 4.2 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.8581e-03 3.8 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 6.3712e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.1092e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 2.0122e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 6.5462e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  0  0  1   0  0  1  0  2    -0
DMPlexDistOvrlp        3 1.0 1.5852e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexDistField        7 1.0 3.7823e-03 1.4 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 4.6101e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.1003e-04 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.2603e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.3730e-03 1.5 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.3505e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 4.4934e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.5731e-04 1.8 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.7342e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.9770e-04 1.8 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             33 1.0 1.1028e+03 1.0 1.69e+12 1.1 1.6e+07 1.2e+05 1.1e+04 94 100 97 100 93 Multiple stages 304451
SNESSetUp              1 1.0 7.9448e-05 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     598 1.0 5.4653e+01 1.2 5.42e+11 1.2 1.3e+06 1.2e+05 0.0e+00  4 32  8  8  0   8 43 26 15  0 1946812
SNESJacobianEval     307 1.0 2.5794e+02 1.0 5.82e+11 1.2 6.7e+05 7.6e+05 1.2e+03 22 34  4 27 11  43 46 13 48 14 443711
SNESLineSearch       307 1.0 5.6794e+01 1.0 5.23e+11 1.2 1.6e+06 1.2e+05 1.5e+03  5 31 10 10 13   9 41 30 17 17 1807740
DualSpaceSetUp         8 1.0 6.5848e-03 1.4 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     3
FESetUp                8 1.0 2.4913e-02 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.1759e+03 1.0 1.69e+12 1.1 1.6e+07 1.1e+05 1.2e+04 100 100 100 100 100 Multiple stages 285551
firedrake.__init__       1 1.0 1.9644e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
CreateMesh             3 1.0 3.0337e+00 18.4 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  0  0  2  0  4   0  0  7  0  5    -0
firedrake.mesh._from_gmsh       1 1.0 2.8837e+00 206.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.3276e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.6130e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.9991e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0502e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.0998e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.7155e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 2.9070e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.6741e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.6624e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 9.9906e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 6.5750e-03 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.4888e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3159e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 4.3297e-02 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.9801e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2115e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9660e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3208e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.9735e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     394 1.0 6.7567e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      4238 1.0 2.5256e+02 1.2 1.12e+12 1.2 1.1e+06 1.1e+05 3.2e+01 20 66  7  7  0  39 89 20 11  0 874366
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.9312e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    8476 1.0 2.7461e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.1037e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.2566e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.7618e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.6506e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.6505e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 1.0159e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 1.0008e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    4238 1.0 1.2260e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      4238 1.0 1.0877e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.4345e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.8257e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   313
firedrake.interpolation.interpolate      13 1.0 4.7316e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.5069e+00 1.0 8.46e+07 1.1 2.8e+04 4.0e+04 3.7e+01  1  0  0  0  0   1  0  1  0  0  2642
firedrake.formmanipulation.split_form      14 1.0 4.5430e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.4237e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 2.5420e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 2.0372e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     959 1.0 4.8235e+00 16.6 0.00e+00 0.0 1.1e+06 1.1e+05 4.0e+00  0  0  7  7  0   0  0 20 11  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.9164e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2906
firedrake.halo.Halo.global_to_local_end     959 1.0 1.9954e+01 113.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 3.8484e+00 60.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bc1af4390_wrap_pyop2_kernel_prolong       4 0.0 8.4690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bc1af4950_wrap_pyop2_kernel_prolong       4 0.0 4.9714e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.3068e+00 1.0 6.85e+07 1.1 1.7e+04 5.8e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  3235
firedrake.function.Function.assign     146 1.0 8.3817e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     145 1.0 7.9333e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.4492e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      70 1.0 7.4252e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.2309e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.6940e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9258e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.4422e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.5028e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.5795e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8105e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1882e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1881e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.0714e+00 1.1 0.00e+00 0.0 5.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.6686e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      33 1.0 1.1029e+03 1.0 1.69e+12 1.1 1.6e+07 1.2e+05 1.1e+04 94 100 97 100 94 Multiple stages 304417
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.6918e-01 1381.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1415e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.6913e-01 1678.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.6910e-01 1918.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1196 1.0 1.4559e+01 1.4 1.39e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   2 11  0  0  0 1934163
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1196 1.0 1.1606e+00 1.1 1.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3121
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1196 1.0 1.5692e+00 1.2 1.43e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 22166
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1196 1.0 9.3249e+00 1.2 1.32e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1 11  0  0  0 2870020
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1196 1.0 2.0733e+01 1.3 2.72e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 15  0  0  0   3 21  0  0  0 2480554
firedrake.halo.Halo.local_to_global_begin     598 1.0 2.4898e-01 5.1 0.00e+00 0.0 6.5e+05 1.2e+05 0.0e+00  0  0  4  4  0   0  0 13  7  0    -0
firedrake.halo.Halo.local_to_global_end     598 1.0 6.5307e+00 47.4 7.75e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1449
Parloop_Cells_wrap_form00_cell_integral     614 1.0 4.1398e+01 1.5 1.32e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   6 11  0  0  0 648456
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     614 1.0 2.4357e+00 2.0 7.38e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7376
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     614 1.0 4.8112e+01 1.2 1.74e+11 1.1 0.0e+00 0.0e+00 0.0e+00  4 11  0  0  0   7 14  0  0  0 734029
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     614 1.0 1.1138e+02 1.4 2.76e+11 1.3 0.0e+00 0.0e+00 0.0e+00  8 16  0  0  0  16 21  0  0  0 469063
firedrake.dmhooks.get_function_space       1 1.0 1.3988e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1071e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      307 1.0 2.3027e+01 1.0 1.87e+08 19.5 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   4  0  0  0  0   285
MGSetup Level 1      307 1.0 1.2992e+00 1.0 9.57e+08 1.1 1.1e+04 1.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 148274
firedrake.constant.Constant.assign      33 1.0 1.3774e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c34938a50_wrap_pyop2_kernel_prolong       4 0.0 8.4655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c34715c50_wrap_pyop2_kernel_prolong       4 0.0 5.1675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b339736390_wrap_pyop2_kernel_prolong       4 0.0 8.4595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b339737d10_wrap_pyop2_kernel_prolong       4 0.0 6.5969e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a3171f250_wrap_pyop2_kernel_prolong       4 0.0 8.4585e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a31716690_wrap_pyop2_kernel_prolong       4 0.0 5.8657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15331fba2690_wrap_pyop2_kernel_prolong       4 0.0 8.4726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15331fba1610_wrap_pyop2_kernel_prolong       4 0.0 7.0860e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a3ecdf590_wrap_pyop2_kernel_prolong       4 0.0 8.4640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a3e44dad0_wrap_pyop2_kernel_prolong       4 0.0 6.3853e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d2d245910_wrap_pyop2_kernel_prolong       4 0.0 8.4635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d2d237b90_wrap_pyop2_kernel_prolong       4 0.0 5.7602e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fc277da90_wrap_pyop2_kernel_prolong       4 0.0 8.4650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fc1d82590_wrap_pyop2_kernel_prolong       4 0.0 5.4165e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ab088acd0_wrap_pyop2_kernel_prolong       4 0.0 8.4626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ab0889690_wrap_pyop2_kernel_prolong       4 0.0 5.3309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bd1cfa2d0_wrap_pyop2_kernel_prolong       4 0.0 8.4525e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bd1cf9710_wrap_pyop2_kernel_prolong       4 0.0 5.6880e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0611368d0_wrap_pyop2_kernel_prolong       4 0.0 8.4690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0610e7d10_wrap_pyop2_kernel_prolong       4 0.0 6.6005e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e0e4cbc50_wrap_pyop2_kernel_prolong       4 0.0 8.4613e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e0e4c9490_wrap_pyop2_kernel_prolong       4 0.0 5.9168e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b87f0dfcd0_wrap_pyop2_kernel_prolong       4 0.0 8.4705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b87f0deb90_wrap_pyop2_kernel_prolong       4 0.0 7.1979e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a3e30a550_wrap_pyop2_kernel_prolong       4 0.0 8.4582e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a3e527fd0_wrap_pyop2_kernel_prolong       4 0.0 5.7514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506a584b250_wrap_pyop2_kernel_prolong       4 0.0 8.4541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506a57f1a50_wrap_pyop2_kernel_prolong       4 0.0 6.0523e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548ff77b990_wrap_pyop2_kernel_prolong       4 0.0 8.4677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548ff7f6650_wrap_pyop2_kernel_prolong       4 0.0 7.8236e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524b4730ad0_wrap_pyop2_kernel_prolong       4 0.0 8.4513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524b47c18d0_wrap_pyop2_kernel_prolong       4 0.0 4.8662e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7f712be90_wrap_pyop2_kernel_prolong       4 0.0 8.4512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7f712b550_wrap_pyop2_kernel_prolong       4 0.0 6.0503e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14647d8948d0_wrap_pyop2_kernel_prolong       4 0.0 8.4671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14647d835ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbd0c06010_wrap_pyop2_kernel_prolong       4 0.0 8.4497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbd0c07b90_wrap_pyop2_kernel_prolong       4 0.0 5.9318e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f8cb6e410_wrap_pyop2_kernel_prolong       4 0.0 8.4638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f8cb6eb10_wrap_pyop2_kernel_prolong       4 0.0 5.3600e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15542ffac710_wrap_pyop2_kernel_prolong       4 0.0 8.4594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15542ff8e950_wrap_pyop2_kernel_prolong       4 0.0 5.6392e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3598dda50_wrap_pyop2_kernel_prolong       4 0.0 8.4651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3598ddb10_wrap_pyop2_kernel_prolong       4 0.0 6.6257e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1d8f90bd0_wrap_pyop2_kernel_prolong       4 0.0 8.4643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1d8e664d0_wrap_pyop2_kernel_prolong       4 0.0 7.2598e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464edd1a390_wrap_pyop2_kernel_prolong       4 0.0 8.4556e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464edd1a790_wrap_pyop2_kernel_prolong       4 0.0 6.3330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eafd8eacd0_wrap_pyop2_kernel_prolong       4 0.0 8.4659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eafcb84610_wrap_pyop2_kernel_prolong       4 0.0 7.8554e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155048335e90_wrap_pyop2_kernel_prolong       4 0.0 8.4653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155048356fd0_wrap_pyop2_kernel_prolong       4 0.0 5.6528e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150526d47950_wrap_pyop2_kernel_prolong       4 0.0 8.4513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150526375e90_wrap_pyop2_kernel_prolong       4 0.0 5.4877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e22896810_wrap_pyop2_kernel_prolong       4 0.0 8.4520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e229dded0_wrap_pyop2_kernel_prolong       4 0.0 6.1976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd6ef4ead0_wrap_pyop2_kernel_prolong       4 0.0 8.4643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd6ef4db50_wrap_pyop2_kernel_prolong       4 0.0 6.1147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504e44aa5d0_wrap_pyop2_kernel_prolong       4 0.0 8.4639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504e470ac90_wrap_pyop2_kernel_prolong       4 0.0 6.4390e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b82e749c10_wrap_pyop2_kernel_prolong       4 0.0 8.4494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b82e745910_wrap_pyop2_kernel_prolong       4 0.0 5.7302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7245c6890_wrap_pyop2_kernel_prolong       4 0.0 8.4635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7245c5f90_wrap_pyop2_kernel_prolong       4 0.0 5.7646e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dcf6f5b50_wrap_pyop2_kernel_prolong       4 0.0 8.4700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dcf959990_wrap_pyop2_kernel_prolong       4 0.0 6.6435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14660dad61d0_wrap_pyop2_kernel_prolong       4 0.0 8.4562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14660dad5610_wrap_pyop2_kernel_prolong       4 0.0 6.7325e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e68f71d90_wrap_pyop2_kernel_prolong       4 0.0 8.4513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e68f738d0_wrap_pyop2_kernel_prolong       4 0.0 5.7300e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e6bd23f90_wrap_pyop2_kernel_prolong       4 0.0 8.4571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e6bd19e10_wrap_pyop2_kernel_prolong       4 0.0 7.0955e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d79bff1a50_wrap_pyop2_kernel_prolong       4 0.0 8.4659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d79b5ca410_wrap_pyop2_kernel_prolong       4 0.0 6.5818e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c3c559ad0_wrap_pyop2_kernel_prolong       4 0.0 8.4639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c3c5dbd50_wrap_pyop2_kernel_prolong       4 0.0 7.8094e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5777c8f10_wrap_pyop2_kernel_prolong       4 0.0 8.4546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e576b6a5d0_wrap_pyop2_kernel_prolong       4 0.0 5.5862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e423431e90_wrap_pyop2_kernel_prolong       4 0.0 8.4572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e42318d690_wrap_pyop2_kernel_prolong       4 0.0 6.3986e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456d61d2f50_wrap_pyop2_kernel_prolong       4 0.0 8.4657e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456d61d12d0_wrap_pyop2_kernel_prolong       4 0.0 6.4343e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14608cb859d0_wrap_pyop2_kernel_prolong       4 0.0 8.4605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14608cb7e050_wrap_pyop2_kernel_prolong       4 0.0 6.4024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7c8a61e10_wrap_pyop2_kernel_prolong       4 0.0 8.4500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7c8a61510_wrap_pyop2_kernel_prolong       4 0.0 5.5693e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514e4e587d0_wrap_pyop2_kernel_prolong       4 0.0 8.4667e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514e4eb7890_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512bb215d10_wrap_pyop2_kernel_prolong       4 0.0 8.4638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512bb21f1d0_wrap_pyop2_kernel_prolong       4 0.0 5.9557e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa62d56c90_wrap_pyop2_kernel_prolong       4 0.0 8.4706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa62e6cf10_wrap_pyop2_kernel_prolong       4 0.0 7.4332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155340162e50_wrap_pyop2_kernel_prolong       4 0.0 8.4700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553401598d0_wrap_pyop2_kernel_prolong       4 0.0 6.8042e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15114b0e4a10_wrap_pyop2_kernel_prolong       4 0.0 8.4520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15114a6e41d0_wrap_pyop2_kernel_prolong       4 0.0 5.8760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15215a0d0310_wrap_pyop2_kernel_prolong       4 0.0 8.4577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15215a9b6510_wrap_pyop2_kernel_prolong       4 0.0 7.2865e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155296c89e90_wrap_pyop2_kernel_prolong       4 0.0 8.4588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155296c895d0_wrap_pyop2_kernel_prolong       4 0.0 6.5452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539833aa490_wrap_pyop2_kernel_prolong       4 0.0 8.4755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153982ad8f90_wrap_pyop2_kernel_prolong       4 0.0 7.7822e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c84395b810_wrap_pyop2_kernel_prolong       4 0.0 8.4549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c84395abd0_wrap_pyop2_kernel_prolong       4 0.0 5.7841e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a026cc4810_wrap_pyop2_kernel_prolong       4 0.0 8.4692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a026cc6110_wrap_pyop2_kernel_prolong       4 0.0 5.3960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153717e76910_wrap_pyop2_kernel_prolong       4 0.0 8.4583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153717eea910_wrap_pyop2_kernel_prolong       4 0.0 5.6543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504fbd49bd0_wrap_pyop2_kernel_prolong       4 0.0 8.4535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504fb340810_wrap_pyop2_kernel_prolong       4 0.0 5.3030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151526fd5c90_wrap_pyop2_kernel_prolong       4 0.0 8.4706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151526fd72d0_wrap_pyop2_kernel_prolong       4 0.0 6.0618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529ad316b50_wrap_pyop2_kernel_prolong       4 0.0 8.4734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529aaea3190_wrap_pyop2_kernel_prolong       4 0.0 6.4105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511f17d5850_wrap_pyop2_kernel_prolong       4 0.0 8.4633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511f17cce10_wrap_pyop2_kernel_prolong       4 0.0 4.6353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482faed5bd0_wrap_pyop2_kernel_prolong       4 0.0 8.4631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482faed5490_wrap_pyop2_kernel_prolong       4 0.0 6.0198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15092cecf7d0_wrap_pyop2_kernel_prolong       4 0.0 8.4539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15092cc77f50_wrap_pyop2_kernel_prolong       4 0.0 5.7784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fd2ba9e90_wrap_pyop2_kernel_prolong       4 0.0 8.4533e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fd29914d0_wrap_pyop2_kernel_prolong       4 0.0 5.7466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d3eb859d0_wrap_pyop2_kernel_prolong       4 0.0 8.4707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d3eb87410_wrap_pyop2_kernel_prolong       4 0.0 6.3748e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d1d7fdb50_wrap_pyop2_kernel_prolong       4 0.0 8.4790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d1d7fd250_wrap_pyop2_kernel_prolong       4 0.0 7.0504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d6614a5d0_wrap_pyop2_kernel_prolong       4 0.0 8.4636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d66148650_wrap_pyop2_kernel_prolong       4 0.0 7.0612e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154be36e4bd0_wrap_pyop2_kernel_prolong       4 0.0 8.4532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154be2d19e90_wrap_pyop2_kernel_prolong       4 0.0 5.5510e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14927485b850_wrap_pyop2_kernel_prolong       4 0.0 8.4639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149274837ed0_wrap_pyop2_kernel_prolong       4 0.0 6.3038e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dec89b490_wrap_pyop2_kernel_prolong       4 0.0 8.4559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dec8941d0_wrap_pyop2_kernel_prolong       4 0.0 6.8064e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460f1e56210_wrap_pyop2_kernel_prolong       4 0.0 8.4737e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460f1e55990_wrap_pyop2_kernel_prolong       4 0.0 5.7651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150193e9a610_wrap_pyop2_kernel_prolong       4 0.0 8.4603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150193e9e2d0_wrap_pyop2_kernel_prolong       4 0.0 6.3115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7f805f490_wrap_pyop2_kernel_prolong       4 0.0 8.4607e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7f828ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.1800e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b00585990_wrap_pyop2_kernel_prolong       4 0.0 8.4649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b0066f190_wrap_pyop2_kernel_prolong       4 0.0 6.4145e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15028590ed50_wrap_pyop2_kernel_prolong       4 0.0 8.4529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15028590f990_wrap_pyop2_kernel_prolong       4 0.0 5.3696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcd1bef490_wrap_pyop2_kernel_prolong       4 0.0 8.4759e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcd1c7d790_wrap_pyop2_kernel_prolong       4 0.0 7.0060e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f90e59d150_wrap_pyop2_kernel_prolong       4 0.0 8.4507e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f90e6c0290_wrap_pyop2_kernel_prolong       4 0.0 5.9586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd2fb990d0_wrap_pyop2_kernel_prolong       4 0.0 8.4510e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd2fbc5c50_wrap_pyop2_kernel_prolong       4 0.0 6.3657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f721bcbdd0_wrap_pyop2_kernel_prolong       4 0.0 8.4663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f721bc2150_wrap_pyop2_kernel_prolong       4 0.0 7.2010e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ddb744910_wrap_pyop2_kernel_prolong       4 0.0 8.4761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ddb73d410_wrap_pyop2_kernel_prolong       4 0.0 7.5864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14673ab58210_wrap_pyop2_kernel_prolong       4 0.0 8.4571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14673ab52010_wrap_pyop2_kernel_prolong       4 0.0 6.1778e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492cd0ff710_wrap_pyop2_kernel_prolong       4 0.0 8.4694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492cd195910_wrap_pyop2_kernel_prolong       4 0.0 6.1874e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15499dfbe650_wrap_pyop2_kernel_prolong       4 0.0 8.4734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15499dfbdf10_wrap_pyop2_kernel_prolong       4 0.0 6.3060e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c5701ff10_wrap_pyop2_kernel_prolong       4 0.0 8.4700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c56ea5590_wrap_pyop2_kernel_prolong       4 0.0 6.2618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8d0b61ed0_wrap_pyop2_kernel_prolong       4 0.0 8.4583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8d0b61850_wrap_pyop2_kernel_prolong       4 0.0 5.5453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2dad95ad0_wrap_pyop2_kernel_prolong       4 0.0 8.4801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2dad97a50_wrap_pyop2_kernel_prolong       4 0.0 7.5185e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd3db6b710_wrap_pyop2_kernel_prolong       4 0.0 8.4519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd3db69490_wrap_pyop2_kernel_prolong       4 0.0 5.0948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14753fa26110_wrap_pyop2_kernel_prolong       4 0.0 8.4658e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14753fa25750_wrap_pyop2_kernel_prolong       4 0.0 5.7723e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b6dacb810_wrap_pyop2_kernel_prolong       4 0.0 8.4577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b6d904750_wrap_pyop2_kernel_prolong       4 0.0 5.9806e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513b4819d10_wrap_pyop2_kernel_prolong       4 0.0 8.4756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513b481b990_wrap_pyop2_kernel_prolong       4 0.0 6.8371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cd43053d0_wrap_pyop2_kernel_prolong       4 0.0 8.4599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cd4306310_wrap_pyop2_kernel_prolong       4 0.0 5.8759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469c0e3ac10_wrap_pyop2_kernel_prolong       4 0.0 8.4741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469c1049dd0_wrap_pyop2_kernel_prolong       4 0.0 6.4832e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efbee63dd0_wrap_pyop2_kernel_prolong       4 0.0 8.4774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efbeeda5d0_wrap_pyop2_kernel_prolong       4 0.0 7.2862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487e5a082d0_wrap_pyop2_kernel_prolong       4 0.0 8.4632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487e5a0bc90_wrap_pyop2_kernel_prolong       4 0.0 6.1216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466a1a86a90_wrap_pyop2_kernel_prolong       4 0.0 8.4691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466a1a85550_wrap_pyop2_kernel_prolong       4 0.0 5.7838e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c3009d3d0_wrap_pyop2_kernel_prolong       4 0.0 8.4713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c3009e450_wrap_pyop2_kernel_prolong       4 0.0 6.9955e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbae103c50_wrap_pyop2_kernel_prolong       4 0.0 8.4696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbadfbaa50_wrap_pyop2_kernel_prolong       4 0.0 5.4128e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456eb712690_wrap_pyop2_kernel_prolong       4 0.0 8.4786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456eb713490_wrap_pyop2_kernel_prolong       4 0.0 7.0174e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e399718d0_wrap_pyop2_kernel_prolong       4 0.0 8.4792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e3996d190_wrap_pyop2_kernel_prolong       4 0.0 7.2203e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475c87a7e10_wrap_pyop2_kernel_prolong       4 0.0 8.4708e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475c8115b50_wrap_pyop2_kernel_prolong       4 0.0 6.2339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b8332a650_wrap_pyop2_kernel_prolong       4 0.0 8.4727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b83304790_wrap_pyop2_kernel_prolong       4 0.0 6.4946e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154221ee5e10_wrap_pyop2_kernel_prolong       4 0.0 8.4712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154221d67690_wrap_pyop2_kernel_prolong       4 0.0 6.8260e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7508c9c50_wrap_pyop2_kernel_prolong       4 0.0 8.4600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e75084e290_wrap_pyop2_kernel_prolong       4 0.0 6.5010e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497f1ed2190_wrap_pyop2_kernel_prolong       4 0.0 8.4557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497f2142f90_wrap_pyop2_kernel_prolong       4 0.0 6.5732e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15320f45a390_wrap_pyop2_kernel_prolong       4 0.0 8.4651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15320f45a650_wrap_pyop2_kernel_prolong       4 0.0 6.5315e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d9d4ea4d0_wrap_pyop2_kernel_prolong       4 0.0 8.4732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d9d4e9410_wrap_pyop2_kernel_prolong       4 0.0 7.1688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478a2cd7c10_wrap_pyop2_kernel_prolong       4 0.0 8.3532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478a2cce5d0_wrap_pyop2_kernel_prolong       4 0.0 5.1995e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549321096d0_wrap_pyop2_kernel_prolong       4 0.0 8.3472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154931eee390_wrap_pyop2_kernel_prolong       4 0.0 5.5439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15379e0bb710_wrap_pyop2_kernel_prolong       4 0.0 8.3513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15379e085ad0_wrap_pyop2_kernel_prolong       4 0.0 5.7779e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e86e8a0bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3515e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e86e8d0a90_wrap_pyop2_kernel_prolong       4 0.0 6.4030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aed63dbf10_wrap_pyop2_kernel_prolong       4 0.0 8.3487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aed64254d0_wrap_pyop2_kernel_prolong       4 0.0 6.5864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e03742c450_wrap_pyop2_kernel_prolong       4 0.0 8.3593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0369d9490_wrap_pyop2_kernel_prolong       4 0.0 7.5269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545daf76090_wrap_pyop2_kernel_prolong       4 0.0 8.3444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545daf75950_wrap_pyop2_kernel_prolong       4 0.0 5.7682e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe2f257e10_wrap_pyop2_kernel_prolong       4 0.0 8.3523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe2f25c8d0_wrap_pyop2_kernel_prolong       4 0.0 6.1630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146975222210_wrap_pyop2_kernel_prolong       4 0.0 8.3460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146975221310_wrap_pyop2_kernel_prolong       4 0.0 6.0052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e12e1fc790_wrap_pyop2_kernel_prolong       4 0.0 8.3499e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e12e1fee10_wrap_pyop2_kernel_prolong       4 0.0 6.1052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e922edd50_wrap_pyop2_kernel_prolong       4 0.0 8.3542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e92339f50_wrap_pyop2_kernel_prolong       4 0.0 6.5061e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146947d36f50_wrap_pyop2_kernel_prolong       4 0.0 8.3561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146947d342d0_wrap_pyop2_kernel_prolong       4 0.0 6.8967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538ae07e8d0_wrap_pyop2_kernel_prolong       4 0.0 8.3564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538ae07e050_wrap_pyop2_kernel_prolong       4 0.0 6.8567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d1a7ea090_wrap_pyop2_kernel_prolong       4 0.0 8.3444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d1a7e9a90_wrap_pyop2_kernel_prolong       4 0.0 5.1361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473d20a8f10_wrap_pyop2_kernel_prolong       4 0.0 8.3482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473d14f9010_wrap_pyop2_kernel_prolong       4 0.0 6.0067e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e710719d90_wrap_pyop2_kernel_prolong       4 0.0 8.3531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7104e6c50_wrap_pyop2_kernel_prolong       4 0.0 6.7313e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aecd324b50_wrap_pyop2_kernel_prolong       4 0.0 8.3498e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aecd3313d0_wrap_pyop2_kernel_prolong       4 0.0 5.4765e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4f0177dd0_wrap_pyop2_kernel_prolong       4 0.0 8.3419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4ebb5f750_wrap_pyop2_kernel_prolong       4 0.0 5.9579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150eb83ff910_wrap_pyop2_kernel_prolong       4 0.0 8.3522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150eb8d48e50_wrap_pyop2_kernel_prolong       4 0.0 6.4418e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d183f82210_wrap_pyop2_kernel_prolong       4 0.0 8.3449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d183ffd9d0_wrap_pyop2_kernel_prolong       4 0.0 5.5161e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e28356d90_wrap_pyop2_kernel_prolong       4 0.0 8.3414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e28355050_wrap_pyop2_kernel_prolong       4 0.0 5.1044e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541d823b9d0_wrap_pyop2_kernel_prolong       4 0.0 8.3523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541d82390d0_wrap_pyop2_kernel_prolong       4 0.0 6.0970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546987f0190_wrap_pyop2_kernel_prolong       4 0.0 8.3348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15469861e810_wrap_pyop2_kernel_prolong       4 0.0 5.8187e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14986f38eb50_wrap_pyop2_kernel_prolong       4 0.0 8.3545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14986f38cf10_wrap_pyop2_kernel_prolong       4 0.0 7.2759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c0cb3f790_wrap_pyop2_kernel_prolong       4 0.0 8.3365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c0cb3d710_wrap_pyop2_kernel_prolong       4 0.0 5.6072e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529c918c590_wrap_pyop2_kernel_prolong       4 0.0 8.3564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529c91d9810_wrap_pyop2_kernel_prolong       4 0.0 7.3115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de21b5af90_wrap_pyop2_kernel_prolong       4 0.0 8.3431e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de212b9cd0_wrap_pyop2_kernel_prolong       4 0.0 5.3671e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a3a112450_wrap_pyop2_kernel_prolong       4 0.0 8.3448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a3a111b90_wrap_pyop2_kernel_prolong       4 0.0 6.1704e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3d80fa2d0_wrap_pyop2_kernel_prolong       4 0.0 8.3399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3d37c34d0_wrap_pyop2_kernel_prolong       4 0.0 6.8465e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc59b7f5d0_wrap_pyop2_kernel_prolong       4 0.0 8.3433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc59b7d5d0_wrap_pyop2_kernel_prolong       4 0.0 5.7448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca0c6c6a10_wrap_pyop2_kernel_prolong       4 0.0 8.3487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca0c3c3c10_wrap_pyop2_kernel_prolong       4 0.0 6.7013e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a63015f50_wrap_pyop2_kernel_prolong       4 0.0 8.3548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a63017690_wrap_pyop2_kernel_prolong       4 0.0 6.7413e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15467e322790_wrap_pyop2_kernel_prolong       4 0.0 8.3481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15467da05f90_wrap_pyop2_kernel_prolong       4 0.0 5.4788e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f357ead90_wrap_pyop2_kernel_prolong       4 0.0 8.3546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f357e9b90_wrap_pyop2_kernel_prolong       4 0.0 6.4525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15102f987bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3333e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15102f984050_wrap_pyop2_kernel_prolong       4 0.0 5.3603e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471efda0b10_wrap_pyop2_kernel_prolong       4 0.0 8.3443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471efda1d90_wrap_pyop2_kernel_prolong       4 0.0 6.1933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a01dad10_wrap_pyop2_kernel_prolong       4 0.0 8.3560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15389bb96250_wrap_pyop2_kernel_prolong       4 0.0 7.0275e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515bcc01950_wrap_pyop2_kernel_prolong       4 0.0 8.3349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515bca94810_wrap_pyop2_kernel_prolong       4 0.0 6.3209e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500536cd210_wrap_pyop2_kernel_prolong       4 0.0 8.3446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500536d1950_wrap_pyop2_kernel_prolong       4 0.0 6.6498e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f4a449b90_wrap_pyop2_kernel_prolong       4 0.0 8.3364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f49979b10_wrap_pyop2_kernel_prolong       4 0.0 5.8788e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538561aec90_wrap_pyop2_kernel_prolong       4 0.0 8.3379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153856421390_wrap_pyop2_kernel_prolong       4 0.0 6.6908e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456ad35ded0_wrap_pyop2_kernel_prolong       4 0.0 8.3481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456ad35d850_wrap_pyop2_kernel_prolong       4 0.0 5.9166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15523224e590_wrap_pyop2_kernel_prolong       4 0.0 8.3456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155232013950_wrap_pyop2_kernel_prolong       4 0.0 6.0258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150854619bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15084f34e590_wrap_pyop2_kernel_prolong       4 0.0 6.6000e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf55789d0_wrap_pyop2_kernel_prolong       4 0.0 8.3518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf559a250_wrap_pyop2_kernel_prolong       4 0.0 7.2856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155366e929d0_wrap_pyop2_kernel_prolong       4 0.0 8.3546e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155366e91750_wrap_pyop2_kernel_prolong       4 0.0 6.1198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151988febc50_wrap_pyop2_kernel_prolong       4 0.0 8.3528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151988fe9910_wrap_pyop2_kernel_prolong       4 0.0 6.6742e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15341feb27d0_wrap_pyop2_kernel_prolong       4 0.0 8.3534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15341feb1f10_wrap_pyop2_kernel_prolong       4 0.0 6.1565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a00a04ea50_wrap_pyop2_kernel_prolong       4 0.0 8.3539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a00a045dd0_wrap_pyop2_kernel_prolong       4 0.0 5.8482e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546ac572950_wrap_pyop2_kernel_prolong       4 0.0 8.3614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546ac544c90_wrap_pyop2_kernel_prolong       4 0.0 7.5558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a4b2d7f10_wrap_pyop2_kernel_prolong       4 0.0 8.3557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a4b45e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.1010e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1f45f3350_wrap_pyop2_kernel_prolong       4 0.0 8.3584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1f45f9b10_wrap_pyop2_kernel_prolong       4 0.0 7.2837e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb53964b50_wrap_pyop2_kernel_prolong       4 0.0 8.3272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb53965cd0_wrap_pyop2_kernel_prolong       4 0.0 5.6450e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f666d0f950_wrap_pyop2_kernel_prolong       4 0.0 8.3327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f666d0cb50_wrap_pyop2_kernel_prolong       4 0.0 6.0633e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c62c3378d0_wrap_pyop2_kernel_prolong       4 0.0 8.3447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c62c334c50_wrap_pyop2_kernel_prolong       4 0.0 6.4703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152498128710_wrap_pyop2_kernel_prolong       4 0.0 8.3434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15249812a8d0_wrap_pyop2_kernel_prolong       4 0.0 5.7206e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e6e456650_wrap_pyop2_kernel_prolong       4 0.0 8.3332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e6e457c90_wrap_pyop2_kernel_prolong       4 0.0 6.0229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509003fa090_wrap_pyop2_kernel_prolong       4 0.0 8.3291e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509003d7a50_wrap_pyop2_kernel_prolong       4 0.0 5.3356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b4e3dd210_wrap_pyop2_kernel_prolong       4 0.0 8.3266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b4e612210_wrap_pyop2_kernel_prolong       4 0.0 4.7252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5737d42d0_wrap_pyop2_kernel_prolong       4 0.0 8.3280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b572f429d0_wrap_pyop2_kernel_prolong       4 0.0 5.5920e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536cdaa2f10_wrap_pyop2_kernel_prolong       4 0.0 8.3390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536ce4086d0_wrap_pyop2_kernel_prolong       4 0.0 6.4082e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459af064850_wrap_pyop2_kernel_prolong       4 0.0 8.3304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459af06dc90_wrap_pyop2_kernel_prolong       4 0.0 6.2126e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d36a9e9d0_wrap_pyop2_kernel_prolong       4 0.0 8.3398e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d36b11cd0_wrap_pyop2_kernel_prolong       4 0.0 7.1003e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edc15eac10_wrap_pyop2_kernel_prolong       4 0.0 8.3424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edc15eb2d0_wrap_pyop2_kernel_prolong       4 0.0 5.7861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d0b31e550_wrap_pyop2_kernel_prolong       4 0.0 8.3403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d0b2bbd90_wrap_pyop2_kernel_prolong       4 0.0 7.1838e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a35f05090_wrap_pyop2_kernel_prolong       4 0.0 8.3312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a354ed190_wrap_pyop2_kernel_prolong       4 0.0 6.0169e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14927a0ae510_wrap_pyop2_kernel_prolong       4 0.0 8.3395e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14927a0d12d0_wrap_pyop2_kernel_prolong       4 0.0 5.7647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154edd3edb50_wrap_pyop2_kernel_prolong       4 0.0 8.3426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154edd1a2990_wrap_pyop2_kernel_prolong       4 0.0 6.9340e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454af443f90_wrap_pyop2_kernel_prolong       4 0.0 8.3410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454af441750_wrap_pyop2_kernel_prolong       4 0.0 6.6769e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534a4c2a690_wrap_pyop2_kernel_prolong       4 0.0 8.3401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534a4c29710_wrap_pyop2_kernel_prolong       4 0.0 6.1935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f99d519850_wrap_pyop2_kernel_prolong       4 0.0 8.3503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f99cc17ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4366e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153eda49e9d0_wrap_pyop2_kernel_prolong       4 0.0 8.3331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153eda48a910_wrap_pyop2_kernel_prolong       4 0.0 4.9451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af5b1178d0_wrap_pyop2_kernel_prolong       4 0.0 8.3385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af5b11de10_wrap_pyop2_kernel_prolong       4 0.0 6.0954e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0cf8ef390_wrap_pyop2_kernel_prolong       4 0.0 8.3366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0b2187290_wrap_pyop2_kernel_prolong       4 0.0 6.4954e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bc7155c90_wrap_pyop2_kernel_prolong       4 0.0 8.3457e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bc7154e10_wrap_pyop2_kernel_prolong       4 0.0 5.7408e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4f5406490_wrap_pyop2_kernel_prolong       4 0.0 8.3441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4f53fcd50_wrap_pyop2_kernel_prolong       4 0.0 7.0200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba9ba79990_wrap_pyop2_kernel_prolong       4 0.0 8.3455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba9ba38bd0_wrap_pyop2_kernel_prolong       4 0.0 6.4055e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fff950cbd0_wrap_pyop2_kernel_prolong       4 0.0 8.3484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fff8c1c5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6233e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149444171810_wrap_pyop2_kernel_prolong       4 0.0 8.3368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149444171c50_wrap_pyop2_kernel_prolong       4 0.0 6.0329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521d3920390_wrap_pyop2_kernel_prolong       4 0.0 8.3324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521d38dd2d0_wrap_pyop2_kernel_prolong       4 0.0 5.2332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495ea63fc10_wrap_pyop2_kernel_prolong       4 0.0 8.3381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495ea63d4d0_wrap_pyop2_kernel_prolong       4 0.0 5.7551e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497cfac8850_wrap_pyop2_kernel_prolong       4 0.0 8.3327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497cfaca310_wrap_pyop2_kernel_prolong       4 0.0 5.3954e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2405cd390_wrap_pyop2_kernel_prolong       4 0.0 8.3468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2405d5a10_wrap_pyop2_kernel_prolong       4 0.0 6.4835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14735c868610_wrap_pyop2_kernel_prolong       4 0.0 8.3474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147357d7ffd0_wrap_pyop2_kernel_prolong       4 0.0 7.0210e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bbae012d0_wrap_pyop2_kernel_prolong       4 0.0 8.3347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bbac44350_wrap_pyop2_kernel_prolong       4 0.0 5.6167e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147163fa6f50_wrap_pyop2_kernel_prolong       4 0.0 8.3364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147168a35c10_wrap_pyop2_kernel_prolong       4 0.0 6.4216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ff3eee510_wrap_pyop2_kernel_prolong       4 0.0 8.3474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ff3eee950_wrap_pyop2_kernel_prolong       4 0.0 6.6004e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490dd0254d0_wrap_pyop2_kernel_prolong       4 0.0 8.3360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490dd026e50_wrap_pyop2_kernel_prolong       4 0.0 6.4339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ed9916510_wrap_pyop2_kernel_prolong       4 0.0 8.3395e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ed99160d0_wrap_pyop2_kernel_prolong       4 0.0 7.3579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d348e2f50_wrap_pyop2_kernel_prolong       4 0.0 8.3325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d348e1fd0_wrap_pyop2_kernel_prolong       4 0.0 6.2165e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf8637df10_wrap_pyop2_kernel_prolong       4 0.0 8.3438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf8612dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.6382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14964edc8690_wrap_pyop2_kernel_prolong       4 0.0 8.3291e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14964ee2fa90_wrap_pyop2_kernel_prolong       4 0.0 5.6442e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f47ef8bb10_wrap_pyop2_kernel_prolong       4 0.0 8.3327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f47ef89950_wrap_pyop2_kernel_prolong       4 0.0 5.6973e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f190be1e10_wrap_pyop2_kernel_prolong       4 0.0 8.3414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f190a8bd50_wrap_pyop2_kernel_prolong       4 0.0 7.0935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9040c7bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8ff7cd590_wrap_pyop2_kernel_prolong       4 0.0 6.5910e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152021834550_wrap_pyop2_kernel_prolong       4 0.0 8.3450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152021835790_wrap_pyop2_kernel_prolong       4 0.0 6.7261e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d965d0150_wrap_pyop2_kernel_prolong       4 0.0 8.3403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d96594bd0_wrap_pyop2_kernel_prolong       4 0.0 6.6857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab6e9bd6d0_wrap_pyop2_kernel_prolong       4 0.0 8.3437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab6e7bc490_wrap_pyop2_kernel_prolong       4 0.0 5.9066e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545865e93d0_wrap_pyop2_kernel_prolong       4 0.0 8.3323e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15458659a610_wrap_pyop2_kernel_prolong       4 0.0 5.9846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14588e647e90_wrap_pyop2_kernel_prolong       4 0.0 8.3389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14588e41ab50_wrap_pyop2_kernel_prolong       4 0.0 7.0901e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e9d3296d0_wrap_pyop2_kernel_prolong       4 0.0 8.3436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e9d3199d0_wrap_pyop2_kernel_prolong       4 0.0 6.1199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7f96dffd0_wrap_pyop2_kernel_prolong       4 0.0 8.3350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7f96bcd90_wrap_pyop2_kernel_prolong       4 0.0 6.9383e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a2a6867d0_wrap_pyop2_kernel_prolong       4 0.0 8.3480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a2a63bf10_wrap_pyop2_kernel_prolong       4 0.0 6.8910e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cdf676410_wrap_pyop2_kernel_prolong       4 0.0 8.3433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cdf5eecd0_wrap_pyop2_kernel_prolong       4 0.0 7.4074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        307 1.0 4.9796e-02 4.2 0.00e+00 0.0 4.2e+05 4.0e+00 3.1e+02  0  0  3  0  3   0  0  4  0 10    -0
SFSetGraph           307 1.0 1.3625e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              307 1.0 6.7834e-02 2.2 0.00e+00 0.0 8.3e+05 2.0e+02 3.1e+02  0  0  5  0  3   0  0  8  0 10    -0
SFPack             10766 1.0 2.6006e+00 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           10766 1.0 8.1198e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1538 1.0 1.9283e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6151 1.0 1.2848e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             6152 1.0 7.9289e+00 1.6 4.96e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 127192
VecAYPX             6152 1.0 8.1210e+00 2.4 2.48e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 62092
VecScatterBegin    10766 1.0 2.8492e+00 3.1 0.00e+00 0.0 8.8e+06 8.9e+04 0.0e+00  0  0 55 42  0   0  0 81 100  0    -0
VecScatterEnd      10766 1.0 7.4608e+01 11.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
MatMult             6152 1.0 2.9042e+02 1.3 1.76e+11 1.1 6.7e+06 1.2e+05 0.0e+00 21 11 42 42  0  43 41 62 100  0 122869
MatMultAdd          1538 1.0 8.0230e+00 1.3 3.72e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 94275
MatMultTranspose    1538 1.0 5.9659e+00 2.1 3.72e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 126781
MatSolve            7690 1.0 2.8987e+02 1.4 1.72e+11 1.1 4.2e+06 5.2e+02 1.5e+03 22 10 26  0 13  45 39 38  0 50 119245
MatLUFactorNum       290 1.0 4.8243e+01 1.3 7.41e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   7 17  0  0  0 302894
MatResidual         1538 1.0 7.7611e+01 1.4 4.46e+10 1.1 1.7e+06 1.2e+05 0.0e+00  5  3 10 11  0  11 10 15 25  0 116568
PCSetUpOnBlocks     3076 1.0 4.8277e+01 1.3 7.41e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   7 17  0  0  0 302682
PCApply             7690 1.0 2.9000e+02 1.4 1.72e+11 1.1 4.2e+06 5.2e+02 1.5e+03 22 10 26  0 13  45 39 38  0 50 119191
PCApplyOnBlocks     6152 1.0 2.6837e+02 1.4 1.71e+11 1.1 0.0e+00 0.0e+00 0.0e+00 20 10  0  0  0  41 39  0  0  0 128590
KSPSetUp               1 1.0 3.5787e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            4614 1.0 4.7346e+02 1.1 3.10e+11 1.1 9.2e+06 6.4e+04 3.1e+03 39 19 57 32 26  79 71 85 75 100 132461
MGSmooth Level 0    1538 1.0 3.6383e+01 1.8 1.78e+09 42.9 4.2e+06 5.2e+02 3.1e+03  2  0 26  0 26   4  0 38  0 100  1525
MGSmooth Level 1    3076 1.0 4.9929e+02 1.1 3.83e+11 1.1 5.0e+06 1.2e+05 0.0e+00 40 23 31 32  0  82 88 46 75  0 154763
MGResid Level 1     1538 1.0 7.7617e+01 1.4 4.46e+10 1.1 1.7e+06 1.2e+05 0.0e+00  5  3 10 11  0  11 10 15 25  0 116560
MGInterp Level 1    3076 1.0 1.3515e+01 1.4 7.44e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 111929
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   145            145
              Viewer     3              3
         PetscRandom    17             17
           Index Set  1819           1819
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   402            709
              Vector  1331           1330
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

           Index Set   614            614
   Star Forest Graph   307              0
              Vector   309            310
========================================================================================================================
Average time to get PetscTime(): 2.55e-08
Average time for MPI_Barrier(): 7.541e-06
Average time for zero size MPI_Send(): 2.44743e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal/vlumping/h2.profile # (source: code)
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

