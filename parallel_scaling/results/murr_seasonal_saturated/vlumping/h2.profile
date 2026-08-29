****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0105.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 17:28:37 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           2.235e+03     1.000   2.235e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.590e+12     1.141   3.426e+12  7.126e+14
Flops/sec:            1.606e+09     1.141   1.533e+09  3.188e+11
MPI Msg Count:        2.818e+05     4.594   1.528e+05  3.178e+07
MPI Msg Len (bytes):  3.024e+10     3.594   1.163e+05  3.697e+12
MPI Reductions:       2.217e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.0908e+03  48.8%  5.3750e+14  75.4%  1.008e+07  31.7%  2.140e+05       58.3%  1.598e+04  72.1%
 1:        MG Apply: 1.1445e+03  51.2%  1.7514e+14  24.6%  2.170e+07  68.3%  7.097e+04       41.7%  6.168e+03  27.8%

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

BuildTwoSided       3238 1.0 1.8347e+02 3.4 0.00e+00 0.0 4.1e+05 4.0e+00 3.2e+03  5  0  1  0 15  11  0  4  0 20    -0
BuildTwoSidedF      3141 1.0 1.9368e+02 2.7 0.00e+00 0.0 6.9e+05 1.4e+06 3.1e+03  6  0  2 26 14  12  0  7 44 20    -0
SFSetGraph           104 1.0 8.3283e-03 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 2.4875e+00 100.1 0.00e+00 0.0 1.4e+05 1.1e+03 9.7e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin        2379 1.0 1.4202e+00 3.6 0.00e+00 0.0 2.5e+06 1.0e+05 0.0e+00  0  0  8  7  0   0  0 25 12  0    -0
SFBcastEnd          2379 1.0 4.4638e+01 116.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin       1476 1.0 4.4568e-01 5.3 0.00e+00 0.0 1.6e+06 1.1e+05 0.0e+00  0  0  5  5  0   0  0 16  8  0    -0
SFReduceEnd         1476 1.0 1.5238e+01 44.8 1.86e+08 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1490
SFFetchOpBegin         6 1.0 3.8334e-05 7.0 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 8.9453e-04 18.2 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.1550e-03 1.9 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.6878e-03 1.4 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 4.3852e-03 2.6 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 1.0264e-04 2.9 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              7911 1.0 3.0877e+00 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            7917 1.0 8.8347e-01 6.2 1.86e+08 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 25705
VecDot               627 1.0 2.6450e+00 6.4 5.06e+08 1.1 0.0e+00 0.0e+00 6.3e+02  0  0  0  0  3   0  0  0  0  4 38860
VecMDot             3423 1.0 4.2568e+01 2.4 1.06e+10 1.1 0.0e+00 0.0e+00 3.4e+03  1  0  0  0 15   3  0  0  0 21 50506
VecNorm             6778 1.0 2.2816e+01 4.3 5.47e+09 1.1 0.0e+00 0.0e+00 6.8e+03  1  0  0  0 31   1  0  0  0 42 48698
VecScale            4070 1.0 1.3349e+00 1.2 1.64e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 249909
VecCopy             5429 1.0 7.4630e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              1275 1.0 1.0841e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              647 1.0 1.0361e+00 1.2 5.22e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 102370
VecWAXPY            1406 1.0 2.9732e+00 1.2 8.81e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 60235
VecMAXPY            4070 1.0 1.7746e+01 1.1 1.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 152775
VecScatterBegin     4050 1.0 1.6378e+00 3.0 0.00e+00 0.0 4.4e+06 1.2e+05 0.0e+00  0  0 14 14  0   0  0 44 24  0    -0
VecScatterEnd       4050 1.0 4.6072e+01 16.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          19 1.0 6.9839e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith      1254 1.0 8.7683e-01 2.0 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 234443
VecReduceComm        627 1.0 6.2232e-01 35.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.3e+02  0  0  0  0  3   0  0  0  0  4    -0
VecNormalize         410 1.0 1.6077e+00 2.8 4.96e+08 1.1 0.0e+00 0.0e+00 4.1e+02  0  0  0  0  2   0  0  0  0  3 62707
MatMult             4050 1.0 1.8832e+02 1.3 1.16e+11 1.1 4.4e+06 1.2e+05 0.0e+00  7  3 14 14  0  15  4 44 24  0 124742
MatSolve             410 1.0 1.7315e+01 1.3 1.14e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 132829
MatLUFactorSym         1 1.0 5.7042e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       646 1.0 3.9744e+01 1.0 5.19e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0 24432
MatILUFactorSym        1 1.0 1.4986e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    4444 1.0 2.0657e+02 2.5 0.00e+00 0.0 6.9e+05 1.4e+06 3.1e+03  6  0  2 26 14  13  0  7 44 20    -0
MatAssemblyEnd      4444 1.0 4.8117e+01 6.1 6.97e+08 0.0 4.4e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0  1240
MatGetRowIJ            1 1.0 5.5720e-06 46.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.1971e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries      1254 1.0 2.6965e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5542e-02 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2447e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1254 1.0 1.2991e+01 1.3 1.82e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 284004
MatPtAPSymbolic        1 1.0 2.0025e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       627 1.0 9.6706e+01 1.0 7.28e+10 1.1 6.8e+05 3.5e+05 6.3e+02  4  2  2  6  3   9  3  7 11  4 152576
MatGetLocalMat       627 1.0 4.8417e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        627 1.0 2.7067e+00 2.3 0.00e+00 0.0 6.9e+05 3.5e+05 0.0e+00  0  0  2  6  0   0  0  7 11  0    -0
MatSetPreallCOO       32 1.0 6.3040e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.5995e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              627 1.0 1.8673e+02 1.0 1.08e+11 1.1 1.1e+06 2.6e+05 2.7e+03  8  3  4  8 12  17  4 11 13 17 117224
PCApply             3033 1.0 1.1693e+03 1.0 8.70e+11 1.1 2.2e+07 7.1e+04 6.2e+03 51 25 68 42 28 Multiple stages 149776
PCApplyOnBlocks      410 1.0 1.7319e+01 1.3 1.14e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 132797
KSPSetUp             627 1.0 1.3781e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             627 1.0 1.3110e+03 1.0 9.79e+11 1.1 2.5e+07 7.7e+04 1.3e+04 59 28 79 52 58 Multiple stages 150420
KSPGMRESOrthog      3423 1.0 5.5202e+01 1.8 2.12e+10 1.1 0.0e+00 0.0e+00 3.4e+03  2  1  0  0 15   4  1  0  0 21 77893
DMRefine               2 1.0 1.6531e-01 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     3
DMPlexCreateGmsh       1 1.0 1.6718e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.9813e+00 226.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 8.9073e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.7112e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 2.5766e-03 1062.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.4821e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 5.0487e-03 1.7 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.9383e-03 1.8 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.9220e-03 3.7 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 8.3238e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.1898e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 2.0735e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 6.7133e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 1.6279e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexDistField        7 1.0 3.5866e-03 1.3 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.7561e-03 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.0879e-04 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1085e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.9930e-03 1.5 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1513e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.5577e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.7338e-04 1.9 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.4343e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.2023e-04 1.9 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             29 1.0 2.1621e+03 1.0 3.59e+12 1.1 3.1e+07 1.2e+05 2.1e+04 97 100 99 100 97 Multiple stages 329604
SNESSetUp              1 1.0 7.2014e-05 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval    1435 1.0 1.1115e+02 1.2 1.30e+12 1.2 3.2e+06 1.2e+05 0.0e+00  5 36 10 10  0  10 48 31 17  0 2297099
SNESJacobianEval     627 1.0 5.2148e+02 1.0 1.19e+12 1.2 1.4e+06 7.6e+05 2.5e+03 23 33  4 28 11  48 43 14 48 16 448242
SNESLineSearch       627 1.0 1.3104e+02 1.0 1.30e+12 1.2 3.7e+06 1.2e+05 3.3e+03  6 36 12 12 15  12 47 37 20 21 1943081
DualSpaceSetUp         8 1.0 5.5867e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.4422e-01 20.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 2.2327e+03 1.0 3.59e+12 1.1 3.2e+07 1.2e+05 2.2e+04 100 100 100 100 100 Multiple stages 319177
firedrake.__init__       1 1.0 1.7096e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 4.1325e+00 24.7 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  0  0  1  0  2   0  0  3  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 3.9821e+00 225.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.4084e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 7.0010e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 5.2756e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.4730e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 2.8364e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.6902e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 2.6461e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.4104e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.3991e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 8.6265e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 5.1302e-03 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.4350e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.2931e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 3.2531e-02 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.8783e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.4279e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.5830e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2751e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.8718e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     370 1.0 6.0550e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      9703 1.0 5.0154e+02 1.2 2.49e+12 1.2 2.3e+06 1.2e+05 3.2e+01 20 69  7  7  0  42 91 23 12  0 974995
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.8271e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   19406 1.0 2.7400e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0760e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.4264e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.6363e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.5711e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.5710e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.8932e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.7070e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    9703 1.0 2.7062e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      9703 1.0 2.5255e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.3361e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.6564e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   320
firedrake.interpolation.interpolate      13 1.0 4.8230e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.3401e+00 1.0 8.46e+07 1.1 2.8e+04 4.0e+04 3.7e+01  0  0  0  0  0   1  0  0  0  0  2712
firedrake.formmanipulation.split_form      14 1.0 4.6399e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.7511e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5578e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0423e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    2112 1.0 6.2411e+00 10.0 0.00e+00 0.0 2.3e+06 1.1e+05 4.0e+00  0  0  7  7  0   0  0 23 12  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.8507e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2938
firedrake.halo.Halo.global_to_local_end    2112 1.0 4.2074e+01 131.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.7372e+00 74.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1b1dbb110_wrap_pyop2_kernel_prolong       4 0.0 8.2191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1b2109bd0_wrap_pyop2_kernel_prolong       4 0.0 4.9137e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.2204e+00 1.0 6.85e+07 1.1 1.7e+04 5.8e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  3302
firedrake.function.Function.assign     130 1.0 7.4730e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     129 1.0 7.0403e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1786e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      52 1.0 6.0294e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 8.6631e-05 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5215e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9765e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2670e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.5490e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.5940e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.7773e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1838e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1838e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 4.0889e+00 1.1 0.00e+00 0.0 5.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.5805e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      29 1.0 2.1622e+03 1.0 3.59e+12 1.1 3.1e+07 1.2e+05 2.1e+04 97 100 99 100 97 Multiple stages 329587
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.1481e-01 1138.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 9.8950e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.1476e-01 1356.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.1473e-01 1556.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    2870 1.0 3.1804e+01 1.4 3.32e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   2 13  0  0  0 2124625
Parloop_Cells_wrap_form0_exterior_facet_top_integral    2870 1.0 1.4836e+00 1.1 4.28e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5858
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    2870 1.0 1.7385e+00 1.3 3.43e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 48012
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    2870 1.0 1.9609e+01 1.2 3.16e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   2 12  0  0  0 3275147
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    2870 1.0 4.5430e+01 1.3 6.53e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 17  0  0  0   4 23  0  0  0 2716509
firedrake.halo.Halo.local_to_global_begin    1435 1.0 4.9790e-01 4.3 0.00e+00 0.0 1.6e+06 1.2e+05 0.0e+00  0  0  5  5  0   0  0 16  8  0    -0
firedrake.halo.Halo.local_to_global_end    1435 1.0 1.5253e+01 42.6 1.86e+08 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1489
Parloop_Cells_wrap_form00_cell_integral    1254 1.0 7.6950e+01 1.4 2.70e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   6 10  0  0  0 712499
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral    1254 1.0 3.7691e+00 2.8 1.51e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9734
Parloop_Cells_wrap_form00_interior_facet_horiz_integral    1254 1.0 9.6818e+01 1.2 3.55e+11 1.1 0.0e+00 0.0e+00 0.0e+00  4 10  0  0  0   8 13  0  0  0 744979
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral    1254 1.0 2.2113e+02 1.4 5.64e+11 1.3 0.0e+00 0.0e+00 0.0e+00  9 15  0  0  0  18 20  0  0  0 482506
firedrake.dmhooks.get_function_space       1 1.0 1.3110e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.0915e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      627 1.0 3.7108e+01 1.0 4.03e+08 22.4 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   3  0  0  0  0   368
MGSetup Level 1      627 1.0 1.3089e+00 1.0 9.57e+08 1.1 1.1e+04 1.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 147177
firedrake.constant.Constant.assign      29 1.0 1.4225e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d154495810_wrap_pyop2_kernel_prolong       4 0.0 8.1936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1546f5110_wrap_pyop2_kernel_prolong       4 0.0 4.9370e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474d63d2290_wrap_pyop2_kernel_prolong       4 0.0 8.1248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474d63d2210_wrap_pyop2_kernel_prolong       4 0.0 6.2945e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb3c89a510_wrap_pyop2_kernel_prolong       4 0.0 8.2080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb3d2e58d0_wrap_pyop2_kernel_prolong       4 0.0 5.6894e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491357a6990_wrap_pyop2_kernel_prolong       4 0.0 8.2092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491357a4750_wrap_pyop2_kernel_prolong       4 0.0 6.8235e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154714440c10_wrap_pyop2_kernel_prolong       4 0.0 8.2155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547144113d0_wrap_pyop2_kernel_prolong       4 0.0 6.0714e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5bf7b2f10_wrap_pyop2_kernel_prolong       4 0.0 8.2179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5bf77d350_wrap_pyop2_kernel_prolong       4 0.0 5.1528e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540b7a72e90_wrap_pyop2_kernel_prolong       4 0.0 8.1269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540b7a71390_wrap_pyop2_kernel_prolong       4 0.0 5.1384e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a71060b90_wrap_pyop2_kernel_prolong       4 0.0 8.1959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a707106d0_wrap_pyop2_kernel_prolong       4 0.0 6.0565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d39fcd410_wrap_pyop2_kernel_prolong       4 0.0 8.2109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d39f67a50_wrap_pyop2_kernel_prolong       4 0.0 5.4225e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15253c702290_wrap_pyop2_kernel_prolong       4 0.0 8.2213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15253c6719d0_wrap_pyop2_kernel_prolong       4 0.0 6.2899e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540fa335e50_wrap_pyop2_kernel_prolong       4 0.0 8.2183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540fa334690_wrap_pyop2_kernel_prolong       4 0.0 5.9359e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460d9fd15d0_wrap_pyop2_kernel_prolong       4 0.0 8.2297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460d9fac210_wrap_pyop2_kernel_prolong       4 0.0 6.8171e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd41e5ea10_wrap_pyop2_kernel_prolong       4 0.0 8.1295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd41e5e390_wrap_pyop2_kernel_prolong       4 0.0 5.5362e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6c964d050_wrap_pyop2_kernel_prolong       4 0.0 8.2067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6c98da5d0_wrap_pyop2_kernel_prolong       4 0.0 6.1156e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be8e988510_wrap_pyop2_kernel_prolong       4 0.0 8.1931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be8e989810_wrap_pyop2_kernel_prolong       4 0.0 7.5273e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ce847a4d0_wrap_pyop2_kernel_prolong       4 0.0 8.1230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ce84cb0d0_wrap_pyop2_kernel_prolong       4 0.0 4.9300e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e9391c2d0_wrap_pyop2_kernel_prolong       4 0.0 8.2025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e9374d9d0_wrap_pyop2_kernel_prolong       4 0.0 5.7695e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f4990cc10_wrap_pyop2_kernel_prolong       4 0.0 8.1285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f496c4dd0_wrap_pyop2_kernel_prolong       4 0.0 7.2133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8206cfa50_wrap_pyop2_kernel_prolong       4 0.0 8.2135e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8206cd510_wrap_pyop2_kernel_prolong       4 0.0 5.7392e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15453f98ca10_wrap_pyop2_kernel_prolong       4 0.0 8.1251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15453f985b50_wrap_pyop2_kernel_prolong       4 0.0 4.9558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afbc4a5bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1202e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afbc48d5d0_wrap_pyop2_kernel_prolong       4 0.0 5.3957e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b272398dd0_wrap_pyop2_kernel_prolong       4 0.0 8.1304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2725cc310_wrap_pyop2_kernel_prolong       4 0.0 6.3305e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f62c725010_wrap_pyop2_kernel_prolong       4 0.0 8.1288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f627d65b50_wrap_pyop2_kernel_prolong       4 0.0 6.9925e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15231b7b6650_wrap_pyop2_kernel_prolong       4 0.0 8.2248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15231b7bd550_wrap_pyop2_kernel_prolong       4 0.0 6.0457e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15472384ead0_wrap_pyop2_kernel_prolong       4 0.0 8.1527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15472384dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.4937e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c971edcd0_wrap_pyop2_kernel_prolong       4 0.0 8.1187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c971ec490_wrap_pyop2_kernel_prolong       4 0.0 5.4149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cef5439590_wrap_pyop2_kernel_prolong       4 0.0 8.1921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cef525e390_wrap_pyop2_kernel_prolong       4 0.0 5.2071e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c780912c90_wrap_pyop2_kernel_prolong       4 0.0 8.1738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c780911c10_wrap_pyop2_kernel_prolong       4 0.0 5.9142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecfd9d3690_wrap_pyop2_kernel_prolong       4 0.0 8.1614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecfd9c9850_wrap_pyop2_kernel_prolong       4 0.0 6.1303e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebad7a80d0_wrap_pyop2_kernel_prolong       4 0.0 8.2115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebad754510_wrap_pyop2_kernel_prolong       4 0.0 6.1399e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c6016d6d0_wrap_pyop2_kernel_prolong       4 0.0 8.1511e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c5bb5cd90_wrap_pyop2_kernel_prolong       4 0.0 5.5386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bc6226110_wrap_pyop2_kernel_prolong       4 0.0 8.1225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bc6227850_wrap_pyop2_kernel_prolong       4 0.0 5.5402e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529927009d0_wrap_pyop2_kernel_prolong       4 0.0 8.1435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152992701410_wrap_pyop2_kernel_prolong       4 0.0 5.9295e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490bb7caad0_wrap_pyop2_kernel_prolong       4 0.0 8.1281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490bb84a590_wrap_pyop2_kernel_prolong       4 0.0 6.4544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15443301d010_wrap_pyop2_kernel_prolong       4 0.0 8.1176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154432ed5f10_wrap_pyop2_kernel_prolong       4 0.0 5.4323e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15236f865b10_wrap_pyop2_kernel_prolong       4 0.0 8.1252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15236edc1e50_wrap_pyop2_kernel_prolong       4 0.0 6.7542e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ae233dd90_wrap_pyop2_kernel_prolong       4 0.0 8.1524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ae23bde90_wrap_pyop2_kernel_prolong       4 0.0 6.2617e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c017e3c7d0_wrap_pyop2_kernel_prolong       4 0.0 8.1785e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c01c6dd2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4652e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8328a9110_wrap_pyop2_kernel_prolong       4 0.0 8.1472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a83271cc10_wrap_pyop2_kernel_prolong       4 0.0 5.5980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2a80da750_wrap_pyop2_kernel_prolong       4 0.0 8.1237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2a82acd10_wrap_pyop2_kernel_prolong       4 0.0 6.1987e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac587f5c10_wrap_pyop2_kernel_prolong       4 0.0 8.1320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac58830bd0_wrap_pyop2_kernel_prolong       4 0.0 6.1660e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddb37f6910_wrap_pyop2_kernel_prolong       4 0.0 8.1575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddb3a6a6d0_wrap_pyop2_kernel_prolong       4 0.0 6.1867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e45b6f7d0_wrap_pyop2_kernel_prolong       4 0.0 8.1446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e45a64a10_wrap_pyop2_kernel_prolong       4 0.0 5.3659e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e8590fbd0_wrap_pyop2_kernel_prolong       4 0.0 8.1577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e8590db50_wrap_pyop2_kernel_prolong       4 0.0 7.3072e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551f8335f10_wrap_pyop2_kernel_prolong       4 0.0 8.1347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551f83355d0_wrap_pyop2_kernel_prolong       4 0.0 5.7477e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d670962d0_wrap_pyop2_kernel_prolong       4 0.0 8.2133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d67097c50_wrap_pyop2_kernel_prolong       4 0.0 7.1186e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec626ac090_wrap_pyop2_kernel_prolong       4 0.0 8.2024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec6269d810_wrap_pyop2_kernel_prolong       4 0.0 6.5412e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15070537a910_wrap_pyop2_kernel_prolong       4 0.0 8.1260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150704a033d0_wrap_pyop2_kernel_prolong       4 0.0 5.9736e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aef1c59e50_wrap_pyop2_kernel_prolong       4 0.0 8.1313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aef1c599d0_wrap_pyop2_kernel_prolong       4 0.0 7.0388e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531ee21a0d0_wrap_pyop2_kernel_prolong       4 0.0 8.1572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531ee274d50_wrap_pyop2_kernel_prolong       4 0.0 6.2515e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2e2c66010_wrap_pyop2_kernel_prolong       4 0.0 8.1304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2e2c65610_wrap_pyop2_kernel_prolong       4 0.0 7.4697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca0d9d3790_wrap_pyop2_kernel_prolong       4 0.0 8.1163e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca0da1e4d0_wrap_pyop2_kernel_prolong       4 0.0 5.0077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f68afcb50_wrap_pyop2_kernel_prolong       4 0.0 8.1908e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f68af1210_wrap_pyop2_kernel_prolong       4 0.0 5.0243e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14560a0719d0_wrap_pyop2_kernel_prolong       4 0.0 8.1184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145609729590_wrap_pyop2_kernel_prolong       4 0.0 5.2721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464ae0abb50_wrap_pyop2_kernel_prolong       4 0.0 8.1197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464adf4a910_wrap_pyop2_kernel_prolong       4 0.0 4.8835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a926612d0_wrap_pyop2_kernel_prolong       4 0.0 8.1808e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a924ba090_wrap_pyop2_kernel_prolong       4 0.0 5.6428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152992b06ad0_wrap_pyop2_kernel_prolong       4 0.0 8.1293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529920cd650_wrap_pyop2_kernel_prolong       4 0.0 6.0273e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512cc7a46d0_wrap_pyop2_kernel_prolong       4 0.0 8.1238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512cc7a6a10_wrap_pyop2_kernel_prolong       4 0.0 4.2937e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1546768d0_wrap_pyop2_kernel_prolong       4 0.0 8.1912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1547be490_wrap_pyop2_kernel_prolong       4 0.0 5.6885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454cefcab50_wrap_pyop2_kernel_prolong       4 0.0 8.1582e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454cee28790_wrap_pyop2_kernel_prolong       4 0.0 5.3766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149084d13a10_wrap_pyop2_kernel_prolong       4 0.0 8.1375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149084ce6bd0_wrap_pyop2_kernel_prolong       4 0.0 5.3791e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b884acdf10_wrap_pyop2_kernel_prolong       4 0.0 8.1640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b885675550_wrap_pyop2_kernel_prolong       4 0.0 6.0004e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531cdb15ad0_wrap_pyop2_kernel_prolong       4 0.0 8.1433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531cdb15650_wrap_pyop2_kernel_prolong       4 0.0 6.5417e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491db6cfd90_wrap_pyop2_kernel_prolong       4 0.0 8.1317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491db759f50_wrap_pyop2_kernel_prolong       4 0.0 6.6723e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc064f78d0_wrap_pyop2_kernel_prolong       4 0.0 8.1276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc064ee190_wrap_pyop2_kernel_prolong       4 0.0 5.1858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15394d2c6750_wrap_pyop2_kernel_prolong       4 0.0 8.1221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15394d2b4b50_wrap_pyop2_kernel_prolong       4 0.0 5.9659e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2d3422b90_wrap_pyop2_kernel_prolong       4 0.0 8.1313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2d3411950_wrap_pyop2_kernel_prolong       4 0.0 6.7143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14858d0646d0_wrap_pyop2_kernel_prolong       4 0.0 8.1347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14858d023a90_wrap_pyop2_kernel_prolong       4 0.0 5.6894e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488209b7f90_wrap_pyop2_kernel_prolong       4 0.0 8.1215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488209b60d0_wrap_pyop2_kernel_prolong       4 0.0 5.9725e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a34e13f50_wrap_pyop2_kernel_prolong       4 0.0 8.2080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a34ca9550_wrap_pyop2_kernel_prolong       4 0.0 6.7881e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8bd22f310_wrap_pyop2_kernel_prolong       4 0.0 8.1440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8bd0d6ed0_wrap_pyop2_kernel_prolong       4 0.0 6.0166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be884021d0_wrap_pyop2_kernel_prolong       4 0.0 8.1182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be83a6dc90_wrap_pyop2_kernel_prolong       4 0.0 5.0906e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b2e922710_wrap_pyop2_kernel_prolong       4 0.0 8.1810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b2e923810_wrap_pyop2_kernel_prolong       4 0.0 6.6362e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e2a75b410_wrap_pyop2_kernel_prolong       4 0.0 8.1189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e2a53d610_wrap_pyop2_kernel_prolong       4 0.0 5.5537e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed20873590_wrap_pyop2_kernel_prolong       4 0.0 8.1275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed20854fd0_wrap_pyop2_kernel_prolong       4 0.0 6.0440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c77732b6d0_wrap_pyop2_kernel_prolong       4 0.0 8.1363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7773290d0_wrap_pyop2_kernel_prolong       4 0.0 6.7970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a221436390_wrap_pyop2_kernel_prolong       4 0.0 8.1899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a221576710_wrap_pyop2_kernel_prolong       4 0.0 7.1689e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152577b60d50_wrap_pyop2_kernel_prolong       4 0.0 8.1847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15257cf16ed0_wrap_pyop2_kernel_prolong       4 0.0 5.8556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a87a88b90_wrap_pyop2_kernel_prolong       4 0.0 8.1692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a87a8bc10_wrap_pyop2_kernel_prolong       4 0.0 5.8553e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14716f5777d0_wrap_pyop2_kernel_prolong       4 0.0 8.1270e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14716f577890_wrap_pyop2_kernel_prolong       4 0.0 5.9695e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cce5138c10_wrap_pyop2_kernel_prolong       4 0.0 8.1801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cce51333d0_wrap_pyop2_kernel_prolong       4 0.0 5.9099e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f05e785bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f05e787d10_wrap_pyop2_kernel_prolong       4 0.0 5.1945e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de172763d0_wrap_pyop2_kernel_prolong       4 0.0 8.1736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de172775d0_wrap_pyop2_kernel_prolong       4 0.0 7.0556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f073146990_wrap_pyop2_kernel_prolong       4 0.0 8.1179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f073369a10_wrap_pyop2_kernel_prolong       4 0.0 5.0606e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525bbb60c90_wrap_pyop2_kernel_prolong       4 0.0 8.1280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525bbbc7b90_wrap_pyop2_kernel_prolong       4 0.0 5.3675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aea198f310_wrap_pyop2_kernel_prolong       4 0.0 8.1215e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aea186cf10_wrap_pyop2_kernel_prolong       4 0.0 5.6106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154424479c10_wrap_pyop2_kernel_prolong       4 0.0 8.1304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154424423cd0_wrap_pyop2_kernel_prolong       4 0.0 6.4751e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15114fd9f7d0_wrap_pyop2_kernel_prolong       4 0.0 8.1249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15114fd91d50_wrap_pyop2_kernel_prolong       4 0.0 5.5888e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e8055aa50_wrap_pyop2_kernel_prolong       4 0.0 8.1912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e805a4c90_wrap_pyop2_kernel_prolong       4 0.0 6.4471e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545c280d9d0_wrap_pyop2_kernel_prolong       4 0.0 8.1278e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545c155ad50_wrap_pyop2_kernel_prolong       4 0.0 6.8232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f3134ecd0_wrap_pyop2_kernel_prolong       4 0.0 8.1208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f313e1f50_wrap_pyop2_kernel_prolong       4 0.0 6.0125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15086c872250_wrap_pyop2_kernel_prolong       4 0.0 8.1231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15086c87bd50_wrap_pyop2_kernel_prolong       4 0.0 5.4219e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6b57ce590_wrap_pyop2_kernel_prolong       4 0.0 8.1296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6b57cdb10_wrap_pyop2_kernel_prolong       4 0.0 6.7075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f84f4ba6d0_wrap_pyop2_kernel_prolong       4 0.0 8.1220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f84f4b9ed0_wrap_pyop2_kernel_prolong       4 0.0 5.3700e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150de7c62e50_wrap_pyop2_kernel_prolong       4 0.0 8.1630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150de5601ad0_wrap_pyop2_kernel_prolong       4 0.0 6.6920e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd0f965bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd0f95e390_wrap_pyop2_kernel_prolong       4 0.0 6.8519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547b5265310_wrap_pyop2_kernel_prolong       4 0.0 8.1225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547b523fa10_wrap_pyop2_kernel_prolong       4 0.0 5.8593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492232c7110_wrap_pyop2_kernel_prolong       4 0.0 8.1720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492232be050_wrap_pyop2_kernel_prolong       4 0.0 6.1072e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535d39a7990_wrap_pyop2_kernel_prolong       4 0.0 8.1302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535d379ed90_wrap_pyop2_kernel_prolong       4 0.0 6.4830e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ab36f4ed0_wrap_pyop2_kernel_prolong       4 0.0 8.1310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ab2d61c90_wrap_pyop2_kernel_prolong       4 0.0 6.4768e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151749bbb310_wrap_pyop2_kernel_prolong       4 0.0 8.1684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151749bba210_wrap_pyop2_kernel_prolong       4 0.0 6.1056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493949cb810_wrap_pyop2_kernel_prolong       4 0.0 8.1768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493949c9710_wrap_pyop2_kernel_prolong       4 0.0 6.1371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530d150e550_wrap_pyop2_kernel_prolong       4 0.0 8.1980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530d14e9190_wrap_pyop2_kernel_prolong       4 0.0 7.1967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ee48cff90_wrap_pyop2_kernel_prolong       4 0.0 8.3655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ee4655310_wrap_pyop2_kernel_prolong       4 0.0 5.2879e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b58f6f78d0_wrap_pyop2_kernel_prolong       4 0.0 8.3300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b58ecd4e90_wrap_pyop2_kernel_prolong       4 0.0 5.2619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b98489010_wrap_pyop2_kernel_prolong       4 0.0 8.3732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b9847e190_wrap_pyop2_kernel_prolong       4 0.0 5.3934e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0eb7f9d90_wrap_pyop2_kernel_prolong       4 0.0 8.3543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0eae5dd10_wrap_pyop2_kernel_prolong       4 0.0 6.0236e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e97bb738d0_wrap_pyop2_kernel_prolong       4 0.0 8.3692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e97bb70d50_wrap_pyop2_kernel_prolong       4 0.0 6.0634e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e480b7110_wrap_pyop2_kernel_prolong       4 0.0 8.3647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e480dcfd0_wrap_pyop2_kernel_prolong       4 0.0 7.1115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d6aa1ecd0_wrap_pyop2_kernel_prolong       4 0.0 8.3634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d6a9fdb90_wrap_pyop2_kernel_prolong       4 0.0 5.4071e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b7ed57d10_wrap_pyop2_kernel_prolong       4 0.0 8.3109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b7ed55150_wrap_pyop2_kernel_prolong       4 0.0 5.8634e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c632217ed0_wrap_pyop2_kernel_prolong       4 0.0 8.3659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c632215c10_wrap_pyop2_kernel_prolong       4 0.0 5.6397e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544a7d47bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544a7d360d0_wrap_pyop2_kernel_prolong       4 0.0 5.7450e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459498124d0_wrap_pyop2_kernel_prolong       4 0.0 8.3736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145949811cd0_wrap_pyop2_kernel_prolong       4 0.0 6.1731e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d603ba1bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d603984b10_wrap_pyop2_kernel_prolong       4 0.0 6.4719e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14615e6c2cd0_wrap_pyop2_kernel_prolong       4 0.0 8.3201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14615e58a290_wrap_pyop2_kernel_prolong       4 0.0 6.5567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e28a075410_wrap_pyop2_kernel_prolong       4 0.0 8.2965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e289f35cd0_wrap_pyop2_kernel_prolong       4 0.0 4.8265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d042dcc110_wrap_pyop2_kernel_prolong       4 0.0 8.3071e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d042d7db90_wrap_pyop2_kernel_prolong       4 0.0 5.6626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547b19e13d0_wrap_pyop2_kernel_prolong       4 0.0 8.3434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547b18b1690_wrap_pyop2_kernel_prolong       4 0.0 6.3626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15321642e5d0_wrap_pyop2_kernel_prolong       4 0.0 8.2960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15321642e090_wrap_pyop2_kernel_prolong       4 0.0 5.4189e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c13202a850_wrap_pyop2_kernel_prolong       4 0.0 8.3013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1322d4550_wrap_pyop2_kernel_prolong       4 0.0 5.5956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3fd62cad0_wrap_pyop2_kernel_prolong       4 0.0 8.3456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3fd62fa50_wrap_pyop2_kernel_prolong       4 0.0 6.1223e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ae324b910_wrap_pyop2_kernel_prolong       4 0.0 8.3017e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ae3041550_wrap_pyop2_kernel_prolong       4 0.0 5.1834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472e6d2e190_wrap_pyop2_kernel_prolong       4 0.0 8.3063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472e6f45810_wrap_pyop2_kernel_prolong       4 0.0 4.8001e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4b1f4bd10_wrap_pyop2_kernel_prolong       4 0.0 8.3024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4b1f42310_wrap_pyop2_kernel_prolong       4 0.0 5.7386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab165629d0_wrap_pyop2_kernel_prolong       4 0.0 8.2948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab16561b90_wrap_pyop2_kernel_prolong       4 0.0 5.4842e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479176b9bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147917539290_wrap_pyop2_kernel_prolong       4 0.0 6.8394e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545fc558bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3232e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545fc54a450_wrap_pyop2_kernel_prolong       4 0.0 5.2732e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150383648f10_wrap_pyop2_kernel_prolong       4 0.0 8.3506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150383648290_wrap_pyop2_kernel_prolong       4 0.0 7.1593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cd933bc10_wrap_pyop2_kernel_prolong       4 0.0 8.3596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cd9de8f90_wrap_pyop2_kernel_prolong       4 0.0 5.0568e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ce77c0e50_wrap_pyop2_kernel_prolong       4 0.0 8.3487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ce77c3750_wrap_pyop2_kernel_prolong       4 0.0 5.7657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcce0153d0_wrap_pyop2_kernel_prolong       4 0.0 8.3643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bccde48550_wrap_pyop2_kernel_prolong       4 0.0 6.4206e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455774e0890_wrap_pyop2_kernel_prolong       4 0.0 8.3703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14557750e250_wrap_pyop2_kernel_prolong       4 0.0 5.4334e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145de291b710_wrap_pyop2_kernel_prolong       4 0.0 8.3024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145de2b512d0_wrap_pyop2_kernel_prolong       4 0.0 6.3250e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14671d8ce9d0_wrap_pyop2_kernel_prolong       4 0.0 8.3318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14671dae54d0_wrap_pyop2_kernel_prolong       4 0.0 6.3827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e25660e950_wrap_pyop2_kernel_prolong       4 0.0 8.3061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e25660c950_wrap_pyop2_kernel_prolong       4 0.0 5.0552e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b1416d2d0_wrap_pyop2_kernel_prolong       4 0.0 8.3124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b11b54c10_wrap_pyop2_kernel_prolong       4 0.0 6.3680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15362a3b6490_wrap_pyop2_kernel_prolong       4 0.0 8.3390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15362a3b5550_wrap_pyop2_kernel_prolong       4 0.0 5.2735e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5c0247f10_wrap_pyop2_kernel_prolong       4 0.0 8.3551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5c025be90_wrap_pyop2_kernel_prolong       4 0.0 5.8350e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478b999a2d0_wrap_pyop2_kernel_prolong       4 0.0 8.3629e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478b9999bd0_wrap_pyop2_kernel_prolong       4 0.0 6.5903e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e059cde850_wrap_pyop2_kernel_prolong       4 0.0 8.3127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e059cdfb90_wrap_pyop2_kernel_prolong       4 0.0 5.9572e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347a24db50_wrap_pyop2_kernel_prolong       4 0.0 8.3106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347a2bd850_wrap_pyop2_kernel_prolong       4 0.0 6.2891e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f9c7ddc10_wrap_pyop2_kernel_prolong       4 0.0 8.3304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f9c7cc090_wrap_pyop2_kernel_prolong       4 0.0 5.8379e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb9d009910_wrap_pyop2_kernel_prolong       4 0.0 8.3528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb9cfcb0d0_wrap_pyop2_kernel_prolong       4 0.0 6.2283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c53fa49790_wrap_pyop2_kernel_prolong       4 0.0 8.3330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c53f887dd0_wrap_pyop2_kernel_prolong       4 0.0 5.6462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542e9a0be10_wrap_pyop2_kernel_prolong       4 0.0 8.3471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542e9790310_wrap_pyop2_kernel_prolong       4 0.0 5.7400e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492b87243d0_wrap_pyop2_kernel_prolong       4 0.0 8.3074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492b8725850_wrap_pyop2_kernel_prolong       4 0.0 6.1678e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0b63b5050_wrap_pyop2_kernel_prolong       4 0.0 8.3436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0b63b6d90_wrap_pyop2_kernel_prolong       4 0.0 6.9132e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ee1e3ebd0_wrap_pyop2_kernel_prolong       4 0.0 8.3365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ee1556fd0_wrap_pyop2_kernel_prolong       4 0.0 5.7074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148afabbe3d0_wrap_pyop2_kernel_prolong       4 0.0 8.3297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148afabbd550_wrap_pyop2_kernel_prolong       4 0.0 6.2129e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bb1348350_wrap_pyop2_kernel_prolong       4 0.0 8.2980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bb1f854d0_wrap_pyop2_kernel_prolong       4 0.0 5.7157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bd6e8e150_wrap_pyop2_kernel_prolong       4 0.0 8.2990e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bd6e8e010_wrap_pyop2_kernel_prolong       4 0.0 5.7942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f7b70f8d0_wrap_pyop2_kernel_prolong       4 0.0 8.3169e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f7b6ec710_wrap_pyop2_kernel_prolong       4 0.0 7.1711e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551cbc67c50_wrap_pyop2_kernel_prolong       4 0.0 8.3103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551cb308410_wrap_pyop2_kernel_prolong       4 0.0 6.7032e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5b8307250_wrap_pyop2_kernel_prolong       4 0.0 8.3069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5b817da90_wrap_pyop2_kernel_prolong       4 0.0 6.8220e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15513f7965d0_wrap_pyop2_kernel_prolong       4 0.0 8.2942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15513f7956d0_wrap_pyop2_kernel_prolong       4 0.0 5.4263e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15078e4d4d50_wrap_pyop2_kernel_prolong       4 0.0 8.3003e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15078e4a5990_wrap_pyop2_kernel_prolong       4 0.0 6.0321e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b36624a390_wrap_pyop2_kernel_prolong       4 0.0 8.3077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3662734d0_wrap_pyop2_kernel_prolong       4 0.0 6.4701e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b30e0ad10_wrap_pyop2_kernel_prolong       4 0.0 8.3083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b30c1bfd0_wrap_pyop2_kernel_prolong       4 0.0 5.5027e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc9b3531d0_wrap_pyop2_kernel_prolong       4 0.0 8.3029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc9b35ba10_wrap_pyop2_kernel_prolong       4 0.0 5.8451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1c3b7e7d0_wrap_pyop2_kernel_prolong       4 0.0 8.2946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1c85279d0_wrap_pyop2_kernel_prolong       4 0.0 5.1075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15084b931c90_wrap_pyop2_kernel_prolong       4 0.0 8.2946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15084b9313d0_wrap_pyop2_kernel_prolong       4 0.0 4.5199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149107b45050_wrap_pyop2_kernel_prolong       4 0.0 8.2989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14910798f2d0_wrap_pyop2_kernel_prolong       4 0.0 5.4344e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3ace6a590_wrap_pyop2_kernel_prolong       4 0.0 8.2992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3ace69f10_wrap_pyop2_kernel_prolong       4 0.0 6.1948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adad01de90_wrap_pyop2_kernel_prolong       4 0.0 8.3029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adac813fd0_wrap_pyop2_kernel_prolong       4 0.0 5.9650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c47a7ead0_wrap_pyop2_kernel_prolong       4 0.0 8.3237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c47a7d8d0_wrap_pyop2_kernel_prolong       4 0.0 6.8021e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c50948ad10_wrap_pyop2_kernel_prolong       4 0.0 8.3046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c50948b290_wrap_pyop2_kernel_prolong       4 0.0 5.6072e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548d4cc7290_wrap_pyop2_kernel_prolong       4 0.0 8.3086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548d4d11fd0_wrap_pyop2_kernel_prolong       4 0.0 6.9597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4a46845d0_wrap_pyop2_kernel_prolong       4 0.0 8.3052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4a4630c90_wrap_pyop2_kernel_prolong       4 0.0 5.8473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509b16dcd50_wrap_pyop2_kernel_prolong       4 0.0 8.2952e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509b16de050_wrap_pyop2_kernel_prolong       4 0.0 5.5349e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15436decd4d0_wrap_pyop2_kernel_prolong       4 0.0 8.3037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15436dd62110_wrap_pyop2_kernel_prolong       4 0.0 7.2238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeb06c0850_wrap_pyop2_kernel_prolong       4 0.0 8.2992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeb0737910_wrap_pyop2_kernel_prolong       4 0.0 6.4862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ab9212d0_wrap_pyop2_kernel_prolong       4 0.0 8.3039e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509ab925bd0_wrap_pyop2_kernel_prolong       4 0.0 5.9602e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149918156090_wrap_pyop2_kernel_prolong       4 0.0 8.3063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149918b6dc90_wrap_pyop2_kernel_prolong       4 0.0 7.1457e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457ae0b1a90_wrap_pyop2_kernel_prolong       4 0.0 8.2934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457ae0b10d0_wrap_pyop2_kernel_prolong       4 0.0 4.7180e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3f9351c50_wrap_pyop2_kernel_prolong       4 0.0 8.3000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3f94aec50_wrap_pyop2_kernel_prolong       4 0.0 5.8400e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e240e6810_wrap_pyop2_kernel_prolong       4 0.0 8.3011e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e2422ddd0_wrap_pyop2_kernel_prolong       4 0.0 6.2648e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfea7bdad0_wrap_pyop2_kernel_prolong       4 0.0 8.3201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfea7be050_wrap_pyop2_kernel_prolong       4 0.0 5.5150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150705b6bed0_wrap_pyop2_kernel_prolong       4 0.0 8.3101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150705b695d0_wrap_pyop2_kernel_prolong       4 0.0 6.8093e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0c28d37d0_wrap_pyop2_kernel_prolong       4 0.0 8.3121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0c27e6550_wrap_pyop2_kernel_prolong       4 0.0 6.1053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a90f867510_wrap_pyop2_kernel_prolong       4 0.0 8.3179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a90f865810_wrap_pyop2_kernel_prolong       4 0.0 7.3300e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f02bd77650_wrap_pyop2_kernel_prolong       4 0.0 8.2977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f02bd65490_wrap_pyop2_kernel_prolong       4 0.0 5.8595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b299f188d0_wrap_pyop2_kernel_prolong       4 0.0 8.2925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b299dad410_wrap_pyop2_kernel_prolong       4 0.0 5.0222e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481b5ad6850_wrap_pyop2_kernel_prolong       4 0.0 8.3205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481b5ad4ed0_wrap_pyop2_kernel_prolong       4 0.0 5.5882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab8fb8050_wrap_pyop2_kernel_prolong       4 0.0 8.2950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab8f80dd0_wrap_pyop2_kernel_prolong       4 0.0 5.1730e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152231ab1cd0_wrap_pyop2_kernel_prolong       4 0.0 8.3042e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152231ab1a10_wrap_pyop2_kernel_prolong       4 0.0 6.2612e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cccbc1d50_wrap_pyop2_kernel_prolong       4 0.0 8.3096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cccbc1450_wrap_pyop2_kernel_prolong       4 0.0 6.7269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491614dcc10_wrap_pyop2_kernel_prolong       4 0.0 8.3132e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149160b35a50_wrap_pyop2_kernel_prolong       4 0.0 5.3933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14556099cf50_wrap_pyop2_kernel_prolong       4 0.0 8.3113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455607b1a50_wrap_pyop2_kernel_prolong       4 0.0 6.1799e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14885591dc90_wrap_pyop2_kernel_prolong       4 0.0 8.3108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14885591d7d0_wrap_pyop2_kernel_prolong       4 0.0 6.3225e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482c716e610_wrap_pyop2_kernel_prolong       4 0.0 8.3102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482c716df90_wrap_pyop2_kernel_prolong       4 0.0 6.1789e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14660e1c5e90_wrap_pyop2_kernel_prolong       4 0.0 8.3187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14660e1b9a10_wrap_pyop2_kernel_prolong       4 0.0 7.1732e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec71347e10_wrap_pyop2_kernel_prolong       4 0.0 8.3022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec7120d710_wrap_pyop2_kernel_prolong       4 0.0 5.9018e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148844bfe710_wrap_pyop2_kernel_prolong       4 0.0 8.3201e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148844bfded0_wrap_pyop2_kernel_prolong       4 0.0 7.5894e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461ee6ab290_wrap_pyop2_kernel_prolong       4 0.0 8.3082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461edcc6210_wrap_pyop2_kernel_prolong       4 0.0 5.4208e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a2bdeda10_wrap_pyop2_kernel_prolong       4 0.0 8.3068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a301601d0_wrap_pyop2_kernel_prolong       4 0.0 5.4473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c981e90410_wrap_pyop2_kernel_prolong       4 0.0 8.3125e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c981e86090_wrap_pyop2_kernel_prolong       4 0.0 6.8605e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522e8b32550_wrap_pyop2_kernel_prolong       4 0.0 8.3286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522e8da9890_wrap_pyop2_kernel_prolong       4 0.0 6.3587e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f96e36a650_wrap_pyop2_kernel_prolong       4 0.0 8.3122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f96e36be10_wrap_pyop2_kernel_prolong       4 0.0 6.4378e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15422be9dfd0_wrap_pyop2_kernel_prolong       4 0.0 8.3072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15422b339c90_wrap_pyop2_kernel_prolong       4 0.0 6.4498e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aae78c3510_wrap_pyop2_kernel_prolong       4 0.0 8.3124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aae7bc6a10_wrap_pyop2_kernel_prolong       4 0.0 5.7351e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d304b7bd0_wrap_pyop2_kernel_prolong       4 0.0 8.3035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d304bff90_wrap_pyop2_kernel_prolong       4 0.0 5.7785e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be92285b10_wrap_pyop2_kernel_prolong       4 0.0 8.3129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be922e0e90_wrap_pyop2_kernel_prolong       4 0.0 6.8518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147467b8ced0_wrap_pyop2_kernel_prolong       4 0.0 8.3265e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14746c0fe090_wrap_pyop2_kernel_prolong       4 0.0 5.9473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552a5b9f0d0_wrap_pyop2_kernel_prolong       4 0.0 8.3283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552a5b9e390_wrap_pyop2_kernel_prolong       4 0.0 6.7009e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14814b173fd0_wrap_pyop2_kernel_prolong       4 0.0 8.3092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14814b05f750_wrap_pyop2_kernel_prolong       4 0.0 6.6274e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489cfffb4d0_wrap_pyop2_kernel_prolong       4 0.0 8.3141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489cf67a890_wrap_pyop2_kernel_prolong       4 0.0 7.1065e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        627 1.0 9.2654e-02 3.3 0.00e+00 0.0 8.6e+05 4.0e+00 6.3e+02  0  0  3  0  3   0  0  4  0 10    -0
SFSetGraph           627 1.0 2.7284e-02 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              627 1.0 1.3804e-01 2.5 0.00e+00 0.0 1.7e+06 2.0e+02 6.3e+02  0  0  5  0  3   0  0  8  0 10    -0
SFPack             21231 1.0 5.0432e+00 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           21231 1.0 1.5485e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             3033 1.0 3.8359e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             12131 1.0 2.5616e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY            12132 1.0 1.5747e+01 1.6 9.78e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 126295
VecAYPX            12132 1.0 1.5776e+01 2.4 4.89e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 63034
VecScatterBegin    21231 1.0 5.5294e+00 3.3 0.00e+00 0.0 1.7e+07 8.8e+04 0.0e+00  0  0 55 42  0   0  0 80 100  0    -0
VecScatterEnd      21231 1.0 1.5815e+02 21.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
MatMult            12132 1.0 5.8510e+02 1.4 3.47e+11 1.1 1.3e+07 1.2e+05 0.0e+00 22 10 42 42  0  43 40 61 100  0 120268
MatMultAdd          3033 1.0 1.5521e+01 1.2 7.34e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 96104
MatMultTranspose    3033 1.0 1.1951e+01 2.2 7.34e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 124814
MatSolve           15165 1.0 5.8553e+02 1.4 3.40e+11 1.1 8.5e+06 5.1e+02 3.1e+03 23 10 27  0 14  45 39 39  0 51 116416
MatLUFactorNum       608 1.0 1.0339e+02 1.4 1.55e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   8 17  0  0  0 296312
MatResidual         3033 1.0 1.5628e+02 1.5 8.80e+10 1.1 3.3e+06 1.2e+05 0.0e+00  6  3 10 10  0  11 10 15 25  0 114160
PCSetUpOnBlocks     6066 1.0 1.0345e+02 1.4 1.55e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   8 17  0  0  0 296145
PCApply            15165 1.0 5.8578e+02 1.4 3.40e+11 1.1 8.5e+06 5.1e+02 3.1e+03 23 10 27  0 14  45 39 39  0 51 116366
PCApplyOnBlocks    12132 1.0 5.4514e+02 1.5 3.36e+11 1.1 0.0e+00 0.0e+00 0.0e+00 21 10  0  0  0  41 39  0  0  0 124840
KSPSetUp               1 1.0 3.5067e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            9099 1.0 9.3273e+02 1.1 6.13e+11 1.1 1.8e+07 6.3e+04 6.2e+03 40 17 58 31 28  79 71 85 75 100 132596
MGSmooth Level 0    3033 1.0 6.1651e+01 1.8 3.67e+09 24.0 8.5e+06 5.1e+02 6.2e+03  2  0 27  0 28   4  0 39  0 100  1778
MGSmooth Level 1    6066 1.0 9.9746e+02 1.1 7.65e+11 1.1 9.9e+06 1.2e+05 0.0e+00 42 22 31 31  0  83 88 46 75  0 154595
MGResid Level 1     3033 1.0 1.5629e+02 1.5 8.80e+10 1.1 3.3e+06 1.2e+05 0.0e+00  6  3 10 10  0  11 10 15 25  0 114152
MGInterp Level 1    6066 1.0 2.7200e+01 1.4 1.47e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 109676
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   137            137
              Viewer     3              3
         PetscRandom    19             19
           Index Set  1819           1819
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   406           1033
              Vector  2035           2034
              Matrix   132            132
      Preconditioner     6              6
       Krylov Solver    24             24
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

           Index Set  1254           1254
   Star Forest Graph   627              0
              Vector   629            630
========================================================================================================================
Average time to get PetscTime(): 2.47e-08
Average time for MPI_Barrier(): 8.1538e-06
Average time for zero size MPI_Send(): 2.45388e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal_saturated/vlumping/h2.profile # (source: code)
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

