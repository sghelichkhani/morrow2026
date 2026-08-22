****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0347.gadi.nci.org.au with 208 processes, by sg8812 on Fri Aug 21 23:38:47 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.015e+03     1.000   1.015e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.197e+12     1.132   1.146e+12  2.384e+14
Flops/sec:            1.179e+09     1.132   1.129e+09  2.348e+11
MPI Msg Count:        1.138e+05     4.045   6.592e+04  1.371e+07
MPI Msg Len (bytes):  1.290e+10     3.594   1.150e+05  1.577e+12
MPI Reductions:       9.660e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.8187e+02  47.5%  1.6491e+14  69.2%  4.484e+06  32.7%  1.789e+05       50.9%  7.739e+03  80.1%
 1:        MG Apply: 5.3338e+02  52.5%  7.3501e+13  30.8%  9.228e+06  67.3%  8.400e+04       49.1%  1.902e+03  19.7%

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

BuildTwoSided       1067 1.0 4.4813e+01 2.6 0.00e+00 0.0 1.9e+05 4.0e+00 1.1e+03  3  0  1  0 11   7  0  4  0 14    -0
BuildTwoSidedF       970 1.0 4.3005e+01 2.3 0.00e+00 0.0 2.4e+05 1.4e+06 9.7e+02  3  0  2 22 10   6  0  5 43 13    -0
SFSetGraph           104 1.0 8.3740e-03 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 3.5524e+00 135.6 0.00e+00 0.0 1.4e+05 1.1e+03 9.7e+01  0  0  1  0  1   0  0  3  0  1    -0
SFBcastBegin         882 1.0 4.3751e-01 4.0 0.00e+00 0.0 9.1e+05 8.5e+04 0.0e+00  0  0  7  5  0   0  0 20 10  0    -0
SFBcastEnd           882 1.0 1.7915e+01 122.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        338 1.0 8.4735e-02 5.3 0.00e+00 0.0 3.6e+05 1.0e+05 0.0e+00  0  0  3  2  0   0  0  8  5  0    -0
SFReduceEnd          338 1.0 3.2309e+00 55.1 3.85e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1455
SFFetchOpBegin         6 1.0 2.9654e-05 4.2 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 1.0456e-03 26.1 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.3963e-03 2.8 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.7043e-03 1.4 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  1  0  1   0  0  3  0  1    -0
SFSectionSF           51 1.0 4.6082e-03 2.8 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
SFRemoteOff            2 1.0 1.0221e-04 2.9 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              3735 1.0 1.3512e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3741 1.0 2.0777e-01 5.6 3.85e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 22622
VecDot               222 1.0 9.8981e-01 5.8 1.79e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  3 36767
VecMDot             2287 1.0 2.9073e+01 2.4 8.38e+09 1.1 0.0e+00 0.0e+00 2.3e+03  2  1  0  0 24   4  1  0  0 30 58585
VecNorm             3104 1.0 8.3378e+00 2.4 2.50e+09 1.1 0.0e+00 0.0e+00 3.1e+03  1  0  0  0 32   1  0  0  0 40 61028
VecScale            2585 1.0 8.1457e-01 1.2 1.04e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 260112
VecCopy             1635 1.0 2.1677e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               596 1.0 4.8642e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              298 1.0 5.2229e-01 1.2 2.40e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 93532
VecWAXPY             222 1.0 4.3080e-01 1.1 8.95e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 42238
VecMAXPY            2585 1.0 1.3446e+01 1.1 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  1  0  0  0 154555
VecScatterBegin     2509 1.0 1.0592e+00 2.7 0.00e+00 0.0 2.7e+06 1.2e+05 0.0e+00  0  0 20 20  0   0  0 61 40  0    -0
VecScatterEnd       2509 1.0 1.7877e+01 9.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       444 1.0 3.2985e-01 2.3 3.58e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 220662
VecReduceComm        222 1.0 2.5293e-01 32.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         836 1.0 3.6491e+00 2.4 1.01e+09 1.1 0.0e+00 0.0e+00 8.4e+02  0  0  0  0  9   0  0  0  0 11 56334
MatMult             2509 1.0 1.0847e+02 1.2 7.17e+10 1.1 2.7e+06 1.2e+05 0.0e+00 10  6 20 20  0  20  9 61 40  0 134168
MatSolve             836 1.0 3.2834e+01 1.2 2.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   7  3  0  0  0 142829
MatLUFactorSym         1 1.0 4.5499e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       152 1.0 2.1019e+01 1.1 1.95e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  2  0  0  0 182271
MatILUFactorSym        2 1.0 2.9757e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               74 1.0 3.8956e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 1.8734e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1171 1.0 4.7531e+01 2.1 0.00e+00 0.0 2.4e+05 1.4e+06 9.7e+02  3  0  2 22 10   7  0  5 43 13    -0
MatAssemblyEnd      1171 1.0 1.3749e+01 6.2 2.47e+08 0.0 4.4e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0  1536
MatGetRowIJ            2 1.0 6.2650e-06 23.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 1.0338e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       298 1.0 7.6387e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5751e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2466e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        152 1.0 1.4406e+00 1.2 2.21e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 310417
MatPtAPSymbolic        1 1.0 2.0218e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        76 1.0 1.1092e+01 1.1 8.82e+09 1.1 8.4e+04 3.4e+05 8.1e+01  1  1  1  2  1   2  1  2  4  1 161239
MatGetLocalMat        76 1.0 5.6321e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         76 1.0 6.2611e-01 4.3 0.00e+00 0.0 8.5e+04 3.4e+05 0.0e+00  0  0  1  2  0   0  0  2  4  0    -0
MatSetPreallCOO       32 1.0 7.0267e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.7621e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              222 1.0 1.1053e+02 1.0 8.16e+10 1.1 9.2e+05 1.4e+05 1.8e+03 11  7  7  8 18  23 10 20 16 23 148653
PCApply             1527 1.0 5.4859e+02 1.1 3.64e+11 1.1 9.2e+06 8.4e+04 1.9e+03 53 31 67 49 20 Multiple stages 133983
PCApplyOnBlocks      836 1.0 3.2844e+01 1.2 2.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   7  3  0  0  0 142783
KSPSetUp             222 1.0 1.9156e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             222 1.0 6.1938e+02 1.0 4.22e+11 1.1 1.1e+07 8.9e+04 5.2e+03 61 36 79 61 54 Multiple stages 137414
KSPGMRESOrthog      2287 1.0 3.8867e+01 1.7 1.68e+10 1.1 0.0e+00 0.0e+00 2.3e+03  3  1  0  0 24   6  2  0  0 30 87645
DMRefine               2 1.0 2.7056e-02 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1    16
DMPlexCreateGmsh       1 1.0 1.4706e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.7432e+00 301.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 8.6639e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.7061e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexPartSelf         1 1.0 2.0842e-03 827.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.4496e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.5760e-03 1.1 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.1447e-03 5.2 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.8151e-03 2.7 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 7.2732e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 8.9308e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.9979e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 6.5804e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 1.6607e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  1  0  2   0  0  4  0  3    -0
DMPlexDistField        7 1.0 3.7592e-03 1.3 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 4.9103e-03 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.1791e-04 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1748e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.5420e-03 1.6 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1463e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 6.7886e-04 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.8542e-04 2.0 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.1408e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.7525e-04 1.8 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 9.5016e+02 1.0 1.20e+12 1.1 1.3e+07 1.2e+05 8.8e+03 94 100 97 100 91 Multiple stages 250897
SNESSetUp              1 1.0 5.8194e-05 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     297 1.0 3.1357e+01 1.1 2.69e+11 1.2 7.3e+05 1.2e+05 0.0e+00  3 22  5  5  0   6 32 16 11  0 1680542
SNESJacobianEval     222 1.0 1.7822e+02 1.0 4.20e+11 1.2 4.8e+05 7.6e+05 8.9e+02 18 35  4 23  9  37 50 11 46 11 463781
SNESLineSearch       222 1.0 2.6574e+01 1.0 2.08e+11 1.2 7.3e+05 1.2e+05 8.9e+02  3 17  5  5  9   5 25 16 11 11 1538278
DualSpaceSetUp         8 1.0 5.6787e-03 1.3 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.0924e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.0132e+03 1.0 1.20e+12 1.1 1.4e+07 1.2e+05 9.6e+03 100 100 100 100 100 Multiple stages 235306
firedrake.__init__       1 1.0 1.0120e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 4.8883e+00 30.5 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  0  0  2  0  5   1  0  8  0  6    -0
firedrake.mesh._from_gmsh       1 1.0 4.7439e+00 300.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.1559e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 1.0729e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.7382e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0453e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 2.8758e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.8141e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 2.7076e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.4725e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.4612e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 9.9512e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.4505e-03 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.4599e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3130e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 3.3047e-02 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.8465e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.3154e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.7069e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3092e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.7817e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 8.9542e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2393 1.0 1.7949e+02 1.2 6.89e+11 1.2 6.8e+05 1.1e+05 3.2e+01 16 57  5  5  0  34 82 15 10  0 754050
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.3228e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4786 1.0 2.4648e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0673e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.2422e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.6683e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.3780e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.3779e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.0487e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.8844e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2393 1.0 8.1188e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2393 1.0 6.4402e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.2900e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.4688e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  1  0  0  0  0   2  0  0  0  0   327
firedrake.interpolation.interpolate      13 1.0 4.7622e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.0849e+00 1.0 8.42e+07 1.1 2.8e+04 4.0e+04 3.7e+01  1  0  0  0  0   1  0  1  0  0  2812
firedrake.formmanipulation.split_form      14 1.0 5.0065e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.7236e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 3.0036e-01 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 2.4910e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     615 1.0 5.4158e+00 20.2 0.00e+00 0.0 6.9e+05 1.1e+05 4.0e+00  0  0  5  5  0   1  0 15 10  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.5739e+00 1.0 8.42e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  3070
firedrake.halo.Halo.global_to_local_end     615 1.0 1.3591e+01 145.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 1.6670e+00 26.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493bba11310_wrap_pyop2_kernel_prolong       4 0.0 7.4127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493bb97a0d0_wrap_pyop2_kernel_prolong       4 0.0 4.8345e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9439e+00 1.0 6.81e+07 1.1 1.7e+04 5.8e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  3512
firedrake.function.Function.assign     314 1.0 1.8833e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.8041e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.3080e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.5171e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.4686e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4319e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9402e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1324e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.5276e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.4847e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6503e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1118e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1118e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.1960e+00 1.1 0.00e+00 0.0 5.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.6094e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 9.5044e+02 1.0 1.20e+12 1.1 1.3e+07 1.2e+05 9.0e+03 94 100 97 100 93 Multiple stages 250824
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.1897e-01 1086.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1131e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.1891e-01 1334.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.1888e-01 1518.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     594 1.0 7.9815e+00 1.3 6.81e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  8  0  0  0 1733933
Parloop_Cells_wrap_form0_exterior_facet_top_integral     594 1.0 1.0032e+00 1.0 8.85e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1793
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     594 1.0 1.4079e+00 1.1 7.01e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12123
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     594 1.0 5.2794e+00 1.1 6.54e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  6  0  0  0   1  8  0  0  0 2517673
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     594 1.0 1.1409e+01 1.2 1.35e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 15  0  0  0 2238822
firedrake.halo.Halo.local_to_global_begin     297 1.0 9.5683e-02 4.3 0.00e+00 0.0 3.2e+05 1.2e+05 0.0e+00  0  0  2  2  0   0  0  7  5  0    -0
firedrake.halo.Halo.local_to_global_end     297 1.0 3.2335e+00 51.9 3.85e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1454
Parloop_Cells_wrap_form00_cell_integral     444 1.0 3.1419e+01 1.5 9.50e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   5 12  0  0  0 614372
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     444 1.0 2.1679e+00 1.7 5.34e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5992
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     444 1.0 3.4849e+01 1.2 1.26e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3 11  0  0  0   7 15  0  0  0 732814
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     444 1.0 7.9813e+01 1.4 2.00e+11 1.3 0.0e+00 0.0e+00 0.0e+00  7 16  0  0  0  14 23  0  0  0 473333
firedrake.dmhooks.get_function_space       1 1.0 1.1668e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1391e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       76 1.0 9.3773e+00 1.0 4.72e+07 20.3 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   177
MGSetup Level 1       76 1.0 8.5238e+01 1.0 7.27e+10 1.1 8.3e+05 1.2e+05 1.6e+03  8  6  6  6 17  18  9 18 12 21 171758
firedrake.constant.Constant.assign      75 1.0 3.1858e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15415cb54150_wrap_pyop2_kernel_prolong       4 0.0 7.4137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15415c1b5bd0_wrap_pyop2_kernel_prolong       4 0.0 4.8496e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be53460b50_wrap_pyop2_kernel_prolong       4 0.0 7.3993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be52ad1710_wrap_pyop2_kernel_prolong       4 0.0 6.4355e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f520aba90_wrap_pyop2_kernel_prolong       4 0.0 7.4145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f520b3bd0_wrap_pyop2_kernel_prolong       4 0.0 5.7930e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a06bd19e50_wrap_pyop2_kernel_prolong       4 0.0 7.4225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a06bd1b550_wrap_pyop2_kernel_prolong       4 0.0 6.7998e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505df03ac90_wrap_pyop2_kernel_prolong       4 0.0 7.4125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505ddd8fb10_wrap_pyop2_kernel_prolong       4 0.0 6.1543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149319f41f90_wrap_pyop2_kernel_prolong       4 0.0 7.4133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149319f43a90_wrap_pyop2_kernel_prolong       4 0.0 5.2784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480972abc90_wrap_pyop2_kernel_prolong       4 0.0 7.4056e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148097069a10_wrap_pyop2_kernel_prolong       4 0.0 5.2201e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14978acdd510_wrap_pyop2_kernel_prolong       4 0.0 7.4156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14978a331c50_wrap_pyop2_kernel_prolong       4 0.0 5.5010e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca1dbe27d0_wrap_pyop2_kernel_prolong       4 0.0 7.4144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca1d320fd0_wrap_pyop2_kernel_prolong       4 0.0 5.5485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8a1a63990_wrap_pyop2_kernel_prolong       4 0.0 7.4187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8a18dd490_wrap_pyop2_kernel_prolong       4 0.0 6.4728e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530684c0ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4157e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530684c1890_wrap_pyop2_kernel_prolong       4 0.0 6.0707e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eec5fe0b90_wrap_pyop2_kernel_prolong       4 0.0 7.4228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eec6022490_wrap_pyop2_kernel_prolong       4 0.0 6.9244e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b7862da10_wrap_pyop2_kernel_prolong       4 0.0 7.4022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b786231d0_wrap_pyop2_kernel_prolong       4 0.0 5.3826e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a55988a950_wrap_pyop2_kernel_prolong       4 0.0 7.4114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a55a435f90_wrap_pyop2_kernel_prolong       4 0.0 6.6903e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c81d1c6990_wrap_pyop2_kernel_prolong       4 0.0 7.4237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c81d1b6890_wrap_pyop2_kernel_prolong       4 0.0 7.6741e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad756d9bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3964e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad756d9890_wrap_pyop2_kernel_prolong       4 0.0 4.8170e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150575811d50_wrap_pyop2_kernel_prolong       4 0.0 7.4012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150575810e50_wrap_pyop2_kernel_prolong       4 0.0 5.6509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc3f429ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc3f2c9310_wrap_pyop2_kernel_prolong       4 0.0 7.0652e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487efac2b90_wrap_pyop2_kernel_prolong       4 0.0 7.4006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487ef193e90_wrap_pyop2_kernel_prolong       4 0.0 5.8144e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c56165210_wrap_pyop2_kernel_prolong       4 0.0 7.3908e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c56167e50_wrap_pyop2_kernel_prolong       4 0.0 4.8527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edfebd0d90_wrap_pyop2_kernel_prolong       4 0.0 7.3934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edfe1e15d0_wrap_pyop2_kernel_prolong       4 0.0 5.2944e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154945fa2250_wrap_pyop2_kernel_prolong       4 0.0 7.3975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154945fa2310_wrap_pyop2_kernel_prolong       4 0.0 6.1535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d8a703c10_wrap_pyop2_kernel_prolong       4 0.0 7.4047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d8a5df0d0_wrap_pyop2_kernel_prolong       4 0.0 7.1479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a330c9d90_wrap_pyop2_kernel_prolong       4 0.0 7.4202e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a330c9650_wrap_pyop2_kernel_prolong       4 0.0 6.1501e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153dc9e38650_wrap_pyop2_kernel_prolong       4 0.0 7.4172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153dc941bc10_wrap_pyop2_kernel_prolong       4 0.0 7.6373e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495cfa84910_wrap_pyop2_kernel_prolong       4 0.0 7.3979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495cfa79a50_wrap_pyop2_kernel_prolong       4 0.0 5.5355e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f47255cb90_wrap_pyop2_kernel_prolong       4 0.0 7.3914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f472f29210_wrap_pyop2_kernel_prolong       4 0.0 5.3309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f91d5be90_wrap_pyop2_kernel_prolong       4 0.0 7.3972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f91d58290_wrap_pyop2_kernel_prolong       4 0.0 6.0689e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d9ebca10_wrap_pyop2_kernel_prolong       4 0.0 7.3959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d9ed0950_wrap_pyop2_kernel_prolong       4 0.0 6.2234e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153451063bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15345117f590_wrap_pyop2_kernel_prolong       4 0.0 6.2514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e2fff6d0_wrap_pyop2_kernel_prolong       4 0.0 7.3960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e3277ed0_wrap_pyop2_kernel_prolong       4 0.0 5.6080e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c69dcdd9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c69dcdfc10_wrap_pyop2_kernel_prolong       4 0.0 5.6310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553f2da29d0_wrap_pyop2_kernel_prolong       4 0.0 7.4105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553f2d78890_wrap_pyop2_kernel_prolong       4 0.0 6.0414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea0d854c50_wrap_pyop2_kernel_prolong       4 0.0 7.4180e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea0ce32450_wrap_pyop2_kernel_prolong       4 0.0 6.5504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f97abf19d0_wrap_pyop2_kernel_prolong       4 0.0 7.3908e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f97a3f3bd0_wrap_pyop2_kernel_prolong       4 0.0 5.5762e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498137d5d90_wrap_pyop2_kernel_prolong       4 0.0 7.4154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149812447790_wrap_pyop2_kernel_prolong       4 0.0 6.8941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151be59abdd0_wrap_pyop2_kernel_prolong       4 0.0 7.4195e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151be59ab5d0_wrap_pyop2_kernel_prolong       4 0.0 6.3631e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d24d962010_wrap_pyop2_kernel_prolong       4 0.0 7.4183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d24d960750_wrap_pyop2_kernel_prolong       4 0.0 7.5846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8eca63d50_wrap_pyop2_kernel_prolong       4 0.0 7.3992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8eca631d0_wrap_pyop2_kernel_prolong       4 0.0 5.7555e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d305cf9450_wrap_pyop2_kernel_prolong       4 0.0 7.4112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d305bc3e90_wrap_pyop2_kernel_prolong       4 0.0 6.0586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150103b89410_wrap_pyop2_kernel_prolong       4 0.0 7.4101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15010857e250_wrap_pyop2_kernel_prolong       4 0.0 6.2739e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c18d092c50_wrap_pyop2_kernel_prolong       4 0.0 7.4124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c18d4a42d0_wrap_pyop2_kernel_prolong       4 0.0 6.2154e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464ac958fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4002e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464ac99a9d0_wrap_pyop2_kernel_prolong       4 0.0 5.4742e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b66160a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b661609e50_wrap_pyop2_kernel_prolong       4 0.0 7.4017e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8e9719690_wrap_pyop2_kernel_prolong       4 0.0 7.3990e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8e96c4ad0_wrap_pyop2_kernel_prolong       4 0.0 5.7927e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f1758b690_wrap_pyop2_kernel_prolong       4 0.0 7.4048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f17389750_wrap_pyop2_kernel_prolong       4 0.0 7.1921e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14989e10f550_wrap_pyop2_kernel_prolong       4 0.0 7.4217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14989e10d510_wrap_pyop2_kernel_prolong       4 0.0 6.6068e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15111e4c9c50_wrap_pyop2_kernel_prolong       4 0.0 7.4122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15111e4c94d0_wrap_pyop2_kernel_prolong       4 0.0 6.0231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0ec223e10_wrap_pyop2_kernel_prolong       4 0.0 7.4032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0e7681310_wrap_pyop2_kernel_prolong       4 0.0 7.1007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146102cf2990_wrap_pyop2_kernel_prolong       4 0.0 7.4013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14610202fd10_wrap_pyop2_kernel_prolong       4 0.0 6.3766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb3ef8b50_wrap_pyop2_kernel_prolong       4 0.0 7.4090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb3511190_wrap_pyop2_kernel_prolong       4 0.0 7.6042e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5dd2c10d0_wrap_pyop2_kernel_prolong       4 0.0 7.3943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5dc8a3190_wrap_pyop2_kernel_prolong       4 0.0 5.2574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15374c292050_wrap_pyop2_kernel_prolong       4 0.0 7.3927e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15374c288dd0_wrap_pyop2_kernel_prolong       4 0.0 5.1973e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15046d40fd10_wrap_pyop2_kernel_prolong       4 0.0 7.4105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15046d4033d0_wrap_pyop2_kernel_prolong       4 0.0 5.4833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b68dafbd0_wrap_pyop2_kernel_prolong       4 0.0 7.3911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b69052110_wrap_pyop2_kernel_prolong       4 0.0 5.0806e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15230b3920d0_wrap_pyop2_kernel_prolong       4 0.0 7.4041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15230b390f90_wrap_pyop2_kernel_prolong       4 0.0 5.9139e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fffcd464d0_wrap_pyop2_kernel_prolong       4 0.0 7.4146e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fffcc15490_wrap_pyop2_kernel_prolong       4 0.0 6.2612e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdfa6c90d0_wrap_pyop2_kernel_prolong       4 0.0 7.3964e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdf9dbebd0_wrap_pyop2_kernel_prolong       4 0.0 4.5196e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d449885c50_wrap_pyop2_kernel_prolong       4 0.0 7.4128e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d44981e850_wrap_pyop2_kernel_prolong       4 0.0 6.0637e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466e70ee390_wrap_pyop2_kernel_prolong       4 0.0 7.3949e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466e70ed890_wrap_pyop2_kernel_prolong       4 0.0 5.6259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15178e59dc50_wrap_pyop2_kernel_prolong       4 0.0 7.4014e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15178e391890_wrap_pyop2_kernel_prolong       4 0.0 5.3940e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b824b6f10_wrap_pyop2_kernel_prolong       4 0.0 7.4081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b8237cd50_wrap_pyop2_kernel_prolong       4 0.0 6.2191e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474a18b9550_wrap_pyop2_kernel_prolong       4 0.0 7.4035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474a18df150_wrap_pyop2_kernel_prolong       4 0.0 6.8090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15023f4cd510_wrap_pyop2_kernel_prolong       4 0.0 7.4016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15023f323090_wrap_pyop2_kernel_prolong       4 0.0 6.8960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05030e510_wrap_pyop2_kernel_prolong       4 0.0 7.3907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0500f1290_wrap_pyop2_kernel_prolong       4 0.0 5.4213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c52567550_wrap_pyop2_kernel_prolong       4 0.0 7.3957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c52565590_wrap_pyop2_kernel_prolong       4 0.0 6.1766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d45b295590_wrap_pyop2_kernel_prolong       4 0.0 7.3975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d45b296fd0_wrap_pyop2_kernel_prolong       4 0.0 6.7058e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475cea70d90_wrap_pyop2_kernel_prolong       4 0.0 7.4075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475cecc1a10_wrap_pyop2_kernel_prolong       4 0.0 5.9316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15073194d590_wrap_pyop2_kernel_prolong       4 0.0 7.4117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507317d0a50_wrap_pyop2_kernel_prolong       4 0.0 6.1911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523c6cd71d0_wrap_pyop2_kernel_prolong       4 0.0 7.4106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523c6cdd490_wrap_pyop2_kernel_prolong       4 0.0 7.0098e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14facef38510_wrap_pyop2_kernel_prolong       4 0.0 7.4084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14facef29c50_wrap_pyop2_kernel_prolong       4 0.0 6.2734e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d54442f310_wrap_pyop2_kernel_prolong       4 0.0 7.4099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d53f751490_wrap_pyop2_kernel_prolong       4 0.0 5.2105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15344fa41750_wrap_pyop2_kernel_prolong       4 0.0 7.3982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15344fa41510_wrap_pyop2_kernel_prolong       4 0.0 6.6286e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14604ff68090_wrap_pyop2_kernel_prolong       4 0.0 7.3973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14604ffd7310_wrap_pyop2_kernel_prolong       4 0.0 5.6026e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2bdd4e350_wrap_pyop2_kernel_prolong       4 0.0 7.4144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2bdd4e290_wrap_pyop2_kernel_prolong       4 0.0 6.2771e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547057f1dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4051e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547057f17d0_wrap_pyop2_kernel_prolong       4 0.0 6.7249e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf95299d0_wrap_pyop2_kernel_prolong       4 0.0 7.4169e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf9531890_wrap_pyop2_kernel_prolong       4 0.0 7.4063e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148acdc4f710_wrap_pyop2_kernel_prolong       4 0.0 7.4020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148acdc41c10_wrap_pyop2_kernel_prolong       4 0.0 5.9879e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150203328550_wrap_pyop2_kernel_prolong       4 0.0 7.4050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502033c3d50_wrap_pyop2_kernel_prolong       4 0.0 6.0901e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bc8efa110_wrap_pyop2_kernel_prolong       4 0.0 7.4196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bc8ef1d50_wrap_pyop2_kernel_prolong       4 0.0 6.2079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518807b5250_wrap_pyop2_kernel_prolong       4 0.0 7.4093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518807b48d0_wrap_pyop2_kernel_prolong       4 0.0 6.2695e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e4bfddb50_wrap_pyop2_kernel_prolong       4 0.0 7.4021e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e4be69550_wrap_pyop2_kernel_prolong       4 0.0 5.4029e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cead72010_wrap_pyop2_kernel_prolong       4 0.0 7.4134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cead66390_wrap_pyop2_kernel_prolong       4 0.0 7.2855e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c22bf15d0_wrap_pyop2_kernel_prolong       4 0.0 7.4095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c22bf04d0_wrap_pyop2_kernel_prolong       4 0.0 5.2563e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14950a54a110_wrap_pyop2_kernel_prolong       4 0.0 7.4008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14950a3ed6d0_wrap_pyop2_kernel_prolong       4 0.0 5.6208e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483d44f5410_wrap_pyop2_kernel_prolong       4 0.0 7.3942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483d44f6790_wrap_pyop2_kernel_prolong       4 0.0 5.8053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14990d8169d0_wrap_pyop2_kernel_prolong       4 0.0 7.4188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14990c478f10_wrap_pyop2_kernel_prolong       4 0.0 6.7160e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca7b87eb50_wrap_pyop2_kernel_prolong       4 0.0 7.4110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca7ad27250_wrap_pyop2_kernel_prolong       4 0.0 5.7932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b268b51d0_wrap_pyop2_kernel_prolong       4 0.0 7.4081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b25f1b4d0_wrap_pyop2_kernel_prolong       4 0.0 6.6516e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f928ea1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4128e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f928e99d0_wrap_pyop2_kernel_prolong       4 0.0 7.0669e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fb3f53ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fb3f503d0_wrap_pyop2_kernel_prolong       4 0.0 6.2166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151aa1614410_wrap_pyop2_kernel_prolong       4 0.0 7.4111e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151aa1612850_wrap_pyop2_kernel_prolong       4 0.0 5.3805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e94474d10_wrap_pyop2_kernel_prolong       4 0.0 7.4054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e944b5b90_wrap_pyop2_kernel_prolong       4 0.0 6.6542e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148205726290_wrap_pyop2_kernel_prolong       4 0.0 7.4041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14820574f8d0_wrap_pyop2_kernel_prolong       4 0.0 5.5623e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14849970bd50_wrap_pyop2_kernel_prolong       4 0.0 7.4181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148499923750_wrap_pyop2_kernel_prolong       4 0.0 6.8932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542fa08a590_wrap_pyop2_kernel_prolong       4 0.0 7.3990e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542fa2c4690_wrap_pyop2_kernel_prolong       4 0.0 7.0427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14996cdb17d0_wrap_pyop2_kernel_prolong       4 0.0 7.3969e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14996c448710_wrap_pyop2_kernel_prolong       4 0.0 6.0983e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fecd69e210_wrap_pyop2_kernel_prolong       4 0.0 7.4100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fecd69db10_wrap_pyop2_kernel_prolong       4 0.0 6.2045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d329d3e450_wrap_pyop2_kernel_prolong       4 0.0 7.4101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d329d45bd0_wrap_pyop2_kernel_prolong       4 0.0 6.6939e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f1c8daf50_wrap_pyop2_kernel_prolong       4 0.0 7.4152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f1c8d8090_wrap_pyop2_kernel_prolong       4 0.0 6.6790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14971c65d710_wrap_pyop2_kernel_prolong       4 0.0 7.4158e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14971c76fc90_wrap_pyop2_kernel_prolong       4 0.0 6.4175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a2e7ade90_wrap_pyop2_kernel_prolong       4 0.0 7.4070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a2e7ad510_wrap_pyop2_kernel_prolong       4 0.0 6.3925e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14900c5c7090_wrap_pyop2_kernel_prolong       4 0.0 7.4235e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14900c5cd910_wrap_pyop2_kernel_prolong       4 0.0 7.7156e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149778845cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5240e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149778847ad0_wrap_pyop2_kernel_prolong       4 0.0 5.2896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147039abe390_wrap_pyop2_kernel_prolong       4 0.0 7.5283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147039d286d0_wrap_pyop2_kernel_prolong       4 0.0 5.6035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149236adcbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5219e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149236135950_wrap_pyop2_kernel_prolong       4 0.0 5.4045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15319c5db2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15319c5da390_wrap_pyop2_kernel_prolong       4 0.0 6.1019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bd0461d10_wrap_pyop2_kernel_prolong       4 0.0 7.5234e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bd030c190_wrap_pyop2_kernel_prolong       4 0.0 6.3744e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5f8b08250_wrap_pyop2_kernel_prolong       4 0.0 7.5312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5f8d9fa50_wrap_pyop2_kernel_prolong       4 0.0 7.2211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f853519f50_wrap_pyop2_kernel_prolong       4 0.0 7.5225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f853519590_wrap_pyop2_kernel_prolong       4 0.0 5.7071e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147af3b8fa90_wrap_pyop2_kernel_prolong       4 0.0 7.5252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147af3998810_wrap_pyop2_kernel_prolong       4 0.0 6.1620e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152297ba3810_wrap_pyop2_kernel_prolong       4 0.0 7.5215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152297ba2a90_wrap_pyop2_kernel_prolong       4 0.0 5.9322e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15319cfdd010_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15319cfce1d0_wrap_pyop2_kernel_prolong       4 0.0 6.0643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a700da790_wrap_pyop2_kernel_prolong       4 0.0 7.5227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a6bea1cd0_wrap_pyop2_kernel_prolong       4 0.0 6.4710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511bc4b4a10_wrap_pyop2_kernel_prolong       4 0.0 7.5282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511bc4a4210_wrap_pyop2_kernel_prolong       4 0.0 6.5167e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c0e492750_wrap_pyop2_kernel_prolong       4 0.0 7.5287e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c0e493d90_wrap_pyop2_kernel_prolong       4 0.0 6.8457e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acbded66d0_wrap_pyop2_kernel_prolong       4 0.0 7.5151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acbdeea450_wrap_pyop2_kernel_prolong       4 0.0 5.0966e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0500b6210_wrap_pyop2_kernel_prolong       4 0.0 7.5152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0502e5b50_wrap_pyop2_kernel_prolong       4 0.0 5.9782e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154df0d85450_wrap_pyop2_kernel_prolong       4 0.0 7.5273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154df0b6a050_wrap_pyop2_kernel_prolong       4 0.0 6.7204e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15285c220b10_wrap_pyop2_kernel_prolong       4 0.0 7.5220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152857999490_wrap_pyop2_kernel_prolong       4 0.0 5.7010e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac449eddd0_wrap_pyop2_kernel_prolong       4 0.0 7.5196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac449ec0d0_wrap_pyop2_kernel_prolong       4 0.0 5.9130e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8f02b7410_wrap_pyop2_kernel_prolong       4 0.0 7.5215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8eba6e310_wrap_pyop2_kernel_prolong       4 0.0 6.5328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15529d32d090_wrap_pyop2_kernel_prolong       4 0.0 7.5172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15529c9f8890_wrap_pyop2_kernel_prolong       4 0.0 5.2172e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5770a1090_wrap_pyop2_kernel_prolong       4 0.0 7.5180e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a57709a2d0_wrap_pyop2_kernel_prolong       4 0.0 4.8396e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15344d9df950_wrap_pyop2_kernel_prolong       4 0.0 7.5182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15344d9e1c10_wrap_pyop2_kernel_prolong       4 0.0 6.1077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2c4757290_wrap_pyop2_kernel_prolong       4 0.0 7.5209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2c4754150_wrap_pyop2_kernel_prolong       4 0.0 5.7685e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7fa2f6550_wrap_pyop2_kernel_prolong       4 0.0 7.5168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7fa245d10_wrap_pyop2_kernel_prolong       4 0.0 6.8954e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfbf906090_wrap_pyop2_kernel_prolong       4 0.0 7.5066e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfbf905990_wrap_pyop2_kernel_prolong       4 0.0 5.5363e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14624a264490_wrap_pyop2_kernel_prolong       4 0.0 7.5171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14624a385590_wrap_pyop2_kernel_prolong       4 0.0 7.2867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fac6296150_wrap_pyop2_kernel_prolong       4 0.0 7.5156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fac64de310_wrap_pyop2_kernel_prolong       4 0.0 5.3260e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15544d44e650_wrap_pyop2_kernel_prolong       4 0.0 7.5183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15544cafa6d0_wrap_pyop2_kernel_prolong       4 0.0 6.1067e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc99d81d90_wrap_pyop2_kernel_prolong       4 0.0 7.5214e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc99d8a910_wrap_pyop2_kernel_prolong       4 0.0 6.5680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512e130b790_wrap_pyop2_kernel_prolong       4 0.0 7.5162e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512e09619d0_wrap_pyop2_kernel_prolong       4 0.0 5.6919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15374e77a310_wrap_pyop2_kernel_prolong       4 0.0 7.5248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15374e77a9d0_wrap_pyop2_kernel_prolong       4 0.0 6.6731e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153523a8da90_wrap_pyop2_kernel_prolong       4 0.0 7.5224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153523a93090_wrap_pyop2_kernel_prolong       4 0.0 6.7662e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538d038e590_wrap_pyop2_kernel_prolong       4 0.0 7.5117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538d0381f90_wrap_pyop2_kernel_prolong       4 0.0 5.3433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f77488ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.5246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f774762450_wrap_pyop2_kernel_prolong       4 0.0 6.6673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7dd24f390_wrap_pyop2_kernel_prolong       4 0.0 7.5194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7dc8b3fd0_wrap_pyop2_kernel_prolong       4 0.0 5.6455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469777e6210_wrap_pyop2_kernel_prolong       4 0.0 7.5169e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469777e50d0_wrap_pyop2_kernel_prolong       4 0.0 6.1472e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae17d5f410_wrap_pyop2_kernel_prolong       4 0.0 7.5289e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae17d38cd0_wrap_pyop2_kernel_prolong       4 0.0 6.9230e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cea72109d0_wrap_pyop2_kernel_prolong       4 0.0 7.5288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cea7209690_wrap_pyop2_kernel_prolong       4 0.0 6.3107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15165ad1c4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15165ad21b10_wrap_pyop2_kernel_prolong       4 0.0 6.5786e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a067d3dd90_wrap_pyop2_kernel_prolong       4 0.0 7.5165e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a067f48710_wrap_pyop2_kernel_prolong       4 0.0 6.1240e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c3162810_wrap_pyop2_kernel_prolong       4 0.0 7.5179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c3162c50_wrap_pyop2_kernel_prolong       4 0.0 6.3289e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149943531890_wrap_pyop2_kernel_prolong       4 0.0 7.5227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149943530990_wrap_pyop2_kernel_prolong       4 0.0 5.6358e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470150f79d0_wrap_pyop2_kernel_prolong       4 0.0 7.5160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147015b77bd0_wrap_pyop2_kernel_prolong       4 0.0 6.0090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e1fb9f2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e1fb9fc10_wrap_pyop2_kernel_prolong       4 0.0 6.5204e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542fb3fbbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542fb40d390_wrap_pyop2_kernel_prolong       4 0.0 7.2147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea71b44bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea71300110_wrap_pyop2_kernel_prolong       4 0.0 6.4860e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5ad4d70d0_wrap_pyop2_kernel_prolong       4 0.0 7.5241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5ad4de510_wrap_pyop2_kernel_prolong       4 0.0 6.6206e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14827d372ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5192e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14827d25e750_wrap_pyop2_kernel_prolong       4 0.0 6.3131e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c68350b90_wrap_pyop2_kernel_prolong       4 0.0 7.5161e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c68352190_wrap_pyop2_kernel_prolong       4 0.0 6.0730e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1543f7b10_wrap_pyop2_kernel_prolong       4 0.0 7.5327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1543eb7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5262e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd15770110_wrap_pyop2_kernel_prolong       4 0.0 7.5308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd15771c50_wrap_pyop2_kernel_prolong       4 0.0 7.0479e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cf5c77450_wrap_pyop2_kernel_prolong       4 0.0 7.5247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cf5eca090_wrap_pyop2_kernel_prolong       4 0.0 7.1842e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3afe64350_wrap_pyop2_kernel_prolong       4 0.0 7.5113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3afe6de90_wrap_pyop2_kernel_prolong       4 0.0 5.6106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa789ebcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa73e9e190_wrap_pyop2_kernel_prolong       4 0.0 6.0602e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15235e447550_wrap_pyop2_kernel_prolong       4 0.0 7.5067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15235e444ed0_wrap_pyop2_kernel_prolong       4 0.0 6.6186e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ccfd47510_wrap_pyop2_kernel_prolong       4 0.0 7.5150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ccfd28d50_wrap_pyop2_kernel_prolong       4 0.0 5.7176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df9c534c10_wrap_pyop2_kernel_prolong       4 0.0 7.5126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df978fdc90_wrap_pyop2_kernel_prolong       4 0.0 6.1589e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503f4d55310_wrap_pyop2_kernel_prolong       4 0.0 7.5025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503f4d38510_wrap_pyop2_kernel_prolong       4 0.0 5.2897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb2232e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4983e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb22ccf310_wrap_pyop2_kernel_prolong       4 0.0 5.0561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545a98fc7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5007e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545a98a8f90_wrap_pyop2_kernel_prolong       4 0.0 5.6253e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522e99f1e90_wrap_pyop2_kernel_prolong       4 0.0 7.5139e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522e99f20d0_wrap_pyop2_kernel_prolong       4 0.0 6.4272e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a70c57ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5111e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a70ad5190_wrap_pyop2_kernel_prolong       4 0.0 6.2229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5d82698d0_wrap_pyop2_kernel_prolong       4 0.0 7.5110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5d8269110_wrap_pyop2_kernel_prolong       4 0.0 7.0919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c958ebf50_wrap_pyop2_kernel_prolong       4 0.0 7.5071e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c94eea550_wrap_pyop2_kernel_prolong       4 0.0 5.5784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7543655d0_wrap_pyop2_kernel_prolong       4 0.0 7.5134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b754364490_wrap_pyop2_kernel_prolong       4 0.0 7.1718e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15070f1062d0_wrap_pyop2_kernel_prolong       4 0.0 7.5033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15070f107750_wrap_pyop2_kernel_prolong       4 0.0 6.0112e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14576cc90790_wrap_pyop2_kernel_prolong       4 0.0 7.5137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14576cb4dbd0_wrap_pyop2_kernel_prolong       4 0.0 5.7802e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15498902a3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154989029dd0_wrap_pyop2_kernel_prolong       4 0.0 6.8555e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cccff71450_wrap_pyop2_kernel_prolong       4 0.0 7.5142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cccff71d50_wrap_pyop2_kernel_prolong       4 0.0 6.4817e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530adab05d0_wrap_pyop2_kernel_prolong       4 0.0 7.5142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530adad4150_wrap_pyop2_kernel_prolong       4 0.0 6.2092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152360531750_wrap_pyop2_kernel_prolong       4 0.0 7.5129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15236030dd10_wrap_pyop2_kernel_prolong       4 0.0 7.4076e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471f5227bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471f5257d90_wrap_pyop2_kernel_prolong       4 0.0 4.9328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2cf3a7810_wrap_pyop2_kernel_prolong       4 0.0 7.5019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2cf2716d0_wrap_pyop2_kernel_prolong       4 0.0 6.0658e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471ae241b50_wrap_pyop2_kernel_prolong       4 0.0 7.5058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471ae1ed4d0_wrap_pyop2_kernel_prolong       4 0.0 6.4064e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153054c61190_wrap_pyop2_kernel_prolong       4 0.0 7.5133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153054aeff50_wrap_pyop2_kernel_prolong       4 0.0 5.7604e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a82119910_wrap_pyop2_kernel_prolong       4 0.0 7.5121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a82118dd0_wrap_pyop2_kernel_prolong       4 0.0 7.0500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e83436efd0_wrap_pyop2_kernel_prolong       4 0.0 7.5072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e83436d250_wrap_pyop2_kernel_prolong       4 0.0 6.3538e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1695cd8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1695cf190_wrap_pyop2_kernel_prolong       4 0.0 7.6024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f436a23190_wrap_pyop2_kernel_prolong       4 0.0 7.5102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f436a27250_wrap_pyop2_kernel_prolong       4 0.0 6.0104e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba9abca310_wrap_pyop2_kernel_prolong       4 0.0 7.4993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba9a11fb50_wrap_pyop2_kernel_prolong       4 0.0 5.2505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2c7fabf50_wrap_pyop2_kernel_prolong       4 0.0 7.5067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2c7fa1990_wrap_pyop2_kernel_prolong       4 0.0 5.7537e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b97e960d50_wrap_pyop2_kernel_prolong       4 0.0 7.5041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b97e8d1990_wrap_pyop2_kernel_prolong       4 0.0 5.4169e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0cec50fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0cec53290_wrap_pyop2_kernel_prolong       4 0.0 6.4573e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457ecfcb910_wrap_pyop2_kernel_prolong       4 0.0 7.5126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457ed0dd850_wrap_pyop2_kernel_prolong       4 0.0 7.0564e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f09dfe2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f09dfdd50_wrap_pyop2_kernel_prolong       4 0.0 5.5978e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b548c835d0_wrap_pyop2_kernel_prolong       4 0.0 7.5093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b548c80950_wrap_pyop2_kernel_prolong       4 0.0 6.4048e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14953588e950_wrap_pyop2_kernel_prolong       4 0.0 7.5155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149535869610_wrap_pyop2_kernel_prolong       4 0.0 6.5665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15242edd3a90_wrap_pyop2_kernel_prolong       4 0.0 7.5102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15242ec56010_wrap_pyop2_kernel_prolong       4 0.0 6.3627e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a74386450_wrap_pyop2_kernel_prolong       4 0.0 7.5182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a743877d0_wrap_pyop2_kernel_prolong       4 0.0 7.3938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15102c347e90_wrap_pyop2_kernel_prolong       4 0.0 7.5155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15102c344bd0_wrap_pyop2_kernel_prolong       4 0.0 6.1857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15103d7fb890_wrap_pyop2_kernel_prolong       4 0.0 7.5214e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15103da3db50_wrap_pyop2_kernel_prolong       4 0.0 7.6614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14686d8a2290_wrap_pyop2_kernel_prolong       4 0.0 7.5138e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14686d8a1a50_wrap_pyop2_kernel_prolong       4 0.0 5.6019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b26b948e50_wrap_pyop2_kernel_prolong       4 0.0 7.5055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b26b815790_wrap_pyop2_kernel_prolong       4 0.0 5.7122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148832a2fe90_wrap_pyop2_kernel_prolong       4 0.0 7.5215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148832a2d990_wrap_pyop2_kernel_prolong       4 0.0 7.0437e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152563145f90_wrap_pyop2_kernel_prolong       4 0.0 7.5124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15256324e050_wrap_pyop2_kernel_prolong       4 0.0 6.6109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151da6460190_wrap_pyop2_kernel_prolong       4 0.0 7.5123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151da63f0d50_wrap_pyop2_kernel_prolong       4 0.0 6.6849e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a45b8c250_wrap_pyop2_kernel_prolong       4 0.0 7.5091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a45b8ce10_wrap_pyop2_kernel_prolong       4 0.0 6.4955e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488c4dda610_wrap_pyop2_kernel_prolong       4 0.0 7.5101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488c4dd9cd0_wrap_pyop2_kernel_prolong       4 0.0 5.9461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a36ea27050_wrap_pyop2_kernel_prolong       4 0.0 7.5112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a36f44ab50_wrap_pyop2_kernel_prolong       4 0.0 5.9607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faa881a750_wrap_pyop2_kernel_prolong       4 0.0 7.5258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faa8819ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6478e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b0bc12410_wrap_pyop2_kernel_prolong       4 0.0 7.5120e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b0b453910_wrap_pyop2_kernel_prolong       4 0.0 6.1444e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d69d293350_wrap_pyop2_kernel_prolong       4 0.0 7.5183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d69d4e61d0_wrap_pyop2_kernel_prolong       4 0.0 6.8436e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d1c1d290_wrap_pyop2_kernel_prolong       4 0.0 7.5106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d1c1d510_wrap_pyop2_kernel_prolong       4 0.0 6.9953e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e719288ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e719287b10_wrap_pyop2_kernel_prolong       4 0.0 7.3936e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         75 1.0 1.2471e-02 3.8 0.00e+00 0.0 1.0e+05 4.0e+00 7.5e+01  0  0  1  0  1   0  0  1  0  4    -0
SFSetGraph            75 1.0 3.2652e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               75 1.0 1.7889e-02 2.2 0.00e+00 0.0 2.0e+05 2.0e+02 7.5e+01  0  0  1  0  1   0  0  2  0  4    -0
SFPack             10689 1.0 2.7100e+00 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           10689 1.0 7.6053e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             4581 1.0 5.3353e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              6107 1.0 1.2702e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             9162 1.0 1.2260e+01 1.8 4.93e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 81668
VecAXPBYCZ          3054 1.0 5.5376e+00 1.6 6.16e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  2  0  0  0 226021
VecScatterBegin    10689 1.0 2.9852e+00 3.1 0.00e+00 0.0 8.7e+06 8.9e+04 0.0e+00  0  0 64 49  0   0  0 95 100  0    -0
VecScatterEnd      10689 1.0 4.9786e+01 9.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
MatMult             6108 1.0 2.6661e+02 1.2 1.75e+11 1.1 6.7e+06 1.2e+05 0.0e+00 24 15 49 49  0  45 48 72 100  0 132887
MatMultAdd          1527 1.0 7.7303e+00 1.2 3.69e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 97146
MatMultTranspose    1527 1.0 5.9296e+00 2.1 3.69e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 126647
MatSolve            7635 1.0 2.9757e+02 1.3 1.71e+11 1.1 2.6e+06 7.0e+02 3.8e+02 26 14 19  0  4  49 47 28  0 20 115326
MatResidual         1527 1.0 7.3609e+01 1.4 4.43e+10 1.1 1.7e+06 1.2e+05 0.0e+00  6  4 12 12  0  12 12 18 25  0 122027
PCSetUpOnBlocks     3054 1.0 3.3535e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             7635 1.0 2.9770e+02 1.3 1.71e+11 1.1 2.6e+06 7.0e+02 3.8e+02 26 14 19  0  4  49 47 28  0 20 115278
PCApplyOnBlocks     6108 1.0 2.7820e+02 1.4 1.69e+11 1.1 0.0e+00 0.0e+00 0.0e+00 23 14  0  0  0  44 47  0  0  0 123162
KSPSolve            4581 1.0 4.8215e+02 1.1 3.13e+11 1.1 7.6e+06 7.7e+04 1.9e+03 45 26 55 37 20  86 86 82 75 100 130700
MGSmooth Level 0    1527 1.0 3.2624e+01 1.8 1.83e+09 25.1 2.6e+06 7.0e+02 1.9e+03  2  0 19  0 20   4  0 28  0 100  1682
MGSmooth Level 1    3054 1.0 4.6271e+02 1.1 3.11e+11 1.1 5.0e+06 1.2e+05 0.0e+00 43 26 36 37  0  81 86 54 75  0 136072
MGResid Level 1     1527 1.0 7.3615e+01 1.4 4.43e+10 1.1 1.7e+06 1.2e+05 0.0e+00  6  4 12 12  0  12 12 18 25  0 122017
MGInterp Level 1    3054 1.0 1.3424e+01 1.4 7.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 111881
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
           Index Set  1824           1824
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   368            443
              Vector   476            476
              Matrix   136            136
      Preconditioner     6              6
       Krylov Solver     5              5
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   110            110
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   165            165
           Weak Form   165            165
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   150            150
   Star Forest Graph    75              0
              Vector    75             75
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 8.4182e-06
Average time for zero size MPI_Send(): 2.44673e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/vlumping_inexact_snapshot_lag3/h2.profile # (source: code)
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

