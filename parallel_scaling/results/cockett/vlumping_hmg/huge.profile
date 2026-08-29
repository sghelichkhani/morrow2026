****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0083.gadi.nci.org.au with 832 processes, by sg8812 on Sat Aug 29 17:21:51 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.847e+03     1.000   1.847e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.033e+12     1.245   9.777e+11  8.134e+14
Flops/sec:            5.593e+08     1.245   5.293e+08  4.404e+11
MPI Msg Count:        6.192e+05     3.946   4.080e+05  3.394e+08
MPI Msg Len (bytes):  2.739e+10     3.127   4.778e+04  1.622e+13
MPI Reductions:       4.030e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.8857e+02  31.9%  3.7911e+14  46.6%  5.217e+07  15.4%  1.149e+05       37.0%  2.206e+04  54.7%
 1:        MG Apply: 1.2585e+03  68.1%  4.3433e+14  53.4%  2.873e+08  84.6%  3.559e+04       63.0%  1.822e+04  45.2%

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

BuildTwoSided        712 1.0 3.1475e+01 8.2 0.00e+00 0.0 4.4e+05 4.0e+00 6.4e+02  1  0  0  0  2   2  0  1  0  3    -0
BuildTwoSidedF       558 1.0 3.1147e+01 6.9 0.00e+00 0.0 4.4e+05 5.9e+05 5.6e+02  1  0  0  2  1   2  0  1  4  3    -0
SFSetGraph           160 1.1 1.0174e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              154 1.1 4.1796e-01 3.8 0.00e+00 0.0 4.4e+05 1.5e+03 8.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         449 1.0 1.8789e-01 3.3 0.00e+00 0.0 1.9e+06 7.5e+04 0.0e+00  0  0  1  1  0   0  0  4  2  0    -0
SFBcastEnd           449 1.0 1.2080e+01 145.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 3.4860e-02 18.1 0.00e+00 0.0 6.9e+05 1.0e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
SFReduceEnd          154 1.0 4.5653e+00 175.1 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1899
SFFetchOpBegin         4 1.0 2.9318e-05 6.5 0.00e+00 0.0 1.5e+04 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 8.7248e-04 38.1 0.00e+00 0.0 1.5e+04 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 2.5159e-03 4.3 0.00e+00 0.0 8.2e+03 2.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 1.6322e-02 1.3 0.00e+00 0.0 3.8e+05 8.8e+01 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 9.9783e-03 4.0 0.00e+00 0.0 1.7e+05 4.1e+01 3.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 5.7493e-05 4.3 0.00e+00 0.0 4.8e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             18531 1.1 4.3439e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           18535 1.1 7.7342e-02 9.7 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 112111
VecDot                91 1.0 3.2708e-01 9.1 3.27e+07 1.2 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 80000
VecMDot             9844 1.0 1.0685e+02 2.5 4.67e+10 1.2 0.0e+00 0.0e+00 9.8e+03  4  5  0  0 24  11 10  0  0 45 349553
VecNorm            10585 1.0 1.4716e+01 6.0 3.45e+09 1.2 0.0e+00 0.0e+00 1.1e+04  0  0  0  0 26   1  1  0  0 48 187298
VecScale           10280 1.0 3.7825e-01 1.3 1.67e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3527446
VecCopy              731 1.0 3.3404e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               725 1.0 1.8195e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              436 1.0 1.5222e-01 1.4 1.24e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 651985
VecWAXPY             342 1.0 2.8400e-01 2.2 6.15e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 173129
VecMAXPY           10280 1.0 4.9009e+01 1.2 4.99e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   8 11  0  0  0 814556
VecScatterBegin    17924 1.1 4.6939e+00 3.4 0.00e+00 0.0 4.8e+07 1.1e+05 0.0e+00  0  0 14 33  0   0  0 92 89  0    -0
VecScatterEnd      17924 1.1 5.7076e+01 45.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
VecSetRandom           2 1.0 6.0173e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.2619e-02 1.9 6.54e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1604356
VecReduceComm         91 1.0 1.1032e-01 13.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        1054 1.0 1.2729e-01 3.3 2.94e+07 1.2 0.0e+00 0.0e+00 1.1e+03  0  0  0  0  3   0  0  0  0  5 185011
MatMult            10186 1.0 2.6636e+02 1.2 1.85e+11 1.2 4.8e+07 1.1e+05 0.0e+00 13 18 14 33  0  41 39 92 89  0 553927
MatSolve            4817 1.2 8.2422e-01 1.7 4.57e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 443275
MatLUFactorSym        73 1.2 1.0522e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       236 1.1 5.9364e-01 1.0 8.81e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 117705
MatILUFactorSym        1 1.0 8.3211e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1104 1.0 3.1324e+01 5.2 0.00e+00 0.0 4.4e+05 5.9e+05 5.6e+02  1  0  0  2  1   3  0  1  4  3    -0
MatAssemblyEnd      1104 1.0 4.9619e+00 10.2 5.02e+07 0.0 2.8e+04 1.0e+04 4.4e+01  0  0  0  0  0   0  0  0  0  0  3020
MatGetRowIJ           73 1.2 2.2017e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 2.8023e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 7.3e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering        73 1.2 1.6729e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 2.6479e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatTranspose           5 1.0 1.0804e-02 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.5227e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.3678e+00 1.2 2.62e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1527166
MatPtAPSymbolic        2 1.0 2.1718e-01 1.1 0.00e+00 0.0 2.8e+04 1.3e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 8.0898e+00 1.0 9.94e+09 1.3 8.6e+05 2.4e+05 1.9e+02  0  1  0  1  0   1  2  2  3  1 980812
MatGetLocalMat       184 1.0 4.2013e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 4.8359e-01 2.3 0.00e+00 0.0 8.7e+05 2.4e+05 0.0e+00  0  0  0  1  0   0  0  2  4  0    -0
MatSetPreallCOO       16 1.0 7.7755e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 5.2958e-05 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 2.8577e+01 1.0 1.19e+10 1.2 5.5e+06 4.4e+04 2.7e+03  2  1  2  1  7   5  3 11  4 12 333077
PCApply             8884 1.0 1.2803e+03 1.0 5.51e+11 1.2 2.9e+08 3.6e+04 1.8e+04 68 53 85 63 45 Multiple stages 339239
PCApplyOnBlocks     4817 1.2 9.4135e-01 1.6 5.40e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 458560
KSPSetUp              91 1.0 1.3751e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.6158e+03 1.0 8.35e+11 1.2 3.3e+08 4.7e+04 3.6e+04 87 81 97 95 90 Multiple stages 408908
KSPGMRESOrthog      9844 1.0 1.4824e+02 1.7 9.34e+10 1.2 0.0e+00 0.0e+00 9.8e+03  6  9  0  0 24  19 20  0  0 45 503919
DMRefine               1 1.0 1.6950e+00 1.0 2.40e+03 1.0 2.9e+04 3.6e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     1
Mesh Partition         3 1.0 3.5664e-01 1.0 0.00e+00 0.0 1.1e+05 7.1e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 4.4980e-02 1.0 0.00e+00 0.0 3.7e+05 8.9e+01 1.8e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 9.0676e-03 1757.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 5.9119e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 6.1219e-03 1.5 0.00e+00 0.0 2.1e+04 5.9e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 2.4542e-03 4.6 0.00e+00 0.0 1.1e+04 2.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 4.5157e-03 1.6 0.00e+00 0.0 1.2e+04 2.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 3.3951e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.6369e-01 1.0 0.00e+00 0.0 3.2e+04 3.2e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 5.9533e-03 1.1 0.00e+00 0.0 6.3e+04 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 2.2680e-02 1.0 0.00e+00 0.0 1.8e+05 9.1e+01 1.1e+02  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        2 1.0 4.6163e-02 1.1 0.00e+00 0.0 4.6e+05 7.4e+01 1.6e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        5 1.0 9.1578e-03 1.2 0.00e+00 0.0 9.4e+04 6.1e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 8.6150e-04 1.1 0.00e+00 0.0 7.2e+04 4.1e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 5.1045e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 1.3501e-03 43.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 7.6563e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 1.2818e-04 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.3065e-03 1.8 0.00e+00 0.0 1.4e+04 2.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 5.6939e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.4646e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.6438e-04 2.6 0.00e+00 0.0 1.4e+04 2.8e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.4058e-05 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 4.9887e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 2.7794e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.7989e+03 1.0 1.03e+12 1.2 3.4e+08 4.8e+04 4.0e+04 97 100 100 100 99 Multiple stages 452194
SNESSetUp              1 1.0 4.0257e-05 7.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.6808e+01 1.1 7.87e+10 1.4 1.3e+06 1.2e+05 1.0e+00  2  7  0  1  0   8 15  2  3  0 1241781
SNESJacobianEval      91 1.0 1.0447e+02 1.0 1.13e+11 1.4 8.5e+05 3.4e+05 3.6e+02  6 10  0  2  1  18 22  2  5  2 799106
SNESLineSearch        91 1.0 2.4503e+01 1.0 6.12e+10 1.4 1.3e+06 1.2e+05 3.6e+02  1  6  0  1  1   4 12  2  3  2 1848996
DualSpaceSetUp         4 1.0 7.0629e-03 2.3 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     8
FESetUp                4 1.0 1.6598e+00 36.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.8389e+03 1.0 1.03e+12 1.2 3.4e+08 4.8e+04 4.0e+04 100 100 100 100 100 Multiple stages 442362
firedrake.__init__       1 1.0 1.6878e+01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 7.8681e+00 17.3 0.00e+00 0.0 5.2e+05 6.7e+01 1.9e+02  0  0  0  0  0   1  0  1  0  1    -0
CreateMesh             2 1.0 4.7597e-01 1.0 0.00e+00 0.0 9.8e+05 8.3e+01 3.2e+02  0  0  0  0  1   0  0  2  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.4332e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 5.4060e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 6.1057e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 8.7513e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 5.1653e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.5654e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 4.9472e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 4.7321e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 4.7207e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.5069e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 1.9993e-02 1.4 0.00e+00 0.0 6.8e+04 6.0e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 6.0795e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8997e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 1.6969e-01 45.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 6.2845e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.8126e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.1978e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.1047e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 6.2785e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.2549e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.4891e+02 1.2 1.92e+11 1.4 1.2e+06 1.2e+05 1.2e+01  7 17  0  1  0  23 37  2  2  0 950829
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 6.2381e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 4.4711e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.2837e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.2601e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.9903e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 2.6265e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 2.6264e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.3286e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.3155e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 3.1608e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.3409e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 8.0598e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 3.0824e+00 1.1 2.70e+06 1.2 1.9e+04 2.2e+04 2.0e+00  0  0  0  0  0   1  0  0  0  0   700
firedrake.interpolation.interpolate       6 1.0 1.4565e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.8130e+01 1.0 4.24e+06 1.2 1.1e+05 3.9e+03 9.7e+01  1  0  0  0  0   3  0  0  0  0   187
firedrake.formmanipulation.split_form       4 1.0 2.9884e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.3987e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.0487e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.9790e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.6396e-01 3.4 0.00e+00 0.0 1.2e+06 1.2e+05 2.0e+00  0  0  0  1  0   0  0  2  2  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 5.8557e+00 1.0 4.23e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   578
firedrake.halo.Halo.global_to_local_end     243 1.0 1.1797e+01 602.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 4.0928e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 3.8368e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.0539e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.6527e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.7001e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.8545e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.7299e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.2388e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.5544e+00 1.0 0.00e+00 0.0 2.8e+04 6.7e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0315e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.9745e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1494e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1494e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         3 1.0 2.7569e+00 1.3 0.00e+00 0.0 4.3e+04 2.2e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 4.6598e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.7989e+03 1.0 1.03e+12 1.2 3.4e+08 4.8e+04 4.0e+04 97 100 100 100 99 Multiple stages 452179
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.4444e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.3127e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.8575e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.3185e+00 1.3 1.68e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   1  4  0  0  0 1441665
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.2294e+00 1.0 2.89e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10367
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.2090e+00 1.0 2.89e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10462
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0620e+01 1.2 1.73e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 1300786
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.8473e+01 1.4 4.46e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   3  8  0  0  0 1668557
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.8084e-02 8.4 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 4.5664e+00 166.4 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1899
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.6058e+01 1.2 2.30e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   3  5  0  0  0 1146323
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.5712e+00 1.0 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8211
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.5241e+00 1.0 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8364
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.9739e+01 1.3 2.43e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   5  5  0  0  0 652836
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.6415e+01 1.5 6.60e+10 1.5 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   7 12  0  0  0 982459
firedrake.dmhooks.get_function_space       2 1.0 2.3176e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.8347e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 1.2047e+01 1.0 0.00e+00 0.0 6.2e+04 9.8e+01 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 1.2034e+01 1.0 0.00e+00 0.0 4.3e+04 8.0e+01 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 6.5399e+00 1.0 0.00e+00 0.0 2.4e+04 3.1e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.9268e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.9058e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.4064e+00 14.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.3982e+00 21.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.2549e+00 49.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 4.7992e+00 719.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 4.7991e+00 728.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 6.6681e-02 7.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 5.7443e-02 41.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.1135e-03 15.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.8114e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.7789e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.6248e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.0039e-01 311.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 5.4834e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.3966e-01 12.7 0.00e+00 0.0 1.9e+04 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 3.1824e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 3.0585e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 1.6814e+00 1.0 3.96e+07 1.2 4.7e+06 2.5e+02 2.1e+03  0  0  1  0  5   0  0  9  0 10 18458
MGSetup Level 1       91 1.0 8.6456e-01 1.0 3.83e+08 1.2 4.7e+04 1.2e+05 9.8e+01  0  0  0  0  0   0  0  0  0  0 353833

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 2.2482e-02 3.5 0.00e+00 0.0 3.6e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            91 1.0 5.8960e-04 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 2.7017e-02 2.3 0.00e+00 0.0 7.2e+05 3.1e+01 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack           2691852 1.2 7.5040e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2691852 1.2 1.8361e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            35536 1.0 3.6072e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             97722 1.0 1.6085e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAXPY            17768 1.0 8.2552e+00 1.7 6.39e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 618881
VecAYPX            71072 1.0 1.1172e+01 1.8 3.21e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 230122
VecAXPBYCZ         17768 1.0 1.2664e-02 3.5 2.56e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1616266
VecScatterBegin  2691852 1.2 4.6545e+01 1.4 0.00e+00 0.0 2.9e+08 3.6e+04 0.0e+00  2  0 84 63  0   3  0 99 100  0    -0
VecScatterEnd    2691852 1.2 1.0198e+02 14.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            53304 1.0 5.0550e+02 1.1 3.55e+11 1.2 2.5e+08 4.1e+04 0.0e+00 26 35 74 63  0  38 65 87 100  0 559694
MatMultAdd         17768 1.0 2.4476e+01 1.2 1.28e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 418143
MatMultTranspose   17768 1.0 1.9913e+01 2.4 1.28e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 513959
MatSolve         1323716 1.2 6.7707e+02 1.1 1.59e+11 1.3 3.7e+07 1.1e+02 4.6e+02 35 15 11  0  1  51 28 13  0  2 177652
MatLUFactorNum      6498 1.2 1.4308e+01 1.1 3.75e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 206323
MatResidual        17768 1.0 2.6421e+02 1.2 1.79e+11 1.2 8.3e+07 6.1e+04 0.0e+00 13 18 25 31  0  19 33 29 50  0 539951
MatAssemblyBegin    6408 1.2 2.4459e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd      6408 1.2 2.0434e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 8.0368e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
PCSetUp             6587 1.2 2.2020e+01 1.1 3.75e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 134059
PCSetUpOnBlocks    17768 1.0 1.0101e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            26652 1.0 7.7274e+02 1.1 1.63e+11 1.3 2.0e+08 1.8e+02 9.3e+03 40 15 60  0 23  58 28 71  0 51 159979
PCApplyOnBlocks  1314832 1.2 2.5775e+02 1.3 1.54e+11 1.2 0.0e+00 0.0e+00 0.0e+00 12 15  0  0  0  18 28  0  0  0 477342
KSPSetUp            6409 1.2 2.6062e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           26652 1.0 1.0142e+03 1.1 3.47e+11 1.2 2.5e+08 2.1e+04 1.8e+04 53 33 72 32 45  78 62 85 50 100 267511
MGSmooth Level 0    8884 1.0 4.7126e+02 1.1 9.52e+09 12.5 2.0e+08 1.8e+02 1.8e+04 24  0 60  0 45  35  0 71  0 100  1852
MGSmooth Level 1   17768 1.0 5.6986e+02 1.2 3.38e+11 1.2 4.2e+07 1.2e+05 0.0e+00 29 33 12 31  0  42 62 15 50  0 474569
MGResid Level 1     8884 1.0 2.6096e+02 1.3 1.79e+11 1.2 4.2e+07 1.2e+05 0.0e+00 13 18 12 31  0  19 33 15 50  0 546361
MGInterp Level 1   17768 1.0 4.3858e+01 1.4 2.55e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   3  5  0  0  0 465959
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
         PetscRandom     2              2
           Index Set  3871           3871
   IS L to G Mapping   181            177
             Section   303            303
   Star Forest Graph   351            350
              Vector   844            839
              Matrix   465            451
      Preconditioner    82             82
       Krylov Solver    82             82
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    79             80
            DM Label   213            213
          Quadrature    84             84
      Mesh Transform     1              1
       Swarm Cell DM     2              2
    GraphPartitioner    24             24
     Discrete System   112            113
           Weak Form   112            113
        Linear Space     8              8
          Dual Space    28             28
            FE Space     4              4

--- Event Stage 1: MG Apply

           Index Set   182            182
   Star Forest Graph    93             90
              Vector   183            184
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 7.678e-06
Average time for zero size MPI_Send(): 2.4544e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg/huge.profile # (source: environment)
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

