****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0205.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 17:00:38 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.567e+02     1.000   5.567e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.469e+11     1.264   5.614e+11  1.168e+14
Flops/sec:            1.162e+09     1.264   1.008e+09  2.097e+11
MPI Msg Count:        1.114e+05     4.252   5.862e+04  1.219e+07
MPI Msg Len (bytes):  1.112e+10     6.116   1.079e+05  1.315e+12
MPI Reductions:       8.886e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.2550e+02  58.5%  8.3693e+13  71.7%  3.954e+06  32.4%  1.909e+05       57.4%  6.619e+03  74.5%
 1:        MG Apply: 2.3124e+02  41.5%  3.3072e+13  28.3%  8.239e+06  67.6%  6.807e+04       42.6%  2.248e+03  25.3%

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

BuildTwoSided       1228 1.0 6.2791e+01 6.9 0.00e+00 0.0 2.1e+05 4.0e+00 1.2e+03  7  0  2  0 14  12  0  5  0 19    -0
BuildTwoSidedF      1131 1.0 6.0920e+01 4.1 0.00e+00 0.0 2.5e+05 1.4e+06 1.1e+03  7  0  2 26 13  13  0  6 46 17    -0
SFSetGraph           104 1.0 7.9994e-03 10.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 1.8909e+00 74.9 0.00e+00 0.0 1.7e+05 8.9e+02 9.7e+01  0  0  1  0  1   0  0  4  0  1    -0
SFBcastBegin         888 1.0 3.5938e-01 5.1 0.00e+00 0.0 9.8e+05 7.7e+04 0.0e+00  0  0  8  6  0   0  0 25 10  0    -0
SFBcastEnd           888 1.0 1.5251e+01 79.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin        341 1.0 7.0688e-02 17.6 0.00e+00 0.0 3.8e+05 9.8e+04 0.0e+00  0  0  3  3  0   0  0 10  5  0    -0
SFReduceEnd          341 1.0 2.7952e+00 75.0 3.94e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1672
SFFetchOpBegin         6 1.0 3.7354e-05 6.3 0.00e+00 0.0 6.6e+03 5.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 8.2324e-04 20.1 0.00e+00 0.0 6.6e+03 5.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.4168e-03 2.4 0.00e+00 0.0 3.3e+03 7.2e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 7.1622e-03 1.5 0.00e+00 0.0 1.5e+05 5.9e+01 5.8e+01  0  0  1  0  1   0  0  4  0  1    -0
SFSectionSF           51 1.0 4.4031e-03 2.8 0.00e+00 0.0 7.0e+04 2.9e+01 5.1e+01  0  0  1  0  1   0  0  2  0  1    -0
SFRemoteOff            2 1.0 2.3411e-04 6.1 0.00e+00 0.0 2.9e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              2933 1.0 9.4091e-01 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2939 1.0 2.1849e-01 33.4 3.94e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 21395
VecDot               225 1.0 9.2251e-01 16.7 1.04e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  3   0  0  0  0  3 21129
VecMDot             1473 1.0 2.3280e+01 6.4 3.33e+09 1.1 0.0e+00 0.0e+00 1.5e+03  2  1  0  0 17   3  1  0  0 22 26894
VecNorm             2483 1.0 4.6504e+00 5.6 1.14e+09 1.1 0.0e+00 0.0e+00 2.5e+03  1  0  0  0 28   1  0  0  0 38 46254
VecScale            1716 1.0 1.1407e-01 1.3 3.95e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 651593
VecCopy             1595 1.0 1.0018e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               469 1.0 2.0891e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              243 1.0 1.5001e-01 1.3 1.12e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 140336
VecWAXPY             225 1.0 2.1856e-01 1.3 5.18e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 44592
VecMAXPY            1716 1.0 4.3817e+00 1.2 4.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 172006
VecScatterBegin     1698 1.0 6.5126e-01 4.0 0.00e+00 0.0 1.9e+06 1.1e+05 0.0e+00  0  0 16 16  0   0  0 48 28  0    -0
VecScatterEnd       1698 1.0 1.0944e+01 29.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          17 1.0 4.6635e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       450 1.0 1.1447e-01 2.1 2.07e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 340552
VecReduceComm        225 1.0 1.0358e-01 15.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  3   0  0  0  0  3    -0
VecNormalize         368 1.0 8.7023e-01 5.0 2.54e+08 1.1 0.0e+00 0.0e+00 3.7e+02  0  0  0  0  4   0  0  0  0  6 54951
MatMult             1698 1.0 4.3331e+01 1.4 2.77e+10 1.2 1.9e+06 1.1e+05 0.0e+00  7  4 16 16  0  12  6 48 28  0 120020
MatSolve             368 1.0 8.3181e+00 1.4 5.76e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 126959
MatLUFactorSym         1 1.0 4.0893e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       242 1.0 1.2213e+01 1.0 2.38e+09 1.3 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  1  0  0  0 35224
MatILUFactorSym        1 1.0 8.2720e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1630 1.0 6.2173e+01 2.5 0.00e+00 0.0 2.5e+05 1.4e+06 1.1e+03  8  0  2 26 13  14  0  6 46 17    -0
MatAssemblyEnd      1630 1.0 1.8786e+01 12.7 2.84e+08 0.0 4.5e+03 1.4e+04 1.7e+01  2  0  0  0  0   3  0  0  0  0  1137
MatGetRowIJ            1 1.0 9.6270e-06 75.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.1740e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       450 1.0 4.1897e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 6.4240e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 6.8795e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        450 1.0 2.1432e+00 1.2 3.73e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 326054
MatPtAPSymbolic        1 1.0 1.1318e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       225 1.0 2.0525e+01 1.0 1.49e+10 1.2 2.5e+05 3.3e+05 2.3e+02  4  2  2  6  3   6  3  6 11  3 136203
MatGetLocalMat       225 1.0 9.8241e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        225 1.0 1.0088e+00 4.2 0.00e+00 0.0 2.5e+05 3.3e+05 0.0e+00  0  0  2  6  0   0  0  6 11  0    -0
MatSetPreallCOO       32 1.0 1.1429e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 5.2224e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 5.5737e+01 1.0 3.26e+10 1.2 6.5e+05 2.0e+05 1.4e+03 10  5  5 10 16  17  7 16 17 22 109133
PCApply             1123 1.0 2.4159e+02 1.1 1.78e+11 1.2 8.2e+06 6.8e+04 2.2e+03 42 28 68 43 25 Multiple stages 136898
PCApplyOnBlocks      368 1.0 8.3211e+00 1.4 5.76e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 126913
KSPSetUp             225 1.0 9.2088e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 2.6911e+02 1.0 2.01e+11 1.2 9.5e+06 7.4e+04 4.7e+03 48 32 78 53 53 Multiple stages 139083
KSPGMRESOrthog      1473 1.0 2.6515e+01 3.7 6.66e+09 1.1 0.0e+00 0.0e+00 1.5e+03  3  1  0  0 17   4  1  0  0 22 47224
DMRefine               2 1.0 2.0752e-01 1.0 2.09e+03 1.0 2.0e+04 2.7e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     2
DMPlexCreateGmsh       1 1.0 1.4152e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.7091e+00 370.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 6.7293e-02 1.0 0.00e+00 0.0 4.8e+04 4.7e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.7242e-02 1.1 0.00e+00 0.0 1.7e+05 5.5e+01 2.4e+02  0  0  1  0  3   0  0  4  0  4    -0
DMPlexPartSelf         1 1.0 1.7205e-03 678.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.3697e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 5.4680e-03 1.2 0.00e+00 0.0 9.2e+03 3.6e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.4870e-03 1.4 0.00e+00 0.0 4.6e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.7334e-03 3.2 0.00e+00 0.0 4.8e+03 1.5e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 6.6030e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.0570e-02 1.0 0.00e+00 0.0 8.6e+03 1.1e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 2.0733e-03 1.1 0.00e+00 0.0 2.7e+04 8.2e+01 8.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 6.4547e-03 1.0 0.00e+00 0.0 8.5e+04 5.2e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 1.6034e-02 1.0 0.00e+00 0.0 2.1e+05 5.3e+01 2.4e+02  0  0  2  0  3   0  0  5  0  4    -0
DMPlexDistField        7 1.0 3.7238e-03 1.3 0.00e+00 0.0 3.8e+04 4.5e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 3.7366e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.7959e-04 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.7132e-04 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.6270e-03 1.6 0.00e+00 0.0 1.1e+04 2.3e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.4937e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 6.1043e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 5.2763e-04 1.6 0.00e+00 0.0 8.7e+03 2.1e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.3342e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.4790e-04 1.9 0.00e+00 0.0 2.2e+03 2.9e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.8383e+02 1.0 6.47e+11 1.3 1.2e+07 1.1e+05 8.0e+03 87 100 96 100 91 Multiple stages 241319
SNESSetUp              1 1.0 5.9366e-05 9.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 2.3519e+01 1.1 1.61e+11 1.3 7.6e+05 1.1e+05 0.0e+00  4 24  6  6  0   7 34 19 11  0 1197571
SNESJacobianEval     225 1.0 1.2948e+02 1.0 2.52e+11 1.3 5.0e+05 7.4e+05 9.0e+02 23 38  4 28 10  40 53 13 49 14 341982
SNESLineSearch       225 1.0 1.5696e+01 1.0 1.25e+11 1.3 7.5e+05 1.1e+05 9.0e+02  3 19  6  6 10   5 26 19 11 14 1396553
DualSpaceSetUp         8 1.0 1.0808e-02 2.5 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.7366e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 5.5459e+02 1.0 6.47e+11 1.3 1.2e+07 1.1e+05 8.9e+03 100 100 100 100 100 Multiple stages 210544
firedrake.__init__       1 1.0 1.8552e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
CreateMesh             3 1.0 5.8439e+00 39.6 0.00e+00 0.0 4.2e+05 5.5e+01 4.4e+02  1  0  3  0  5   1  0 11  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 5.7100e+00 369.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.2586e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.7640e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 5.1033e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.4557e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.3222e-02 1.2 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.5610e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.1599e-02 1.2 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.9293e-02 1.2 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.9179e-02 1.2 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.2380e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 8.8536e-03 1.8 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 8.6503e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.2352e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.4427e-02 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.5939e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.4674e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.6557e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3233e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.5875e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 8.0773e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2420 1.0 1.2125e+02 1.2 4.12e+11 1.3 7.0e+05 1.1e+05 3.2e+01 19 62  6  6  0  33 87 18 10  0 597310
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.5413e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4840 1.0 2.7369e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0730e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.5615e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.3346e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.6415e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.6414e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 1.0304e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 1.0172e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    2420 1.0 6.9602e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2420 1.0 6.8516e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.0092e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.0737e+00 1.0 7.78e+06 1.1 2.2e+04 1.0e+04 1.3e+01  1  0  0  0  0   2  0  1  0  0   181
firedrake.interpolation.interpolate      13 1.0 4.5249e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.1723e+00 1.0 4.81e+07 1.1 3.3e+04 3.4e+04 3.7e+01  1  0  0  0  0   2  0  1  0  1  1465
firedrake.formmanipulation.split_form      14 1.0 4.5144e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.8502e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5594e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0130e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 3.6215e+00 14.2 0.00e+00 0.0 7.1e+05 1.1e+05 4.0e+00  0  0  6  6  0   1  0 18 10  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.8263e+00 1.0 4.81e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  1552
firedrake.halo.Halo.global_to_local_end     621 1.0 1.2733e+01 260.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.2026e+00 81.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bef32f7e90_wrap_pyop2_kernel_prolong       4 0.0 8.2761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bef3791f10_wrap_pyop2_kernel_prolong       4 0.0 2.2593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.1716e+00 1.0 3.89e+07 1.1 1.9e+04 5.0e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  1755
firedrake.function.Function.assign     314 1.0 9.2887e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 8.5240e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8153e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.3344e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.5257e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4997e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.3313e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2043e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.1871e+00 1.0 0.00e+00 0.0 7.3e+03 4.3e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.3876e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.0896e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2896e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2896e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         2 1.0 1.9382e+00 1.2 0.00e+00 0.0 6.7e+03 2.3e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 3.1746e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.8398e+02 1.0 6.47e+11 1.3 1.2e+07 1.1e+05 8.2e+03 87 100 96 100 92 Multiple stages 241242
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.6287e-01 1303.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.9300e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.6281e-01 1573.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.6278e-01 1827.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 5.5123e+00 1.4 3.96e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  9  0  0  0 1349594
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0694e+00 1.0 5.11e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   898
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.4360e+00 1.0 4.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8716
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 3.8673e+00 1.2 3.77e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  8  0  0  0 1834625
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 7.9702e+00 1.4 8.35e+10 1.6 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 16  0  0  0 1707941
firedrake.halo.Halo.local_to_global_begin     300 1.0 7.7249e-02 7.6 0.00e+00 0.0 3.3e+05 1.1e+05 0.0e+00  0  0  3  3  0   0  0  8  5  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.7964e+00 71.4 3.94e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1672
Parloop_Cells_wrap_form00_cell_integral     450 1.0 1.9222e+01 1.5 5.52e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   4 12  0  0  0 539883
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.8721e+00 1.4 3.61e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5106
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 2.3332e+01 1.3 7.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 12  0  0  0   6 16  0  0  0 586241
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 5.2720e+01 1.8 1.24e+11 1.6 0.0e+00 0.0e+00 0.0e+00  7 17  0  0  0  12 24  0  0  0 382992
firedrake.dmhooks.get_function_space       1 1.0 1.1910e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.4666e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 1.1149e+01 1.0 7.73e+07 30.4 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   3  0  0  0  0   199
MGSetup Level 1      225 1.0 7.0558e-01 1.0 5.36e+08 1.2 1.1e+04 1.1e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 140709
firedrake.constant.Constant.assign      75 1.0 2.3827e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faedd76890_wrap_pyop2_kernel_prolong       4 0.0 8.2761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faedd75fd0_wrap_pyop2_kernel_prolong       4 0.0 2.4699e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dc9c314d0_wrap_pyop2_kernel_prolong       4 0.0 8.2791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dca1c7ad0_wrap_pyop2_kernel_prolong       4 0.0 2.7798e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9c3431810_wrap_pyop2_kernel_prolong       4 0.0 8.2785e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9c34b1510_wrap_pyop2_kernel_prolong       4 0.0 2.9045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a33a3d090_wrap_pyop2_kernel_prolong       4 0.0 8.2754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a33201410_wrap_pyop2_kernel_prolong       4 0.0 2.2368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466c593abd0_wrap_pyop2_kernel_prolong       4 0.0 8.2779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466c57f5950_wrap_pyop2_kernel_prolong       4 0.0 3.2828e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a12f1bbc10_wrap_pyop2_kernel_prolong       4 0.0 8.2772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a12f442710_wrap_pyop2_kernel_prolong       4 0.0 2.5785e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516c3fe9790_wrap_pyop2_kernel_prolong       4 0.0 8.2765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516c3e5d710_wrap_pyop2_kernel_prolong       4 0.0 3.1447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f09c25110_wrap_pyop2_kernel_prolong       4 0.0 8.2632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f0a39a490_wrap_pyop2_kernel_prolong       4 0.0 2.3604e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e2079e090_wrap_pyop2_kernel_prolong       4 0.0 8.2751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e21215bd0_wrap_pyop2_kernel_prolong       4 0.0 2.5517e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149277620290_wrap_pyop2_kernel_prolong       4 0.0 8.2810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149276c0dcd0_wrap_pyop2_kernel_prolong       4 0.0 3.7628e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a31dfc5f50_wrap_pyop2_kernel_prolong       4 0.0 8.2820e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a31dfc5610_wrap_pyop2_kernel_prolong       4 0.0 3.9172e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdb45a2990_wrap_pyop2_kernel_prolong       4 0.0 8.2845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdb4819010_wrap_pyop2_kernel_prolong       4 0.0 4.1138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147267e86050_wrap_pyop2_kernel_prolong       4 0.0 8.2647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147267e855d0_wrap_pyop2_kernel_prolong       4 0.0 2.3925e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14641872b890_wrap_pyop2_kernel_prolong       4 0.0 8.2599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146418720210_wrap_pyop2_kernel_prolong       4 0.0 2.7754e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ab0cd9e50_wrap_pyop2_kernel_prolong       4 0.0 8.2671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ab0cd9d50_wrap_pyop2_kernel_prolong       4 0.0 2.4014e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14898fa902d0_wrap_pyop2_kernel_prolong       4 0.0 8.2698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14898e58eb90_wrap_pyop2_kernel_prolong       4 0.0 3.1153e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e02ad0f750_wrap_pyop2_kernel_prolong       4 0.0 8.2795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e02aa62450_wrap_pyop2_kernel_prolong       4 0.0 3.4034e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9729b6410_wrap_pyop2_kernel_prolong       4 0.0 8.2795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9729b5410_wrap_pyop2_kernel_prolong       4 0.0 3.6078e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bfda0e790_wrap_pyop2_kernel_prolong       4 0.0 8.2784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bfda0df50_wrap_pyop2_kernel_prolong       4 0.0 3.0332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a7fda2690_wrap_pyop2_kernel_prolong       4 0.0 8.2747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a7fda1c10_wrap_pyop2_kernel_prolong       4 0.0 3.7292e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470a06eae10_wrap_pyop2_kernel_prolong       4 0.0 8.2837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14709bd593d0_wrap_pyop2_kernel_prolong       4 0.0 3.7406e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9f085b10_wrap_pyop2_kernel_prolong       4 0.0 8.2704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9f085bd0_wrap_pyop2_kernel_prolong       4 0.0 2.6192e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150844dd1f50_wrap_pyop2_kernel_prolong       4 0.0 8.2783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150844dd3790_wrap_pyop2_kernel_prolong       4 0.0 3.5660e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519d07407d0_wrap_pyop2_kernel_prolong       4 0.0 8.2754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519d0553650_wrap_pyop2_kernel_prolong       4 0.0 3.6666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482d3a35ad0_wrap_pyop2_kernel_prolong       4 0.0 8.2728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482d3a36a90_wrap_pyop2_kernel_prolong       4 0.0 3.4002e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cff6c12b90_wrap_pyop2_kernel_prolong       4 0.0 8.2732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cff6c105d0_wrap_pyop2_kernel_prolong       4 0.0 1.9783e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b240b8510_wrap_pyop2_kernel_prolong       4 0.0 8.2724e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b240baa90_wrap_pyop2_kernel_prolong       4 0.0 2.8599e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fbfc16710_wrap_pyop2_kernel_prolong       4 0.0 8.2776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fbfc15e10_wrap_pyop2_kernel_prolong       4 0.0 3.5800e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147da07b99d0_wrap_pyop2_kernel_prolong       4 0.0 8.2687e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147da0c46290_wrap_pyop2_kernel_prolong       4 0.0 3.8583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b85ec0410_wrap_pyop2_kernel_prolong       4 0.0 8.2634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b86c5d4d0_wrap_pyop2_kernel_prolong       4 0.0 3.3212e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ae1bf4610_wrap_pyop2_kernel_prolong       4 0.0 8.2763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ae1b9ba50_wrap_pyop2_kernel_prolong       4 0.0 4.4748e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e51c87410_wrap_pyop2_kernel_prolong       4 0.0 8.2622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e51cb1810_wrap_pyop2_kernel_prolong       4 0.0 3.1386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdd8357790_wrap_pyop2_kernel_prolong       4 0.0 8.2661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdd80e9bd0_wrap_pyop2_kernel_prolong       4 0.0 2.8905e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eac946fd90_wrap_pyop2_kernel_prolong       4 0.0 8.2684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eac93c3e50_wrap_pyop2_kernel_prolong       4 0.0 2.5363e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15075facb6d0_wrap_pyop2_kernel_prolong       4 0.0 8.2773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15075fac8a10_wrap_pyop2_kernel_prolong       4 0.0 2.8823e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c52b964810_wrap_pyop2_kernel_prolong       4 0.0 8.2636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c52b995f10_wrap_pyop2_kernel_prolong       4 0.0 2.8651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f80e7a690_wrap_pyop2_kernel_prolong       4 0.0 8.2794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f80285a50_wrap_pyop2_kernel_prolong       4 0.0 4.6231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f53df72c10_wrap_pyop2_kernel_prolong       4 0.0 8.2740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f53df70390_wrap_pyop2_kernel_prolong       4 0.0 4.4331e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469744c0bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2724e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469744c3650_wrap_pyop2_kernel_prolong       4 0.0 3.1606e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b71fe3f90_wrap_pyop2_kernel_prolong       4 0.0 8.2712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b71fe5050_wrap_pyop2_kernel_prolong       4 0.0 2.4081e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510dfa6b410_wrap_pyop2_kernel_prolong       4 0.0 8.2607e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510df825c50_wrap_pyop2_kernel_prolong       4 0.0 2.8975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c4e51e550_wrap_pyop2_kernel_prolong       4 0.0 8.2823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c4e51dcd0_wrap_pyop2_kernel_prolong       4 0.0 3.8852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eb69cc910_wrap_pyop2_kernel_prolong       4 0.0 8.2702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eb697a450_wrap_pyop2_kernel_prolong       4 0.0 2.5321e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f48cc24d0_wrap_pyop2_kernel_prolong       4 0.0 8.2747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f48cc1d50_wrap_pyop2_kernel_prolong       4 0.0 3.8170e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5519436d0_wrap_pyop2_kernel_prolong       4 0.0 8.2743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e551943690_wrap_pyop2_kernel_prolong       4 0.0 3.5559e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14853aa8b8d0_wrap_pyop2_kernel_prolong       4 0.0 8.2652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14853aaf5750_wrap_pyop2_kernel_prolong       4 0.0 3.7124e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cd5b87250_wrap_pyop2_kernel_prolong       4 0.0 8.2833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cd5d94490_wrap_pyop2_kernel_prolong       4 0.0 4.2753e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee6f8e6e50_wrap_pyop2_kernel_prolong       4 0.0 8.2712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee6ed80f50_wrap_pyop2_kernel_prolong       4 0.0 3.3287e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d75c321d50_wrap_pyop2_kernel_prolong       4 0.0 8.2621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d75c3237d0_wrap_pyop2_kernel_prolong       4 0.0 2.7774e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0ca0dcd0_wrap_pyop2_kernel_prolong       4 0.0 8.2730e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0ca0cb50_wrap_pyop2_kernel_prolong       4 0.0 2.7047e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546f7aaf9d0_wrap_pyop2_kernel_prolong       4 0.0 8.2691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546f79c8c10_wrap_pyop2_kernel_prolong       4 0.0 4.0793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdc3226a10_wrap_pyop2_kernel_prolong       4 0.0 8.2532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdc348f950_wrap_pyop2_kernel_prolong       4 0.0 2.0475e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e37a56ead0_wrap_pyop2_kernel_prolong       4 0.0 8.2579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e37a536a10_wrap_pyop2_kernel_prolong       4 0.0 2.6561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d448896650_wrap_pyop2_kernel_prolong       4 0.0 8.2573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d448896110_wrap_pyop2_kernel_prolong       4 0.0 2.9198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea128c1690_wrap_pyop2_kernel_prolong       4 0.0 8.2586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea128c3b50_wrap_pyop2_kernel_prolong       4 0.0 2.6888e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530417108d0_wrap_pyop2_kernel_prolong       4 0.0 8.2575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15304170d550_wrap_pyop2_kernel_prolong       4 0.0 2.1937e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcd0c0cbd0_wrap_pyop2_kernel_prolong       4 0.0 8.2558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcd1096290_wrap_pyop2_kernel_prolong       4 0.0 3.2259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15243ad29110_wrap_pyop2_kernel_prolong       4 0.0 8.2614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15243ad2b090_wrap_pyop2_kernel_prolong       4 0.0 2.7338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146042ca9bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14604196d3d0_wrap_pyop2_kernel_prolong       4 0.0 2.3704e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c877ad8b50_wrap_pyop2_kernel_prolong       4 0.0 8.2603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c877d2c090_wrap_pyop2_kernel_prolong       4 0.0 3.5110e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f036202d0_wrap_pyop2_kernel_prolong       4 0.0 8.2717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f02bf6150_wrap_pyop2_kernel_prolong       4 0.0 4.1836e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c136832710_wrap_pyop2_kernel_prolong       4 0.0 8.2720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c136831e10_wrap_pyop2_kernel_prolong       4 0.0 2.4750e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af8abaf0d0_wrap_pyop2_kernel_prolong       4 0.0 8.2728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af8abade10_wrap_pyop2_kernel_prolong       4 0.0 4.4159e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493b6acf550_wrap_pyop2_kernel_prolong       4 0.0 8.2674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493b6b20510_wrap_pyop2_kernel_prolong       4 0.0 4.5289e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469194a3310_wrap_pyop2_kernel_prolong       4 0.0 8.2605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469187bd850_wrap_pyop2_kernel_prolong       4 0.0 2.0494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6e154f950_wrap_pyop2_kernel_prolong       4 0.0 8.2752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6e15a6fd0_wrap_pyop2_kernel_prolong       4 0.0 2.9904e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147893ef94d0_wrap_pyop2_kernel_prolong       4 0.0 8.2604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147893d29310_wrap_pyop2_kernel_prolong       4 0.0 2.8459e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f43b7fc50_wrap_pyop2_kernel_prolong       4 0.0 8.2627e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f43944910_wrap_pyop2_kernel_prolong       4 0.0 2.9000e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b67031690_wrap_pyop2_kernel_prolong       4 0.0 8.2653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b670d4d50_wrap_pyop2_kernel_prolong       4 0.0 2.6926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14695c7e0650_wrap_pyop2_kernel_prolong       4 0.0 8.2645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14695c7c52d0_wrap_pyop2_kernel_prolong       4 0.0 4.0179e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b77469850_wrap_pyop2_kernel_prolong       4 0.0 8.2798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b7763b950_wrap_pyop2_kernel_prolong       4 0.0 4.2138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6968ec750_wrap_pyop2_kernel_prolong       4 0.0 8.2768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6968ed9d0_wrap_pyop2_kernel_prolong       4 0.0 4.1589e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cef8130450_wrap_pyop2_kernel_prolong       4 0.0 8.2649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cef8109510_wrap_pyop2_kernel_prolong       4 0.0 3.3309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489ec208c50_wrap_pyop2_kernel_prolong       4 0.0 8.2625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489e7b31350_wrap_pyop2_kernel_prolong       4 0.0 3.3462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a05a5dd90_wrap_pyop2_kernel_prolong       4 0.0 8.2702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a05a5d310_wrap_pyop2_kernel_prolong       4 0.0 4.0138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149894ecf150_wrap_pyop2_kernel_prolong       4 0.0 8.2754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149894d3fdd0_wrap_pyop2_kernel_prolong       4 0.0 4.5507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3f6d15c90_wrap_pyop2_kernel_prolong       4 0.0 8.2755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3f6d17990_wrap_pyop2_kernel_prolong       4 0.0 5.0010e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15443d048c10_wrap_pyop2_kernel_prolong       4 0.0 8.2693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15443cf4ab10_wrap_pyop2_kernel_prolong       4 0.0 2.3647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d057e890_wrap_pyop2_kernel_prolong       4 0.0 8.2577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d057ebd0_wrap_pyop2_kernel_prolong       4 0.0 2.8974e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db45e7bbd0_wrap_pyop2_kernel_prolong       4 0.0 8.2561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db460a5390_wrap_pyop2_kernel_prolong       4 0.0 3.1542e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a58e4ed950_wrap_pyop2_kernel_prolong       4 0.0 8.2639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a58e4eca10_wrap_pyop2_kernel_prolong       4 0.0 2.7536e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8be833cd0_wrap_pyop2_kernel_prolong       4 0.0 8.2706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8be826410_wrap_pyop2_kernel_prolong       4 0.0 2.3690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147388d7b550_wrap_pyop2_kernel_prolong       4 0.0 8.2741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147388d73d10_wrap_pyop2_kernel_prolong       4 0.0 4.2162e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f11779e50_wrap_pyop2_kernel_prolong       4 0.0 8.2621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f11779810_wrap_pyop2_kernel_prolong       4 0.0 2.4668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529ec165f50_wrap_pyop2_kernel_prolong       4 0.0 8.2586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529ec165710_wrap_pyop2_kernel_prolong       4 0.0 3.6431e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526234f92d0_wrap_pyop2_kernel_prolong       4 0.0 8.2611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15262365b510_wrap_pyop2_kernel_prolong       4 0.0 3.5513e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500025de290_wrap_pyop2_kernel_prolong       4 0.0 8.2633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150002461510_wrap_pyop2_kernel_prolong       4 0.0 4.0966e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21c680290_wrap_pyop2_kernel_prolong       4 0.0 8.2595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21c415610_wrap_pyop2_kernel_prolong       4 0.0 3.9897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed5d122950_wrap_pyop2_kernel_prolong       4 0.0 8.2679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed5cfd2250_wrap_pyop2_kernel_prolong       4 0.0 3.3872e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dc4ae9d50_wrap_pyop2_kernel_prolong       4 0.0 8.2625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dc4ae9310_wrap_pyop2_kernel_prolong       4 0.0 3.7509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9f1d12350_wrap_pyop2_kernel_prolong       4 0.0 8.2589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9f1d11a50_wrap_pyop2_kernel_prolong       4 0.0 3.1568e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a33f556d0_wrap_pyop2_kernel_prolong       4 0.0 8.2551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a33fbb890_wrap_pyop2_kernel_prolong       4 0.0 2.8888e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f2e7630d0_wrap_pyop2_kernel_prolong       4 0.0 8.2611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f2e760a90_wrap_pyop2_kernel_prolong       4 0.0 3.6873e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9bcac00d0_wrap_pyop2_kernel_prolong       4 0.0 8.2803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9bc19e290_wrap_pyop2_kernel_prolong       4 0.0 4.4724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146430a53ed0_wrap_pyop2_kernel_prolong       4 0.0 8.2595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146430a44310_wrap_pyop2_kernel_prolong       4 0.0 3.7382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509c2446d10_wrap_pyop2_kernel_prolong       4 0.0 8.2664e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509c2482c90_wrap_pyop2_kernel_prolong       4 0.0 2.5524e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a94c5887d0_wrap_pyop2_kernel_prolong       4 0.0 8.2593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a947b5b510_wrap_pyop2_kernel_prolong       4 0.0 3.5683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d7e25e090_wrap_pyop2_kernel_prolong       4 0.0 8.2624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d7e25da50_wrap_pyop2_kernel_prolong       4 0.0 4.5705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d80675b50_wrap_pyop2_kernel_prolong       4 0.0 8.2603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d80487890_wrap_pyop2_kernel_prolong       4 0.0 3.5626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a78072490_wrap_pyop2_kernel_prolong       4 0.0 8.2711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a73735450_wrap_pyop2_kernel_prolong       4 0.0 3.0578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147722d55d10_wrap_pyop2_kernel_prolong       4 0.0 8.2624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147722d55410_wrap_pyop2_kernel_prolong       4 0.0 2.8492e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c192e484d0_wrap_pyop2_kernel_prolong       4 0.0 8.2708e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c192e43c50_wrap_pyop2_kernel_prolong       4 0.0 3.6610e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154065b08150_wrap_pyop2_kernel_prolong       4 0.0 8.2657e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154065b88a10_wrap_pyop2_kernel_prolong       4 0.0 4.2356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1347e7690_wrap_pyop2_kernel_prolong       4 0.0 8.2681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1347e5250_wrap_pyop2_kernel_prolong       4 0.0 2.1009e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aea8d1bc50_wrap_pyop2_kernel_prolong       4 0.0 8.2660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aea8d1ab50_wrap_pyop2_kernel_prolong       4 0.0 2.4132e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bde417810_wrap_pyop2_kernel_prolong       4 0.0 8.2702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bde416890_wrap_pyop2_kernel_prolong       4 0.0 3.2447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbbb95fed0_wrap_pyop2_kernel_prolong       4 0.0 8.2675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbbb90ad50_wrap_pyop2_kernel_prolong       4 0.0 3.0948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3f8f77fd0_wrap_pyop2_kernel_prolong       4 0.0 8.2647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3f8f77710_wrap_pyop2_kernel_prolong       4 0.0 2.1612e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a54243c190_wrap_pyop2_kernel_prolong       4 0.0 8.2726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a541fbb190_wrap_pyop2_kernel_prolong       4 0.0 4.0960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d5c6aa090_wrap_pyop2_kernel_prolong       4 0.0 8.2671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d5cb53e90_wrap_pyop2_kernel_prolong       4 0.0 2.5222e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7a0b22c10_wrap_pyop2_kernel_prolong       4 0.0 8.2654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7a0b44d10_wrap_pyop2_kernel_prolong       4 0.0 2.8861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153583200690_wrap_pyop2_kernel_prolong       4 0.0 8.2665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153583229890_wrap_pyop2_kernel_prolong       4 0.0 2.7338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7d4c2dbd0_wrap_pyop2_kernel_prolong       4 0.0 8.2648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7d4e7f9d0_wrap_pyop2_kernel_prolong       4 0.0 2.5548e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcddecb790_wrap_pyop2_kernel_prolong       4 0.0 8.2668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcddd52a10_wrap_pyop2_kernel_prolong       4 0.0 3.1541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de5e510510_wrap_pyop2_kernel_prolong       4 0.0 8.2769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de5e4c9ad0_wrap_pyop2_kernel_prolong       4 0.0 4.5665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153641cc8510_wrap_pyop2_kernel_prolong       4 0.0 8.2704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153641d5ebd0_wrap_pyop2_kernel_prolong       4 0.0 3.4661e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147583663810_wrap_pyop2_kernel_prolong       4 0.0 8.2724e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147582cc1250_wrap_pyop2_kernel_prolong       4 0.0 2.3242e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14988459cad0_wrap_pyop2_kernel_prolong       4 0.0 8.2558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14988436a490_wrap_pyop2_kernel_prolong       4 0.0 2.3395e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15008b000150_wrap_pyop2_kernel_prolong       4 0.0 8.2905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15008aba19d0_wrap_pyop2_kernel_prolong       4 0.0 4.6679e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5f9d72750_wrap_pyop2_kernel_prolong       4 0.0 8.2568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5f9d72950_wrap_pyop2_kernel_prolong       4 0.0 2.1840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151475f42dd0_wrap_pyop2_kernel_prolong       4 0.0 8.2799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514754d3c50_wrap_pyop2_kernel_prolong       4 0.0 3.5325e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7b6d2d610_wrap_pyop2_kernel_prolong       4 0.0 8.2677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7b6adfa50_wrap_pyop2_kernel_prolong       4 0.0 3.7325e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db35506b50_wrap_pyop2_kernel_prolong       4 0.0 8.2584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db35506e10_wrap_pyop2_kernel_prolong       4 0.0 2.9825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7a4db5d0_wrap_pyop2_kernel_prolong       4 0.0 8.2897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7a4d90d0_wrap_pyop2_kernel_prolong       4 0.0 3.8896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9e39a6d50_wrap_pyop2_kernel_prolong       4 0.0 8.2813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9e39a4790_wrap_pyop2_kernel_prolong       4 0.0 4.7215e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e927a5210_wrap_pyop2_kernel_prolong       4 0.0 8.2604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e9292ddd0_wrap_pyop2_kernel_prolong       4 0.0 3.2777e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcde546dd0_wrap_pyop2_kernel_prolong       4 0.0 8.2638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcde431090_wrap_pyop2_kernel_prolong       4 0.0 3.6201e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df964c63d0_wrap_pyop2_kernel_prolong       4 0.0 8.2659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df8fe5bdd0_wrap_pyop2_kernel_prolong       4 0.0 3.7534e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cda64794d0_wrap_pyop2_kernel_prolong       4 0.0 8.2566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cda57f5250_wrap_pyop2_kernel_prolong       4 0.0 4.2466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a03db650_wrap_pyop2_kernel_prolong       4 0.0 8.2612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8a04334d0_wrap_pyop2_kernel_prolong       4 0.0 2.3056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536b3586090_wrap_pyop2_kernel_prolong       4 0.0 8.2849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536b3585950_wrap_pyop2_kernel_prolong       4 0.0 1.9976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15247659e490_wrap_pyop2_kernel_prolong       4 0.0 8.2665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15247659d310_wrap_pyop2_kernel_prolong       4 0.0 2.5323e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b659a58b50_wrap_pyop2_kernel_prolong       4 0.0 8.2587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6597f5cd0_wrap_pyop2_kernel_prolong       4 0.0 2.4811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b45769cb50_wrap_pyop2_kernel_prolong       4 0.0 8.2598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4576f85d0_wrap_pyop2_kernel_prolong       4 0.0 2.6782e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2e56ca150_wrap_pyop2_kernel_prolong       4 0.0 8.2628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2e56ca810_wrap_pyop2_kernel_prolong       4 0.0 3.7973e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499d2a69a90_wrap_pyop2_kernel_prolong       4 0.0 8.2604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499d2a68c10_wrap_pyop2_kernel_prolong       4 0.0 3.3243e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d24b2ff50_wrap_pyop2_kernel_prolong       4 0.0 8.2608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d24b66150_wrap_pyop2_kernel_prolong       4 0.0 1.9787e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f751007550_wrap_pyop2_kernel_prolong       4 0.0 8.2637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f751031710_wrap_pyop2_kernel_prolong       4 0.0 3.3336e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac71ef9f90_wrap_pyop2_kernel_prolong       4 0.0 8.2693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac71de6350_wrap_pyop2_kernel_prolong       4 0.0 4.3543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff3913f510_wrap_pyop2_kernel_prolong       4 0.0 8.2750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff39165090_wrap_pyop2_kernel_prolong       4 0.0 4.8967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521f06eed10_wrap_pyop2_kernel_prolong       4 0.0 8.2615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521f0700090_wrap_pyop2_kernel_prolong       4 0.0 3.2174e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee15700f90_wrap_pyop2_kernel_prolong       4 0.0 8.2702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee15701c50_wrap_pyop2_kernel_prolong       4 0.0 4.4358e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475962cd150_wrap_pyop2_kernel_prolong       4 0.0 8.2557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147595898d90_wrap_pyop2_kernel_prolong       4 0.0 3.4280e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14addded7dd0_wrap_pyop2_kernel_prolong       4 0.0 8.2773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adddd95a50_wrap_pyop2_kernel_prolong       4 0.0 2.6956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb6503f10_wrap_pyop2_kernel_prolong       4 0.0 8.2707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb6dd0bd0_wrap_pyop2_kernel_prolong       4 0.0 4.1282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b10d6c9a10_wrap_pyop2_kernel_prolong       4 0.0 8.2698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b10d701590_wrap_pyop2_kernel_prolong       4 0.0 4.7880e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4c308f610_wrap_pyop2_kernel_prolong       4 0.0 8.2571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4c30faf10_wrap_pyop2_kernel_prolong       4 0.0 2.7658e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ebfe87990_wrap_pyop2_kernel_prolong       4 0.0 8.2578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ec41158d0_wrap_pyop2_kernel_prolong       4 0.0 2.6175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebdbb6bad0_wrap_pyop2_kernel_prolong       4 0.0 8.2554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebdbae1150_wrap_pyop2_kernel_prolong       4 0.0 2.6328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152af5bc6710_wrap_pyop2_kernel_prolong       4 0.0 8.2620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152af5c1f910_wrap_pyop2_kernel_prolong       4 0.0 2.9218e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6d4911b90_wrap_pyop2_kernel_prolong       4 0.0 8.2466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6d4911210_wrap_pyop2_kernel_prolong       4 0.0 2.7864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15389e351c90_wrap_pyop2_kernel_prolong       4 0.0 8.2692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15389e353bd0_wrap_pyop2_kernel_prolong       4 0.0 3.9742e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d92ca7b90_wrap_pyop2_kernel_prolong       4 0.0 8.2919e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d92411550_wrap_pyop2_kernel_prolong       4 0.0 4.4123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da8b356810_wrap_pyop2_kernel_prolong       4 0.0 8.2630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da8b5411d0_wrap_pyop2_kernel_prolong       4 0.0 4.1053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dddd815390_wrap_pyop2_kernel_prolong       4 0.0 8.3005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dddd7eeed0_wrap_pyop2_kernel_prolong       4 0.0 4.6586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6de06cb90_wrap_pyop2_kernel_prolong       4 0.0 8.2483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6de099a50_wrap_pyop2_kernel_prolong       4 0.0 2.3920e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b87efdbed0_wrap_pyop2_kernel_prolong       4 0.0 8.2540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b87f00a110_wrap_pyop2_kernel_prolong       4 0.0 2.0538e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f88f16a090_wrap_pyop2_kernel_prolong       4 0.0 8.2494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f88f169950_wrap_pyop2_kernel_prolong       4 0.0 2.5614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541046c6b50_wrap_pyop2_kernel_prolong       4 0.0 8.2501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541046c5850_wrap_pyop2_kernel_prolong       4 0.0 3.1324e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151325bce390_wrap_pyop2_kernel_prolong       4 0.0 8.2553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151325e59610_wrap_pyop2_kernel_prolong       4 0.0 2.9095e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb1cf9cd10_wrap_pyop2_kernel_prolong       4 0.0 8.2600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb1c62e010_wrap_pyop2_kernel_prolong       4 0.0 4.2681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d30c8b10_wrap_pyop2_kernel_prolong       4 0.0 8.2562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d27e66d0_wrap_pyop2_kernel_prolong       4 0.0 4.0776e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506ef0ce610_wrap_pyop2_kernel_prolong       4 0.0 8.2578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506ef0edd50_wrap_pyop2_kernel_prolong       4 0.0 3.3921e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8c3b90150_wrap_pyop2_kernel_prolong       4 0.0 8.2594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8c30621d0_wrap_pyop2_kernel_prolong       4 0.0 4.4086e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fdbd6c510_wrap_pyop2_kernel_prolong       4 0.0 8.2554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fdbd59750_wrap_pyop2_kernel_prolong       4 0.0 2.7743e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15030faafd90_wrap_pyop2_kernel_prolong       4 0.0 8.2716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15030faaf490_wrap_pyop2_kernel_prolong       4 0.0 4.3400e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b29c122350_wrap_pyop2_kernel_prolong       4 0.0 8.2645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b29c1211d0_wrap_pyop2_kernel_prolong       4 0.0 4.7443e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e451b13a90_wrap_pyop2_kernel_prolong       4 0.0 8.2945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e451b43690_wrap_pyop2_kernel_prolong       4 0.0 3.1924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fa2801a10_wrap_pyop2_kernel_prolong       4 0.0 8.2619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fa1fac5d0_wrap_pyop2_kernel_prolong       4 0.0 2.7840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473b70cf0d0_wrap_pyop2_kernel_prolong       4 0.0 8.2643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473b666e690_wrap_pyop2_kernel_prolong       4 0.0 2.2244e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebd80c3e50_wrap_pyop2_kernel_prolong       4 0.0 8.2554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebd8095450_wrap_pyop2_kernel_prolong       4 0.0 3.3804e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476ec442290_wrap_pyop2_kernel_prolong       4 0.0 8.2536e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476ec659810_wrap_pyop2_kernel_prolong       4 0.0 3.4147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee8fd4f350_wrap_pyop2_kernel_prolong       4 0.0 8.2638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee8ff6a690_wrap_pyop2_kernel_prolong       4 0.0 2.7136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485c1026010_wrap_pyop2_kernel_prolong       4 0.0 8.2690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485c123e010_wrap_pyop2_kernel_prolong       4 0.0 4.0291e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c4d2f5450_wrap_pyop2_kernel_prolong       4 0.0 8.2640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c4d10f090_wrap_pyop2_kernel_prolong       4 0.0 3.0617e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462fec04a50_wrap_pyop2_kernel_prolong       4 0.0 8.2472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462fdeb48d0_wrap_pyop2_kernel_prolong       4 0.0 2.7784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ecd92ef10_wrap_pyop2_kernel_prolong       4 0.0 8.2526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ecd91c090_wrap_pyop2_kernel_prolong       4 0.0 3.6006e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a91dd6110_wrap_pyop2_kernel_prolong       4 0.0 8.2556e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a90a5ba90_wrap_pyop2_kernel_prolong       4 0.0 3.6653e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15539b600690_wrap_pyop2_kernel_prolong       4 0.0 8.2540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15539b820150_wrap_pyop2_kernel_prolong       4 0.0 3.6472e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e94f0f3dd0_wrap_pyop2_kernel_prolong       4 0.0 8.2599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9698f01d0_wrap_pyop2_kernel_prolong       4 0.0 4.1027e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15297a11bcd0_wrap_pyop2_kernel_prolong       4 0.0 8.2825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15297a118350_wrap_pyop2_kernel_prolong       4 0.0 5.0956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b64b8e7790_wrap_pyop2_kernel_prolong       4 0.0 8.2453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6514c1a90_wrap_pyop2_kernel_prolong       4 0.0 2.0597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c199377d10_wrap_pyop2_kernel_prolong       4 0.0 8.2467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c19927d750_wrap_pyop2_kernel_prolong       4 0.0 2.5708e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15074627af10_wrap_pyop2_kernel_prolong       4 0.0 8.2585e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507459f1a90_wrap_pyop2_kernel_prolong       4 0.0 4.0873e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458636f5d10_wrap_pyop2_kernel_prolong       4 0.0 8.2459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458636f5cd0_wrap_pyop2_kernel_prolong       4 0.0 2.2349e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7fd22bfd0_wrap_pyop2_kernel_prolong       4 0.0 8.2829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7fcfe2010_wrap_pyop2_kernel_prolong       4 0.0 3.8643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ca0a75950_wrap_pyop2_kernel_prolong       4 0.0 8.2622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ca0a77f10_wrap_pyop2_kernel_prolong       4 0.0 4.1892e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7e955b3d0_wrap_pyop2_kernel_prolong       4 0.0 8.2501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7e95b33d0_wrap_pyop2_kernel_prolong       4 0.0 2.5949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aefe865dd0_wrap_pyop2_kernel_prolong       4 0.0 8.2541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aefe8662d0_wrap_pyop2_kernel_prolong       4 0.0 3.9375e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148078ddef90_wrap_pyop2_kernel_prolong       4 0.0 8.2602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148079006f90_wrap_pyop2_kernel_prolong       4 0.0 4.5024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef347c4110_wrap_pyop2_kernel_prolong       4 0.0 8.2874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef347c6110_wrap_pyop2_kernel_prolong       4 0.0 4.4241e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146344952390_wrap_pyop2_kernel_prolong       4 0.0 8.2604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146344951b50_wrap_pyop2_kernel_prolong       4 0.0 3.9666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa554fc110_wrap_pyop2_kernel_prolong       4 0.0 8.2559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa5550d7d0_wrap_pyop2_kernel_prolong       4 0.0 3.1463e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aeec43590_wrap_pyop2_kernel_prolong       4 0.0 8.2708e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aef0f2d90_wrap_pyop2_kernel_prolong       4 0.0 4.6623e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153341c84bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533404b1790_wrap_pyop2_kernel_prolong       4 0.0 3.4817e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6489a1050_wrap_pyop2_kernel_prolong       4 0.0 8.2576e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a643dfe5d0_wrap_pyop2_kernel_prolong       4 0.0 3.4528e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f1c8e4090_wrap_pyop2_kernel_prolong       4 0.0 8.2972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f1c8cd590_wrap_pyop2_kernel_prolong       4 0.0 4.6255e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347b72b550_wrap_pyop2_kernel_prolong       4 0.0 8.2559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347b6ecb10_wrap_pyop2_kernel_prolong       4 0.0 3.6669e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c1886ba10_wrap_pyop2_kernel_prolong       4 0.0 8.2618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c18898550_wrap_pyop2_kernel_prolong       4 0.0 4.6519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed7b212590_wrap_pyop2_kernel_prolong       4 0.0 8.2542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed7b211ed0_wrap_pyop2_kernel_prolong       4 0.0 3.2587e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14772fe55b10_wrap_pyop2_kernel_prolong       4 0.0 8.2529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14772fe55f50_wrap_pyop2_kernel_prolong       4 0.0 3.0957e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fdbe71390_wrap_pyop2_kernel_prolong       4 0.0 8.2689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fdbe73cd0_wrap_pyop2_kernel_prolong       4 0.0 3.9290e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c27ba81cd0_wrap_pyop2_kernel_prolong       4 0.0 8.2670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c27ba82bd0_wrap_pyop2_kernel_prolong       4 0.0 4.8140e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fc8cd52d0_wrap_pyop2_kernel_prolong       4 0.0 8.2563e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fc810bc50_wrap_pyop2_kernel_prolong       4 0.0 4.3967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d466f01a90_wrap_pyop2_kernel_prolong       4 0.0 8.2535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d466f02b10_wrap_pyop2_kernel_prolong       4 0.0 3.9095e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cf39a9cd0_wrap_pyop2_kernel_prolong       4 0.0 8.2579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cf37db5d0_wrap_pyop2_kernel_prolong       4 0.0 4.1795e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae4beed510_wrap_pyop2_kernel_prolong       4 0.0 8.2665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae4b5a7310_wrap_pyop2_kernel_prolong       4 0.0 5.1741e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 3.7160e-02 7.3 0.00e+00 0.0 3.2e+05 4.0e+00 2.2e+02  0  0  3  0  3   0  0  4  0 10    -0
SFSetGraph           225 1.0 5.4486e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 5.2405e-02 2.7 0.00e+00 0.0 6.5e+05 1.0e+02 2.2e+02  0  0  5  0  3   0  0  8  0 10    -0
SFPack              7861 1.0 1.6747e+00 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            7861 1.0 4.7318e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1123 1.0 6.6500e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              4491 1.0 4.8505e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             4492 1.0 2.5922e+00 1.4 2.07e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 150122
VecAYPX             4492 1.0 2.8137e+00 2.8 1.03e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 69151
VecScatterBegin     7861 1.0 1.8444e+00 3.8 0.00e+00 0.0 6.6e+06 8.5e+04 0.0e+00  0  0 54 43  0   1  0 80 100  0    -0
VecScatterEnd       7861 1.0 3.3484e+01 25.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   7  0  0  0  0    -0
MatMult             4492 1.0 1.2179e+02 1.4 7.34e+10 1.2 5.0e+06 1.1e+05 0.0e+00 18 12 41 43  0  44 42 61 100  0 112966
MatMultAdd          1123 1.0 3.2381e+00 1.3 1.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 90132
MatMultTranspose    1123 1.0 2.1543e+00 2.3 1.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 135480
MatSolve            5615 1.0 1.2357e+02 1.4 7.04e+10 1.2 3.2e+06 2.6e+02 1.1e+03 19 11 26  0 13  45 39 39  0 50 104481
MatLUFactorNum       208 1.0 1.8381e+01 1.5 2.90e+10 1.3 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   7 16  0  0  0 284888
MatResidual         1123 1.0 3.2887e+01 1.6 1.86e+10 1.2 1.3e+06 1.1e+05 0.0e+00  5  3 10 11  0  11 11 15 25  0 106064
PCSetUpOnBlocks     2246 1.0 1.8399e+01 1.5 2.90e+10 1.3 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   7 16  0  0  0 284598
PCApply             5615 1.0 1.2364e+02 1.4 7.04e+10 1.2 3.2e+06 2.6e+02 1.1e+03 19 11 26  0 13  45 39 39  0 50 104419
PCApplyOnBlocks     4492 1.0 1.1141e+02 1.5 7.03e+10 1.2 0.0e+00 0.0e+00 0.0e+00 16 11  0  0  0  38 39  0  0  0 115705
KSPSetUp               1 1.0 2.4830e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            3369 1.0 1.9563e+02 1.1 1.28e+11 1.2 7.0e+06 6.0e+04 2.2e+03 33 20 57 32 25  80 72 85 75 100 121476
MGSmooth Level 0    1123 1.0 2.5444e+01 2.8 7.45e+08 36.7 3.2e+06 2.6e+02 2.2e+03  3  0 26  0 25   7  0 39  0 100   781
MGSmooth Level 1    2246 1.0 2.0454e+02 1.2 1.57e+11 1.2 3.8e+06 1.1e+05 0.0e+00 33 25 31 32  0  80 88 46 75  0 141690
MGResid Level 1     1123 1.0 3.2890e+01 1.6 1.86e+10 1.2 1.3e+06 1.1e+05 0.0e+00  5  3 10 11  0  11 11 15 25  0 106053
MGInterp Level 1    2246 1.0 5.2398e+00 1.5 3.10e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 111401
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
         PetscRandom    17             17
           Index Set  1797           1797
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   402            627
              Vector  1167           1166
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

           Index Set   450            450
   Star Forest Graph   225              0
              Vector   227            228
========================================================================================================================
Average time to get PetscTime(): 2.68e-08
Average time for MPI_Barrier(): 7.937e-06
Average time for zero size MPI_Send(): 2.43383e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping/sweep.profile # (source: code)
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

