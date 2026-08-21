****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0477.gadi.nci.org.au with 832 processes, by sg8812 on Fri Aug 21 00:02:23 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.981e+03     1.000   1.981e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.094e+12     1.249   1.036e+12  8.620e+14
Flops/sec:            5.520e+08     1.249   5.229e+08  4.351e+11
MPI Msg Count:        7.687e+05     4.968   4.276e+05  3.558e+08
MPI Msg Len (bytes):  2.921e+10     3.127   4.862e+04  1.730e+13
MPI Reductions:       4.338e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 6.5286e+02  33.0%  4.1419e+14  48.1%  5.782e+07  16.3%  1.156e+05       38.7%  2.446e+04  56.4%
 1:        MG Apply: 1.3283e+03  67.0%  4.4779e+14  51.9%  2.979e+08  83.7%  3.562e+04       61.3%  1.890e+04  43.6%

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

BuildTwoSided        712 1.0 3.0542e+01 7.3 0.00e+00 0.0 4.4e+05 4.0e+00 6.4e+02  1  0  0  0  1   2  0  1  0  3    -0
BuildTwoSidedF       558 1.0 3.0213e+01 7.2 0.00e+00 0.0 4.4e+05 5.9e+05 5.6e+02  1  0  0  1  1   2  0  1  4  2    -0
SFSetGraph           160 1.1 1.0135e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              154 1.1 5.0201e-01 5.7 0.00e+00 0.0 4.4e+05 1.5e+03 8.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         449 1.0 1.6134e-01 2.9 0.00e+00 0.0 1.9e+06 7.5e+04 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
SFBcastEnd           449 1.0 1.2078e+01 244.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 4.0255e-02 16.0 0.00e+00 0.0 6.9e+05 1.0e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
SFReduceEnd          154 1.0 4.2876e+00 174.5 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2022
SFFetchOpBegin         4 1.0 3.0767e-05 5.9 0.00e+00 0.0 1.5e+04 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 8.5065e-04 31.7 0.00e+00 0.0 1.5e+04 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 2.5323e-03 4.0 0.00e+00 0.0 8.2e+03 2.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 1.6701e-02 1.3 0.00e+00 0.0 3.8e+05 8.8e+01 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 9.7030e-03 4.2 0.00e+00 0.0 1.7e+05 4.1e+01 3.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 5.3011e-05 4.3 0.00e+00 0.0 4.8e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            158143 1.2 4.9152e+00 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          158147 1.2 9.2460e-02 5.8 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 93780
VecDot                91 1.0 3.5538e-01 13.1 3.27e+07 1.2 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 73628
VecMDot            11042 1.0 1.2299e+02 2.7 5.02e+10 1.2 0.0e+00 0.0e+00 1.1e+04  4  5  0  0 25  11 10  0  0 45 326768
VecNorm            11784 1.0 1.8533e+01 4.0 3.88e+09 1.2 0.0e+00 0.0e+00 1.2e+04  0  0  0  0 27   2  1  0  0 48 167326
VecScale           11572 1.0 4.1870e-01 1.3 1.90e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3630346
VecCopy              819 1.0 4.5092e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2805 1.0 8.6408e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              530 1.0 1.9650e-01 1.6 1.58e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 642600
VecWAXPY             348 1.0 2.9028e-01 2.2 6.25e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 172355
VecMAXPY           11572 1.0 5.3507e+01 1.2 5.39e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   8 10  0  0  0 805576
VecScatterBegin   157536 1.2 6.9238e+00 2.3 0.00e+00 0.0 5.3e+07 1.1e+05 0.0e+00  0  0 15 35  0   1  0 93 90  0    -0
VecScatterEnd     157536 1.2 6.3540e+01 34.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
VecReduceArith       182 1.0 3.3170e-02 2.0 6.54e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1577683
VecReduceComm         91 1.0 1.2504e-01 28.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        2002 1.0 4.2383e+00 5.2 5.41e+08 1.2 0.0e+00 0.0e+00 2.0e+03  0  0  0  0  5   0  0  0  0  8 102029
MatMult            11390 1.0 3.0401e+02 1.2 2.09e+11 1.2 5.3e+07 1.1e+05 0.0e+00 14 19 15 35  0  42 40 93 90  0 548321
MatSolve           73073 1.2 1.4487e+01 1.6 8.45e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 466429
MatLUFactorSym        73 1.2 1.0445e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      6644 1.2 3.1540e+00 1.4 3.78e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 957709
MatILUFactorSym        1 1.0 8.7669e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    7512 1.2 3.0395e+01 5.4 0.00e+00 0.0 4.4e+05 5.9e+05 5.6e+02  1  0  0  1  1   2  0  1  4  2    -0
MatAssemblyEnd      7512 1.2 4.9283e+00 6.0 5.02e+07 0.0 2.8e+04 1.0e+04 4.4e+01  0  0  0  0  0   0  0  0  0  0  3040
MatGetRowIJ           73 1.2 2.4024e-05 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      91 1.0 8.4459e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 7.3e+01  0  0  0  0  0   1  0  0  0  0    -0
MatGetOrdering        73 1.2 1.9596e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 3.1002e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatTranspose           5 1.0 1.0410e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.4764e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.4036e+00 1.2 2.62e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1488206
MatPtAPSymbolic        2 1.0 1.7441e-01 1.0 0.00e+00 0.0 2.8e+04 1.3e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 8.0745e+00 1.0 9.94e+09 1.3 8.6e+05 2.4e+05 1.9e+02  0  1  0  1  0   1  2  1  3  1 982668
MatGetLocalMat       184 1.0 4.1554e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 4.9178e-01 2.0 0.00e+00 0.0 8.7e+05 2.4e+05 0.0e+00  0  0  0  1  0   0  0  2  3  0    -0
MatSetPreallCOO       16 1.0 6.2693e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 3.8449e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 8.0845e+01 1.0 4.48e+10 1.2 9.5e+06 7.7e+04 4.4e+03  4  4  3  4 10  12  9 16 11 18 442814
PCApply             9222 1.0 1.3566e+03 1.1 5.69e+11 1.2 3.0e+08 3.6e+04 1.9e+04 67 52 84 61 44 Multiple stages 330077
PCApplyOnBlocks    73073 1.2 1.7394e+01 1.6 1.22e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 561941
KSPSetUp              91 1.0 1.3055e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.7014e+03 1.0 8.64e+11 1.2 3.4e+08 4.7e+04 3.8e+04 86 79 96 93 87 Multiple stages 401424
KSPGMRESOrthog     11042 1.0 1.6693e+02 1.8 1.00e+11 1.2 0.0e+00 0.0e+00 1.1e+04  6  9  0  0 25  18 19  0  0 45 481531
DMRefine               1 1.0 4.3074e-01 1.0 2.40e+03 1.0 2.9e+04 3.6e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     5
Mesh Partition         3 1.0 3.3624e-01 1.0 0.00e+00 0.0 1.1e+05 7.1e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 4.5911e-02 1.0 0.00e+00 0.0 3.7e+05 8.9e+01 1.8e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 9.1627e-03 1860.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 6.1272e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 1.0275e-02 4.1 0.00e+00 0.0 2.1e+04 5.9e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 2.1231e-03 3.3 0.00e+00 0.0 1.1e+04 2.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 4.6697e-03 1.6 0.00e+00 0.0 1.2e+04 2.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 2.9015e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.4309e-01 1.0 0.00e+00 0.0 3.2e+04 3.2e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 6.1270e-03 1.1 0.00e+00 0.0 6.3e+04 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 2.3421e-02 1.0 0.00e+00 0.0 1.8e+05 9.1e+01 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        2 1.0 4.6236e-02 1.0 0.00e+00 0.0 4.6e+05 7.4e+01 1.6e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        5 1.0 9.2342e-03 1.2 0.00e+00 0.0 9.4e+04 6.1e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 4.9923e-04 1.2 0.00e+00 0.0 7.2e+04 4.1e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 5.1357e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 1.3214e-03 43.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 7.1585e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 7.0213e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.6003e-03 1.7 0.00e+00 0.0 1.4e+04 2.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 5.7056e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 4.6406e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 3.7463e-04 3.8 0.00e+00 0.0 1.4e+04 2.8e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.4941e-05 6.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 6.7511e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 2.6019e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.9365e+03 1.0 1.09e+12 1.2 3.5e+08 4.9e+04 4.3e+04 98 100 100 100 99 Multiple stages 445111
SNESSetUp              1 1.0 4.1398e-05 7.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.6362e+01 1.1 7.87e+10 1.4 1.3e+06 1.2e+05 1.0e+00  2  7  0  1  0   7 14  2  2  0 1253728
SNESJacobianEval      91 1.0 1.0485e+02 1.0 1.13e+11 1.4 8.5e+05 3.4e+05 3.6e+02  5 10  0  2  1  16 20  1  4  1 796207
SNESLineSearch        91 1.0 2.4245e+01 1.0 6.12e+10 1.4 1.3e+06 1.2e+05 3.6e+02  1  5  0  1  1   4 11  2  2  1 1868704
DualSpaceSetUp         4 1.0 6.6607e-03 2.1 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     9
FESetUp                4 1.0 4.1611e-01 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.9753e+03 1.0 1.09e+12 1.2 3.6e+08 4.9e+04 4.3e+04 100 100 100 100 100 Multiple stages 436372
firedrake.__init__       1 1.0 1.7680e+01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.1481e+01 27.2 0.00e+00 0.0 5.2e+05 6.7e+01 1.9e+02  0  0  0  0  0   1  0  1  0  1    -0
CreateMesh             2 1.0 4.4557e-01 1.0 0.00e+00 0.0 9.8e+05 8.3e+01 3.2e+02  0  0  0  0  1   0  0  2  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.8676e-03 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.9880e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.8822e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 1.0198e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 3.9941e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.6016e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.7784e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 3.5213e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 3.5094e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.0041e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 1.2963e-02 1.1 0.00e+00 0.0 6.8e+04 6.0e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.7936e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.7804e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 9.2729e-02 27.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 3.2482e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.7670e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.8805e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0489e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 3.2425e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 5.2954e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.4577e+02 1.2 1.92e+11 1.4 1.2e+06 1.2e+05 1.2e+01  7 16  0  1  0  21 34  2  2  0 971270
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 3.2004e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 4.1729e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.2895e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.5120e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.9650e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 2.3999e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      16 1.0 2.3998e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.0838e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.0680e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 3.4973e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.7859e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.2481e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 4.0000e+00 1.0 2.70e+06 1.2 1.9e+04 2.2e+04 2.0e+00  0  0  0  0  0   1  0  0  0  0   539
firedrake.interpolation.interpolate       6 1.0 1.8421e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.8214e+01 1.0 4.24e+06 1.2 1.1e+05 3.9e+03 9.7e+01  1  0  0  0  0   3  0  0  0  0   186
firedrake.formmanipulation.split_form       4 1.0 2.9950e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.4745e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 3.0061e-01 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 2.7539e-01 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 7.1679e-01 4.9 0.00e+00 0.0 1.2e+06 1.2e+05 2.0e+00  0  0  0  1  0   0  0  2  2  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 6.7102e+00 1.0 4.23e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   505
firedrake.halo.Halo.global_to_local_end     243 1.0 1.1679e+01 466.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.2649e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.9976e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8343e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 9.2659e-04 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.6028e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.7242e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3530e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.1367e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.6199e+00 1.0 0.00e+00 0.0 2.8e+04 6.7e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0699e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6747e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1505e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1505e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         3 1.0 2.8233e+00 1.3 0.00e+00 0.0 4.3e+04 2.2e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 4.6093e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.9366e+03 1.0 1.09e+12 1.2 3.5e+08 4.9e+04 4.3e+04 98 100 100 100 99 Multiple stages 445097
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.7475e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.4314e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.8862e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.4122e+00 1.3 1.68e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   1  3  0  0  0 1427314
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1533e+00 1.0 2.89e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10733
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9082e+00 1.0 2.89e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12112
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.2121e+01 1.4 1.73e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   1  3  0  0  0 1139618
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.8738e+01 1.5 4.46e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   2  7  0  0  0 1644911
firedrake.halo.Halo.local_to_global_begin     121 1.0 4.2244e-02 7.5 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 4.2883e+00 166.0 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2022
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.8758e+01 1.4 2.30e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 981310
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.5074e+00 1.0 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8420
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.4363e+00 1.0 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8666
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.9159e+01 1.3 2.43e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   4  5  0  0  0 665827
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5924e+01 1.5 6.60e+10 1.5 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   6 11  0  0  0 992948
firedrake.dmhooks.get_function_space       2 1.0 2.2428e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.4605e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 1.1276e+01 1.0 0.00e+00 0.0 6.2e+04 9.8e+01 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 1.1270e+01 1.0 0.00e+00 0.0 4.3e+04 8.0e+01 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 5.9682e+00 1.0 0.00e+00 0.0 2.4e+04 3.1e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.6906e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.6659e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.2369e+00 18.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.2280e+00 21.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.0849e+00 48.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 4.5454e+00 678.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 4.5453e+00 688.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 3.1412e-02 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 2.3227e-02 16.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 2.4447e-04 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.6683e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 3.0364e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.4779e-03 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.9708e-02 56.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 5.2914e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.8129e-02 3.0 0.00e+00 0.0 1.9e+04 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.3518e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.3504e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 1.6327e+00 1.0 3.94e+07 1.3 4.7e+06 2.5e+02 2.1e+03  0  0  1  0  5   0  0  8  0  9 19008
MGSetup Level 1       91 1.0 5.6904e+01 1.0 3.48e+10 1.2 4.3e+06 1.2e+05 2.0e+03  3  3  1  3  5   9  7  7  8  8 489208

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 2.7111e-02 4.0 0.00e+00 0.0 3.6e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            91 1.0 6.2666e-04 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 3.1231e-02 2.5 0.00e+00 0.0 7.2e+05 3.1e+01 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack           2794266 1.2 7.9351e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2794266 1.2 1.9053e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            55332 1.0 7.0817e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet            101440 1.0 1.6402e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAYPX            92220 1.0 1.8083e+01 1.7 9.97e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 440850
VecAXPBYCZ         18444 1.0 1.3204e-02 3.6 2.66e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1609181
VecScatterBegin  2794266 1.2 4.9194e+01 1.4 0.00e+00 0.0 3.0e+08 3.6e+04 0.0e+00  2  0 83 61  0   3  0 99 100  0    -0
VecScatterEnd    2794266 1.2 1.0788e+02 15.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            55332 1.0 5.3023e+02 1.1 3.68e+11 1.2 2.6e+08 4.1e+04 0.0e+00 25 34 73 61  0  37 66 87 100  0 553891
MatMultAdd         18444 1.0 2.5561e+01 1.2 1.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 415618
MatMultTranspose   18444 1.0 2.1153e+01 2.5 1.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 502229
MatSolve         1374078 1.2 7.2482e+02 1.1 1.64e+11 1.3 3.8e+07 1.1e+02 4.6e+02 35 14 11  0  1  53 28 13  0  2 172261
MatLUFactorNum        90 1.0 1.1111e+01 1.0 5.67e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   115
MatResidual        18444 1.0 2.7403e+02 1.2 1.86e+11 1.2 8.7e+07 6.1e+04 0.0e+00 13 17 24 31  0  19 33 29 50  0 540419
PCSetUp               90 1.0 1.1112e+01 1.0 5.67e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   115
PCSetUpOnBlocks    18444 1.0 1.0309e-01 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            27666 1.0 8.1251e+02 1.1 1.65e+11 1.3 2.1e+08 1.8e+02 9.7e+03 39 15 59  0 22  58 28 71  0 51 154166
PCApplyOnBlocks  1364856 1.2 2.6245e+02 1.3 1.56e+11 1.2 0.0e+00 0.0e+00 0.0e+00 12 14  0  0  0  18 28  0  0  0 474958
KSPSolve           27666 1.0 1.0666e+03 1.1 3.57e+11 1.2 2.5e+08 2.1e+04 1.9e+04 52 32 72 31 44  78 62 85 50 100 261164
MGSmooth Level 0    9222 1.0 5.1900e+02 1.1 9.59e+09 12.1 2.1e+08 1.8e+02 1.9e+04 25  0 59  0 44  37  0 71  0 100  1742
MGSmooth Level 1   18444 1.0 5.8518e+02 1.2 3.48e+11 1.2 4.3e+07 1.2e+05 0.0e+00 28 32 12 31  0  42 62 15 50  0 474500
MGResid Level 1     9222 1.0 2.7308e+02 1.3 1.85e+11 1.2 4.3e+07 1.2e+05 0.0e+00 13 17 12 31  0  19 33 15 50  0 541985
MGInterp Level 1   18444 1.0 4.5959e+01 1.5 2.65e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   3  5  0  0  0 461579
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
           Index Set  3871           3871
   IS L to G Mapping   181            177
             Section   303            303
   Star Forest Graph   347            346
              Vector   959            955
              Matrix   465            451
      Preconditioner    82             82
       Krylov Solver    80             80
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    77             78
            DM Label   213            213
          Quadrature    84             84
      Mesh Transform     1              1
       Swarm Cell DM     2              2
    GraphPartitioner    24             24
     Discrete System   110            111
           Weak Form   110            111
        Linear Space     8              8
          Dual Space    28             28
            FE Space     4              4

--- Event Stage 1: MG Apply

           Index Set   182            182
   Star Forest Graph    93             90
              Vector   181            181
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 8.0784e-06
Average time for zero size MPI_Send(): 2.4576e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg/large.profile # (source: environment)
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

