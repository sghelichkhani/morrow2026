****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0575.gadi.nci.org.au with 208 processes, by sg8812 on Tue Aug 25 22:13:59 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.500e+02     1.000   5.500e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.413e+11     1.264   5.560e+11  1.156e+14
Flops/sec:            1.166e+09     1.264   1.011e+09  2.103e+11
MPI Msg Count:        9.071e+04     3.717   5.949e+04  1.237e+07
MPI Msg Len (bytes):  1.158e+10     6.115   1.106e+05  1.369e+12
MPI Reductions:       7.975e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.8851e+02  52.5%  8.0912e+13  70.0%  3.839e+06  31.0%  1.832e+05       51.4%  6.247e+03  78.3%
 1:        MG Apply: 2.6148e+02  47.5%  3.4728e+13  30.0%  8.536e+06  69.0%  7.803e+04       48.6%  1.709e+03  21.4%

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

BuildTwoSided       1075 1.0 4.4527e+01 4.2 0.00e+00 0.0 2.1e+05 4.0e+00 1.1e+03  6  0  2  0 13  11  0  6  0 17    -0
BuildTwoSidedF       978 1.0 4.4189e+01 3.9 0.00e+00 0.0 2.5e+05 1.4e+06 9.8e+02  6  0  2 25 12  11  0  7 49 16    -0
SFSetGraph           104 1.0 7.9661e-03 10.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 8.3601e-01 33.6 0.00e+00 0.0 1.7e+05 8.9e+02 9.7e+01  0  0  1  0  1   0  0  5  0  2    -0
SFBcastBegin         886 1.0 3.5936e-01 5.3 0.00e+00 0.0 9.8e+05 7.7e+04 0.0e+00  0  0  8  6  0   0  0 26 11  0    -0
SFBcastEnd           886 1.0 1.3220e+01 213.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin        340 1.0 6.9411e-02 16.8 0.00e+00 0.0 3.8e+05 9.8e+04 0.0e+00  0  0  3  3  0   0  0 10  5  0    -0
SFReduceEnd          340 1.0 2.7514e+00 58.0 3.93e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1693
SFFetchOpBegin         6 1.0 3.6923e-05 5.7 0.00e+00 0.0 6.6e+03 5.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 7.5143e-04 20.7 0.00e+00 0.0 6.6e+03 5.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.1382e-03 1.9 0.00e+00 0.0 3.3e+03 7.2e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.3118e-03 1.4 0.00e+00 0.0 1.5e+05 5.9e+01 5.8e+01  0  0  1  0  1   0  0  4  0  1    -0
SFSectionSF           51 1.0 4.0045e-03 2.6 0.00e+00 0.0 7.0e+04 2.9e+01 5.1e+01  0  0  1  0  1   0  0  2  0  1    -0
SFRemoteOff            2 1.0 9.0460e-05 2.8 0.00e+00 0.0 2.9e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              2980 1.0 9.7822e-01 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2986 1.0 2.1361e-01 32.6 3.93e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 21812
VecDot               224 1.0 9.1860e-01 13.2 1.03e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  3   0  0  0  0  4 21125
VecMDot             1524 1.0 2.6469e+01 5.7 3.23e+09 1.1 0.0e+00 0.0e+00 1.5e+03  2  1  0  0 19   4  1  0  0 24 22953
VecNorm             2364 1.0 4.2284e+00 5.9 1.09e+09 1.1 0.0e+00 0.0e+00 2.4e+03  0  0  0  0 30   1  0  0  0 38 48432
VecScale            1758 1.0 1.1434e-01 1.3 4.05e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 665979
VecCopy             1581 1.0 9.9407e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               459 1.0 2.0024e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              234 1.0 1.4534e-01 1.2 1.08e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 139472
VecWAXPY             224 1.0 2.1759e-01 1.3 5.16e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 44591
VecMAXPY            1758 1.0 4.3165e+00 1.3 3.93e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 171334
VecScatterBegin     1748 1.0 6.7321e-01 3.8 0.00e+00 0.0 2.0e+06 1.1e+05 0.0e+00  0  0 16 16  0   0  0 51 31  0    -0
VecScatterEnd       1748 1.0 1.0649e+01 33.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           9 1.0 1.9217e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       448 1.0 1.1096e-01 1.9 2.06e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 349775
VecReduceComm        224 1.0 1.3123e-01 6.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  3   0  0  0  0  4    -0
VecNormalize         200 1.0 4.6889e-01 5.0 1.38e+08 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  3   0  0  0  0  3 55427
MatMult             1748 1.0 4.5192e+01 1.4 2.86e+10 1.2 2.0e+06 1.1e+05 0.0e+00  7  5 16 16  0  14  7 51 31  0 118465
MatSolve             200 1.0 4.4537e+00 1.3 3.13e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 128870
MatLUFactorSym         1 1.0 4.1813e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum        86 1.0 4.1360e+00 1.1 1.40e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 61056
MatILUFactorSym        2 1.0 1.7633e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               74 1.0 2.1166e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 9.0986e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1179 1.0 4.6698e+01 2.2 0.00e+00 0.0 2.5e+05 1.4e+06 9.8e+02  6  0  2 25 12  12  0  7 49 16    -0
MatAssemblyEnd      1179 1.0 1.4179e+01 7.5 2.83e+08 0.0 4.5e+03 1.4e+04 1.7e+01  1  0  0  0  0   3  0  0  0  0  1500
MatGetRowIJ            2 1.0 5.9830e-06 19.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 4.5769e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       300 1.0 4.1658e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 6.2258e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 6.8379e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        152 1.0 7.1890e-01 1.2 1.26e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 328340
MatPtAPSymbolic        1 1.0 1.1876e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        76 1.0 7.1644e+00 1.0 5.04e+09 1.2 8.6e+04 3.3e+05 8.1e+01  1  1  1  2  1   2  1  2  4  1 131804
MatGetLocalMat        76 1.0 3.2815e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         76 1.0 3.3853e-01 3.7 0.00e+00 0.0 8.7e+04 3.3e+05 0.0e+00  0  0  1  2  0   0  0  2  4  0    -0
MatSetPreallCOO       32 1.0 6.2480e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.2949e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              224 1.0 2.6446e+01 1.0 1.47e+10 1.2 3.0e+05 1.7e+05 6.6e+02  5  2  2  4  8   9  3  8  7 11 103625
PCApply             1334 1.0 2.7243e+02 1.1 1.86e+11 1.2 8.5e+06 7.8e+04 1.7e+03 48 30 69 49 21 Multiple stages 127474
PCApplyOnBlocks      200 1.0 4.4555e+00 1.3 3.13e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 128818
KSPSetUp             224 1.0 7.4909e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             224 1.0 3.0753e+02 1.0 2.15e+11 1.2 1.0e+07 8.3e+04 4.6e+03 56 35 81 61 58 Multiple stages 130161
KSPGMRESOrthog      1524 1.0 2.9677e+01 3.6 6.46e+09 1.1 0.0e+00 0.0e+00 1.5e+03  3  1  0  0 19   6  2  0  0 24 40943
DMRefine               2 1.0 2.3438e-01 1.0 2.09e+03 1.0 2.0e+04 2.7e+01 6.3e+01  0  0  0  0  1   0  0  1  0  1     2
DMPlexCreateGmsh       1 1.0 1.7381e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.3960e+00 75.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 7.2465e-02 1.0 0.00e+00 0.0 4.8e+04 4.7e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.5867e-02 1.1 0.00e+00 0.0 1.7e+05 5.5e+01 2.4e+02  0  0  1  0  3   0  0  4  0  4    -0
DMPlexPartSelf         1 1.0 1.6041e-03 665.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 2.0382e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.4803e-03 1.3 0.00e+00 0.0 9.2e+03 3.6e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.1684e-03 3.9 0.00e+00 0.0 4.6e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.8623e-03 5.0 0.00e+00 0.0 4.8e+03 1.5e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 6.0374e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.8910e-02 1.0 0.00e+00 0.0 8.6e+03 1.1e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.8565e-03 1.1 0.00e+00 0.0 2.7e+04 8.2e+01 8.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 5.6571e-03 1.0 0.00e+00 0.0 8.5e+04 5.2e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 2.1134e-02 1.0 0.00e+00 0.0 2.1e+05 5.3e+01 2.4e+02  0  0  2  0  3   0  0  6  0  4    -0
DMPlexDistField        7 1.0 3.4461e-03 1.3 0.00e+00 0.0 3.8e+04 4.5e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 5.5460e-03 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.7340e-04 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0407e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.0889e-03 1.8 0.00e+00 0.0 1.1e+04 2.3e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 8.6820e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 2.7427e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.4856e-04 1.9 0.00e+00 0.0 8.7e+03 2.1e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 6.8471e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 6.8161e-04 2.0 0.00e+00 0.0 2.2e+03 2.9e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.8429e+02 1.0 6.41e+11 1.3 1.2e+07 1.2e+05 7.1e+03 88 100 96 100 89 Multiple stages 238763
SNESSetUp              1 1.0 4.0007e-05 6.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     299 1.0 2.3184e+01 1.1 1.60e+11 1.3 7.5e+05 1.1e+05 0.0e+00  4 24  6  6  0   8 35 20 12  0 1208580
SNESJacobianEval     224 1.0 1.2110e+02 1.0 2.50e+11 1.3 5.0e+05 7.4e+05 9.0e+02 22 38  4 27 11  42 54 13 52 14 363674
SNESLineSearch       224 1.0 1.5555e+01 1.0 1.24e+11 1.3 7.5e+05 1.1e+05 9.0e+02  3 19  6  6 11   5 27 20 12 14 1400414
DualSpaceSetUp         8 1.0 5.6862e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.9966e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 5.4769e+02 1.0 6.41e+11 1.3 1.2e+07 1.1e+05 8.0e+03 100 100 100 100 100 Multiple stages 211138
firedrake.__init__       1 1.0 1.2517e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
CreateMesh             3 1.0 1.5301e+00 10.1 0.00e+00 0.0 4.2e+05 5.5e+01 4.4e+02  0  0  3  0  6   0  0 11  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 1.3969e+00 75.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 9.2535e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.3540e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.1282e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.4112e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.2901e-02 1.1 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.7051e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.1309e-02 1.1 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.9083e-02 1.2 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.8974e-02 1.2 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.3203e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 5.7121e-03 1.1 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.7142e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3190e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.4104e-02 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.5377e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2740e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9976e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2463e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.5313e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 8.0317e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2411 1.0 1.1707e+02 1.2 4.10e+11 1.3 7.0e+05 1.1e+05 3.2e+01 19 62  6  6  0  36 89 18 11  1 615404
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.4866e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4822 1.0 2.6601e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.1042e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.3555e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.9790e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.5436e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.5435e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.9814e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.8281e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    2411 1.0 7.7224e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2411 1.0 5.7399e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.0029e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.2469e+00 1.0 7.78e+06 1.1 2.2e+04 1.0e+04 1.3e+01  1  0  0  0  0   3  0  1  0  0   177
firedrake.interpolation.interpolate      13 1.0 4.5106e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.8234e+00 1.0 4.81e+07 1.1 3.3e+04 3.4e+04 3.7e+01  1  0  0  0  0   2  0  1  0  1  1553
firedrake.formmanipulation.split_form      14 1.0 4.9669e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 3.5064e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.6445e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0467e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     619 1.0 3.2947e+00 12.2 0.00e+00 0.0 7.1e+05 1.1e+05 4.0e+00  0  0  6  6  0   0  0 18 11  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4578e+00 1.0 4.81e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  1657
firedrake.halo.Halo.global_to_local_end     619 1.0 1.2123e+01 220.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.2690e+00 83.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0cb9ebc10_wrap_pyop2_kernel_prolong       4 0.0 7.4036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0cb9e0a50_wrap_pyop2_kernel_prolong       4 0.0 2.2397e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9165e+00 1.0 3.89e+07 1.1 1.9e+04 5.0e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  1869
firedrake.function.Function.assign     314 1.0 1.0964e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.0206e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.9278e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.5791e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.5007e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4975e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9452e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2454e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.0825e+00 1.0 0.00e+00 0.0 7.3e+03 4.3e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.5208e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5279e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1020e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1020e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         2 1.0 1.8965e+00 1.1 0.00e+00 0.0 6.7e+03 2.3e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 3.0908e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.8445e+02 1.0 6.41e+11 1.3 1.2e+07 1.2e+05 7.3e+03 88 100 96 100 91 Multiple stages 238683
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.3950e-01 1355.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.3430e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.3945e-01 1648.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.3942e-01 1896.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     598 1.0 5.5457e+00 1.3 3.92e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   2  9  0  0  0 1327655
Parloop_Cells_wrap_form0_exterior_facet_top_integral     598 1.0 1.0378e+00 1.0 5.09e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   922
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     598 1.0 1.2615e+00 1.0 4.71e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9889
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     598 1.0 3.9106e+00 1.1 3.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  9  0  0  0 1808280
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     598 1.0 7.7316e+00 1.4 8.32e+10 1.6 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 17  0  0  0 1754771
firedrake.halo.Halo.local_to_global_begin     299 1.0 7.5901e-02 7.6 0.00e+00 0.0 3.3e+05 1.1e+05 0.0e+00  0  0  3  3  0   0  0  9  5  0    -0
firedrake.halo.Halo.local_to_global_end     299 1.0 2.7526e+00 55.5 3.93e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1693
Parloop_Cells_wrap_form00_cell_integral     448 1.0 1.8856e+01 1.5 5.47e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   5 13  0  0  0 545863
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     448 1.0 1.6099e+00 1.4 3.59e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5911
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     448 1.0 2.6606e+01 1.5 7.24e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 12  0  0  0   7 17  0  0  0 511819
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     448 1.0 4.9759e+01 1.7 1.23e+11 1.6 0.0e+00 0.0e+00 0.0e+00  7 17  0  0  0  13 25  0  0  0 403981
firedrake.dmhooks.get_function_space       1 1.0 1.0910e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.0360e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       76 1.0 3.7175e+00 1.0 2.66e+07 24.5 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   210
MGSetup Level 1       76 1.0 7.0833e-01 1.0 5.36e+08 1.2 1.1e+04 1.1e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 140162
firedrake.constant.Constant.assign      75 1.0 3.4430e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d8523d050_wrap_pyop2_kernel_prolong       4 0.0 7.4021e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d8523d610_wrap_pyop2_kernel_prolong       4 0.0 2.4813e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be35a4c1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be3598fe50_wrap_pyop2_kernel_prolong       4 0.0 2.8816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5726f1490_wrap_pyop2_kernel_prolong       4 0.0 7.4028e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5726cf750_wrap_pyop2_kernel_prolong       4 0.0 2.9080e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa99d09bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4018e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa99d083d0_wrap_pyop2_kernel_prolong       4 0.0 2.4023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149acd877490_wrap_pyop2_kernel_prolong       4 0.0 7.4029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149acd84b3d0_wrap_pyop2_kernel_prolong       4 0.0 3.2874e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef3541ae50_wrap_pyop2_kernel_prolong       4 0.0 7.4059e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef35419350_wrap_pyop2_kernel_prolong       4 0.0 2.6989e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152777673310_wrap_pyop2_kernel_prolong       4 0.0 7.4075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527779d1550_wrap_pyop2_kernel_prolong       4 0.0 3.1030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c9c369c10_wrap_pyop2_kernel_prolong       4 0.0 7.4016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c9c3694d0_wrap_pyop2_kernel_prolong       4 0.0 2.4705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153852a69650_wrap_pyop2_kernel_prolong       4 0.0 7.3983e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153852a68250_wrap_pyop2_kernel_prolong       4 0.0 2.7070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee45defc50_wrap_pyop2_kernel_prolong       4 0.0 7.4121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee45ded890_wrap_pyop2_kernel_prolong       4 0.0 3.9638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cac5392710_wrap_pyop2_kernel_prolong       4 0.0 7.4083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cac5353b90_wrap_pyop2_kernel_prolong       4 0.0 3.9214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f1d0745d0_wrap_pyop2_kernel_prolong       4 0.0 7.4113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f1cf73590_wrap_pyop2_kernel_prolong       4 0.0 4.2505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500cf559910_wrap_pyop2_kernel_prolong       4 0.0 7.4036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500cf568910_wrap_pyop2_kernel_prolong       4 0.0 2.5124e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fab77e2490_wrap_pyop2_kernel_prolong       4 0.0 7.3928e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fab77d6150_wrap_pyop2_kernel_prolong       4 0.0 2.8998e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b84abc58d0_wrap_pyop2_kernel_prolong       4 0.0 7.3938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b84abc4250_wrap_pyop2_kernel_prolong       4 0.0 2.5242e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e39ff7e410_wrap_pyop2_kernel_prolong       4 0.0 7.4071e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e39ffa5010_wrap_pyop2_kernel_prolong       4 0.0 3.2435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0153d3f90_wrap_pyop2_kernel_prolong       4 0.0 7.4005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0154064d0_wrap_pyop2_kernel_prolong       4 0.0 3.4981e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527e6a301d0_wrap_pyop2_kernel_prolong       4 0.0 7.3954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527e630d050_wrap_pyop2_kernel_prolong       4 0.0 3.5996e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d500f56110_wrap_pyop2_kernel_prolong       4 0.0 7.4006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d500f56ed0_wrap_pyop2_kernel_prolong       4 0.0 3.0439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bab397fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bab3989890_wrap_pyop2_kernel_prolong       4 0.0 3.7268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15175ca18250_wrap_pyop2_kernel_prolong       4 0.0 7.4049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15175d323390_wrap_pyop2_kernel_prolong       4 0.0 3.7256e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14def0178050_wrap_pyop2_kernel_prolong       4 0.0 7.3912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14def03bd790_wrap_pyop2_kernel_prolong       4 0.0 2.7500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15226e51ba10_wrap_pyop2_kernel_prolong       4 0.0 7.4080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15226e337190_wrap_pyop2_kernel_prolong       4 0.0 3.6899e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3675a7610_wrap_pyop2_kernel_prolong       4 0.0 7.3961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3675ddc90_wrap_pyop2_kernel_prolong       4 0.0 3.6235e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458e2630910_wrap_pyop2_kernel_prolong       4 0.0 7.3935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458e2614fd0_wrap_pyop2_kernel_prolong       4 0.0 3.5237e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6d7a72110_wrap_pyop2_kernel_prolong       4 0.0 7.3938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6d7a71610_wrap_pyop2_kernel_prolong       4 0.0 1.9809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536e4422bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536e456bfd0_wrap_pyop2_kernel_prolong       4 0.0 3.0408e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab91e2690_wrap_pyop2_kernel_prolong       4 0.0 7.4070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab91e28d0_wrap_pyop2_kernel_prolong       4 0.0 3.9673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a468d910_wrap_pyop2_kernel_prolong       4 0.0 7.3897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a4930f10_wrap_pyop2_kernel_prolong       4 0.0 3.8353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490e0f87610_wrap_pyop2_kernel_prolong       4 0.0 7.3951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490e0fd53d0_wrap_pyop2_kernel_prolong       4 0.0 3.3369e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e22032390_wrap_pyop2_kernel_prolong       4 0.0 7.4138e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e22031a10_wrap_pyop2_kernel_prolong       4 0.0 4.4721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15160e7e6cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15160e80f590_wrap_pyop2_kernel_prolong       4 0.0 3.1477e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae52dd6a90_wrap_pyop2_kernel_prolong       4 0.0 7.4041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae52ca1790_wrap_pyop2_kernel_prolong       4 0.0 2.9195e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e684f06610_wrap_pyop2_kernel_prolong       4 0.0 7.3877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e684585590_wrap_pyop2_kernel_prolong       4 0.0 2.5232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b470256d0_wrap_pyop2_kernel_prolong       4 0.0 7.3938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b46e39710_wrap_pyop2_kernel_prolong       4 0.0 2.8293e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15100daad590_wrap_pyop2_kernel_prolong       4 0.0 7.4019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15100d0fa510_wrap_pyop2_kernel_prolong       4 0.0 2.8369e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a65aef78d0_wrap_pyop2_kernel_prolong       4 0.0 7.4140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a65aed10d0_wrap_pyop2_kernel_prolong       4 0.0 4.6070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b2de62310_wrap_pyop2_kernel_prolong       4 0.0 7.4132e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b2de477d0_wrap_pyop2_kernel_prolong       4 0.0 4.4008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14782c8115d0_wrap_pyop2_kernel_prolong       4 0.0 7.3979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14782c60d750_wrap_pyop2_kernel_prolong       4 0.0 3.0953e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e319b13ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e319b39b90_wrap_pyop2_kernel_prolong       4 0.0 2.3880e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496a5752c90_wrap_pyop2_kernel_prolong       4 0.0 7.3895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496a5715d90_wrap_pyop2_kernel_prolong       4 0.0 2.8417e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490b55960d0_wrap_pyop2_kernel_prolong       4 0.0 7.4051e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490b5e718d0_wrap_pyop2_kernel_prolong       4 0.0 3.9698e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3af66fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.3975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3af61b690_wrap_pyop2_kernel_prolong       4 0.0 2.5229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbbd4eb090_wrap_pyop2_kernel_prolong       4 0.0 7.4102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbbd51a390_wrap_pyop2_kernel_prolong       4 0.0 3.7792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e8b42bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e81253d0_wrap_pyop2_kernel_prolong       4 0.0 3.5650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d26b3b5ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d26b5c1150_wrap_pyop2_kernel_prolong       4 0.0 3.7168e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516c0f288d0_wrap_pyop2_kernel_prolong       4 0.0 7.4085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516c0d07a10_wrap_pyop2_kernel_prolong       4 0.0 4.2765e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147427505990_wrap_pyop2_kernel_prolong       4 0.0 7.3882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147426b4a590_wrap_pyop2_kernel_prolong       4 0.0 3.3301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2d1a570d0_wrap_pyop2_kernel_prolong       4 0.0 7.3893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2d1a26bd0_wrap_pyop2_kernel_prolong       4 0.0 2.8812e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fb668c850_wrap_pyop2_kernel_prolong       4 0.0 7.3972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fb68d1e90_wrap_pyop2_kernel_prolong       4 0.0 2.6240e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490f950d090_wrap_pyop2_kernel_prolong       4 0.0 7.4076e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490f9535d10_wrap_pyop2_kernel_prolong       4 0.0 4.0745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe2840d050_wrap_pyop2_kernel_prolong       4 0.0 7.3805e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe284f5510_wrap_pyop2_kernel_prolong       4 0.0 2.1320e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459cbaa2950_wrap_pyop2_kernel_prolong       4 0.0 7.3959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459cb14e450_wrap_pyop2_kernel_prolong       4 0.0 2.4582e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2eb6ee9d0_wrap_pyop2_kernel_prolong       4 0.0 7.3843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2eb6ede50_wrap_pyop2_kernel_prolong       4 0.0 2.9099e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15024ae47c10_wrap_pyop2_kernel_prolong       4 0.0 7.3882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15024abd2d10_wrap_pyop2_kernel_prolong       4 0.0 2.6989e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503df4763d0_wrap_pyop2_kernel_prolong       4 0.0 7.3823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503df477b50_wrap_pyop2_kernel_prolong       4 0.0 2.2831e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14688aeef050_wrap_pyop2_kernel_prolong       4 0.0 7.3853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14688af2ae90_wrap_pyop2_kernel_prolong       4 0.0 3.2076e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486e429a010_wrap_pyop2_kernel_prolong       4 0.0 7.3826e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486e4299b50_wrap_pyop2_kernel_prolong       4 0.0 2.8382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15246be7f9d0_wrap_pyop2_kernel_prolong       4 0.0 7.3813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15246bccc390_wrap_pyop2_kernel_prolong       4 0.0 2.4549e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f241f9a10_wrap_pyop2_kernel_prolong       4 0.0 7.3883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f24273c50_wrap_pyop2_kernel_prolong       4 0.0 3.5299e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e29a38fad0_wrap_pyop2_kernel_prolong       4 0.0 7.3900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e29a364610_wrap_pyop2_kernel_prolong       4 0.0 4.1947e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14561fbc9c10_wrap_pyop2_kernel_prolong       4 0.0 7.3857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14561fbc97d0_wrap_pyop2_kernel_prolong       4 0.0 2.4571e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a6db7d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a6dba9890_wrap_pyop2_kernel_prolong       4 0.0 4.4011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f868820890_wrap_pyop2_kernel_prolong       4 0.0 7.4034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f863f91810_wrap_pyop2_kernel_prolong       4 0.0 4.4523e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15325a957990_wrap_pyop2_kernel_prolong       4 0.0 7.3867e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15325a955ed0_wrap_pyop2_kernel_prolong       4 0.0 2.1532e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147782044b50_wrap_pyop2_kernel_prolong       4 0.0 7.3878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147782044ed0_wrap_pyop2_kernel_prolong       4 0.0 3.1216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dce1f86450_wrap_pyop2_kernel_prolong       4 0.0 7.3907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dce1564a50_wrap_pyop2_kernel_prolong       4 0.0 2.7890e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152760907510_wrap_pyop2_kernel_prolong       4 0.0 7.3962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152760b00110_wrap_pyop2_kernel_prolong       4 0.0 2.9076e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14813036b190_wrap_pyop2_kernel_prolong       4 0.0 7.3854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14812bb730d0_wrap_pyop2_kernel_prolong       4 0.0 2.7017e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14786efc7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14786ee5d1d0_wrap_pyop2_kernel_prolong       4 0.0 3.9918e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521c16f8ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521c03990d0_wrap_pyop2_kernel_prolong       4 0.0 4.1840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462668e6450_wrap_pyop2_kernel_prolong       4 0.0 7.3911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462668e5410_wrap_pyop2_kernel_prolong       4 0.0 4.1396e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f32e0195d0_wrap_pyop2_kernel_prolong       4 0.0 7.3883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f32dda9cd0_wrap_pyop2_kernel_prolong       4 0.0 3.3310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150199953ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3866e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150198eebe50_wrap_pyop2_kernel_prolong       4 0.0 3.3107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468129b20d0_wrap_pyop2_kernel_prolong       4 0.0 7.3935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146812970b50_wrap_pyop2_kernel_prolong       4 0.0 3.9870e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546f4d73810_wrap_pyop2_kernel_prolong       4 0.0 7.3947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546f458d910_wrap_pyop2_kernel_prolong       4 0.0 4.5833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531fe487190_wrap_pyop2_kernel_prolong       4 0.0 7.4012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531fe487ad0_wrap_pyop2_kernel_prolong       4 0.0 5.0000e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a1d7303d0_wrap_pyop2_kernel_prolong       4 0.0 7.3918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a1cdffa90_wrap_pyop2_kernel_prolong       4 0.0 2.4453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466fe1ea450_wrap_pyop2_kernel_prolong       4 0.0 7.3895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466fe1e9450_wrap_pyop2_kernel_prolong       4 0.0 2.9067e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145eaa1ea0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145eaa1eac50_wrap_pyop2_kernel_prolong       4 0.0 3.1922e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149105ec6350_wrap_pyop2_kernel_prolong       4 0.0 7.4004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149105ef1dd0_wrap_pyop2_kernel_prolong       4 0.0 2.7220e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ed9b4a190_wrap_pyop2_kernel_prolong       4 0.0 7.3979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ed9b49190_wrap_pyop2_kernel_prolong       4 0.0 2.4600e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509273e22d0_wrap_pyop2_kernel_prolong       4 0.0 7.3934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509273e1a10_wrap_pyop2_kernel_prolong       4 0.0 4.2100e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152faa0143d0_wrap_pyop2_kernel_prolong       4 0.0 7.3950e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fa9da1350_wrap_pyop2_kernel_prolong       4 0.0 2.4585e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15407dcadf50_wrap_pyop2_kernel_prolong       4 0.0 7.4037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15407dcad790_wrap_pyop2_kernel_prolong       4 0.0 3.6398e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3c79134d0_wrap_pyop2_kernel_prolong       4 0.0 7.3941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3c7ad8bd0_wrap_pyop2_kernel_prolong       4 0.0 3.5561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147388270450_wrap_pyop2_kernel_prolong       4 0.0 7.3957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14738379eed0_wrap_pyop2_kernel_prolong       4 0.0 4.0755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bbdcd5310_wrap_pyop2_kernel_prolong       4 0.0 7.3990e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bbdef8410_wrap_pyop2_kernel_prolong       4 0.0 3.9803e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf213ce4d0_wrap_pyop2_kernel_prolong       4 0.0 7.3958e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf20a0abd0_wrap_pyop2_kernel_prolong       4 0.0 3.5316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2530cd2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f252eb95d0_wrap_pyop2_kernel_prolong       4 0.0 3.9122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ec6eae050_wrap_pyop2_kernel_prolong       4 0.0 7.4000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ec651fd90_wrap_pyop2_kernel_prolong       4 0.0 3.1338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bec4bdd790_wrap_pyop2_kernel_prolong       4 0.0 7.3842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bec4c87d90_wrap_pyop2_kernel_prolong       4 0.0 2.9092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155321ced290_wrap_pyop2_kernel_prolong       4 0.0 7.3926e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155321302b50_wrap_pyop2_kernel_prolong       4 0.0 3.6790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153faffdbd50_wrap_pyop2_kernel_prolong       4 0.0 7.3934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fb4349f50_wrap_pyop2_kernel_prolong       4 0.0 4.4803e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4906399d0_wrap_pyop2_kernel_prolong       4 0.0 7.3982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e490639310_wrap_pyop2_kernel_prolong       4 0.0 3.7291e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dfcda9710_wrap_pyop2_kernel_prolong       4 0.0 7.3914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dfcdab110_wrap_pyop2_kernel_prolong       4 0.0 2.5130e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b6d2cc10_wrap_pyop2_kernel_prolong       4 0.0 7.3923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b6f88d10_wrap_pyop2_kernel_prolong       4 0.0 3.5343e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151642a94310_wrap_pyop2_kernel_prolong       4 0.0 7.4012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151642a96990_wrap_pyop2_kernel_prolong       4 0.0 4.5635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de7e3d9fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de7e3b3d90_wrap_pyop2_kernel_prolong       4 0.0 3.5512e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a79f74210_wrap_pyop2_kernel_prolong       4 0.0 7.3952e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a79fdc610_wrap_pyop2_kernel_prolong       4 0.0 3.1787e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546a45a9510_wrap_pyop2_kernel_prolong       4 0.0 7.3857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546a45a8610_wrap_pyop2_kernel_prolong       4 0.0 2.8614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ead37be90_wrap_pyop2_kernel_prolong       4 0.0 7.3875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ead379610_wrap_pyop2_kernel_prolong       4 0.0 3.8244e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4b4b55990_wrap_pyop2_kernel_prolong       4 0.0 7.3972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4b42d7e50_wrap_pyop2_kernel_prolong       4 0.0 4.0123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea06bb11d0_wrap_pyop2_kernel_prolong       4 0.0 7.5892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea053d46d0_wrap_pyop2_kernel_prolong       4 0.0 2.0541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be623ad090_wrap_pyop2_kernel_prolong       4 0.0 7.5722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be6259d0d0_wrap_pyop2_kernel_prolong       4 0.0 2.3997e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15492c62b3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5885e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15492c629790_wrap_pyop2_kernel_prolong       4 0.0 3.3635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489a9743cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489a951bd10_wrap_pyop2_kernel_prolong       4 0.0 3.1957e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3bc8fda50_wrap_pyop2_kernel_prolong       4 0.0 7.5669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3bc8ffc50_wrap_pyop2_kernel_prolong       4 0.0 2.1708e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146374334e90_wrap_pyop2_kernel_prolong       4 0.0 7.5388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146374336b50_wrap_pyop2_kernel_prolong       4 0.0 4.2989e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc6fed6b90_wrap_pyop2_kernel_prolong       4 0.0 7.5400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc6fecf9d0_wrap_pyop2_kernel_prolong       4 0.0 2.5403e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491b38e43d0_wrap_pyop2_kernel_prolong       4 0.0 7.5329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491b3a63cd0_wrap_pyop2_kernel_prolong       4 0.0 3.0211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a99fd7750_wrap_pyop2_kernel_prolong       4 0.0 7.5827e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a9a002510_wrap_pyop2_kernel_prolong       4 0.0 2.7636e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e05749f50_wrap_pyop2_kernel_prolong       4 0.0 7.5302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e05749810_wrap_pyop2_kernel_prolong       4 0.0 2.6903e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d627b3a090_wrap_pyop2_kernel_prolong       4 0.0 7.5921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d627b25d50_wrap_pyop2_kernel_prolong       4 0.0 3.2742e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cdd1268d0_wrap_pyop2_kernel_prolong       4 0.0 7.5903e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cdd1260d0_wrap_pyop2_kernel_prolong       4 0.0 4.7185e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496b9fae650_wrap_pyop2_kernel_prolong       4 0.0 7.5452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496b9fad6d0_wrap_pyop2_kernel_prolong       4 0.0 3.6617e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a524648c10_wrap_pyop2_kernel_prolong       4 0.0 7.5285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5243b56d0_wrap_pyop2_kernel_prolong       4 0.0 2.3245e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c4a068a90_wrap_pyop2_kernel_prolong       4 0.0 7.5348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c4a0f5650_wrap_pyop2_kernel_prolong       4 0.0 2.4871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fcd764150_wrap_pyop2_kernel_prolong       4 0.0 7.5329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fcd6ddfd0_wrap_pyop2_kernel_prolong       4 0.0 4.4703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14748efed710_wrap_pyop2_kernel_prolong       4 0.0 7.5212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14748efec850_wrap_pyop2_kernel_prolong       4 0.0 2.1924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507dc4b2150_wrap_pyop2_kernel_prolong       4 0.0 7.5387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507dc4b09d0_wrap_pyop2_kernel_prolong       4 0.0 3.4036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15371ebcadd0_wrap_pyop2_kernel_prolong       4 0.0 7.5434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15371edddc50_wrap_pyop2_kernel_prolong       4 0.0 3.7293e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a35c3357d0_wrap_pyop2_kernel_prolong       4 0.0 7.5343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a35c382a50_wrap_pyop2_kernel_prolong       4 0.0 3.0074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149506469fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14950646bc50_wrap_pyop2_kernel_prolong       4 0.0 3.7618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e2944e490_wrap_pyop2_kernel_prolong       4 0.0 7.5461e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e28a898d0_wrap_pyop2_kernel_prolong       4 0.0 4.5162e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490fa729d10_wrap_pyop2_kernel_prolong       4 0.0 7.5326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490fa5d1c50_wrap_pyop2_kernel_prolong       4 0.0 3.2939e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc4cbab490_wrap_pyop2_kernel_prolong       4 0.0 7.5322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc4cb93b50_wrap_pyop2_kernel_prolong       4 0.0 3.6023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ceb764ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5407e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ceb795c50_wrap_pyop2_kernel_prolong       4 0.0 3.7686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15218eff2a90_wrap_pyop2_kernel_prolong       4 0.0 7.5673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15218ef66350_wrap_pyop2_kernel_prolong       4 0.0 4.2860e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9a70fef10_wrap_pyop2_kernel_prolong       4 0.0 7.5821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9a70cfd90_wrap_pyop2_kernel_prolong       4 0.0 2.3249e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0eac5de10_wrap_pyop2_kernel_prolong       4 0.0 7.5272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0eac4f2d0_wrap_pyop2_kernel_prolong       4 0.0 1.9824e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14894d5a3990_wrap_pyop2_kernel_prolong       4 0.0 7.5319e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14894d5c9e10_wrap_pyop2_kernel_prolong       4 0.0 2.5428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cfac1b650_wrap_pyop2_kernel_prolong       4 0.0 7.5460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cfac19150_wrap_pyop2_kernel_prolong       4 0.0 2.4588e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f3912a990_wrap_pyop2_kernel_prolong       4 0.0 7.5418e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f337cd2d0_wrap_pyop2_kernel_prolong       4 0.0 2.6959e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4de403bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4de26af10_wrap_pyop2_kernel_prolong       4 0.0 3.8374e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf0d85b890_wrap_pyop2_kernel_prolong       4 0.0 7.5273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf0d786e10_wrap_pyop2_kernel_prolong       4 0.0 3.3182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489af5cbb90_wrap_pyop2_kernel_prolong       4 0.0 7.5208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489af865a50_wrap_pyop2_kernel_prolong       4 0.0 1.9988e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fd021f6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fd021f3d0_wrap_pyop2_kernel_prolong       4 0.0 3.5395e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3903830d0_wrap_pyop2_kernel_prolong       4 0.0 7.5302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f38b969610_wrap_pyop2_kernel_prolong       4 0.0 4.3426e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d4d6ebb50_wrap_pyop2_kernel_prolong       4 0.0 7.5334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d4d72ce50_wrap_pyop2_kernel_prolong       4 0.0 4.9144e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db83acd750_wrap_pyop2_kernel_prolong       4 0.0 7.5243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db83713b10_wrap_pyop2_kernel_prolong       4 0.0 3.2302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ece750790_wrap_pyop2_kernel_prolong       4 0.0 7.5339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ece9e7910_wrap_pyop2_kernel_prolong       4 0.0 4.4169e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e69f68410_wrap_pyop2_kernel_prolong       4 0.0 7.5309e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e6960d310_wrap_pyop2_kernel_prolong       4 0.0 3.5777e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2c67b2010_wrap_pyop2_kernel_prolong       4 0.0 7.5271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2c67b1c90_wrap_pyop2_kernel_prolong       4 0.0 2.6839e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15423fe5a1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15423fe59a50_wrap_pyop2_kernel_prolong       4 0.0 4.1427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528534c34d0_wrap_pyop2_kernel_prolong       4 0.0 7.5462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528534e2e90_wrap_pyop2_kernel_prolong       4 0.0 4.7955e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510a73471d0_wrap_pyop2_kernel_prolong       4 0.0 7.5365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510a73c4e90_wrap_pyop2_kernel_prolong       4 0.0 2.7859e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb9ea41b50_wrap_pyop2_kernel_prolong       4 0.0 7.5558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb9ea41550_wrap_pyop2_kernel_prolong       4 0.0 2.4007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb94becfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb9498fc50_wrap_pyop2_kernel_prolong       4 0.0 2.6313e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d01a813650_wrap_pyop2_kernel_prolong       4 0.0 7.5344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d01a811610_wrap_pyop2_kernel_prolong       4 0.0 3.0199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502369fbcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150236b1ad50_wrap_pyop2_kernel_prolong       4 0.0 2.6036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151619d36090_wrap_pyop2_kernel_prolong       4 0.0 7.5374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151619f67ad0_wrap_pyop2_kernel_prolong       4 0.0 4.2051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f3963d10_wrap_pyop2_kernel_prolong       4 0.0 7.5303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f3bd7c90_wrap_pyop2_kernel_prolong       4 0.0 4.3721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454f1783f90_wrap_pyop2_kernel_prolong       4 0.0 7.5373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454f176d990_wrap_pyop2_kernel_prolong       4 0.0 4.1295e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b95454210_wrap_pyop2_kernel_prolong       4 0.0 7.5411e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b953c1390_wrap_pyop2_kernel_prolong       4 0.0 4.6143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fc1e0b990_wrap_pyop2_kernel_prolong       4 0.0 7.5232e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fc1d33550_wrap_pyop2_kernel_prolong       4 0.0 2.3284e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c494c4c50_wrap_pyop2_kernel_prolong       4 0.0 7.5261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c48b79210_wrap_pyop2_kernel_prolong       4 0.0 1.9764e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a965380550_wrap_pyop2_kernel_prolong       4 0.0 7.5251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a96531f390_wrap_pyop2_kernel_prolong       4 0.0 2.4959e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482a8b95710_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482a8aaaed0_wrap_pyop2_kernel_prolong       4 0.0 3.0647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d63fd8bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d63b5a850_wrap_pyop2_kernel_prolong       4 0.0 2.7109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc90f3f590_wrap_pyop2_kernel_prolong       4 0.0 7.5618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc911e4c50_wrap_pyop2_kernel_prolong       4 0.0 4.3846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05ff7f910_wrap_pyop2_kernel_prolong       4 0.0 7.5696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c05ffdbc50_wrap_pyop2_kernel_prolong       4 0.0 4.0052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e8dfd7250_wrap_pyop2_kernel_prolong       4 0.0 7.5281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e8dfd5910_wrap_pyop2_kernel_prolong       4 0.0 3.5022e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c587abb290_wrap_pyop2_kernel_prolong       4 0.0 7.5468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c58c385bd0_wrap_pyop2_kernel_prolong       4 0.0 4.2494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ec4684a10_wrap_pyop2_kernel_prolong       4 0.0 7.5453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ebfd258d0_wrap_pyop2_kernel_prolong       4 0.0 2.6915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14581336d4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145813349c90_wrap_pyop2_kernel_prolong       4 0.0 4.1651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461c8163750_wrap_pyop2_kernel_prolong       4 0.0 7.5461e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461c819aa10_wrap_pyop2_kernel_prolong       4 0.0 4.6525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff69894c50_wrap_pyop2_kernel_prolong       4 0.0 7.5779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff69719c90_wrap_pyop2_kernel_prolong       4 0.0 3.1392e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f1ab96050_wrap_pyop2_kernel_prolong       4 0.0 7.5377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f19f11910_wrap_pyop2_kernel_prolong       4 0.0 2.6837e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543ae5b65d0_wrap_pyop2_kernel_prolong       4 0.0 7.5368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543ae5b5e90_wrap_pyop2_kernel_prolong       4 0.0 2.3140e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1cf75ef50_wrap_pyop2_kernel_prolong       4 0.0 7.5275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1cf75d4d0_wrap_pyop2_kernel_prolong       4 0.0 3.2391e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fa4adff10_wrap_pyop2_kernel_prolong       4 0.0 7.5519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f9fea56d0_wrap_pyop2_kernel_prolong       4 0.0 3.2845e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a282efea10_wrap_pyop2_kernel_prolong       4 0.0 7.5349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2825e1c50_wrap_pyop2_kernel_prolong       4 0.0 2.7831e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c59f315590_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c57c9ef810_wrap_pyop2_kernel_prolong       4 0.0 4.1546e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff1ea6b590_wrap_pyop2_kernel_prolong       4 0.0 7.5404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff1ea2e6d0_wrap_pyop2_kernel_prolong       4 0.0 3.2146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a08ff4950_wrap_pyop2_kernel_prolong       4 0.0 7.5293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a08ff4310_wrap_pyop2_kernel_prolong       4 0.0 2.6953e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abe3527f10_wrap_pyop2_kernel_prolong       4 0.0 7.5294e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abe3525910_wrap_pyop2_kernel_prolong       4 0.0 3.7268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520e1b83fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520e1bb1810_wrap_pyop2_kernel_prolong       4 0.0 3.5024e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6dc3fbd90_wrap_pyop2_kernel_prolong       4 0.0 7.5693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6dc306350_wrap_pyop2_kernel_prolong       4 0.0 3.5243e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15367df08950_wrap_pyop2_kernel_prolong       4 0.0 7.5382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15367df09990_wrap_pyop2_kernel_prolong       4 0.0 3.9802e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537211df750_wrap_pyop2_kernel_prolong       4 0.0 7.5411e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15372122ba50_wrap_pyop2_kernel_prolong       4 0.0 5.1811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c26a809a90_wrap_pyop2_kernel_prolong       4 0.0 7.5504e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c26a809950_wrap_pyop2_kernel_prolong       4 0.0 1.9776e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150476c664d0_wrap_pyop2_kernel_prolong       4 0.0 7.5779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150476c66b90_wrap_pyop2_kernel_prolong       4 0.0 2.5049e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc425dccd0_wrap_pyop2_kernel_prolong       4 0.0 7.5360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc4288d110_wrap_pyop2_kernel_prolong       4 0.0 3.9832e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150516e305d0_wrap_pyop2_kernel_prolong       4 0.0 7.5209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150516e51650_wrap_pyop2_kernel_prolong       4 0.0 2.1610e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a3ff6f590_wrap_pyop2_kernel_prolong       4 0.0 7.5389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a3ffe5bd0_wrap_pyop2_kernel_prolong       4 0.0 3.7858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bca329bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bca329450_wrap_pyop2_kernel_prolong       4 0.0 4.3175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d37f74ea10_wrap_pyop2_kernel_prolong       4 0.0 7.5326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d37f74e1d0_wrap_pyop2_kernel_prolong       4 0.0 2.5464e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4e1f12d10_wrap_pyop2_kernel_prolong       4 0.0 7.5394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4e1ef5ed0_wrap_pyop2_kernel_prolong       4 0.0 3.8429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524123d7cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152412406ad0_wrap_pyop2_kernel_prolong       4 0.0 4.1769e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bcb239710_wrap_pyop2_kernel_prolong       4 0.0 7.5841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bcb23a2d0_wrap_pyop2_kernel_prolong       4 0.0 4.2772e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14814b905e50_wrap_pyop2_kernel_prolong       4 0.0 7.5376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14814b9057d0_wrap_pyop2_kernel_prolong       4 0.0 3.5912e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f47bfbd590_wrap_pyop2_kernel_prolong       4 0.0 7.5365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f47b5f0410_wrap_pyop2_kernel_prolong       4 0.0 3.3107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532a99bd9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532a99bf650_wrap_pyop2_kernel_prolong       4 0.0 4.5249e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146309689650_wrap_pyop2_kernel_prolong       4 0.0 7.5324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146308d17c10_wrap_pyop2_kernel_prolong       4 0.0 3.3787e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fd4acf310_wrap_pyop2_kernel_prolong       4 0.0 7.5622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fd4d00f50_wrap_pyop2_kernel_prolong       4 0.0 3.5451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530791bc9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15307931e6d0_wrap_pyop2_kernel_prolong       4 0.0 4.4773e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15138eadb110_wrap_pyop2_kernel_prolong       4 0.0 7.5383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15138e1cde90_wrap_pyop2_kernel_prolong       4 0.0 3.5805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df908e6450_wrap_pyop2_kernel_prolong       4 0.0 7.5481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df90927b10_wrap_pyop2_kernel_prolong       4 0.0 4.4856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b007a3b510_wrap_pyop2_kernel_prolong       4 0.0 7.5295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b007a44b10_wrap_pyop2_kernel_prolong       4 0.0 3.1786e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150551791190_wrap_pyop2_kernel_prolong       4 0.0 7.5257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505517a78d0_wrap_pyop2_kernel_prolong       4 0.0 3.0125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f9982f150_wrap_pyop2_kernel_prolong       4 0.0 7.5439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f997d8790_wrap_pyop2_kernel_prolong       4 0.0 3.8196e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15230ea91690_wrap_pyop2_kernel_prolong       4 0.0 7.5962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15230e954390_wrap_pyop2_kernel_prolong       4 0.0 4.6632e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485aa3eb550_wrap_pyop2_kernel_prolong       4 0.0 7.5312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485aa271a90_wrap_pyop2_kernel_prolong       4 0.0 4.2970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b785ecb5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b785e29490_wrap_pyop2_kernel_prolong       4 0.0 3.7983e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15123f119e90_wrap_pyop2_kernel_prolong       4 0.0 7.5431e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15123f13cbd0_wrap_pyop2_kernel_prolong       4 0.0 4.1514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dbe7cff90_wrap_pyop2_kernel_prolong       4 0.0 7.5635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152dbe9d6150_wrap_pyop2_kernel_prolong       4 0.0 5.0440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         75 1.0 1.3244e-02 3.8 0.00e+00 0.0 1.1e+05 4.0e+00 7.5e+01  0  0  1  0  1   0  0  1  0  4    -0
SFSetGraph            75 1.0 1.7264e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               75 1.0 1.8536e-02 2.2 0.00e+00 0.0 2.3e+05 9.8e+01 7.5e+01  0  0  2  0  1   0  0  3  0  4    -0
SFPack              9338 1.0 2.0700e+00 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            9338 1.0 5.5386e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1334 1.0 8.1519e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              5335 1.0 5.7835e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             5336 1.0 3.3517e+00 1.5 2.46e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 137916
VecAYPX             5336 1.0 3.6310e+00 3.1 1.23e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 63654
VecScatterBegin     9338 1.0 2.2841e+00 3.8 0.00e+00 0.0 8.0e+06 8.4e+04 0.0e+00  0  0 64 49  0   1  0 93 100  0    -0
VecScatterEnd       9338 1.0 3.0583e+01 29.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
MatMult             5336 1.0 1.3385e+02 1.3 8.72e+10 1.2 6.0e+06 1.1e+05 0.0e+00 22 14 48 49  0  45 47 70 100  0 122101
MatMultAdd          1334 1.0 3.7841e+00 1.3 1.84e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 91618
MatMultTranspose    1334 1.0 2.6720e+00 2.6 1.84e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 129751
MatSolve            6670 1.0 1.4450e+02 1.3 8.37e+10 1.2 2.6e+06 3.2e+02 3.8e+02 23 13 21  0  5  48 44 30  0 22 106134
MatLUFactorNum        66 1.0 5.9622e+00 1.5 9.19e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  5  0  0  0 278681
MatResidual         1334 1.0 3.6916e+01 1.5 2.21e+10 1.2 1.5e+06 1.1e+05 0.0e+00  6  4 12 12  0  12 12 17 25  0 112241
PCSetUpOnBlocks     2668 1.0 5.9811e+00 1.5 9.19e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  5  0  0  0 277798
PCApply             6670 1.0 1.4460e+02 1.3 8.37e+10 1.2 2.6e+06 3.2e+02 3.8e+02 23 13 21  0  5  48 44 30  0 22 106063
PCApplyOnBlocks     5336 1.0 1.2782e+02 1.4 8.35e+10 1.2 0.0e+00 0.0e+00 0.0e+00 19 13  0  0  0  40 44  0  0  0 119797
KSPSolve            4002 1.0 2.3307e+02 1.1 1.52e+11 1.2 7.0e+06 7.1e+04 1.7e+03 40 24 57 36 21  84 81 83 75 100 121118
MGSmooth Level 0    1334 1.0 3.2478e+01 2.3 8.64e+08 20.8 2.6e+06 3.2e+02 1.7e+03  4  0 21  0 21   8  0 30  0 100   720
MGSmooth Level 1    2668 1.0 2.2439e+02 1.2 1.61e+11 1.2 4.5e+06 1.1e+05 0.0e+00 37 26 36 36  0  78 86 52 75  0 133106
MGResid Level 1     1334 1.0 3.6921e+01 1.5 2.21e+10 1.2 1.5e+06 1.1e+05 0.0e+00  6  4 12 12  0  12 12 17 25  0 112227
MGInterp Level 1    2668 1.0 6.2677e+00 1.5 3.69e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 110629
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
         PetscRandom     9              9
           Index Set  1802           1802
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   386            461
              Vector   615            615
              Matrix   136            136
      Preconditioner     6              6
       Krylov Solver    14             14
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   119            119
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   174            174
           Weak Form   174            174
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   150            150
   Star Forest Graph    75              0
              Vector    75             75
========================================================================================================================
Average time to get PetscTime(): 2.46e-08
Average time for MPI_Barrier(): 7.8352e-06
Average time for zero size MPI_Send(): 2.41048e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_inexact_rich_lag3/sweep.profile # (source: code)
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

