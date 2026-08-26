****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0551.gadi.nci.org.au with 416 processes, by sg8812 on Tue Aug 25 22:27:18 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.355e+03     1.000   1.355e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                9.157e+11     1.152   8.681e+11  3.611e+14
Flops/sec:            6.758e+08     1.152   6.406e+08  2.665e+11
MPI Msg Count:        4.821e+05     3.701   3.330e+05  1.385e+08
MPI Msg Len (bytes):  2.089e+10     2.886   4.433e+04  6.142e+12
MPI Reductions:       3.532e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.4555e+02  40.3%  1.8351e+14  50.8%  2.330e+07  16.8%  1.052e+05       39.9%  2.040e+04  57.8%
 1:        MG Apply: 8.0948e+02  59.7%  1.7761e+14  49.2%  1.152e+08  83.2%  3.203e+04       60.1%  1.490e+04  42.2%

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

BuildTwoSided        732 1.0 2.0606e+01 5.3 0.00e+00 0.0 2.1e+05 4.0e+00 6.4e+02  1  0  0  0  2   2  0  1  0  3    -0
BuildTwoSidedF       558 1.0 2.0328e+01 5.2 0.00e+00 0.0 2.1e+05 6.0e+05 5.6e+02  1  0  0  2  2   2  0  1  5  3    -0
SFSetGraph           180 1.1 9.7012e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              174 1.1 3.3049e-01 5.8 0.00e+00 0.0 2.2e+05 1.4e+03 8.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         449 1.0 1.7665e-01 4.2 0.00e+00 0.0 9.1e+05 6.8e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
SFBcastEnd           449 1.0 9.2891e+00 151.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 3.6837e-02 17.1 0.00e+00 0.0 3.3e+05 9.2e+04 0.0e+00  0  0  0  1  0   0  0  1  1  0    -0
SFReduceEnd          154 1.0 3.5496e+00 126.1 1.32e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1084
SFFetchOpBegin         4 1.0 2.8710e-05 6.4 0.00e+00 0.0 7.1e+03 8.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 8.6640e-04 26.9 0.00e+00 0.0 7.1e+03 8.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 1.6952e-03 2.8 0.00e+00 0.0 4.0e+03 2.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 1.1043e-02 1.4 0.00e+00 0.0 1.9e+05 1.0e+02 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 5.5718e-03 3.4 0.00e+00 0.0 8.6e+04 4.7e+01 3.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 5.7996e-05 4.1 0.00e+00 0.0 2.3e+03 1.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            196104 1.1 2.8463e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          196108 1.1 8.4756e-02 5.3 1.32e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 45395
VecDot                91 1.0 3.2297e-01 11.1 3.31e+07 1.2 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 41048
VecMDot             9041 1.0 8.2309e+01 2.6 3.99e+10 1.2 0.0e+00 0.0e+00 9.0e+03  4  4  0  0 26   9  9  0  0 44 194252
VecNorm             9705 1.0 1.0786e+01 3.2 3.17e+09 1.2 0.0e+00 0.0e+00 9.7e+03  1  0  0  0 27   1  1  0  0 48 117595
VecScale            9493 1.0 3.5830e-01 1.2 1.54e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1726853
VecCopy              819 1.0 4.5143e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2727 1.0 8.4090e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              452 1.0 1.6030e-01 1.5 1.31e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 328267
VecWAXPY             270 1.0 2.1890e-01 2.0 4.91e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 89847
VecMAXPY            9493 1.0 4.2362e+01 1.1 4.29e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   7  9  0  0  0 405402
VecScatterBegin   195497 1.1 4.9731e+00 1.7 0.00e+00 0.0 2.1e+07 1.0e+05 0.0e+00  0  0 15 35  0   1  0 91 87  0    -0
VecScatterEnd     195497 1.1 4.5512e+01 30.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
VecReduceArith       182 1.0 3.1589e-02 2.0 6.62e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 839380
VecReduceComm         91 1.0 1.0198e-01 27.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        2002 1.0 3.1075e+00 4.8 5.47e+08 1.2 0.0e+00 0.0e+00 2.0e+03  0  0  0  0  6   0  0  0  0 10 70536
MatMult             9311 1.0 2.3681e+02 1.2 1.69e+11 1.1 2.1e+07 1.0e+05 0.0e+00 16 19 15 35  0  40 37 91 87  0 285671
MatSolve           93093 1.1 1.4714e+01 1.6 8.54e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 232615
MatLUFactorSym        93 1.1 2.8756e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      8464 1.1 3.1501e+00 1.3 3.82e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 485662
MatILUFactorSym        1 1.0 9.3023e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    9332 1.1 2.0339e+01 3.7 0.00e+00 0.0 2.1e+05 6.0e+05 5.6e+02  1  0  0  2  2   2  0  1  5  3    -0
MatAssemblyEnd      9332 1.1 4.1783e+00 8.1 5.65e+07 0.0 1.4e+04 9.3e+03 4.4e+01  0  0  0  0  0   0  0  0  0  0  1779
MatGetRowIJ           93 1.1 2.3832e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      91 1.0 7.4194e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.3e+01  0  0  0  0  0   1  0  0  0  0    -0
MatGetOrdering        93 1.1 1.8794e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 3.2751e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 9.8747e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.4338e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.3810e+00 1.2 2.65e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 765986
MatPtAPSymbolic        2 1.0 1.7882e-01 1.1 0.00e+00 0.0 1.4e+04 1.2e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 7.9421e+00 1.0 1.01e+10 1.1 4.2e+05 2.2e+05 1.9e+02  1  1  0  1  1   1  2  2  4  1 505870
MatGetLocalMat       184 1.0 4.3106e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 3.9345e-01 2.2 0.00e+00 0.0 4.2e+05 2.2e+05 0.0e+00  0  0  0  2  0   0  0  2  4  0    -0
MatSetPreallCOO       16 1.0 6.2141e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 3.0240e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 7.6934e+01 1.0 4.53e+10 1.2 4.6e+06 7.0e+04 4.4e+03  6  5  3  5 12  14 10 20 13 22 235657
PCApply             7221 1.0 8.3032e+02 1.1 4.48e+11 1.2 1.2e+08 3.2e+04 1.5e+04 60 49 83 60 42 Multiple stages 213911
PCApplyOnBlocks    93093 1.1 1.7681e+01 1.5 1.24e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  3  0  0  0 279985
KSPSetUp              91 1.0 1.5975e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.0938e+03 1.0 6.81e+11 1.2 1.3e+08 4.2e+04 3.0e+04 81 75 95 91 84 Multiple stages 247254
KSPGMRESOrthog      9041 1.0 1.1978e+02 1.7 7.98e+10 1.2 0.0e+00 0.0e+00 9.0e+03  7  9  0  0 26  16 17  0  0 44 266974
DMRefine               1 1.0 1.5314e-01 1.0 2.40e+03 1.0 1.4e+04 4.1e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     7
Mesh Partition         3 1.0 2.1095e-01 1.0 0.00e+00 0.0 5.4e+04 8.3e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 2.7915e-02 1.1 0.00e+00 0.0 1.8e+05 1.0e+02 1.8e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 5.5672e-03 1518.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 3.0030e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 5.1671e-03 1.5 0.00e+00 0.0 1.0e+04 6.9e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 1.5468e-03 4.2 0.00e+00 0.0 5.2e+03 2.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 3.4174e-03 1.8 0.00e+00 0.0 5.6e+03 3.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 2.7163e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.1825e-01 1.0 0.00e+00 0.0 1.6e+04 3.9e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 3.2233e-03 1.1 0.00e+00 0.0 3.1e+04 1.6e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 1.3371e-02 1.0 0.00e+00 0.0 8.7e+04 1.0e+02 1.1e+02  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        2 1.0 2.5048e-02 1.0 0.00e+00 0.0 2.3e+05 8.4e+01 1.6e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        5 1.0 5.8027e-03 1.3 0.00e+00 0.0 4.6e+04 7.0e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 5.0556e-04 1.2 0.00e+00 0.0 3.5e+04 4.7e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 4.7410e-03 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 1.0253e-03 29.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.8689e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 5.8713e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.2348e-03 1.9 0.00e+00 0.0 7.0e+03 3.2e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 7.9466e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.3022e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.8827e-04 2.9 0.00e+00 0.0 7.0e+03 3.2e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.6002e-05 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 5.2068e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 2.7739e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.3219e+03 1.0 9.16e+11 1.2 1.4e+08 4.4e+04 3.5e+04 98 100 100 100 98 Multiple stages 273178
SNESSetUp              1 1.0 4.0207e-05 7.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.5422e+01 1.1 7.88e+10 1.3 6.3e+05 1.1e+05 1.0e+00  3  8  0  1  0   8 16  3  3  0 648011
SNESJacobianEval      91 1.0 1.0270e+02 1.0 1.13e+11 1.3 4.1e+05 3.4e+05 3.6e+02  8 12  0  2  1  19 23  2  6  2 411755
SNESLineSearch        91 1.0 2.4279e+01 1.0 6.13e+10 1.2 6.2e+05 1.1e+05 3.6e+02  2  6  0  1  1   4 13  3  3  2 944922
DualSpaceSetUp         4 1.0 5.9426e-03 2.2 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     5
FESetUp                4 1.0 1.2837e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.3519e+03 1.0 9.16e+11 1.2 1.4e+08 4.4e+04 3.5e+04 100 100 100 100 100 Multiple stages 267113
firedrake.__init__       1 1.0 1.4872e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 6.7436e+00 19.2 0.00e+00 0.0 2.5e+05 7.8e+01 1.9e+02  0  0  0  0  1   1  0  1  0  1    -0
CreateMesh             2 1.0 3.5067e-01 1.0 0.00e+00 0.0 4.8e+05 9.6e+01 3.2e+02  0  0  0  0  1   0  0  2  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.3437e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.6960e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.8935e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 6.5833e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 8.9110e-02 1.0 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.8643e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 8.6687e-02 1.0 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 8.4452e-02 1.0 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 8.4336e-02 1.0 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 4.9845e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 2.2638e-02 1.1 0.00e+00 0.0 3.3e+04 6.8e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 7.5022e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.7688e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 3.5396e-02 10.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 3.3927e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.5950e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.3101e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0105e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 3.3868e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 5.5293e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.4051e+02 1.1 1.92e+11 1.3 5.7e+05 1.1e+05 1.2e+01 10 20  0  1  0  24 39  2  3  0 510376
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 3.3488e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 3.7596e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.1689e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.2724e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.8944e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.9921e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.9920e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.0599e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.0432e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 3.7486e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.7053e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.1601e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.7366e-01 1.0 2.73e+06 1.1 9.4e+03 2.0e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1122
firedrake.interpolation.interpolate       6 1.0 1.3573e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.3439e+01 1.0 4.29e+06 1.1 5.3e+04 3.5e+03 9.7e+01  1  0  0  0  0   2  0  0  0  0   128
firedrake.formmanipulation.split_form       4 1.0 4.2553e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.4790e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.0275e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.3750e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.1708e-01 4.1 0.00e+00 0.0 5.7e+05 1.1e+05 2.0e+00  0  0  0  1  0   0  0  2  3  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.4418e+00 1.0 4.29e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   499
firedrake.halo.Halo.global_to_local_end     243 1.0 8.8638e+00 231.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.0552e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.8067e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.7428e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.8677e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.4173e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.8436e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3989e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.2275e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.5466e+00 1.0 0.00e+00 0.0 1.4e+04 6.1e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9519e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4117e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1489e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1489e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         3 1.0 2.7491e+00 1.3 0.00e+00 0.0 2.1e+04 2.0e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 4.4832e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.3220e+03 1.0 9.16e+11 1.2 1.4e+08 4.4e+04 3.5e+04 98 100 100 100 99 Multiple stages 273163
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.3341e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2734e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 4.0883e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.1251e+00 1.2 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  4  0  0  0 745928
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0748e+00 1.0 3.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7129
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0515e+00 1.0 3.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7210
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0581e+01 1.2 1.75e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 660924
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7209e+01 1.3 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   3  9  0  0  0 906538
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.9916e-02 7.5 0.00e+00 0.0 2.8e+05 1.1e+05 0.0e+00  0  0  0  1  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.5496e+00 122.3 1.32e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1084
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.8400e+01 1.3 2.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  5  0  0  0 506939
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4223e+00 1.0 3.37e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5578
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3713e+00 1.0 3.37e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5698
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7997e+01 1.1 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   5  5  0  0  0 351057
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.6181e+01 1.5 6.55e+10 1.4 0.0e+00 0.0e+00 0.0e+00  3  6  0  0  0   7 13  0  0  0 500173
firedrake.dmhooks.get_function_space       2 1.0 2.4139e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.5190e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 9.7686e+00 1.0 0.00e+00 0.0 3.0e+04 1.1e+02 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 9.7585e+00 1.0 0.00e+00 0.0 2.1e+04 9.1e+01 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 6.1301e+00 1.0 0.00e+00 0.0 1.2e+04 3.5e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.8486e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.8375e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.4191e+00 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.4111e+00 21.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.2565e+00 49.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 4.7236e+00 712.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 4.7235e+00 721.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 1.9506e-02 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 1.4327e-02 13.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.2870e-03 17.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.5706e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.7390e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.3782e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 9.9890e-03 30.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 3.6278e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.7209e-02 3.4 0.00e+00 0.0 9.1e+03 1.6e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.2125e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.3214e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 7.7320e-01 1.1 5.06e+07 1.2 2.3e+06 2.9e+02 2.1e+03  0  0  2  0  6   0  0 10  0 10 25809
MGSetup Level 1       91 1.0 5.5682e+01 1.0 3.52e+10 1.2 2.1e+06 1.1e+05 2.0e+03  4  4  1  4  6  10  8  9  9 10 253140

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 1.6083e-02 3.8 0.00e+00 0.0 2.0e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            91 1.0 5.7252e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 2.2265e-02 2.8 0.00e+00 0.0 3.9e+05 3.6e+01 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFPack           2765643 1.1 6.2084e+00 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2765643 1.1 1.5675e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            43326 1.0 5.1875e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             79429 1.0 1.2700e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAYPX            72210 1.0 1.3696e+01 1.8 7.90e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 231063
VecAXPBYCZ         14442 1.0 8.9831e-03 2.8 2.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1185319
VecScatterBegin  2765643 1.1 3.8960e+01 1.2 0.00e+00 0.0 1.1e+08 3.2e+04 0.0e+00  3  0 82 60  0   4  0 99 100  0    -0
VecScatterEnd    2765643 1.1 7.1985e+01 12.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            43326 1.0 4.0874e+02 1.1 2.91e+11 1.1 9.9e+07 3.7e+04 0.0e+00 28 32 71 60  0  47 66 86 100  0 284898
MatMultAdd         14442 1.0 1.9976e+01 1.2 1.05e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 211083
MatMultTranspose   14442 1.0 1.6096e+01 2.1 1.05e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 261959
MatSolve         1364769 1.1 3.5132e+02 1.2 1.28e+11 1.2 1.7e+07 1.3e+02 4.6e+02 24 14 12  0  1  40 28 14  0  3 141051
MatLUFactorNum        90 1.0 4.6651e+00 1.0 3.70e+07 229.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   153
MatResidual        14442 1.0 2.1251e+02 1.2 1.47e+11 1.1 3.3e+07 5.6e+04 0.0e+00 14 16 24 30  0  24 33 29 50  0 276278
PCSetUp               90 1.0 4.6660e+00 1.0 3.70e+07 229.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   153
PCSetUpOnBlocks    14442 1.0 7.0383e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            21663 1.0 4.1221e+02 1.2 1.28e+11 1.2 8.2e+07 2.1e+02 7.7e+03 28 14 59  0 22  47 28 71  0 52 120706
PCApplyOnBlocks  1357548 1.1 2.1937e+02 1.3 1.23e+11 1.2 0.0e+00 0.0e+00 0.0e+00 14 14  0  0  0  23 28  0  0  0 225457
KSPSolve           21663 1.0 6.1189e+02 1.1 2.81e+11 1.2 9.9e+07 1.9e+04 1.5e+04 43 31 71 30 42  72 62 86 50 100 180636
MGSmooth Level 0    7221 1.0 1.7519e+02 1.3 5.38e+09 6.4 8.2e+07 2.1e+02 1.5e+04 11  0 59  0 42  19  0 71  0 100  2560
MGSmooth Level 1   14442 1.0 4.6561e+02 1.2 2.75e+11 1.1 1.6e+07 1.1e+05 0.0e+00 32 30 12 30  0  53 62 14 50  0 236423
MGResid Level 1     7221 1.0 2.1210e+02 1.2 1.47e+11 1.1 1.6e+07 1.1e+05 0.0e+00 14 16 12 30  0  24 33 14 50  0 276607
MGInterp Level 1   14442 1.0 3.5636e+01 1.4 2.10e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 236169
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
           Index Set  2831           2831
   IS L to G Mapping   201            197
             Section   303            303
   Star Forest Graph   367            366
              Vector  1019           1015
              Matrix   565            551
      Preconditioner   102            102
       Krylov Solver   100            100
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
Average time to get PetscTime(): 2.55e-08
Average time for MPI_Barrier(): 1.18416e-05
Average time for zero size MPI_Send(): 2.27371e-06
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

