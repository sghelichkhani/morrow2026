****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0720.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 07:22:07 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.277e+02     1.000   9.277e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.308e+12     1.204   1.229e+12  1.278e+14
Flops/sec:            1.409e+09     1.204   1.325e+09  1.378e+11
MPI Msg Count:        9.501e+04     2.980   6.343e+04  6.597e+06
MPI Msg Len (bytes):  1.019e+10     2.992   1.133e+05  7.473e+11
MPI Reductions:       1.167e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.0987e+02  55.0%  1.0393e+14  81.3%  2.507e+06  38.0%  1.841e+05       61.8%  8.994e+03  77.1%
 1:        MG Apply: 4.1784e+02  45.0%  2.3887e+13  18.7%  4.090e+06  62.0%  6.986e+04       38.2%  2.659e+03  22.8%

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

BuildTwoSided       1412 1.0 5.0587e+01 6.2 0.00e+00 0.0 1.0e+05 4.0e+00 1.2e+03  3  0  2  0 10   5  0  4  0 13    -0
BuildTwoSidedF      1074 1.0 5.0453e+01 6.5 0.00e+00 0.0 1.3e+05 1.5e+06 1.1e+03  3  0  2 25  9   5  0  5 41 12    -0
SFSetGraph           345 1.1 1.5285e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              338 1.1 1.9867e+00 55.7 0.00e+00 0.0 6.9e+04 1.1e+03 9.8e+01  0  0  1  0  1   0  0  3  0  1    -0
SFBcastBegin        1002 1.0 4.6896e-01 3.3 0.00e+00 0.0 5.0e+05 9.2e+04 0.0e+00  0  0  8  6  0   0  0 20 10  0    -0
SFBcastEnd          1002 1.0 1.6503e+01 59.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        472 1.0 9.7523e-02 17.1 0.00e+00 0.0 2.4e+05 1.1e+05 0.0e+00  0  0  4  4  0   0  0 10  6  0    -0
SFReduceEnd          472 1.0 5.2759e+00 60.1 4.65e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   647
SFFetchOpBegin         6 1.0 2.4873e-05 3.2 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.0886e-04 8.5 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.1996e-04 1.3 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.3026e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  0   0  0  2  0  1    -0
SFSectionSF           51 1.0 2.8393e-03 1.9 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
SFRemoteOff            2 1.0 8.3101e-05 2.2 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            201994 1.1 1.8743e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          202000 1.1 2.1491e-01 7.2 4.65e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15884
VecDot               244 1.0 1.0048e+00 4.8 2.11e+08 1.2 0.0e+00 0.0e+00 2.4e+02  0  0  0  0  2   0  0  0  0  3 21038
VecMDot             2634 1.0 2.9733e+01 2.0 1.77e+10 1.2 0.0e+00 0.0e+00 2.6e+03  2  1  0  0 23   4  2  0  0 29 59604
VecNorm             3692 1.0 1.1421e+01 4.3 3.19e+09 1.2 0.0e+00 0.0e+00 3.7e+03  1  0  0  0 32   1  0  0  0 41 28004
VecScale            2916 1.0 1.1147e+00 1.3 1.26e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 113305
VecCopy             1901 1.0 2.6846e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1349 1.0 1.2068e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              282 1.0 5.1956e-01 1.2 2.44e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47020
VecWAXPY             410 1.0 8.9687e-01 1.2 2.42e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 27046
VecMAXPY            2916 1.0 2.5176e+01 1.2 2.00e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   5  2  0  0  0 79456
VecScatterBegin   200514 1.2 3.6679e+00 1.5 0.00e+00 0.0 1.5e+06 1.2e+05 0.0e+00  0  0 23 25  0   1  0 60 40  0    -0
VecScatterEnd     200514 1.2 2.3125e+01 21.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          19 1.0 7.3848e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       488 1.0 3.9519e-01 2.0 4.22e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 106976
VecReduceComm        244 1.0 4.0837e-01 115.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         410 1.0 1.8417e+00 3.8 5.31e+08 1.2 0.0e+00 0.0e+00 4.1e+02  0  0  0  0  4   0  0  0  0  5 28928
MatMult             2894 1.0 1.3079e+02 1.2 8.87e+10 1.2 1.5e+06 1.2e+05 0.0e+00 13  7 23 25  0  23  9 60 40  0 67772
MatSolve           98400 1.2 1.0390e+01 1.2 6.19e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 59690
MatLUFactorSym       241 1.2 3.4130e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      4644 1.2 3.8738e+00 1.0 1.33e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 33999
MatCopy               82 1.0 4.6314e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 2.1381e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    5851 1.1 5.0475e+01 3.5 0.00e+00 0.0 1.3e+05 1.5e+06 1.1e+03  3  0  2 25  9   6  0  5 41 12    -0
MatAssemblyEnd      5851 1.1 1.2375e+01 9.9 2.76e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0   946
MatGetRowIJ          240 1.2 3.2457e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      19 1.0 2.8445e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  0  0  0  0  2   1  0  0  0  3    -0
MatGetOrdering       240 1.2 4.3500e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       330 1.0 9.7172e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5538e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3292e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        168 1.0 1.6327e+00 1.2 2.61e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 159787
MatPtAPSymbolic        1 1.0 2.1625e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        84 1.0 1.1104e+01 1.0 1.04e+10 1.2 4.5e+04 3.5e+05 8.9e+01  1  1  1  2  1   2  1  2  3  1 93991
MatGetLocalMat        84 1.0 6.5659e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         84 1.0 3.3569e-01 2.0 0.00e+00 0.0 4.5e+04 3.6e+05 0.0e+00  0  0  1  2  0   0  0  2  3  0    -0
MatSetPreallCOO       32 1.0 6.2597e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.9655e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              246 1.0 6.4807e+01 1.0 3.79e+10 1.2 2.5e+05 1.6e+05 1.4e+03  7  3  4  5 12  13  4 10  9 15 58461
PCApply             2244 1.0 4.2380e+02 1.0 2.40e+11 1.2 4.1e+06 7.0e+04 2.7e+03 45 19 62 38 23 Multiple stages 56365
PCApplyOnBlocks    98400 1.2 1.1833e+01 1.2 7.49e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 63472
KSPSetUp             246 1.0 2.0869e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             246 1.0 5.5183e+02 1.0 3.43e+11 1.2 5.3e+06 8.1e+04 7.4e+03 59 27 80 57 63 Multiple stages 61968
KSPGMRESOrthog      2634 1.0 5.0322e+01 1.4 3.53e+10 1.2 0.0e+00 0.0e+00 2.6e+03  4  3  0  0 23   8  3  0  0 29 70434
DMRefine               2 1.0 2.1988e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     1
DMPlexCreateGmsh       1 1.0 1.3295e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 2.6170e+00 179.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 4.8647e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.0889e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexPartSelf         1 1.0 1.1904e-03 551.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 6.9623e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.8707e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.0936e-03 1.5 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 8.1455e-04 2.5 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.6698e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.2212e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.4429e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.5300e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  1   0  0  1  0  2    -0
DMPlexDistOvrlp        3 1.0 8.5632e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexDistField        7 1.0 1.9646e-03 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 4.6299e-03 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9786e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0670e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.9345e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1309e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.1920e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.1417e-04 1.8 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.1702e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 6.9601e-04 1.8 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             37 1.0 8.6421e+02 1.0 1.31e+12 1.2 6.4e+06 1.2e+05 1.1e+04 93 100 97 100 93 Multiple stages 147891
SNESSetUp              1 1.0 4.9021e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     431 1.0 4.2318e+01 1.1 4.19e+11 1.2 4.7e+05 1.2e+05 0.0e+00  4 32  7  8  0   8 39 19 12  0 957009
SNESJacobianEval     246 1.0 1.9259e+02 1.0 5.00e+11 1.2 2.6e+05 7.9e+05 9.8e+02 21 38  4 27  8  38 47 10 44 11 251478
SNESLineSearch       244 1.0 4.2507e+01 1.0 3.92e+11 1.2 5.4e+05 1.2e+05 1.1e+03  5 30  8  9 10   8 36 22 14 13 891890
DualSpaceSetUp         8 1.0 5.4597e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.8868e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 9.2545e+02 1.0 1.31e+12 1.2 6.6e+06 1.1e+05 1.2e+04 100 100 100 100 100 Multiple stages 138114
firedrake.__init__       1 1.0 1.0207e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 2.7718e+00 16.4 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  2  0  4   0  0  7  0  5    -0
firedrake.mesh._from_gmsh       1 1.0 2.6178e+00 178.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 9.2906e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.7420e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.4431e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.6465e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 8.9214e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.8064e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 8.6927e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 8.4019e-02 1.0 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 8.3902e-02 1.0 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 6.9030e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.6506e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 1.4205e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.6013e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.9731e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.9782e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.1438e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.2796e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2623e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.9717e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     418 1.0 7.4697e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      3159 1.0 2.0491e+02 1.2 9.19e+11 1.2 3.9e+05 1.2e+05 3.2e+01 21 70  6  6  0  38 86 15 10  0 433970
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.9286e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    6318 1.0 2.5258e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0391e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.6360e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.3192e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.4563e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.4562e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.3338e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.1430e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    3159 1.0 9.5517e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      3159 1.0 8.2698e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.2441e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 5.7112e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   256
firedrake.interpolation.interpolate      13 1.0 4.6893e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.8950e+00 1.0 9.06e+07 1.2 1.4e+04 4.2e+04 3.7e+01  1  0  0  0  0   1  0  1  0  0  1541
firedrake.formmanipulation.split_form      14 1.0 4.7799e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.8970e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.4716e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0240e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     735 1.0 2.4703e+00 7.6 0.00e+00 0.0 3.9e+05 1.2e+05 4.0e+00  0  0  6  6  0   0  0 16 10  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.3980e+00 1.0 9.06e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1683
firedrake.halo.Halo.global_to_local_end     735 1.0 1.4843e+01 76.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 1.6375e+00 25.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7b86037d0_wrap_pyop2_kernel_prolong       4 0.0 7.4022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7b8604bd0_wrap_pyop2_kernel_prolong       4 0.0 5.5340e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8979e+00 1.0 7.34e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  1889
firedrake.function.Function.assign     162 1.0 9.5128e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     161 1.0 9.1242e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.3112e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      74 1.0 8.8497e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.9733e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4224e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8273e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1864e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.3013e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.9277e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5871e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2920e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2920e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 3.8889e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 6.0098e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      37 1.0 8.6435e+02 1.0 1.31e+12 1.2 6.4e+06 1.2e+05 1.1e+04 93 100 97 100 94 Multiple stages 147867
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.9944e-01 989.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.9290e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.9939e-01 1184.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.9935e-01 1346.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     862 1.0 1.0738e+01 1.3 1.07e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   2 10  0  0  0 998804
Parloop_Cells_wrap_form0_exterior_facet_top_integral     862 1.0 9.9593e-01 1.0 1.38e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1385
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     862 1.0 1.4284e+00 1.1 1.03e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12743
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     862 1.0 7.3677e+00 1.2 1.02e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1 10  0  0  0 1383509
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     862 1.0 1.6241e+01 1.3 2.10e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 15  0  0  0   3 19  0  0  0 1204134
firedrake.halo.Halo.local_to_global_begin     431 1.0 1.1244e-01 7.3 0.00e+00 0.0 2.3e+05 1.2e+05 0.0e+00  0  0  3  4  0   0  0  9  6  0    -0
firedrake.halo.Halo.local_to_global_end     431 1.0 5.2803e+00 56.3 4.65e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   646
Parloop_Cells_wrap_form00_cell_integral     492 1.0 3.1931e+01 1.4 1.13e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   5 11  0  0  0 356006
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     492 1.0 2.1584e+00 1.8 5.92e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4842
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     492 1.0 4.0586e+01 1.2 1.49e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   7 14  0  0  0 368467
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     492 1.0 8.9474e+01 1.3 2.37e+11 1.3 0.0e+00 0.0e+00 0.0e+00  9 17  0  0  0  15 21  0  0  0 246865
firedrake.dmhooks.get_function_space       2 1.0 2.3595e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.2218e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       84 1.0 3.0889e+00 1.0 3.23e+07 8.9 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0   265
MGSetup Level 1       84 1.0 1.8713e+00 1.0 6.60e+08 1.2 5.2e+03 1.2e+05 2.7e+02  0  0  0  0  2   0  0  0  0  3 35304
firedrake.constant.Constant.assign      37 1.0 2.2615e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1df763a90_wrap_pyop2_kernel_prolong       4 0.0 7.3952e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1df761e90_wrap_pyop2_kernel_prolong       4 0.0 5.3637e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd696f6b90_wrap_pyop2_kernel_prolong       4 0.0 7.4062e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd696f4d90_wrap_pyop2_kernel_prolong       4 0.0 6.5377e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548686561d0_wrap_pyop2_kernel_prolong       4 0.0 7.4124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154868132bd0_wrap_pyop2_kernel_prolong       4 0.0 6.4012e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148993cd3310_wrap_pyop2_kernel_prolong       4 0.0 7.4008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148993cd1590_wrap_pyop2_kernel_prolong       4 0.0 6.5745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152069946bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15206990be50_wrap_pyop2_kernel_prolong       4 0.0 7.6593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15376e7b98d0_wrap_pyop2_kernel_prolong       4 0.0 7.3894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15376eb69b90_wrap_pyop2_kernel_prolong       4 0.0 6.0646e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549cc11bbd0_wrap_pyop2_kernel_prolong       4 0.0 7.3936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549c7a9e590_wrap_pyop2_kernel_prolong       4 0.0 5.0548e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f94ef6e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.3998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f94ef6d990_wrap_pyop2_kernel_prolong       4 0.0 7.0326e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e54b6499d0_wrap_pyop2_kernel_prolong       4 0.0 7.3939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e54acbe490_wrap_pyop2_kernel_prolong       4 0.0 5.0687e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148225cb2150_wrap_pyop2_kernel_prolong       4 0.0 7.4188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148225cb17d0_wrap_pyop2_kernel_prolong       4 0.0 7.5275e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c38e42ecd0_wrap_pyop2_kernel_prolong       4 0.0 7.4052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c38e486bd0_wrap_pyop2_kernel_prolong       4 0.0 6.6057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2072bed90_wrap_pyop2_kernel_prolong       4 0.0 7.4361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2072be0d0_wrap_pyop2_kernel_prolong       4 0.0 6.5895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478ed7e6dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478ed84dcd0_wrap_pyop2_kernel_prolong       4 0.0 5.5753e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ab07de910_wrap_pyop2_kernel_prolong       4 0.0 7.4115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ab0691e90_wrap_pyop2_kernel_prolong       4 0.0 6.5426e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6c5d83c10_wrap_pyop2_kernel_prolong       4 0.0 7.3852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6c5c3da90_wrap_pyop2_kernel_prolong       4 0.0 6.8676e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa63ecfc10_wrap_pyop2_kernel_prolong       4 0.0 7.3848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa63eced90_wrap_pyop2_kernel_prolong       4 0.0 5.1607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d63fb2db90_wrap_pyop2_kernel_prolong       4 0.0 7.3884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d63f9b7410_wrap_pyop2_kernel_prolong       4 0.0 6.8026e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cb531c090_wrap_pyop2_kernel_prolong       4 0.0 7.3851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cb53a5fd0_wrap_pyop2_kernel_prolong       4 0.0 6.4462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef6f49f390_wrap_pyop2_kernel_prolong       4 0.0 7.3966e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef6f29a5d0_wrap_pyop2_kernel_prolong       4 0.0 6.1915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcde4a0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcde517b10_wrap_pyop2_kernel_prolong       4 0.0 5.9059e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149199793650_wrap_pyop2_kernel_prolong       4 0.0 7.3980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149199614d10_wrap_pyop2_kernel_prolong       4 0.0 8.1977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc1c887550_wrap_pyop2_kernel_prolong       4 0.0 7.3976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc1c7fc050_wrap_pyop2_kernel_prolong       4 0.0 7.0080e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6b3a62790_wrap_pyop2_kernel_prolong       4 0.0 7.3919e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6b3a37850_wrap_pyop2_kernel_prolong       4 0.0 6.5593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b203aaefd0_wrap_pyop2_kernel_prolong       4 0.0 7.3944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b203aac650_wrap_pyop2_kernel_prolong       4 0.0 6.9867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d891df610_wrap_pyop2_kernel_prolong       4 0.0 7.3920e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d891dd3d0_wrap_pyop2_kernel_prolong       4 0.0 8.1845e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe752d5310_wrap_pyop2_kernel_prolong       4 0.0 7.3804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe750d9990_wrap_pyop2_kernel_prolong       4 0.0 5.0932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b78f6e7d0_wrap_pyop2_kernel_prolong       4 0.0 7.3910e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b785ab390_wrap_pyop2_kernel_prolong       4 0.0 5.6203e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4a0b97d10_wrap_pyop2_kernel_prolong       4 0.0 7.3965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4a0a5bd90_wrap_pyop2_kernel_prolong       4 0.0 6.5677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f2cf93390_wrap_pyop2_kernel_prolong       4 0.0 7.3838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f0af55b50_wrap_pyop2_kernel_prolong       4 0.0 6.0790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffc2c57190_wrap_pyop2_kernel_prolong       4 0.0 7.4061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffc2d5e610_wrap_pyop2_kernel_prolong       4 0.0 7.2808e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8ec67fe10_wrap_pyop2_kernel_prolong       4 0.0 7.3893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8ec694410_wrap_pyop2_kernel_prolong       4 0.0 5.9782e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546ae917590_wrap_pyop2_kernel_prolong       4 0.0 7.3809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546ae772a90_wrap_pyop2_kernel_prolong       4 0.0 5.7735e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4685fae10_wrap_pyop2_kernel_prolong       4 0.0 7.4303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4680d8e10_wrap_pyop2_kernel_prolong       4 0.0 6.1826e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a82161d750_wrap_pyop2_kernel_prolong       4 0.0 7.3830e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a82161ca90_wrap_pyop2_kernel_prolong       4 0.0 5.9615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b469215d0_wrap_pyop2_kernel_prolong       4 0.0 7.4298e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b45bddf90_wrap_pyop2_kernel_prolong       4 0.0 7.0747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2f3624690_wrap_pyop2_kernel_prolong       4 0.0 7.4229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2f36ac310_wrap_pyop2_kernel_prolong       4 0.0 7.3180e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506596b5390_wrap_pyop2_kernel_prolong       4 0.0 7.3956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150658d28510_wrap_pyop2_kernel_prolong       4 0.0 7.4696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f03f8ba410_wrap_pyop2_kernel_prolong       4 0.0 7.4041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f03f889650_wrap_pyop2_kernel_prolong       4 0.0 7.6811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14551aa824d0_wrap_pyop2_kernel_prolong       4 0.0 7.3806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14551aa3fb90_wrap_pyop2_kernel_prolong       4 0.0 5.2759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efe267fed0_wrap_pyop2_kernel_prolong       4 0.0 7.3966e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efe26a9d50_wrap_pyop2_kernel_prolong       4 0.0 5.9835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7b31bd3d0_wrap_pyop2_kernel_prolong       4 0.0 7.3888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7b303ec10_wrap_pyop2_kernel_prolong       4 0.0 6.9308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d38c14510_wrap_pyop2_kernel_prolong       4 0.0 7.4183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d38c15010_wrap_pyop2_kernel_prolong       4 0.0 5.7283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15344f0f9e90_wrap_pyop2_kernel_prolong       4 0.0 7.3884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15344e6cd1d0_wrap_pyop2_kernel_prolong       4 0.0 6.5630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15151e1f3a50_wrap_pyop2_kernel_prolong       4 0.0 7.4171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15151d84afd0_wrap_pyop2_kernel_prolong       4 0.0 6.7761e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507b48fdb10_wrap_pyop2_kernel_prolong       4 0.0 7.3937e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507b4b1ced0_wrap_pyop2_kernel_prolong       4 0.0 7.2793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150457bb4c50_wrap_pyop2_kernel_prolong       4 0.0 7.3900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504579513d0_wrap_pyop2_kernel_prolong       4 0.0 6.7895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ddb035dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dda6f6210_wrap_pyop2_kernel_prolong       4 0.0 6.7683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb9bb43bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb9bb418d0_wrap_pyop2_kernel_prolong       4 0.0 6.6044e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14805068fa10_wrap_pyop2_kernel_prolong       4 0.0 7.3917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480507c42d0_wrap_pyop2_kernel_prolong       4 0.0 7.1789e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154862e4e850_wrap_pyop2_kernel_prolong       4 0.0 7.3989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154862e4e090_wrap_pyop2_kernel_prolong       4 0.0 7.2092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7df83f090_wrap_pyop2_kernel_prolong       4 0.0 7.3992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7dedc5b90_wrap_pyop2_kernel_prolong       4 0.0 6.8630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498b8814e10_wrap_pyop2_kernel_prolong       4 0.0 7.3802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498b883c5d0_wrap_pyop2_kernel_prolong       4 0.0 5.6144e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c093c2290_wrap_pyop2_kernel_prolong       4 0.0 7.4016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c093e5ed0_wrap_pyop2_kernel_prolong       4 0.0 6.3807e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457c9b974d0_wrap_pyop2_kernel_prolong       4 0.0 7.4086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457c991ed10_wrap_pyop2_kernel_prolong       4 0.0 7.6704e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14563982b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145639829e10_wrap_pyop2_kernel_prolong       4 0.0 6.7993e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458607fba50_wrap_pyop2_kernel_prolong       4 0.0 7.3864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14585b471b90_wrap_pyop2_kernel_prolong       4 0.0 6.4716e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f007a90d0_wrap_pyop2_kernel_prolong       4 0.0 7.4231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f00ed7dd0_wrap_pyop2_kernel_prolong       4 0.0 5.8634e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148731b9b590_wrap_pyop2_kernel_prolong       4 0.0 7.4003e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148731b99610_wrap_pyop2_kernel_prolong       4 0.0 5.1975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a53246d310_wrap_pyop2_kernel_prolong       4 0.0 7.3942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a531ad4f50_wrap_pyop2_kernel_prolong       4 0.0 5.3960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146608a70cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146608a86c10_wrap_pyop2_kernel_prolong       4 0.0 6.1462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6451130d0_wrap_pyop2_kernel_prolong       4 0.0 7.4448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f645110dd0_wrap_pyop2_kernel_prolong       4 0.0 7.2276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f234f26990_wrap_pyop2_kernel_prolong       4 0.0 7.4032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2345c69d0_wrap_pyop2_kernel_prolong       4 0.0 6.5224e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4d6633e10_wrap_pyop2_kernel_prolong       4 0.0 7.4108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4d5bfdb50_wrap_pyop2_kernel_prolong       4 0.0 7.3914e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a003d7e810_wrap_pyop2_kernel_prolong       4 0.0 7.4073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a003d7df10_wrap_pyop2_kernel_prolong       4 0.0 8.2135e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516d9044b50_wrap_pyop2_kernel_prolong       4 0.0 7.3993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516d9060510_wrap_pyop2_kernel_prolong       4 0.0 5.6017e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1c02d1090_wrap_pyop2_kernel_prolong       4 0.0 7.4292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1c02d36d0_wrap_pyop2_kernel_prolong       4 0.0 6.2146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0ded211d0_wrap_pyop2_kernel_prolong       4 0.0 7.3887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0de3f4510_wrap_pyop2_kernel_prolong       4 0.0 5.4920e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a04445d0_wrap_pyop2_kernel_prolong       4 0.0 7.4044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a059fd90_wrap_pyop2_kernel_prolong       4 0.0 6.5097e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15384cac6750_wrap_pyop2_kernel_prolong       4 0.0 7.3897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15384ca9dad0_wrap_pyop2_kernel_prolong       4 0.0 6.0528e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f5f8fdd10_wrap_pyop2_kernel_prolong       4 0.0 7.4126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f5f8fd150_wrap_pyop2_kernel_prolong       4 0.0 7.9179e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d15936b50_wrap_pyop2_kernel_prolong       4 0.0 7.4016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d159367d0_wrap_pyop2_kernel_prolong       4 0.0 5.7583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e74ec4090_wrap_pyop2_kernel_prolong       4 0.0 7.4002e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e74ec76d0_wrap_pyop2_kernel_prolong       4 0.0 6.3934e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbe9d0f150_wrap_pyop2_kernel_prolong       4 0.0 7.4102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbe9d0ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.9556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4e4e4a310_wrap_pyop2_kernel_prolong       4 0.0 7.3896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4dfc3f290_wrap_pyop2_kernel_prolong       4 0.0 5.7419e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509904f7a10_wrap_pyop2_kernel_prolong       4 0.0 7.4078e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509903bbd90_wrap_pyop2_kernel_prolong       4 0.0 7.0357e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147eefe30b10_wrap_pyop2_kernel_prolong       4 0.0 7.3948e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef419a690_wrap_pyop2_kernel_prolong       4 0.0 7.2333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d41abb390_wrap_pyop2_kernel_prolong       4 0.0 7.4048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d41aba690_wrap_pyop2_kernel_prolong       4 0.0 6.4676e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148325ca54d0_wrap_pyop2_kernel_prolong       4 0.0 7.3958e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14832524a1d0_wrap_pyop2_kernel_prolong       4 0.0 4.8877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d5730d10_wrap_pyop2_kernel_prolong       4 0.0 7.4191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d572d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.0016e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507e70ff750_wrap_pyop2_kernel_prolong       4 0.0 7.4273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507e6fed390_wrap_pyop2_kernel_prolong       4 0.0 7.0505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dda498850_wrap_pyop2_kernel_prolong       4 0.0 7.3868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dda45be10_wrap_pyop2_kernel_prolong       4 0.0 6.2919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dfdb9a350_wrap_pyop2_kernel_prolong       4 0.0 7.4053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dfdb9bfd0_wrap_pyop2_kernel_prolong       4 0.0 6.4038e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471eb8a98d0_wrap_pyop2_kernel_prolong       4 0.0 7.4384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471eb8ad790_wrap_pyop2_kernel_prolong       4 0.0 7.0056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d3eb4f590_wrap_pyop2_kernel_prolong       4 0.0 7.4054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d3ec28f90_wrap_pyop2_kernel_prolong       4 0.0 6.2416e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7f4f8cfd0_wrap_pyop2_kernel_prolong       4 0.0 7.3936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7f4fbc650_wrap_pyop2_kernel_prolong       4 0.0 6.6229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a801bb78d0_wrap_pyop2_kernel_prolong       4 0.0 7.3853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a801a37bd0_wrap_pyop2_kernel_prolong       4 0.0 6.3615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d38c09ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d38c09290_wrap_pyop2_kernel_prolong       4 0.0 6.4235e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bebc357310_wrap_pyop2_kernel_prolong       4 0.0 7.4238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bebc4fd950_wrap_pyop2_kernel_prolong       4 0.0 7.3709e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2b2e1ff10_wrap_pyop2_kernel_prolong       4 0.0 7.3974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2b2deeed0_wrap_pyop2_kernel_prolong       4 0.0 6.3153e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499a125dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499a125d290_wrap_pyop2_kernel_prolong       4 0.0 6.3557e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484d4136450_wrap_pyop2_kernel_prolong       4 0.0 7.3925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484d4135910_wrap_pyop2_kernel_prolong       4 0.0 5.4878e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4f2986550_wrap_pyop2_kernel_prolong       4 0.0 7.4067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4f29b08d0_wrap_pyop2_kernel_prolong       4 0.0 7.1612e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b130b47f90_wrap_pyop2_kernel_prolong       4 0.0 7.3868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b131800c50_wrap_pyop2_kernel_prolong       4 0.0 6.1763e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a5c90a010_wrap_pyop2_kernel_prolong       4 0.0 7.4081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a5c90be50_wrap_pyop2_kernel_prolong       4 0.0 7.0577e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152901811dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152901813e90_wrap_pyop2_kernel_prolong       4 0.0 6.8287e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ed4812590_wrap_pyop2_kernel_prolong       4 0.0 7.3957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ed4838bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3230e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f78ee62210_wrap_pyop2_kernel_prolong       4 0.0 7.4377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f78ee61a10_wrap_pyop2_kernel_prolong       4 0.0 6.3508e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c8ea10150_wrap_pyop2_kernel_prolong       4 0.0 7.3887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c8c3a5e10_wrap_pyop2_kernel_prolong       4 0.0 5.6411e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da2de6db50_wrap_pyop2_kernel_prolong       4 0.0 7.3951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da2c5ff5d0_wrap_pyop2_kernel_prolong       4 0.0 7.9825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a3f236bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a3f46e010_wrap_pyop2_kernel_prolong       4 0.0 6.4348e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14948a12e8d0_wrap_pyop2_kernel_prolong       4 0.0 7.3997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14948a02a110_wrap_pyop2_kernel_prolong       4 0.0 8.1369e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491ecda9290_wrap_pyop2_kernel_prolong       4 0.0 7.3887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491ece0b150_wrap_pyop2_kernel_prolong       4 0.0 7.4602e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526707b7810_wrap_pyop2_kernel_prolong       4 0.0 7.4015e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526707b4d50_wrap_pyop2_kernel_prolong       4 0.0 7.6841e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         83 1.0 5.4665e-03 3.9 0.00e+00 0.0 5.4e+04 4.0e+00 8.3e+01  0  0  1  0  1   0  0  1  0  3    -0
SFSetGraph            83 1.0 3.8892e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               83 1.0 7.9546e-03 2.0 0.00e+00 0.0 1.1e+05 2.2e+02 8.3e+01  0  0  2  0  1   0  0  3  0  3    -0
SFPack           2174436 1.2 2.2154e+00 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2174436 1.2 1.1076e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2244 1.0 3.1849e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             17951 1.0 1.0033e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             4488 1.0 7.9373e+00 1.8 3.88e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 48983
VecAYPX             4488 1.0 8.0474e+00 3.3 1.94e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 24157
VecScatterBegin  2174436 1.2 2.8629e+01 1.3 0.00e+00 0.0 3.8e+06 7.5e+04 0.0e+00  3  0 58 38  0   6  0 93 100  0    -0
VecScatterEnd    2174436 1.2 3.5936e+01 22.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult             4488 1.0 2.0185e+02 1.2 1.38e+11 1.2 2.4e+06 1.2e+05 0.0e+00 20 11 36 38  0  44 58 58 100  0 68099
MatMultAdd          2244 1.0 1.1608e+01 1.2 5.82e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  2  0  0  0 50241
MatMultTranspose    2244 1.0 9.9092e+00 1.7 5.82e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 58854
MatSolve         1079364 1.2 1.3184e+02 1.3 6.91e+10 1.2 1.7e+06 7.9e+02 4.2e+02 13  5 26  0  4  29 29 42  0 16 51792
MatLUFactorNum     54480 1.2 1.2919e+01 1.2 1.56e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  7  0  0  0 121045
MatResidual         2244 1.0 1.1371e+02 1.3 6.97e+10 1.2 1.2e+06 1.2e+05 0.0e+00 10  5 18 19  0  23 29 29 50  0 61297
MatAssemblyBegin   54480 1.2 8.4442e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     54480 1.2 1.2941e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     227 1.0 3.0969e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   7  0  0  0  0    -0
PCSetUp            54707 1.2 4.3875e+01 1.2 1.56e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  1  0  0  0  10  7  0  0  0 35642
PCApply             6732 1.0 2.0867e+02 1.2 8.47e+10 1.2 1.7e+06 7.9e+02 4.2e+02 21  7 26  0  4  47 35 42  0 16 40216
PCApplyOnBlocks  1077120 1.2 1.2930e+02 1.2 8.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00 13  7  0  0  0  29 35  0  0  0 64595
KSPSetUp           54480 1.2 3.3906e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            6732 1.0 3.0931e+02 1.1 1.58e+11 1.2 2.9e+06 4.9e+04 2.7e+03 32 12 44 19 23  72 66 71 50 100 50923
MGSmooth Level 0    2244 1.0 2.3908e+01 2.7 1.61e+09 10.3 1.7e+06 7.9e+02 2.7e+03  1  0 26  0 23   3  0 42  0 100  1670
MGSmooth Level 1    4488 1.0 2.9893e+02 1.1 1.57e+11 1.2 1.2e+06 1.2e+05 0.0e+00 31 12 18 19  0  69 66 29 50  0 52558
MGResid Level 1     2244 1.0 1.1372e+02 1.3 6.97e+10 1.2 1.2e+06 1.2e+05 0.0e+00 10  5 18 19  0  23 29 29 50  0 61291
MGInterp Level 1    4488 1.0 2.1333e+01 1.3 1.16e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5  5  0  0  0 54675
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   153            153
              Viewer     3              3
         PetscRandom    19             19
           Index Set  3673           3673
   IS L to G Mapping   447            447
             Section   472            472
   Star Forest Graph   648            731
              Vector  1702           1702
              Matrix  1331           1331
      Preconditioner   246            246
       Krylov Solver   263            263
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

           Index Set   166            166
   Star Forest Graph    83              0
              Vector    83             83
========================================================================================================================
Average time to get PetscTime(): 2.46e-08
Average time for MPI_Barrier(): 4.2052e-06
Average time for zero size MPI_Send(): 2.25519e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal/vlumping_linesmooth/h1.profile # (source: code)
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

