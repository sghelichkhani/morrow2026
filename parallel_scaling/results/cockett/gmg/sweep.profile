****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0684.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:25:36 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.074e+02     1.000   8.074e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                7.278e+11   101079357.493   5.095e+11  5.299e+13
Flops/sec:            9.013e+08   101079395.778   6.310e+08  6.563e+10
MPI Msg Count:        3.871e+05     0.000   2.310e+05  2.402e+07
MPI Msg Len (bytes):  1.343e+10   1342996956.700   3.439e+04  8.261e+11
MPI Reductions:       6.946e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 8.0743e+02 100.0%  5.2991e+13 100.0%  2.402e+07 100.0%  3.439e+04      100.0%  6.944e+04 100.0%

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

BuildTwoSided       1597 1.0 1.4401e+02 39.3 0.00e+00 0.0 1.3e+05 4.0e+00 1.6e+03  5  0  1  0  2   5  0  1  0  2    -0
BuildTwoSidedF      1464 1.0 1.4348e+02 40.1 0.00e+00 0.0 1.6e+05 2.7e+05 1.5e+03  5  0  1  5  2   5  0  1  5  2    -0
SFSetGraph           142 1.0 8.4955e-03 863.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              133 1.0 5.4023e-01 6.8 0.00e+00 0.0 9.8e+04 1.0e+03 1.3e+02  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin        6307 1.0 4.5045e-01 89.3 0.00e+00 0.0 2.7e+06 3.4e+04 0.0e+00  0  0 11 11  0   0  0 11 11  0    -0
SFBcastEnd          6307 1.0 2.1500e+01 10902.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin       5903 1.0 5.0650e-01 54.2 0.00e+00 0.0 2.6e+06 3.3e+04 0.0e+00  0  0 11 10  0   0  0 11 10  0    -0
SFReduceEnd         5903 1.0 4.2369e+01 12335.3 1.79e+08 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0   250
SFFetchOpBegin         8 1.0 4.1381e-05 14.8 0.00e+00 0.0 3.4e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           8 1.0 3.2293e-04 85.8 0.00e+00 0.0 3.4e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          5 1.0 5.9014e-04 25.5 0.00e+00 0.0 1.6e+03 6.1e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         67 1.0 3.5999e-03 2.2 0.00e+00 0.0 8.7e+04 7.3e+01 7.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           70 1.0 3.8369e-03 2.1 0.00e+00 0.0 4.0e+04 3.2e+01 7.0e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            3 1.0 1.2283e-04 4.5 0.00e+00 0.0 1.6e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             54738 1.0 3.2779e+00 779.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           54746 1.0 4.7910e-01 114.6 1.79e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 22074
VecDot                91 1.0 2.6666e+00 132.2 4.36e+07 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0  1227
VecMDot            32253 1.0 3.0220e+02 44.5 1.30e+10 0.0 0.0e+00 0.0e+00 3.2e+04  6  2  0  0 46   6  2  0  0 46  3218
VecNorm            34525 1.0 2.4124e+02 105.0 1.81e+09 0.0 0.0e+00 0.0e+00 3.5e+04  4  0  0  0 50   4  0  0  0 50   562
VecScale           34313 1.0 2.1413e-01 33.0 8.54e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 298956
VecCopy            33778 1.0 4.0122e+00 253.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              9223 1.0 1.1111e+00 236.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             7148 1.0 1.4558e+00 358.7 1.18e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 60807
VecAYPX            20352 1.0 4.7690e+00 801.6 3.20e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 50330
VecWAXPY              91 1.0 8.6883e-02 1130.4 2.18e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 18823
VecMAXPY           34313 1.0 1.0593e+01 1228.6 1.46e+10 0.0 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 103101
VecReciprocal          3 1.0 1.5280e-04 74.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin    42520 1.0 3.1802e+00 103.3 0.00e+00 0.0 1.8e+07 3.3e+04 0.0e+00  0  0 77 73  0   0  0 77 73  0    -0
VecScatterEnd      42520 1.0 1.3924e+02 8561.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  7  0  0  0  0   7  0  0  0  0    -0
VecReduceArith       182 1.0 3.5614e-02 862.0 8.72e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 183676
VecReduceComm         91 1.0 7.9567e-01 377.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       32526 1.0 1.9896e+02 147.0 1.28e+09 0.0 0.0e+00 0.0e+00 3.3e+04  3  0  0  0 47   3  0  0  0 47   481
MatMult            42793 1.0 2.7199e+02 295.7 2.09e+11 0.0 1.9e+07 3.3e+04 6.0e+00 27 29 78 74  0  27 29 78 74  0 57150
MatMultAdd          5088 1.0 6.2090e+01 7.0 1.07e+09 0.0 2.2e+06 3.2e+04 6.0e+00  6  0  9  8  0   6  0  9  8  0  1289
MatMultTranspose    5091 1.0 7.6099e+01 5.7 1.58e+08 0.0 2.2e+06 3.2e+04 1.5e+01  8  0  9  8  0   8  0  9  8  0   124
MatSolve           42702 0.0 1.7288e+02 0.0 1.51e+11 0.0 0.0e+00 0.0e+00 0.0e+00 15 21  0  0  0  15 21  0  0  0 64716
MatLUFactorNum       364 1.0 1.5953e+01 9452.2 3.63e+10 0.0 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 162337
MatILUFactorSym        4 1.0 1.6411e-01 2350.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatResidual         5088 1.0 8.9068e+01 2612.2 5.96e+10 0.0 2.2e+06 6.4e+04 0.0e+00  8  8  9 17  0   8  8  9 17  0 49892
MatAssemblyBegin    1536 1.0 1.4349e+02 23.7 0.00e+00 0.0 1.6e+05 2.7e+05 1.5e+03  5  0  1  5  2   5  0  1  5  2    -0
MatAssemblyEnd      1536 1.0 5.2409e+00 5.6 6.94e+07 0.0 3.5e+03 1.3e+04 2.4e+01  0  0  0  0  0   0  0  0  0  0   487
MatGetRowIJ            4 0.0 6.2130e-06 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         4 0.0 3.9684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       364 1.0 4.1986e+00 11513.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO       48 1.0 8.4691e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       48 1.0 3.3194e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 1.7344e+02 1.0 1.58e+11 0.0 1.9e+06 6.3e+04 7.0e+03 21 21  8 14 10  21 21  8 14 10 65458
PCSetUpOnBlocks    11872 1.0 1.4315e-01 4.4 1.81e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 80369
PCApply             1696 1.0 3.7821e+02 1.9 2.57e+11 0.0 2.1e+07 2.8e+04 5.7e+04 43 36 87 70 83  43 36 87 70 83 50376
PCApplyOnBlocks    42702 1.0 1.7307e+02 2672.6 1.51e+11 0.0 0.0e+00 0.0e+00 0.0e+00 15 21  0  0  0  15 21  0  0  0 64646
KSPSetUp              91 1.0 1.5994e-02 200.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 4.3358e+02 1.0 3.20e+11 0.0 2.2e+07 3.1e+04 6.1e+04 54 45 90 80 88  54 45 90 80 88 54833
KSPGMRESOrthog     32253 1.0 3.0224e+02 18.6 2.59e+10 0.0 0.0e+00 0.0e+00 3.2e+04  7  4  0  0 46   7  4  0  0 46  6436
DMCoarsen              3 1.0 5.2563e+00 1.0 1.75e+05 0.0 1.6e+04 1.3e+04 3.9e+01  1  0  0  0  0   1  0  0  0  0     2
DMRefine               3 1.0 4.4713e-02 1.0 7.20e+03 1.0 1.1e+04 3.1e+01 9.6e+01  0  0  0  0  0   0  0  0  0  0    17
DMCreateInterp         3 1.0 1.2151e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMCreateInject         3 1.0 4.9066e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         5 1.0 2.3390e-02 1.0 0.00e+00 0.0 2.3e+04 5.7e+01 6.4e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         5 1.0 9.8639e-03 1.0 0.00e+00 0.0 8.6e+04 6.7e+01 3.0e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 7.9578e-04 346.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       5 1.0 6.7651e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.5e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        5 1.0 3.9612e-03 1.1 0.00e+00 0.0 4.9e+03 4.2e+01 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       5 1.0 6.6734e-04 14.7 0.00e+00 0.0 2.5e+03 1.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          5 1.0 8.6032e-04 26.9 0.00e+00 0.0 2.6e+03 1.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          48 1.0 4.4594e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.3196e-02 1.0 0.00e+00 0.0 3.8e+03 6.0e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        5 1.0 1.6404e-03 1.3 0.00e+00 0.0 1.5e+04 9.9e+01 1.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       5 1.0 2.7720e-03 1.0 0.00e+00 0.0 4.2e+04 6.2e+01 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        4 1.0 1.1546e-02 1.0 0.00e+00 0.0 1.1e+05 6.7e+01 3.2e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        9 1.0 2.0878e-03 1.7 0.00e+00 0.0 2.0e+04 5.7e+01 2.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         4 1.0 2.7839e-04 1.3 0.00e+00 0.0 1.0e+04 4.7e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        64 1.0 3.0645e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      64 1.0 1.2981e-04 6.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 5.0515e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          3 1.0 2.1870e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          3 1.0 3.1180e-03 1.2 0.00e+00 0.0 6.2e+03 2.6e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          3 1.0 1.2050e-04 36.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          3 1.0 6.8791e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             3 1.0 5.0945e-04 3.2 0.00e+00 0.0 4.7e+03 2.4e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         3 1.0 7.0087e-05 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         3 1.0 1.1849e-03 2.0 0.00e+00 0.0 1.6e+03 3.2e+01 1.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.7989e+02 1.0 7.28e+11 0.0 2.4e+07 3.5e+04 6.9e+04 97 100 99 100 99  97 100 99 100 99 67946
SNESSetUp              1 1.0 3.3795e-05 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 5.1493e+01 3.0 1.01e+11 0.0 1.2e+05 1.1e+05 1.0e+00  6 14  0  2  0   6 14  0  2  0 140787
SNESJacobianEval      91 1.0 1.1820e+02 1.0 1.46e+11 0.0 7.9e+04 3.4e+05 3.6e+02 15 20  0  3  1  15 20  0  3  1 88105
SNESLineSearch        91 1.0 2.9996e+01 1.0 7.89e+10 0.0 1.2e+05 1.1e+05 3.6e+02  4 11  0  2  1   4 11  0  2  1 188372
DualSpaceSetUp        12 1.0 7.8632e-03 1.1 2.16e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     3
FESetUp               12 1.0 1.2379e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 8.0397e+02 1.0 7.28e+11 101079357.5 2.4e+07 3.4e+04 6.9e+04 100 100 100 100 100 100 100 100 100 100 65912
firedrake.__init__       1 1.0 1.1176e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.2697e+00 82.1 0.00e+00 0.0 7.3e+04 1.9e+01 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             4 1.0 8.1881e-02 1.0 0.00e+00 0.0 2.3e+05 6.7e+01 5.7e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       4 1.0 1.3247e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       4 1.0 8.6490e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.0055e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.6e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          4 1.0 1.8513e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      13 1.0 3.3572e-02 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      17 1.0 1.2818e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      28 1.0 3.6253e-02 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      24 1.0 3.3340e-02 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      24 1.0 3.3205e-02 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      48 1.0 9.1749e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       8 1.0 9.8359e-03 1.0 0.00e+00 0.0 1.5e+04 5.8e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      16 1.0 9.4877e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      30 1.0 2.8883e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      59 1.0 1.6717e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          4 1.0 9.5037e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       4 1.0 2.5827e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 8.6324e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       8 1.0 2.2362e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       4 1.0 9.4200e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map    1756 1.0 1.7348e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute     13248 1.0 3.2551e+02 5.2 2.99e+11 0.0 2.6e+06 3.4e+04 3.0e+01 32 40 11 11  0  32 40 11 11  0 64702
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       8 1.0 8.9213e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   26496 1.0 6.3910e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  7  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      21 1.0 4.3143e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      21 0.0 4.0996e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      21 0.0 3.0253e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.0222e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      21 1.0 2.0221e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      21 1.0 1.4380e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      21 1.0 1.4214e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin   13248 1.0 1.7832e-01 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd     13248 1.0 3.8786e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       4 1.0 1.1260e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.3703e-01 1.0 3.59e+06 0.0 2.2e+03 1.6e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   288
firedrake.interpolation.interpolate       4 1.0 1.1586e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       4 1.0 2.1182e+00 1.0 1.30e+07 0.0 2.2e+03 1.6e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0   461
firedrake.formmanipulation.split_form       7 1.0 2.2905e-01 91.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       7 1.0 1.1580e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       5 1.0 7.5217e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 2.0 4.6842e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    5940 1.0 1.0032e+00 3.2 0.00e+00 0.0 2.6e+06 3.6e+04 5.0e+00  0  0 11 11  0   0  0 11 11  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 1.8159e+00 1.0 1.30e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   538
firedrake.halo.Halo.global_to_local_end    5940 1.0 2.1084e+01 1188.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     731 1.0 3.3683e-01 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.5889e-01 8.4 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       4 1.0 2.0950e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.8611e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       7 1.0 6.7012e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       4 1.0 5.2338e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       5 1.0 1.1211e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       4 1.0 5.0041e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 1.0385e+01 1.0 0.00e+00 0.0 2.8e+03 5.6e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       4 1.0 6.6946e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       7 1.0 4.0239e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       6 1.0 1.8414e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       6 1.0 1.8414e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         4 1.0 5.1001e+00 1.3 0.00e+00 0.0 6.5e+03 2.2e+05 3.2e+01  1  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         4 1.0 6.9895e-01 12409.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.7994e+02 1.0 7.28e+11 0.0 2.4e+07 3.5e+04 6.9e+04 97 100 99 100 99  97 100 99 100 99 67942
firedrake.mesh.AbstractMeshTopology.measure_set      25 1.0 1.9984e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset      20 1.0 3.1403e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set      20 1.0 7.1580e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.9454e+00 4.4 2.24e+10 0.0 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 168849
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0082e+00 1.0 7.70e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2877
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9410e+00 1.0 7.70e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2977
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.1761e+01 4.3 2.29e+10 0.0 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 146350
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 2.0886e+01 6.6 5.59e+10 0.0 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 183702
firedrake.halo.Halo.local_to_global_begin    5848 1.0 6.8764e-01 4.9 0.00e+00 0.0 2.5e+06 3.3e+04 3.0e+00  0  0 11 10  0   0  0 11 10  0    -0
firedrake.halo.Halo.local_to_global_end    5848 1.0 4.2405e+01 1265.3 1.79e+08 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0   249
Parloop_Cells_wrap_form00_cell_integral     728 1.0 2.8375e+01 4.1 4.08e+10 0.0 0.0e+00 0.0e+00 0.0e+00  3  6  0  0  0   3  6  0  0  0 107711
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     728 1.0 4.9215e+00 1.0 9.35e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1424
Parloop_Cells_wrap_form00_exterior_facet_top_integral     728 1.0 4.4629e+00 1.0 9.35e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1571
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     728 1.0 5.0152e+01 5.2 4.28e+10 0.0 0.0e+00 0.0e+00 0.0e+00  5  6  0  0  0   5  6  0  0  0 64062
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     728 1.0 7.4229e+01 7.0 1.13e+11 0.0 0.0e+00 0.0e+00 0.0e+00  6 14  0  0  0   6 14  0  0  0 101290
firedrake.dmhooks.coarsen       3 1.0 5.2555e+00 1.0 1.75e+05 0.0 1.6e+04 1.3e+04 3.9e+01  1  0  0  0  0   1  0  0  0  0     2
firedrake.dmhooks.get_function_space       3 1.0 2.2184e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.embedded.TransferManager.op    6189 1.0 7.1231e+01 4.5 1.85e+07 0.0 2.7e+06 3.3e+04 2.7e+01  7  0 11 11  0   7  0 11 11  0    15
firedrake.mg.interface.inject     726 1.0 1.0250e+01 1.5 1.85e+07 0.0 5.1e+05 4.1e+04 6.0e+00  1  0  2  3  0   1  0  2  3  0   107
firedrake.ufl_expr.TrialFunction       1 1.0 1.4166e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.slate.slac.compiler.compile_expression       1 1.0 6.7331e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_pyop2_kernel_injection_dg    1272 1.0 8.5660e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
Log_Event_slate_wrapper 2083536 0.0 2.9162e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Log_Event_inits_slate_wrapper 2083536 0.0 1.1563e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_memcpy     2083536 0.0 1.2242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_getrf      2083536 0.0 1.0809e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_getrs      2083536 0.0 7.0666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.restrict    5091 1.0 7.4832e+01 5.9 1.58e+08 0.0 2.2e+06 3.2e+04 9.0e+00  7  0  9  8  0   7  0  9  8  0   126
firedrake.cofunction.Cofunction.assign    5091 1.0 7.8877e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       2 1.0 3.2844e+00 23.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146686678ed0_wrap_pyop2_kernel_restrict    3394 0.0 3.7188e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146675267e90_wrap_pyop2_kernel_restrict    3394 0.0 8.7733e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146683ab4bd0_wrap_pyop2_kernel_restrict    3394 0.0 2.2844e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong    5088 1.0 6.0064e+01 7.2 0.00e+00 0.0 2.2e+06 3.2e+04 0.0e+00  6  0  9  8  0   6  0  9  8  0    -0
Parloop_set_#x146683ab4bd0_wrap_pyop2_kernel_prolong    3392 0.0 3.7358e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146675267e90_wrap_pyop2_kernel_prolong    3392 0.0 8.9954e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146686678ed0_wrap_pyop2_kernel_prolong    3392 0.0 3.5712e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a462e7d10_wrap_pyop2_kernel_restrict    3394 0.0 2.4839e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a3b02f090_wrap_pyop2_kernel_restrict    3394 0.0 5.9235e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a383c9290_wrap_pyop2_kernel_restrict    3394 0.0 1.6080e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a383c9290_wrap_pyop2_kernel_prolong    3392 0.0 2.8931e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a3b02f090_wrap_pyop2_kernel_prolong    3392 0.0 6.0023e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a462e7d10_wrap_pyop2_kernel_prolong    3392 0.0 2.3535e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c448dfa10_wrap_pyop2_kernel_restrict    3394 0.0 2.6134e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c39d12810_wrap_pyop2_kernel_restrict    3394 0.0 5.8555e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c2f535110_wrap_pyop2_kernel_restrict    3394 0.0 1.5611e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c2f535110_wrap_pyop2_kernel_prolong    3392 0.0 2.8834e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c39d12810_wrap_pyop2_kernel_prolong    3392 0.0 5.9994e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c448dfa10_wrap_pyop2_kernel_prolong    3392 0.0 2.3442e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efb87d7090_wrap_pyop2_kernel_restrict    3394 0.0 3.6797e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef9fd59690_wrap_pyop2_kernel_restrict    3394 0.0 8.7184e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef9b727e10_wrap_pyop2_kernel_restrict    3394 0.0 2.2660e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef9b727e10_wrap_pyop2_kernel_prolong    3392 0.0 3.4474e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef9fd59690_wrap_pyop2_kernel_prolong    3392 0.0 8.9424e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efb87d7090_wrap_pyop2_kernel_prolong    3392 0.0 3.5144e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed3435edd0_wrap_pyop2_kernel_restrict    3394 0.0 3.6878e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed2a731890_wrap_pyop2_kernel_restrict    3394 0.0 8.7292e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed1ddbc750_wrap_pyop2_kernel_restrict    3394 0.0 2.2743e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed1ddbc750_wrap_pyop2_kernel_prolong    3392 0.0 3.4372e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed2a731890_wrap_pyop2_kernel_prolong    3392 0.0 8.9344e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed3435edd0_wrap_pyop2_kernel_prolong    3392 0.0 3.5117e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14750255a810_wrap_pyop2_kernel_restrict    3394 0.0 3.6879e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474f70c3990_wrap_pyop2_kernel_restrict    3394 0.0 8.7259e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474f5461110_wrap_pyop2_kernel_restrict    3394 0.0 2.2779e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474f5461110_wrap_pyop2_kernel_prolong    3392 0.0 3.4493e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474f70c3990_wrap_pyop2_kernel_prolong    3392 0.0 8.9781e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14750255a810_wrap_pyop2_kernel_prolong    3392 0.0 3.5200e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15366cb47790_wrap_pyop2_kernel_restrict    3394 0.0 3.5653e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153654a90910_wrap_pyop2_kernel_restrict    3394 0.0 8.7342e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153654d3be50_wrap_pyop2_kernel_restrict    3394 0.0 2.2686e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153654d3be50_wrap_pyop2_kernel_prolong    3392 0.0 3.7303e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153654a90910_wrap_pyop2_kernel_prolong    3392 0.0 8.9546e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15366cb47790_wrap_pyop2_kernel_prolong    3392 0.0 3.5265e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d0108b650_wrap_pyop2_kernel_restrict    3394 0.0 3.5143e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cf35c1990_wrap_pyop2_kernel_restrict    3394 0.0 8.7378e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ce9884b10_wrap_pyop2_kernel_restrict    3394 0.0 2.2744e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ce9884b10_wrap_pyop2_kernel_prolong    3392 0.0 3.6285e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cf35c1990_wrap_pyop2_kernel_prolong    3392 0.0 8.9526e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d0108b650_wrap_pyop2_kernel_prolong    3392 0.0 3.5247e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdce810b90_wrap_pyop2_kernel_restrict    3394 0.0 2.5222e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdc16252d0_wrap_pyop2_kernel_restrict    3394 0.0 5.8924e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdc1630290_wrap_pyop2_kernel_restrict    3394 0.0 1.5663e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdc1630290_wrap_pyop2_kernel_prolong    3392 0.0 2.7234e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdc16252d0_wrap_pyop2_kernel_prolong    3392 0.0 6.0408e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdce810b90_wrap_pyop2_kernel_prolong    3392 0.0 2.3456e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455e868b650_wrap_pyop2_kernel_restrict    3394 0.0 2.6107e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455dee7cc90_wrap_pyop2_kernel_restrict    3394 0.0 5.8756e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455d5346e90_wrap_pyop2_kernel_restrict    3394 0.0 1.5610e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455d5346e90_wrap_pyop2_kernel_prolong    3392 0.0 2.8920e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455dee7cc90_wrap_pyop2_kernel_prolong    3392 0.0 6.0298e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455e868b650_wrap_pyop2_kernel_prolong    3392 0.0 2.3455e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458d0fa3190_wrap_pyop2_kernel_restrict    3394 0.0 3.5693e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458ce1d2a10_wrap_pyop2_kernel_restrict    3394 0.0 8.7312e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458cd0fa010_wrap_pyop2_kernel_restrict    3394 0.0 2.2838e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458cd0fa010_wrap_pyop2_kernel_prolong    3392 0.0 3.6325e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458ce1d2a10_wrap_pyop2_kernel_prolong    3392 0.0 8.9784e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458d0fa3190_wrap_pyop2_kernel_prolong    3392 0.0 3.5161e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f2952e510_wrap_pyop2_kernel_restrict    3394 0.0 4.3317e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f1eee1ad0_wrap_pyop2_kernel_restrict    3394 0.0 1.1763e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f1bb74190_wrap_pyop2_kernel_restrict    3394 0.0 1.1781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f1bb74190_wrap_pyop2_kernel_prolong    3392 0.0 2.3425e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f1eee1ad0_wrap_pyop2_kernel_prolong    3392 0.0 7.7530e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f2952e510_wrap_pyop2_kernel_prolong    3392 0.0 7.4502e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e79957790_wrap_pyop2_kernel_restrict    3394 0.0 2.6138e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e68271490_wrap_pyop2_kernel_restrict    3394 0.0 5.8922e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e66f8f710_wrap_pyop2_kernel_restrict    3394 0.0 1.5758e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e66f8f710_wrap_pyop2_kernel_prolong    3392 0.0 2.9008e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e68271490_wrap_pyop2_kernel_prolong    3392 0.0 6.0311e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e79957790_wrap_pyop2_kernel_prolong    3392 0.0 2.3507e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6cc377610_wrap_pyop2_kernel_restrict    3394 0.0 2.4258e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6becacd50_wrap_pyop2_kernel_restrict    3394 0.0 5.8471e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6bedbbe10_wrap_pyop2_kernel_restrict    3394 0.0 1.5546e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6bedbbe10_wrap_pyop2_kernel_prolong    3392 0.0 2.8822e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6becacd50_wrap_pyop2_kernel_prolong    3392 0.0 5.9901e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6cc377610_wrap_pyop2_kernel_prolong    3392 0.0 2.3490e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e90c78eb10_wrap_pyop2_kernel_restrict    3394 0.0 3.5825e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8f37c9bd0_wrap_pyop2_kernel_restrict    3394 0.0 8.7212e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8f332ef10_wrap_pyop2_kernel_restrict    3394 0.0 2.2631e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8f332ef10_wrap_pyop2_kernel_prolong    3392 0.0 3.6164e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8f37c9bd0_wrap_pyop2_kernel_prolong    3392 0.0 8.9375e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e90c78eb10_wrap_pyop2_kernel_prolong    3392 0.0 3.5341e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e687595ed0_wrap_pyop2_kernel_restrict    3394 0.0 2.4263e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e67cccc3d0_wrap_pyop2_kernel_restrict    3394 0.0 5.8834e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e675ab27d0_wrap_pyop2_kernel_restrict    3394 0.0 1.6679e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e675ab27d0_wrap_pyop2_kernel_prolong    3392 0.0 2.6947e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e67cccc3d0_wrap_pyop2_kernel_prolong    3392 0.0 6.0004e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e687595ed0_wrap_pyop2_kernel_prolong    3392 0.0 2.3479e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b60da7f310_wrap_pyop2_kernel_restrict    3394 0.0 2.6087e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5ffc6f250_wrap_pyop2_kernel_restrict    3394 0.0 5.8539e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5f9264b50_wrap_pyop2_kernel_restrict    3394 0.0 1.5554e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5f9264b50_wrap_pyop2_kernel_prolong    3392 0.0 3.0978e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5ffc6f250_wrap_pyop2_kernel_prolong    3392 0.0 6.0215e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b60da7f310_wrap_pyop2_kernel_prolong    3392 0.0 2.3505e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15274c1e7110_wrap_pyop2_kernel_restrict    3394 0.0 2.5672e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527407eb990_wrap_pyop2_kernel_restrict    3394 0.0 5.8748e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527369d6850_wrap_pyop2_kernel_restrict    3394 0.0 1.5564e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527369d6850_wrap_pyop2_kernel_prolong    3392 0.0 2.8827e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527407eb990_wrap_pyop2_kernel_prolong    3392 0.0 6.0188e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15274c1e7110_wrap_pyop2_kernel_prolong    3392 0.0 2.3538e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492bd0939d0_wrap_pyop2_kernel_restrict    3394 0.0 2.6145e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492ab230290_wrap_pyop2_kernel_restrict    3394 0.0 5.9166e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492ab00d050_wrap_pyop2_kernel_restrict    3394 0.0 1.5744e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492ab00d050_wrap_pyop2_kernel_prolong    3392 0.0 2.9010e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492ab230290_wrap_pyop2_kernel_prolong    3392 0.0 6.0469e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492bd0939d0_wrap_pyop2_kernel_prolong    3392 0.0 2.3552e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c32ddcfa90_wrap_pyop2_kernel_restrict    3394 0.0 2.6137e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c319f33810_wrap_pyop2_kernel_restrict    3394 0.0 5.8791e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c319a37bd0_wrap_pyop2_kernel_restrict    3394 0.0 1.5539e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c319a37bd0_wrap_pyop2_kernel_prolong    3392 0.0 2.9236e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c319f33810_wrap_pyop2_kernel_prolong    3392 0.0 7.6799e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c32ddcfa90_wrap_pyop2_kernel_prolong    3392 0.0 2.3498e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15033267fb50_wrap_pyop2_kernel_restrict    3394 0.0 2.5029e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15032e47cc90_wrap_pyop2_kernel_restrict    3394 0.0 5.8898e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15032e6604d0_wrap_pyop2_kernel_restrict    3394 0.0 1.5629e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15032e6604d0_wrap_pyop2_kernel_prolong    3392 0.0 2.9997e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15032e47cc90_wrap_pyop2_kernel_prolong    3392 0.0 6.0286e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15033267fb50_wrap_pyop2_kernel_prolong    3392 0.0 2.3520e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0962d7390_wrap_pyop2_kernel_restrict    3394 0.0 2.6176e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c08abe5690_wrap_pyop2_kernel_restrict    3394 0.0 5.8912e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0898c6a10_wrap_pyop2_kernel_restrict    3394 0.0 1.5629e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0898c6a10_wrap_pyop2_kernel_prolong    3392 0.0 3.3155e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c08abe5690_wrap_pyop2_kernel_prolong    3392 0.0 6.8184e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0962d7390_wrap_pyop2_kernel_prolong    3392 0.0 2.3511e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15143c1cf690_wrap_pyop2_kernel_restrict    3394 0.0 2.4126e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151431103590_wrap_pyop2_kernel_restrict    3394 0.0 5.8859e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15143121a3d0_wrap_pyop2_kernel_restrict    3394 0.0 1.5622e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15143121a3d0_wrap_pyop2_kernel_prolong    3392 0.0 2.7055e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151431103590_wrap_pyop2_kernel_prolong    3392 0.0 6.0071e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15143c1cf690_wrap_pyop2_kernel_prolong    3392 0.0 2.3468e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7cf07f090_wrap_pyop2_kernel_restrict    3394 0.0 2.5022e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7a5be1550_wrap_pyop2_kernel_restrict    3394 0.0 5.8898e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b79f2d0cd0_wrap_pyop2_kernel_restrict    3394 0.0 1.5578e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b79f2d0cd0_wrap_pyop2_kernel_prolong    3392 0.0 2.7268e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7a5be1550_wrap_pyop2_kernel_prolong    3392 0.0 6.0326e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7cf07f090_wrap_pyop2_kernel_prolong    3392 0.0 2.3492e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147be01a7650_wrap_pyop2_kernel_restrict    3394 0.0 2.5025e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bcde45d50_wrap_pyop2_kernel_restrict    3394 0.0 5.8951e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bcdb89b90_wrap_pyop2_kernel_restrict    3394 0.0 1.5478e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bcdb89b90_wrap_pyop2_kernel_prolong    3392 0.0 2.8876e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bcde45d50_wrap_pyop2_kernel_prolong    3392 0.0 6.0456e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147be01a7650_wrap_pyop2_kernel_prolong    3392 0.0 2.3582e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15454cb4b350_wrap_pyop2_kernel_restrict    3394 0.0 2.3837e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15453ae9b3d0_wrap_pyop2_kernel_restrict    3394 0.0 5.9008e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15453906b750_wrap_pyop2_kernel_restrict    3394 0.0 1.5638e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15453906b750_wrap_pyop2_kernel_prolong    3392 0.0 2.9042e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15453ae9b3d0_wrap_pyop2_kernel_prolong    3392 0.0 6.0342e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15454cb4b350_wrap_pyop2_kernel_prolong    3392 0.0 2.3519e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463413c3c50_wrap_pyop2_kernel_restrict    3394 0.0 3.5152e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14633351a710_wrap_pyop2_kernel_restrict    3394 0.0 8.7566e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14633e415c10_wrap_pyop2_kernel_restrict    3394 0.0 2.2905e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14633e415c10_wrap_pyop2_kernel_prolong    3392 0.0 3.6163e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14633351a710_wrap_pyop2_kernel_prolong    3392 0.0 8.9548e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463413c3c50_wrap_pyop2_kernel_prolong    3392 0.0 3.5298e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15283173be10_wrap_pyop2_kernel_restrict    3394 0.0 2.6097e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152826607510_wrap_pyop2_kernel_restrict    3394 0.0 5.8679e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15282d16a2d0_wrap_pyop2_kernel_restrict    3394 0.0 1.5650e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15282d16a2d0_wrap_pyop2_kernel_prolong    3392 0.0 2.7011e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152826607510_wrap_pyop2_kernel_prolong    3392 0.0 6.0038e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15283173be10_wrap_pyop2_kernel_prolong    3392 0.0 2.3523e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498ba81bdd0_wrap_pyop2_kernel_restrict    3394 0.0 2.6107e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498b416c090_wrap_pyop2_kernel_restrict    3394 0.0 5.8791e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498aa741550_wrap_pyop2_kernel_restrict    3394 0.0 1.5580e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498aa741550_wrap_pyop2_kernel_prolong    3392 0.0 3.4101e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498b416c090_wrap_pyop2_kernel_prolong    3392 0.0 6.0044e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498ba81bdd0_wrap_pyop2_kernel_prolong    3392 0.0 2.3452e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a60dc3690_wrap_pyop2_kernel_restrict    3394 0.0 3.5691e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a54ee39d0_wrap_pyop2_kernel_restrict    3394 0.0 8.7367e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a47e85150_wrap_pyop2_kernel_restrict    3394 0.0 2.2698e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a47e85150_wrap_pyop2_kernel_prolong    3392 0.0 3.7285e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a54ee39d0_wrap_pyop2_kernel_prolong    3392 0.0 8.9560e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a60dc3690_wrap_pyop2_kernel_prolong    3392 0.0 3.5345e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab0f55fad0_wrap_pyop2_kernel_restrict    3394 0.0 2.4215e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab06401290_wrap_pyop2_kernel_restrict    3394 0.0 5.8902e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab06454210_wrap_pyop2_kernel_restrict    3394 0.0 1.5613e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab06454210_wrap_pyop2_kernel_prolong    3392 0.0 3.0045e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab06401290_wrap_pyop2_kernel_prolong    3392 0.0 6.0231e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab0f55fad0_wrap_pyop2_kernel_prolong    3392 0.0 2.3973e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b1d0f2f50_wrap_pyop2_kernel_restrict    3394 0.0 3.6928e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b0e40c850_wrap_pyop2_kernel_restrict    3394 0.0 8.7452e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b0e75b1d0_wrap_pyop2_kernel_restrict    3394 0.0 2.2647e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b0e75b1d0_wrap_pyop2_kernel_prolong    3392 0.0 3.7227e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b0e40c850_wrap_pyop2_kernel_prolong    3392 0.0 8.9391e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b1d0f2f50_wrap_pyop2_kernel_prolong    3392 0.0 3.5285e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152902e104d0_wrap_pyop2_kernel_restrict    3394 0.0 2.5099e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528fa2ff390_wrap_pyop2_kernel_restrict    3394 0.0 5.8683e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528f1ca7110_wrap_pyop2_kernel_restrict    3394 0.0 1.5546e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528f1ca7110_wrap_pyop2_kernel_prolong    3392 0.0 2.8908e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528fa2ff390_wrap_pyop2_kernel_prolong    3392 0.0 6.0148e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152902e104d0_wrap_pyop2_kernel_prolong    3392 0.0 2.3481e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5f5c73690_wrap_pyop2_kernel_restrict    3394 0.0 2.6174e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5e2019bd0_wrap_pyop2_kernel_restrict    3394 0.0 5.8938e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5e8c6f9d0_wrap_pyop2_kernel_restrict    3394 0.0 1.5808e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5e8c6f9d0_wrap_pyop2_kernel_prolong    3392 0.0 3.7080e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5e2019bd0_wrap_pyop2_kernel_prolong    3392 0.0 6.0366e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5f5c73690_wrap_pyop2_kernel_prolong    3392 0.0 2.3570e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14621da77390_wrap_pyop2_kernel_restrict    3394 0.0 2.5213e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146211a1c890_wrap_pyop2_kernel_restrict    3394 0.0 5.9107e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14620b1060d0_wrap_pyop2_kernel_restrict    3394 0.0 1.5960e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14620b1060d0_wrap_pyop2_kernel_prolong    3392 0.0 3.7078e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146211a1c890_wrap_pyop2_kernel_prolong    3392 0.0 6.0347e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14621da77390_wrap_pyop2_kernel_prolong    3392 0.0 2.3477e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26aee0350_wrap_pyop2_kernel_restrict    3394 0.0 2.5866e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2698e3d50_wrap_pyop2_kernel_restrict    3394 0.0 5.9041e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f267882c10_wrap_pyop2_kernel_restrict    3394 0.0 1.5919e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f267882c10_wrap_pyop2_kernel_prolong    3392 0.0 2.8815e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2698e3d50_wrap_pyop2_kernel_prolong    3392 0.0 6.0174e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26aee0350_wrap_pyop2_kernel_prolong    3392 0.0 2.3526e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483201e8490_wrap_pyop2_kernel_restrict    3394 0.0 2.6098e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14830e8839d0_wrap_pyop2_kernel_restrict    3394 0.0 5.9181e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14830e7fbf50_wrap_pyop2_kernel_restrict    3394 0.0 1.5748e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14830e7fbf50_wrap_pyop2_kernel_prolong    3392 0.0 2.8838e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14830e8839d0_wrap_pyop2_kernel_prolong    3392 0.0 6.0378e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483201e8490_wrap_pyop2_kernel_prolong    3392 0.0 2.3453e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504d387fa10_wrap_pyop2_kernel_restrict    3394 0.0 2.4590e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504c2cc3010_wrap_pyop2_kernel_restrict    3394 0.0 5.9180e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504c2f89bd0_wrap_pyop2_kernel_restrict    3394 0.0 1.5592e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504c2f89bd0_wrap_pyop2_kernel_prolong    3392 0.0 2.6950e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504c2cc3010_wrap_pyop2_kernel_prolong    3392 0.0 6.0109e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504d387fa10_wrap_pyop2_kernel_prolong    3392 0.0 2.3536e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524bdc6f650_wrap_pyop2_kernel_restrict    3394 0.0 2.4735e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524bd11d090_wrap_pyop2_kernel_restrict    3394 0.0 5.9274e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524b483d290_wrap_pyop2_kernel_restrict    3394 0.0 1.6010e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524b483d290_wrap_pyop2_kernel_prolong    3392 0.0 3.7107e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524bd11d090_wrap_pyop2_kernel_prolong    3392 0.0 6.0488e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524bdc6f650_wrap_pyop2_kernel_prolong    3392 0.0 2.3590e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b5eef210_wrap_pyop2_kernel_restrict    3394 0.0 3.5443e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8a8a48110_wrap_pyop2_kernel_restrict    3394 0.0 8.7601e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8a7c5a850_wrap_pyop2_kernel_restrict    3394 0.0 2.2916e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8a7c5a850_wrap_pyop2_kernel_prolong    3392 0.0 3.4553e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8a8a48110_wrap_pyop2_kernel_prolong    3392 0.0 8.9703e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b5eef210_wrap_pyop2_kernel_prolong    3392 0.0 3.5394e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ac7a0ba50_wrap_pyop2_kernel_restrict    3394 0.0 2.4668e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ac4501c10_wrap_pyop2_kernel_restrict    3394 0.0 5.8759e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148abcbd5810_wrap_pyop2_kernel_restrict    3394 0.0 1.5769e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148abcbd5810_wrap_pyop2_kernel_prolong    3392 0.0 2.6934e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ac4501c10_wrap_pyop2_kernel_prolong    3392 0.0 6.0098e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ac7a0ba50_wrap_pyop2_kernel_prolong    3392 0.0 2.3477e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15474039b090_wrap_pyop2_kernel_restrict    3394 0.0 2.5302e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15472d35ce10_wrap_pyop2_kernel_restrict    3394 0.0 5.9165e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154733db9810_wrap_pyop2_kernel_restrict    3394 0.0 1.5699e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154733db9810_wrap_pyop2_kernel_prolong    3392 0.0 2.7023e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15472d35ce10_wrap_pyop2_kernel_prolong    3392 0.0 6.0682e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15474039b090_wrap_pyop2_kernel_prolong    3392 0.0 2.3512e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487ec7a3b50_wrap_pyop2_kernel_restrict    3394 0.0 4.3090e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487e0845ed0_wrap_pyop2_kernel_restrict    3394 0.0 1.1263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487e03f83d0_wrap_pyop2_kernel_restrict    3394 0.0 1.2287e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487e03f83d0_wrap_pyop2_kernel_prolong    3392 0.0 3.4387e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487e0845ed0_wrap_pyop2_kernel_prolong    3392 0.0 7.5965e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487ec7a3b50_wrap_pyop2_kernel_prolong    3392 0.0 7.2842e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f7acd6e10_wrap_pyop2_kernel_restrict    3394 0.0 2.5990e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f65b71f10_wrap_pyop2_kernel_restrict    3394 0.0 5.9081e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f64cfd810_wrap_pyop2_kernel_restrict    3394 0.0 1.5666e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f64cfd810_wrap_pyop2_kernel_prolong    3392 0.0 2.7164e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f65b71f10_wrap_pyop2_kernel_prolong    3392 0.0 6.0249e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f7acd6e10_wrap_pyop2_kernel_prolong    3392 0.0 2.3466e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511772786d0_wrap_pyop2_kernel_restrict    3394 0.0 3.6625e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151167c2bd50_wrap_pyop2_kernel_restrict    3394 0.0 8.7989e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151168a38710_wrap_pyop2_kernel_restrict    3394 0.0 2.2698e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151168a38710_wrap_pyop2_kernel_prolong    3392 0.0 3.4321e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151167c2bd50_wrap_pyop2_kernel_prolong    3392 0.0 8.9260e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511772786d0_wrap_pyop2_kernel_prolong    3392 0.0 3.5173e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cb629ea50_wrap_pyop2_kernel_restrict    3394 0.0 4.3876e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152caa4dbc50_wrap_pyop2_kernel_restrict    3394 0.0 1.1305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ca9dc1ad0_wrap_pyop2_kernel_restrict    3394 0.0 1.2276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ca9dc1ad0_wrap_pyop2_kernel_prolong    3392 0.0 2.5398e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152caa4dbc50_wrap_pyop2_kernel_prolong    3392 0.0 7.8785e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cb629ea50_wrap_pyop2_kernel_prolong    3392 0.0 7.6150e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbde66aed0_wrap_pyop2_kernel_restrict    3394 0.0 2.4633e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbcaa761d0_wrap_pyop2_kernel_restrict    3394 0.0 5.8949e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbcaa97b10_wrap_pyop2_kernel_restrict    3394 0.0 1.5575e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbcaa97b10_wrap_pyop2_kernel_prolong    3392 0.0 2.7091e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbcaa761d0_wrap_pyop2_kernel_prolong    3392 0.0 6.0238e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbde66aed0_wrap_pyop2_kernel_prolong    3392 0.0 2.3494e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e24613e50_wrap_pyop2_kernel_restrict    3394 0.0 2.5795e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e1910d5d0_wrap_pyop2_kernel_restrict    3394 0.0 5.9003e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e12ceea10_wrap_pyop2_kernel_restrict    3394 0.0 1.5951e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e12ceea10_wrap_pyop2_kernel_prolong    3392 0.0 2.7021e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e1910d5d0_wrap_pyop2_kernel_prolong    3392 0.0 6.0122e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e24613e50_wrap_pyop2_kernel_prolong    3392 0.0 2.3437e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab8021b410_wrap_pyop2_kernel_restrict    3394 0.0 2.6114e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab74923a10_wrap_pyop2_kernel_restrict    3394 0.0 5.8962e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab74498090_wrap_pyop2_kernel_restrict    3394 0.0 1.5523e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab74498090_wrap_pyop2_kernel_prolong    3392 0.0 2.9231e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab74923a10_wrap_pyop2_kernel_prolong    3392 0.0 7.6945e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab8021b410_wrap_pyop2_kernel_prolong    3392 0.0 2.3490e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522ab68b790_wrap_pyop2_kernel_restrict    3394 0.0 4.3945e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a3769550_wrap_pyop2_kernel_restrict    3394 0.0 1.1245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a31b9f90_wrap_pyop2_kernel_restrict    3394 0.0 1.2245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a31b9f90_wrap_pyop2_kernel_prolong    3392 0.0 9.0321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a3769550_wrap_pyop2_kernel_prolong    3392 0.0 7.7260e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522ab68b790_wrap_pyop2_kernel_prolong    3392 0.0 7.7631e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c9c166d90_wrap_pyop2_kernel_restrict    3394 0.0 3.6596e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c8d95ca10_wrap_pyop2_kernel_restrict    3394 0.0 8.7654e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c8daf6210_wrap_pyop2_kernel_restrict    3394 0.0 2.2849e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c8daf6210_wrap_pyop2_kernel_prolong    3392 0.0 3.4472e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c8d95ca10_wrap_pyop2_kernel_prolong    3392 0.0 8.9513e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c9c166d90_wrap_pyop2_kernel_prolong    3392 0.0 3.5176e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15350d90b910_wrap_pyop2_kernel_restrict    3394 0.0 2.4857e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153500e92b10_wrap_pyop2_kernel_restrict    3394 0.0 5.8861e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534f933bad0_wrap_pyop2_kernel_restrict    3394 0.0 1.5570e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534f933bad0_wrap_pyop2_kernel_prolong    3392 0.0 2.8859e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153500e92b10_wrap_pyop2_kernel_prolong    3392 0.0 6.0072e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15350d90b910_wrap_pyop2_kernel_prolong    3392 0.0 2.3525e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a15da5b050_wrap_pyop2_kernel_restrict    3394 0.0 4.4096e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a151cc7dd0_wrap_pyop2_kernel_restrict    3394 0.0 1.0605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a15232d850_wrap_pyop2_kernel_restrict    3394 0.0 1.1033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a15232d850_wrap_pyop2_kernel_prolong    3392 0.0 1.2370e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a151cc7dd0_wrap_pyop2_kernel_prolong    3392 0.0 7.6437e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a15da5b050_wrap_pyop2_kernel_prolong    3392 0.0 7.3696e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d11c87590_wrap_pyop2_kernel_restrict    3394 0.0 2.5154e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d05274d50_wrap_pyop2_kernel_restrict    3394 0.0 5.7152e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cfdd51fd0_wrap_pyop2_kernel_restrict    3394 0.0 1.5525e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cfdd51fd0_wrap_pyop2_kernel_prolong    3392 0.0 2.6815e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d05274d50_wrap_pyop2_kernel_prolong    3392 0.0 5.9833e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d11c87590_wrap_pyop2_kernel_prolong    3392 0.0 2.2913e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5fb2ffa50_wrap_pyop2_kernel_restrict    3394 0.0 4.4426e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5f68292d0_wrap_pyop2_kernel_restrict    3394 0.0 8.6577e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5eb5b3050_wrap_pyop2_kernel_restrict    3394 0.0 2.2546e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5eb5b3050_wrap_pyop2_kernel_prolong    3392 0.0 3.8036e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5f68292d0_wrap_pyop2_kernel_prolong    3392 0.0 8.9122e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5fb2ffa50_wrap_pyop2_kernel_prolong    3392 0.0 3.4209e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a19058410_wrap_pyop2_kernel_restrict    3394 0.0 3.4354e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a17d8c0d0_wrap_pyop2_kernel_restrict    3394 0.0 8.5183e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a0a2e53d0_wrap_pyop2_kernel_restrict    3394 0.0 2.2725e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a0a2e53d0_wrap_pyop2_kernel_prolong    3392 0.0 3.4272e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a17d8c0d0_wrap_pyop2_kernel_prolong    3392 0.0 8.9443e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a19058410_wrap_pyop2_kernel_prolong    3392 0.0 3.4316e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e200ed2e10_wrap_pyop2_kernel_restrict    3394 0.0 3.5281e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1fcff5d50_wrap_pyop2_kernel_restrict    3394 0.0 8.6727e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1ee1dc990_wrap_pyop2_kernel_restrict    3394 0.0 2.2540e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1ee1dc990_wrap_pyop2_kernel_prolong    3392 0.0 3.5030e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1fcff5d50_wrap_pyop2_kernel_prolong    3392 0.0 8.9389e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e200ed2e10_wrap_pyop2_kernel_prolong    3392 0.0 3.4396e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a881c3a50_wrap_pyop2_kernel_restrict    3394 0.0 3.4857e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a7a63ed50_wrap_pyop2_kernel_restrict    3394 0.0 8.6411e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a6ffce4d0_wrap_pyop2_kernel_restrict    3394 0.0 2.2563e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a6ffce4d0_wrap_pyop2_kernel_prolong    3392 0.0 3.4171e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a7a63ed50_wrap_pyop2_kernel_prolong    3392 0.0 8.9678e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a881c3a50_wrap_pyop2_kernel_prolong    3392 0.0 3.4215e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15459a9976d0_wrap_pyop2_kernel_restrict    3394 0.0 2.4833e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15458c927d50_wrap_pyop2_kernel_restrict    3394 0.0 5.7084e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154584c20e90_wrap_pyop2_kernel_restrict    3394 0.0 1.5560e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154584c20e90_wrap_pyop2_kernel_prolong    3392 0.0 2.6915e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15458c927d50_wrap_pyop2_kernel_prolong    3392 0.0 6.0142e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15459a9976d0_wrap_pyop2_kernel_prolong    3392 0.0 2.2945e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f72dd87d90_wrap_pyop2_kernel_restrict    3394 0.0 3.5489e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f720ab3f50_wrap_pyop2_kernel_restrict    3394 0.0 8.5528e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7213c1d90_wrap_pyop2_kernel_restrict    3394 0.0 2.2881e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7213c1d90_wrap_pyop2_kernel_prolong    3392 0.0 3.4278e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f720ab3f50_wrap_pyop2_kernel_prolong    3392 0.0 8.9979e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f72dd87d90_wrap_pyop2_kernel_prolong    3392 0.0 3.4225e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14707e683850_wrap_pyop2_kernel_restrict    3394 0.0 2.5256e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147070442bd0_wrap_pyop2_kernel_restrict    3394 0.0 5.7299e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147076915990_wrap_pyop2_kernel_restrict    3394 0.0 1.5797e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147076915990_wrap_pyop2_kernel_prolong    3392 0.0 2.7233e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147070442bd0_wrap_pyop2_kernel_prolong    3392 0.0 6.0361e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14707e683850_wrap_pyop2_kernel_prolong    3392 0.0 2.2938e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a0086fad0_wrap_pyop2_kernel_restrict    3394 0.0 2.5177e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519f4aa0dd0_wrap_pyop2_kernel_restrict    3394 0.0 5.7205e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519ed26aa10_wrap_pyop2_kernel_restrict    3394 0.0 1.5614e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519ed26aa10_wrap_pyop2_kernel_prolong    3392 0.0 2.9997e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519f4aa0dd0_wrap_pyop2_kernel_prolong    3392 0.0 6.0394e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a0086fad0_wrap_pyop2_kernel_prolong    3392 0.0 2.2936e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b873433d0_wrap_pyop2_kernel_restrict    3394 0.0 3.5570e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b7f869510_wrap_pyop2_kernel_restrict    3394 0.0 8.5629e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b75312d90_wrap_pyop2_kernel_restrict    3394 0.0 2.2773e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b75312d90_wrap_pyop2_kernel_prolong    3392 0.0 3.4453e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b7f869510_wrap_pyop2_kernel_prolong    3392 0.0 8.9914e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b873433d0_wrap_pyop2_kernel_prolong    3392 0.0 3.4323e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a54102b90_wrap_pyop2_kernel_restrict    3394 0.0 2.5256e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a40a455d0_wrap_pyop2_kernel_restrict    3394 0.0 5.7093e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a4002d290_wrap_pyop2_kernel_restrict    3394 0.0 1.5670e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a4002d290_wrap_pyop2_kernel_prolong    3392 0.0 2.7032e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a40a455d0_wrap_pyop2_kernel_prolong    3392 0.0 6.0059e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a54102b90_wrap_pyop2_kernel_prolong    3392 0.0 2.2895e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545ae2a3fd0_wrap_pyop2_kernel_restrict    3394 0.0 2.5246e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545a7b7ced0_wrap_pyop2_kernel_restrict    3394 0.0 5.7302e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545a752acd0_wrap_pyop2_kernel_restrict    3394 0.0 1.5799e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545a752acd0_wrap_pyop2_kernel_prolong    3392 0.0 2.7035e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545a7b7ced0_wrap_pyop2_kernel_prolong    3392 0.0 6.0270e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545ae2a3fd0_wrap_pyop2_kernel_prolong    3392 0.0 2.2950e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471a018b490_wrap_pyop2_kernel_restrict    3394 0.0 3.4442e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147193233a10_wrap_pyop2_kernel_restrict    3394 0.0 8.5007e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147193156f50_wrap_pyop2_kernel_restrict    3394 0.0 2.2666e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147193156f50_wrap_pyop2_kernel_prolong    3392 0.0 3.4350e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147193233a10_wrap_pyop2_kernel_prolong    3392 0.0 8.9551e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471a018b490_wrap_pyop2_kernel_prolong    3392 0.0 3.4297e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517be5baf90_wrap_pyop2_kernel_restrict    3394 0.0 3.4970e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517b7674d90_wrap_pyop2_kernel_restrict    3394 0.0 8.5675e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517abcba190_wrap_pyop2_kernel_restrict    3394 0.0 2.2853e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517abcba190_wrap_pyop2_kernel_prolong    3392 0.0 4.2020e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517b7674d90_wrap_pyop2_kernel_prolong    3392 0.0 8.9905e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517be5baf90_wrap_pyop2_kernel_prolong    3392 0.0 3.4515e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f61a3af90_wrap_pyop2_kernel_restrict    3394 0.0 2.5310e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f56a85990_wrap_pyop2_kernel_restrict    3394 0.0 5.7322e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f4e53f9d0_wrap_pyop2_kernel_restrict    3394 0.0 1.5683e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f4e53f9d0_wrap_pyop2_kernel_prolong    3392 0.0 2.7083e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f56a85990_wrap_pyop2_kernel_prolong    3392 0.0 6.0428e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f61a3af90_wrap_pyop2_kernel_prolong    3392 0.0 2.2910e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd1279f050_wrap_pyop2_kernel_restrict    3394 0.0 4.3217e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd07598d50_wrap_pyop2_kernel_restrict    3394 0.0 1.0640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd07749650_wrap_pyop2_kernel_restrict    3394 0.0 1.1382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd07749650_wrap_pyop2_kernel_prolong    3392 0.0 1.5258e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd07598d50_wrap_pyop2_kernel_prolong    3392 0.0 7.5947e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd1279f050_wrap_pyop2_kernel_prolong    3392 0.0 7.4608e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0bd156c50_wrap_pyop2_kernel_restrict    3394 0.0 2.5066e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0b1a59610_wrap_pyop2_kernel_restrict    3394 0.0 5.7442e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0a9310d50_wrap_pyop2_kernel_restrict    3394 0.0 1.5606e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0a9310d50_wrap_pyop2_kernel_prolong    3392 0.0 2.6983e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0b1a59610_wrap_pyop2_kernel_prolong    3392 0.0 6.0219e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0bd156c50_wrap_pyop2_kernel_prolong    3392 0.0 2.2915e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5079f32d0_wrap_pyop2_kernel_restrict    3394 0.0 2.5194e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b504a6b510_wrap_pyop2_kernel_restrict    3394 0.0 5.7706e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b504551890_wrap_pyop2_kernel_restrict    3394 0.0 1.5656e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b504551890_wrap_pyop2_kernel_prolong    3392 0.0 2.7034e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b504a6b510_wrap_pyop2_kernel_prolong    3392 0.0 6.0305e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5079f32d0_wrap_pyop2_kernel_prolong    3392 0.0 2.2953e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6b0157410_wrap_pyop2_kernel_restrict    3394 0.0 2.5326e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f69cc79990_wrap_pyop2_kernel_restrict    3394 0.0 5.7348e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f69cfa0790_wrap_pyop2_kernel_restrict    3394 0.0 1.5723e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f69cfa0790_wrap_pyop2_kernel_prolong    3392 0.0 2.7050e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f69cc79990_wrap_pyop2_kernel_prolong    3392 0.0 6.0280e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6b0157410_wrap_pyop2_kernel_prolong    3392 0.0 2.2972e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151808293650_wrap_pyop2_kernel_restrict    3394 0.0 3.4925e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517f9f96d90_wrap_pyop2_kernel_restrict    3394 0.0 8.5315e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517fa300bd0_wrap_pyop2_kernel_restrict    3394 0.0 2.2619e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517fa300bd0_wrap_pyop2_kernel_prolong    3392 0.0 3.4350e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517f9f96d90_wrap_pyop2_kernel_prolong    3392 0.0 8.9300e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151808293650_wrap_pyop2_kernel_prolong    3392 0.0 3.4332e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d92fb8a9d0_wrap_pyop2_kernel_restrict    3394 0.0 2.4198e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9295fd6d0_wrap_pyop2_kernel_restrict    3394 0.0 5.7153e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d927945cd0_wrap_pyop2_kernel_restrict    3394 0.0 1.5593e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d927945cd0_wrap_pyop2_kernel_prolong    3392 0.0 2.7080e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9295fd6d0_wrap_pyop2_kernel_prolong    3392 0.0 6.0165e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d92fb8a9d0_wrap_pyop2_kernel_prolong    3392 0.0 2.3019e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d4c377750_wrap_pyop2_kernel_restrict    3394 0.0 2.5284e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d38434ed0_wrap_pyop2_kernel_restrict    3394 0.0 5.7288e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d3744e590_wrap_pyop2_kernel_restrict    3394 0.0 1.5574e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d3744e590_wrap_pyop2_kernel_prolong    3392 0.0 2.7247e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d38434ed0_wrap_pyop2_kernel_prolong    3392 0.0 6.0320e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d4c377750_wrap_pyop2_kernel_prolong    3392 0.0 2.2946e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c77b737d0_wrap_pyop2_kernel_restrict    3394 0.0 3.4477e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c6e7c1b50_wrap_pyop2_kernel_restrict    3394 0.0 8.5488e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c704d0b50_wrap_pyop2_kernel_restrict    3394 0.0 2.2755e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c704d0b50_wrap_pyop2_kernel_prolong    3392 0.0 3.4440e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c6e7c1b50_wrap_pyop2_kernel_prolong    3392 0.0 8.9775e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c77b737d0_wrap_pyop2_kernel_prolong    3392 0.0 3.4375e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538bbf9c1d0_wrap_pyop2_kernel_restrict    3394 0.0 3.5872e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b23e5090_wrap_pyop2_kernel_restrict    3394 0.0 8.5593e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b29dd650_wrap_pyop2_kernel_restrict    3394 0.0 2.2911e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b29dd650_wrap_pyop2_kernel_prolong    3392 0.0 3.4445e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b23e5090_wrap_pyop2_kernel_prolong    3392 0.0 9.0258e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538bbf9c1d0_wrap_pyop2_kernel_prolong    3392 0.0 3.4423e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523a821b310_wrap_pyop2_kernel_restrict    3394 0.0 2.5265e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152394f01010_wrap_pyop2_kernel_restrict    3394 0.0 5.7622e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523951dee10_wrap_pyop2_kernel_restrict    3394 0.0 1.5597e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523951dee10_wrap_pyop2_kernel_prolong    3392 0.0 2.7055e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152394f01010_wrap_pyop2_kernel_prolong    3392 0.0 6.0350e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523a821b310_wrap_pyop2_kernel_prolong    3392 0.0 2.2918e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7c1047c50_wrap_pyop2_kernel_restrict    3394 0.0 2.5224e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7b4104c90_wrap_pyop2_kernel_restrict    3394 0.0 5.7863e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7accf3a50_wrap_pyop2_kernel_restrict    3394 0.0 1.5632e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7accf3a50_wrap_pyop2_kernel_prolong    3392 0.0 2.7114e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7b4104c90_wrap_pyop2_kernel_prolong    3392 0.0 6.0296e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7c1047c50_wrap_pyop2_kernel_prolong    3392 0.0 2.2903e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad0b69fb50_wrap_pyop2_kernel_restrict    3394 0.0 3.5172e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad03d061d0_wrap_pyop2_kernel_restrict    3394 0.0 8.5980e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf7c6ee90_wrap_pyop2_kernel_restrict    3394 0.0 2.2710e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf7c6ee90_wrap_pyop2_kernel_prolong    3392 0.0 3.4370e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad03d061d0_wrap_pyop2_kernel_prolong    3392 0.0 8.9466e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad0b69fb50_wrap_pyop2_kernel_prolong    3392 0.0 3.4500e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce382c0bd0_wrap_pyop2_kernel_restrict    3394 0.0 3.3881e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce21c25650_wrap_pyop2_kernel_restrict    3394 0.0 8.6251e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce20af0d90_wrap_pyop2_kernel_restrict    3394 0.0 2.2746e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce20af0d90_wrap_pyop2_kernel_prolong    3392 0.0 3.4592e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce21c25650_wrap_pyop2_kernel_prolong    3392 0.0 8.9856e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce382c0bd0_wrap_pyop2_kernel_prolong    3392 0.0 3.4301e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de647fef10_wrap_pyop2_kernel_restrict    3394 0.0 2.5196e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de60675d50_wrap_pyop2_kernel_restrict    3394 0.0 5.7719e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de59435490_wrap_pyop2_kernel_restrict    3394 0.0 1.5563e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de59435490_wrap_pyop2_kernel_prolong    3392 0.0 2.7102e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de60675d50_wrap_pyop2_kernel_prolong    3392 0.0 6.0301e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de647fef10_wrap_pyop2_kernel_prolong    3392 0.0 2.2908e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa2135d710_wrap_pyop2_kernel_restrict    3394 0.0 2.4062e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0bf16a10_wrap_pyop2_kernel_restrict    3394 0.0 5.7682e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa12c20c10_wrap_pyop2_kernel_restrict    3394 0.0 1.5612e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa12c20c10_wrap_pyop2_kernel_prolong    3392 0.0 2.7057e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0bf16a10_wrap_pyop2_kernel_prolong    3392 0.0 6.0319e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa2135d710_wrap_pyop2_kernel_prolong    3392 0.0 2.3387e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d45d49a0d0_wrap_pyop2_kernel_restrict    3394 0.0 2.5133e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d453329a10_wrap_pyop2_kernel_restrict    3394 0.0 5.7716e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d45331c210_wrap_pyop2_kernel_restrict    3394 0.0 1.5824e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d45331c210_wrap_pyop2_kernel_prolong    3392 0.0 2.7218e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d453329a10_wrap_pyop2_kernel_prolong    3392 0.0 6.1668e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d45d49a0d0_wrap_pyop2_kernel_prolong    3392 0.0 2.2992e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15255022c050_wrap_pyop2_kernel_restrict    3394 0.0 2.5276e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152544e9f6d0_wrap_pyop2_kernel_restrict    3394 0.0 5.7593e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525434d9790_wrap_pyop2_kernel_restrict    3394 0.0 1.5564e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525434d9790_wrap_pyop2_kernel_prolong    3392 0.0 2.9890e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152544e9f6d0_wrap_pyop2_kernel_prolong    3392 0.0 6.0066e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15255022c050_wrap_pyop2_kernel_prolong    3392 0.0 2.2898e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15346a71fd50_wrap_pyop2_kernel_restrict    3394 0.0 2.5372e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15345b2c4250_wrap_pyop2_kernel_restrict    3394 0.0 5.7730e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15345a601350_wrap_pyop2_kernel_restrict    3394 0.0 1.5667e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15345a601350_wrap_pyop2_kernel_prolong    3392 0.0 2.7173e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15345b2c4250_wrap_pyop2_kernel_prolong    3392 0.0 6.0290e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15346a71fd50_wrap_pyop2_kernel_prolong    3392 0.0 2.2941e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f09c54b7d0_wrap_pyop2_kernel_restrict    3394 0.0 3.4729e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f099ee0390_wrap_pyop2_kernel_restrict    3394 0.0 8.6011e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f099e909d0_wrap_pyop2_kernel_restrict    3394 0.0 2.2722e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f099e909d0_wrap_pyop2_kernel_prolong    3392 0.0 3.4388e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f099ee0390_wrap_pyop2_kernel_prolong    3392 0.0 8.9923e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f09c54b7d0_wrap_pyop2_kernel_prolong    3392 0.0 3.4305e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d7c463f50_wrap_pyop2_kernel_restrict    3394 0.0 2.4105e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d72594250_wrap_pyop2_kernel_restrict    3394 0.0 5.7753e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d71abbd10_wrap_pyop2_kernel_restrict    3394 0.0 1.5647e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d71abbd10_wrap_pyop2_kernel_prolong    3392 0.0 3.0909e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d72594250_wrap_pyop2_kernel_prolong    3392 0.0 6.0159e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d7c463f50_wrap_pyop2_kernel_prolong    3392 0.0 2.2947e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467beffb850_wrap_pyop2_kernel_restrict    3394 0.0 2.5387e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467ad753b10_wrap_pyop2_kernel_restrict    3394 0.0 5.8174e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467adefc390_wrap_pyop2_kernel_restrict    3394 0.0 1.5568e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467adefc390_wrap_pyop2_kernel_prolong    3392 0.0 3.0964e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467ad753b10_wrap_pyop2_kernel_prolong    3392 0.0 6.0250e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467beffb850_wrap_pyop2_kernel_prolong    3392 0.0 2.2927e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ffc213390_wrap_pyop2_kernel_restrict    3394 0.0 2.5251e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fee537a50_wrap_pyop2_kernel_restrict    3394 0.0 5.7684e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fee49a890_wrap_pyop2_kernel_restrict    3394 0.0 1.5656e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fee49a890_wrap_pyop2_kernel_prolong    3392 0.0 2.7161e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fee537a50_wrap_pyop2_kernel_prolong    3392 0.0 6.0147e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ffc213390_wrap_pyop2_kernel_prolong    3392 0.0 2.2965e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546345e4510_wrap_pyop2_kernel_restrict    3394 0.0 3.5592e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154628a1ed50_wrap_pyop2_kernel_restrict    3394 0.0 8.6256e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154628599490_wrap_pyop2_kernel_restrict    3394 0.0 2.2928e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154628599490_wrap_pyop2_kernel_prolong    3392 0.0 3.4960e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154628a1ed50_wrap_pyop2_kernel_prolong    3392 0.0 9.0314e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546345e4510_wrap_pyop2_kernel_prolong    3392 0.0 3.4468e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be8f9c2e10_wrap_pyop2_kernel_restrict    3394 0.0 2.5246e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7d7c9910_wrap_pyop2_kernel_restrict    3394 0.0 5.8059e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7cb83190_wrap_pyop2_kernel_restrict    3394 0.0 1.5593e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7cb83190_wrap_pyop2_kernel_prolong    3392 0.0 2.6927e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7d7c9910_wrap_pyop2_kernel_prolong    3392 0.0 6.0157e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be8f9c2e10_wrap_pyop2_kernel_prolong    3392 0.0 2.2897e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fca03ab690_wrap_pyop2_kernel_restrict    3394 0.0 4.4006e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc95278ed0_wrap_pyop2_kernel_restrict    3394 0.0 1.0816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc95818cd0_wrap_pyop2_kernel_restrict    3394 0.0 1.1593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc95818cd0_wrap_pyop2_kernel_prolong    3392 0.0 2.9365e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc95278ed0_wrap_pyop2_kernel_prolong    3392 0.0 7.6419e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fca03ab690_wrap_pyop2_kernel_prolong    3392 0.0 7.4537e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf76b56d10_wrap_pyop2_kernel_restrict    3394 0.0 2.5242e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf68a06290_wrap_pyop2_kernel_restrict    3394 0.0 5.7453e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf62008110_wrap_pyop2_kernel_restrict    3394 0.0 1.5736e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf62008110_wrap_pyop2_kernel_prolong    3392 0.0 2.7139e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf68a06290_wrap_pyop2_kernel_prolong    3392 0.0 6.0193e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf76b56d10_wrap_pyop2_kernel_prolong    3392 0.0 2.2895e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a1114acd0_wrap_pyop2_kernel_restrict    3394 0.0 4.4028e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a05e21590_wrap_pyop2_kernel_restrict    3394 0.0 1.0901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a05e3d750_wrap_pyop2_kernel_restrict    3394 0.0 1.1683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a05e3d750_wrap_pyop2_kernel_prolong    3392 0.0 5.1395e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a05e21590_wrap_pyop2_kernel_prolong    3392 0.0 7.7678e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a1114acd0_wrap_pyop2_kernel_prolong    3392 0.0 7.6110e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14929d536ed0_wrap_pyop2_kernel_restrict    3394 0.0 2.5150e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14929031e710_wrap_pyop2_kernel_restrict    3394 0.0 5.7722e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149288ed4bd0_wrap_pyop2_kernel_restrict    3394 0.0 1.6008e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149288ed4bd0_wrap_pyop2_kernel_prolong    3392 0.0 3.0912e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14929031e710_wrap_pyop2_kernel_prolong    3392 0.0 6.0175e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14929d536ed0_wrap_pyop2_kernel_prolong    3392 0.0 2.2961e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe48b86ed0_wrap_pyop2_kernel_restrict    3394 0.0 3.4381e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe32accfd0_wrap_pyop2_kernel_restrict    3394 0.0 8.6560e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe32eabb50_wrap_pyop2_kernel_restrict    3394 0.0 2.2951e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe32eabb50_wrap_pyop2_kernel_prolong    3392 0.0 3.8539e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe32accfd0_wrap_pyop2_kernel_prolong    3392 0.0 8.9955e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe48b86ed0_wrap_pyop2_kernel_prolong    3392 0.0 3.4298e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549259eed90_wrap_pyop2_kernel_restrict    3394 0.0 2.4154e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154917e58650_wrap_pyop2_kernel_restrict    3394 0.0 5.8245e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154917f59b50_wrap_pyop2_kernel_restrict    3394 0.0 1.5634e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154917f59b50_wrap_pyop2_kernel_prolong    3392 0.0 2.8957e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154917e58650_wrap_pyop2_kernel_prolong    3392 0.0 6.0207e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549259eed90_wrap_pyop2_kernel_prolong    3392 0.0 2.2956e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf3fca7290_wrap_pyop2_kernel_restrict    3394 0.0 2.5323e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf3611dd50_wrap_pyop2_kernel_restrict    3394 0.0 5.8351e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf2f1f7150_wrap_pyop2_kernel_restrict    3394 0.0 1.5702e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf2f1f7150_wrap_pyop2_kernel_prolong    3392 0.0 2.7140e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf3611dd50_wrap_pyop2_kernel_prolong    3392 0.0 6.0164e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf3fca7290_wrap_pyop2_kernel_prolong    3392 0.0 2.2933e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f50436890_wrap_pyop2_kernel_restrict    3394 0.0 2.5163e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3f823ad0_wrap_pyop2_kernel_restrict    3394 0.0 5.7657e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3ef18ad0_wrap_pyop2_kernel_restrict    3394 0.0 1.6113e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3ef18ad0_wrap_pyop2_kernel_prolong    3392 0.0 2.7000e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3f823ad0_wrap_pyop2_kernel_prolong    3392 0.0 6.0223e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f50436890_wrap_pyop2_kernel_prolong    3392 0.0 2.2921e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f701bef90_wrap_pyop2_kernel_restrict    3394 0.0 3.5891e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f62a282d0_wrap_pyop2_kernel_restrict    3394 0.0 8.7004e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f5886efd0_wrap_pyop2_kernel_restrict    3394 0.0 2.2702e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f5886efd0_wrap_pyop2_kernel_prolong    3392 0.0 3.7326e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f62a282d0_wrap_pyop2_kernel_prolong    3392 0.0 8.9688e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f701bef90_wrap_pyop2_kernel_prolong    3392 0.0 3.4258e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535ce883810_wrap_pyop2_kernel_restrict    3394 0.0 3.5720e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535bcc09250_wrap_pyop2_kernel_restrict    3394 0.0 8.6709e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535bbeac110_wrap_pyop2_kernel_restrict    3394 0.0 2.2976e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535bbeac110_wrap_pyop2_kernel_prolong    3392 0.0 3.4422e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535bcc09250_wrap_pyop2_kernel_prolong    3392 0.0 8.9727e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535ce883810_wrap_pyop2_kernel_prolong    3392 0.0 3.4239e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147033613010_wrap_pyop2_kernel_restrict    3394 0.0 2.4059e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14702c324d10_wrap_pyop2_kernel_restrict    3394 0.0 5.7878e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14702b37ef50_wrap_pyop2_kernel_restrict    3394 0.0 1.5644e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14702b37ef50_wrap_pyop2_kernel_prolong    3392 0.0 2.7139e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14702c324d10_wrap_pyop2_kernel_prolong    3392 0.0 6.0469e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147033613010_wrap_pyop2_kernel_prolong    3392 0.0 2.2902e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149343b73250_wrap_pyop2_kernel_restrict    3394 0.0 3.4365e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493319fbf50_wrap_pyop2_kernel_restrict    3394 0.0 8.6178e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493312bed10_wrap_pyop2_kernel_restrict    3394 0.0 2.2962e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493312bed10_wrap_pyop2_kernel_prolong    3392 0.0 3.4689e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493319fbf50_wrap_pyop2_kernel_prolong    3392 0.0 8.9655e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149343b73250_wrap_pyop2_kernel_prolong    3392 0.0 3.4192e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   174            174
              Viewer     1              1
           Index Set  2039           2039
   IS L to G Mapping   309            309
             Section   700            700
   Star Forest Graph   581            581
              Vector  1153           1135
              Matrix   206            206
      Preconditioner    12             12
       Krylov Solver    12             12
     DMKSP interface     6              6
                SNES     1              1
              DMSNES     4              4
      SNESLineSearch     1              1
    Distributed Mesh   182            182
            DM Label   489            489
          Quadrature   252            252
      Mesh Transform     3              3
    GraphPartitioner    64             64
     Discrete System   265            265
           Weak Form   265            265
        Linear Space    24             24
          Dual Space    84             84
            FE Space    12             12
========================================================================================================================
Average time to get PetscTime(): 2.69e-08
Average time for MPI_Barrier(): 4.6872e-06
Average time for zero size MPI_Send(): 2.59972e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/gmg/sweep.profile # (source: environment)
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

