****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0216.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 16:58:11 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.138e+02     1.000   4.138e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.128e+11     1.206   4.816e+11  5.008e+13
Flops/sec:            1.239e+09     1.206   1.164e+09  1.210e+11
MPI Msg Count:        1.583e+05     3.389   1.152e+05  1.198e+07
MPI Msg Len (bytes):  3.994e+09     2.999   2.445e+04  2.930e+11
MPI Reductions:       1.703e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.7284e+02  65.9%  4.2198e+13  84.3%  3.341e+06  27.9%  6.011e+04       68.6%  1.300e+04  76.4%
 1:        MG Apply: 1.4094e+02  34.1%  7.8844e+12  15.7%  8.641e+06  72.1%  1.066e+04       31.4%  4.008e+03  23.5%

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

BuildTwoSided       1960 1.0 2.3900e+01 8.7 0.00e+00 0.0 9.9e+04 4.0e+00 1.7e+03  3  0  1  0 10   5  0  3  0 13    -0
BuildTwoSidedF      1600 1.0 2.3849e+01 8.3 0.00e+00 0.0 1.2e+05 7.3e+05 1.6e+03  3  0  1 30  9   5  0  4 43 12    -0
SFSetGraph           369 1.1 8.1113e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              360 1.1 5.9653e-01 23.7 0.00e+00 0.0 7.8e+04 5.3e+02 1.2e+02  0  0  1  0  1   0  0  2  0  1    -0
SFBcastBegin         916 1.0 2.1411e-01 3.6 0.00e+00 0.0 4.5e+05 4.3e+04 0.0e+00  0  0  4  7  0   0  0 13 10  0    -0
SFBcastEnd           916 1.0 7.6374e+00 93.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        346 1.0 3.3834e-02 8.6 0.00e+00 0.0 1.8e+05 5.4e+04 0.0e+00  0  0  1  3  0   0  0  5  5  0    -0
SFReduceEnd          346 1.0 1.7859e+00 63.8 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   667
SFFetchOpBegin         6 1.0 2.8905e-05 5.0 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.0463e-04 7.3 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 5.7624e-04 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 4.1312e-03 1.3 0.00e+00 0.0 6.2e+04 8.1e+01 6.0e+01  0  0  1  0  0   0  0  2  0  0    -0
SFSectionSF           53 1.0 2.7788e-03 1.9 0.00e+00 0.0 3.1e+04 3.6e+01 5.3e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.2757e-05 2.3 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            172634 1.1 5.5268e-01 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          172640 1.1 7.9569e-02 6.5 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14980
VecDot               226 1.0 4.4467e-01 4.6 9.76e+07 1.2 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  2 22015
VecMDot             3886 1.0 8.2002e+00 2.5 3.95e+09 1.2 0.0e+00 0.0e+00 3.9e+03  1  1  0  0 23   2  1  0  0 30 48355
VecNorm             5125 1.0 3.8859e+00 4.3 1.20e+09 1.2 0.0e+00 0.0e+00 5.1e+03  1  0  0  0 30   1  0  0  0 39 31086
VecScale            4356 1.0 1.2409e-01 1.4 4.36e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 352526
VecCopy             1827 1.0 9.4064e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1618 1.0 4.9156e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              470 1.0 1.4018e-01 1.2 1.05e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 75320
VecWAXPY             226 1.0 2.1326e-01 1.2 4.88e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 22951
VecMAXPY            4356 1.0 5.1847e+00 1.2 4.72e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 91317
VecScatterBegin   171366 1.1 1.3705e+00 1.4 0.00e+00 0.0 2.2e+06 2.9e+04 0.0e+00  0  0 18 22  0   0  0 64 32  0    -0
VecScatterEnd     171366 1.1 7.6218e+00 38.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          16 1.0 6.0911e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       452 1.0 1.2974e-01 1.7 1.95e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 150908
VecReduceComm        226 1.0 1.6878e-01 11.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        2691 1.0 8.4386e-01 5.3 2.30e+08 1.2 0.0e+00 0.0e+00 2.7e+03  0  0  0  0 16   0  0  0  0 21 27317
MatMult             4112 1.0 4.4261e+01 1.1 3.06e+10 1.2 2.2e+06 2.9e+04 0.0e+00 10  6 18 22  0  15  7 64 32  0 69026
MatSolve           85624 1.1 4.5398e+00 1.2 2.65e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 58485
MatLUFactorSym       241 1.2 7.7809e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      4068 1.1 5.1999e-01 1.2 5.60e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 107792
MatILUFactorSym        2 1.0 1.1759e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    6863 1.1 2.4485e+01 3.4 0.00e+00 0.0 1.2e+05 7.3e+05 1.6e+03  4  0  1 30  9   6  0  4 43 12    -0
MatAssemblyEnd      6863 1.1 5.3389e+00 5.6 1.27e+08 0.0 4.2e+03 3.8e+03 7.1e+01  1  0  0  0  0   1  0  0  0  1  1007
MatGetRowIJ          242 1.2 4.9973e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      16 1.0 1.1090e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  0  0  0  0  1   0  0  0  0  2    -0
MatGetOrdering       242 1.2 2.7726e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       904 1.0 3.9685e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 7.0219e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 7.5921e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1358 1.0 2.0627e+00 1.1 3.53e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 170663
MatPtAPSymbolic        3 1.0 1.0872e-01 1.0 0.00e+00 0.0 4.7e+03 3.4e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       678 1.0 1.2650e+01 1.0 1.41e+10 1.2 3.6e+05 6.0e+04 6.9e+02  3  3  3  7  4   5  3 11 11  5 111107
MatGetLocalMat       682 1.0 8.7850e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        682 1.0 4.6113e-01 2.0 0.00e+00 0.0 3.6e+05 6.0e+04 0.0e+00  0  0  3  7  0   0  0 11 11  0    -0
MatSetPreallCOO       32 1.0 8.5610e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 4.0550e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              226 1.0 4.1838e+01 1.0 2.58e+10 1.2 1.7e+06 1.9e+04 7.2e+03 10  5 14 11 42  15  6 50 16 55 61750
PCApply             1439 1.0 1.4288e+02 1.0 7.88e+10 1.2 8.6e+06 1.1e+04 4.0e+03 34 16 72 31 24 Multiple stages 55183
PCApplyOnBlocks    85624 1.1 5.2218e+00 1.2 3.20e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 61370
KSPSetUp             226 1.0 7.5730e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 1.7848e+02 1.0 1.08e+11 1.2 9.4e+06 1.5e+04 7.1e+03 43 21 78 47 42 Multiple stages 60285
KSPGMRESOrthog      3886 1.0 1.2062e+01 1.6 7.91e+09 1.2 0.0e+00 0.0e+00 3.9e+03  2  2  0  0 23   3  2  0  0 30 65750
DMRefine               2 1.0 1.8723e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     1
DMPlexCreateGmsh       1 1.0 1.2245e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 2.6183e+00 200.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 4.2982e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
Mesh Migration         4 1.0 1.0334e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 1.1947e-03 571.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 5.4150e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.4111e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.1904e-03 1.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 7.1060e-04 2.7 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.2167e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.6468e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.3374e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.2731e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 7.9738e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexDistField        7 1.0 1.8973e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         2 1.0 2.4552e-04 1.1 0.00e+00 0.0 5.4e+03 2.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.4460e-03 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9526e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0581e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.1073e-03 1.5 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1965e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.1668e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 2.8767e-04 1.8 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.8627e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.0016e-04 1.8 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 7.8072e-05 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 3.4309e+02 1.0 5.13e+11 1.2 1.2e+07 2.5e+04 1.6e+04 83 100 98 100 95 Multiple stages 145962
SNESSetUp              1 1.0 4.6773e-05 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 2.1887e+01 1.1 1.46e+11 1.2 3.6e+05 6.0e+04 0.0e+00  5 28  3  7  0   8 33 11 11  0 644996
SNESJacobianEval     226 1.0 9.5287e+01 1.0 2.29e+11 1.2 2.4e+05 3.9e+05 9.0e+02 23 44  2 32  5  35 53  7 46  7 233133
SNESLineSearch       226 1.0 1.4023e+01 1.0 1.14e+11 1.2 3.6e+05 6.0e+04 9.0e+02  3 22  3  7  5   5 26 11 11  7 784373
DualSpaceSetUp         8 1.0 8.5754e-03 1.8 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     1
FESetUp                8 1.0 1.5287e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.0967e+02 1.0 5.13e+11 1.2 1.2e+07 2.4e+04 1.7e+04 99 100 100 100 100 Multiple stages 122250
firedrake.__init__       1 1.0 2.0124e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   7  0  0  0  0    -0
CreateMesh             3 1.0 2.7139e+00 25.2 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  1  0  3   1  0  5  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 2.6194e+00 200.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.1974e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.3650e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 7.4403e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.7618e-04 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 4.0044e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.6610e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 3.6940e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 3.3103e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 3.2914e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 1.3938e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.1938e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.3954e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 2.2416e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 1.4196e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.9924e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.1859e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 6.7515e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3353e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.9861e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     662 1.0 9.5770e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2433 1.0 1.1061e+02 1.2 3.75e+11 1.2 3.3e+05 5.9e+04 3.8e+01 25 73  3  7  0  38 86 10 10  0 328459
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.9426e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4866 1.0 2.8866e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  7  0  0  0  0  10  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0775e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.4161e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.8182e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.1724e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   7  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.1723e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.1375e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.1155e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
ParLoopRednBegin    2433 1.0 6.7822e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2433 1.0 5.7151e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.0121e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 4.6845e+00 1.0 7.29e+06 1.2 8.9e+03 6.7e+03 1.3e+01  1  0  0  0  0   2  0  0  0  0   156
firedrake.interpolation.interpolate      21 1.0 6.5255e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.4165e+01 1.0 4.51e+07 1.2 3.2e+04 9.1e+03 1.8e+02  3  0  0  0  1   5  0  1  0  1   319
firedrake.formmanipulation.split_form      16 1.0 5.0524e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.0235e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 1.9213e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.1 1.2320e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     623 1.0 1.1727e+00 6.9 0.00e+00 0.0 3.3e+05 5.8e+04 4.0e+00  0  0  3  7  0   0  0 10 10  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.8468e+00 1.0 4.51e+07 1.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0   577
firedrake.halo.Halo.global_to_local_end     623 1.0 7.0017e+00 125.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 5.7586e+00 26.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
Parloop_set_#x14dbfffa3190_wrap_pyop2_kernel_prolong       4 0.0 8.7338e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbffffda10_wrap_pyop2_kernel_prolong       4 0.0 2.8673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.2333e+00 1.0 3.65e+07 1.2 8.1e+03 3.0e+04 1.1e+01  1  0  0  0  0   2  0  0  0  0   865
firedrake.function.Function.assign     314 1.0 8.6431e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.8821e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6383e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6229e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.0882e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3505e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9008e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1034e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.0292e+00 1.0 0.00e+00 0.0 3.2e+03 2.4e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 5.9202e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2484e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0682e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0682e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         4 1.0 1.8925e+00 1.2 0.00e+00 0.0 7.1e+03 5.4e+04 4.6e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         4 1.0 2.8111e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 3.4324e+02 1.0 5.13e+11 1.2 1.2e+07 2.5e+04 1.6e+04 83 100 98 100 96 Multiple stages 145896
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.1491e-01 1025.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1448e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.1486e-01 1214.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.1483e-01 1385.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 4.9579e+00 1.3 3.72e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   2  9  0  0  0 752757
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 1.1097e+00 1.0 9.61e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   868
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.2869e+00 1.0 3.55e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4879
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 3.7887e+00 1.1 3.54e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  8  0  0  0 936337
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 7.3583e+00 1.2 7.35e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2 14  0  0  0   2 16  0  0  0 928067
firedrake.halo.Halo.local_to_global_begin     301 1.0 4.0692e-02 3.8 0.00e+00 0.0 1.6e+05 6.0e+04 0.0e+00  0  0  1  3  0   0  0  5  5  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 1.7870e+00 60.7 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   667
Parloop_Cells_wrap_form00_cell_integral     452 1.0 1.7264e+01 1.4 5.20e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 12  0  0  0 301898
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 1.8155e+00 1.3 2.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2644
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 2.1309e+01 1.2 6.83e+10 1.2 0.0e+00 0.0e+00 0.0e+00  5 14  0  0  0   7 16  0  0  0 321300
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 4.3083e+01 1.3 1.09e+11 1.3 0.0e+00 0.0e+00 0.0e+00  9 20  0  0  0  14 24  0  0  0 235501
firedrake.dmhooks.get_function_space       2 1.0 2.6614e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 1.0008e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 5.9314e+00 1.0 0.00e+00 0.0 1.4e+04 8.1e+01 2.2e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 5.9222e+00 1.0 0.00e+00 0.0 9.6e+03 6.6e+01 1.2e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 5.6613e+00 1.0 0.00e+00 0.0 5.4e+03 2.9e+01 8.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 4.6119e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 4.6035e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 4.1450e+00 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 4.1308e+00 27.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 3.8031e+00 298.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 3.8029e+00 302.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 3.2435e-02 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 2.9289e-02 8.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.6598e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.9901e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.2263e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.6810e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 9.1307e-03 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 2.5651e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 1.2843e-02 1.4 0.00e+00 0.0 4.2e+03 1.1e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 4.7199e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.4311e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      226 1.0 3.6064e-01 1.1 1.49e+08 1.2 1.4e+06 2.5e+02 5.4e+03  0  0 11  0 32   0  0 40  0 41 41182
MGSetup Level 1      226 1.0 1.0631e+00 1.0 3.29e+08 1.2 5.2e+03 6.0e+04 2.7e+02  0  0  0  0  2   0  0  0  0  2 31028
firedrake.constant.Constant.assign      75 1.0 2.7607e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d9b7d57d0_wrap_pyop2_kernel_prolong       4 0.0 8.7221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d797557d0_wrap_pyop2_kernel_prolong       4 0.0 2.6742e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e1809a390_wrap_pyop2_kernel_prolong       4 0.0 8.7367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e182b9e90_wrap_pyop2_kernel_prolong       4 0.0 3.3668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c436d5f990_wrap_pyop2_kernel_prolong       4 0.0 8.7325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c436af0e50_wrap_pyop2_kernel_prolong       4 0.0 3.3602e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9b9239f90_wrap_pyop2_kernel_prolong       4 0.0 8.7359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9b9239110_wrap_pyop2_kernel_prolong       4 0.0 3.4126e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac0394f610_wrap_pyop2_kernel_prolong       4 0.0 8.7393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac03942350_wrap_pyop2_kernel_prolong       4 0.0 3.7355e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478a9e14310_wrap_pyop2_kernel_prolong       4 0.0 8.7307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478aa668590_wrap_pyop2_kernel_prolong       4 0.0 3.1115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15149a085610_wrap_pyop2_kernel_prolong       4 0.0 8.7325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15149a08fd50_wrap_pyop2_kernel_prolong       4 0.0 2.6084e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a35755110_wrap_pyop2_kernel_prolong       4 0.0 8.7346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a35583bd0_wrap_pyop2_kernel_prolong       4 0.0 3.4514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524be6f7d50_wrap_pyop2_kernel_prolong       4 0.0 8.7315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524be871010_wrap_pyop2_kernel_prolong       4 0.0 2.7930e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acc2bb6650_wrap_pyop2_kernel_prolong       4 0.0 8.7251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acc2bb5dd0_wrap_pyop2_kernel_prolong       4 0.0 3.7165e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c82f4e7550_wrap_pyop2_kernel_prolong       4 0.0 8.7335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c82f4f7bd0_wrap_pyop2_kernel_prolong       4 0.0 3.4504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153122e5d790_wrap_pyop2_kernel_prolong       4 0.0 8.7352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153122c1f610_wrap_pyop2_kernel_prolong       4 0.0 3.6053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbe4ef7010_wrap_pyop2_kernel_prolong       4 0.0 8.7161e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbe4f233d0_wrap_pyop2_kernel_prolong       4 0.0 2.9480e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14944111ff10_wrap_pyop2_kernel_prolong       4 0.0 8.7343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494410d2750_wrap_pyop2_kernel_prolong       4 0.0 3.4146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537a70c7590_wrap_pyop2_kernel_prolong       4 0.0 8.7319e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537a72fb3d0_wrap_pyop2_kernel_prolong       4 0.0 3.3907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c7f858e10_wrap_pyop2_kernel_prolong       4 0.0 8.7191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c7f8516d0_wrap_pyop2_kernel_prolong       4 0.0 2.6608e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4ba49df10_wrap_pyop2_kernel_prolong       4 0.0 8.7336e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4ba707450_wrap_pyop2_kernel_prolong       4 0.0 3.6626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b26c50b9d0_wrap_pyop2_kernel_prolong       4 0.0 8.7311e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b26c50b010_wrap_pyop2_kernel_prolong       4 0.0 3.2109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c16857ed0_wrap_pyop2_kernel_prolong       4 0.0 8.7265e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c16744490_wrap_pyop2_kernel_prolong       4 0.0 3.0497e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6698aa490_wrap_pyop2_kernel_prolong       4 0.0 8.7246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6698aa150_wrap_pyop2_kernel_prolong       4 0.0 3.0561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14783c485ed0_wrap_pyop2_kernel_prolong       4 0.0 8.7332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14783c485750_wrap_pyop2_kernel_prolong       4 0.0 4.2597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a983ba490_wrap_pyop2_kernel_prolong       4 0.0 8.7284e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a9395dd90_wrap_pyop2_kernel_prolong       4 0.0 3.5777e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151260b67ad0_wrap_pyop2_kernel_prolong       4 0.0 8.7252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15126008c810_wrap_pyop2_kernel_prolong       4 0.0 3.2068e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493d0ed2590_wrap_pyop2_kernel_prolong       4 0.0 8.7350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493d0fc2c10_wrap_pyop2_kernel_prolong       4 0.0 3.6107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a5702f290_wrap_pyop2_kernel_prolong       4 0.0 8.7410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a56e1b850_wrap_pyop2_kernel_prolong       4 0.0 4.2922e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d37ff2d0_wrap_pyop2_kernel_prolong       4 0.0 8.7195e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d37f9bd0_wrap_pyop2_kernel_prolong       4 0.0 2.7953e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466d11daed0_wrap_pyop2_kernel_prolong       4 0.0 8.7283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466d136b150_wrap_pyop2_kernel_prolong       4 0.0 2.7757e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a75783d90_wrap_pyop2_kernel_prolong       4 0.0 8.7332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a75781a10_wrap_pyop2_kernel_prolong       4 0.0 3.5618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5ca865a90_wrap_pyop2_kernel_prolong       4 0.0 8.7335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5ca9309d0_wrap_pyop2_kernel_prolong       4 0.0 3.0014e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14584e838bd0_wrap_pyop2_kernel_prolong       4 0.0 8.7198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14584ead2b50_wrap_pyop2_kernel_prolong       4 0.0 3.5851e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a53931dad0_wrap_pyop2_kernel_prolong       4 0.0 8.7241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a53931c3d0_wrap_pyop2_kernel_prolong       4 0.0 3.2477e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151687554e50_wrap_pyop2_kernel_prolong       4 0.0 8.7175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516877a7f10_wrap_pyop2_kernel_prolong       4 0.0 3.0390e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bbacb1b90_wrap_pyop2_kernel_prolong       4 0.0 8.7299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bbacb10d0_wrap_pyop2_kernel_prolong       4 0.0 3.2578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a581221e50_wrap_pyop2_kernel_prolong       4 0.0 8.7355e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a58089ce90_wrap_pyop2_kernel_prolong       4 0.0 3.1115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bcb1f5910_wrap_pyop2_kernel_prolong       4 0.0 8.7241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bcb1f6c10_wrap_pyop2_kernel_prolong       4 0.0 3.6799e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bde909ddd0_wrap_pyop2_kernel_prolong       4 0.0 8.7309e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bde909f950_wrap_pyop2_kernel_prolong       4 0.0 3.6062e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bffd2109d0_wrap_pyop2_kernel_prolong       4 0.0 8.7309e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bffd213c90_wrap_pyop2_kernel_prolong       4 0.0 3.8753e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15160d068a90_wrap_pyop2_kernel_prolong       4 0.0 8.7363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15160c709a10_wrap_pyop2_kernel_prolong       4 0.0 4.1583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475f3baad90_wrap_pyop2_kernel_prolong       4 0.0 8.7306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475f3a770d0_wrap_pyop2_kernel_prolong       4 0.0 2.7833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd656a5fd0_wrap_pyop2_kernel_prolong       4 0.0 8.7329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd656a5950_wrap_pyop2_kernel_prolong       4 0.0 2.9448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e249fa65d0_wrap_pyop2_kernel_prolong       4 0.0 8.7208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e249fa5d90_wrap_pyop2_kernel_prolong       4 0.0 3.6043e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510887135d0_wrap_pyop2_kernel_prolong       4 0.0 8.7196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510887119d0_wrap_pyop2_kernel_prolong       4 0.0 2.8172e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4ad6cd810_wrap_pyop2_kernel_prolong       4 0.0 8.7350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4ad6cfcd0_wrap_pyop2_kernel_prolong       4 0.0 3.2715e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2ed195d50_wrap_pyop2_kernel_prolong       4 0.0 8.7268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2ed195910_wrap_pyop2_kernel_prolong       4 0.0 3.5394e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c4d8babd0_wrap_pyop2_kernel_prolong       4 0.0 8.7231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c4e538ed0_wrap_pyop2_kernel_prolong       4 0.0 3.7775e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498c31ddb90_wrap_pyop2_kernel_prolong       4 0.0 8.7199e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498c31dd690_wrap_pyop2_kernel_prolong       4 0.0 3.5614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3a6b661d0_wrap_pyop2_kernel_prolong       4 0.0 8.7340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3a6b67c50_wrap_pyop2_kernel_prolong       4 0.0 3.5297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fb60ff810_wrap_pyop2_kernel_prolong       4 0.0 8.7374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fb5f9f510_wrap_pyop2_kernel_prolong       4 0.0 3.4991e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fcf0463d0_wrap_pyop2_kernel_prolong       4 0.0 8.7314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fcf044e50_wrap_pyop2_kernel_prolong       4 0.0 3.5461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548c22bf190_wrap_pyop2_kernel_prolong       4 0.0 8.7388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548c22cd710_wrap_pyop2_kernel_prolong       4 0.0 3.7863e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee1bf995d0_wrap_pyop2_kernel_prolong       4 0.0 8.7276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee1bdd8910_wrap_pyop2_kernel_prolong       4 0.0 3.3964e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fc7a4bc90_wrap_pyop2_kernel_prolong       4 0.0 8.7113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fc782d010_wrap_pyop2_kernel_prolong       4 0.0 2.7399e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0eb806550_wrap_pyop2_kernel_prolong       4 0.0 8.7147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0eb805ad0_wrap_pyop2_kernel_prolong       4 0.0 3.0936e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14917cea8d90_wrap_pyop2_kernel_prolong       4 0.0 8.7190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149177a766d0_wrap_pyop2_kernel_prolong       4 0.0 4.0025e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7673acdd0_wrap_pyop2_kernel_prolong       4 0.0 8.7178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b76743f010_wrap_pyop2_kernel_prolong       4 0.0 3.3444e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be27d668d0_wrap_pyop2_kernel_prolong       4 0.0 8.7119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be27dc2510_wrap_pyop2_kernel_prolong       4 0.0 3.1768e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148300839010_wrap_pyop2_kernel_prolong       4 0.0 8.7288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148300838c10_wrap_pyop2_kernel_prolong       4 0.0 2.8819e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529bd922cd0_wrap_pyop2_kernel_prolong       4 0.0 8.7214e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529bd9583d0_wrap_pyop2_kernel_prolong       4 0.0 2.6540e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa0d22ae10_wrap_pyop2_kernel_prolong       4 0.0 8.7229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa0d260f10_wrap_pyop2_kernel_prolong       4 0.0 2.8516e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525294af6d0_wrap_pyop2_kernel_prolong       4 0.0 8.7167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152529513350_wrap_pyop2_kernel_prolong       4 0.0 3.0256e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0789f3d10_wrap_pyop2_kernel_prolong       4 0.0 8.7281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0789f0d10_wrap_pyop2_kernel_prolong       4 0.0 3.7013e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d74a369dd0_wrap_pyop2_kernel_prolong       4 0.0 8.7239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d74a23e610_wrap_pyop2_kernel_prolong       4 0.0 3.2014e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153015d07f10_wrap_pyop2_kernel_prolong       4 0.0 8.7249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153015d04110_wrap_pyop2_kernel_prolong       4 0.0 3.5987e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e2f941a10_wrap_pyop2_kernel_prolong       4 0.0 8.7178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e2fba6050_wrap_pyop2_kernel_prolong       4 0.0 4.1551e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551348efd50_wrap_pyop2_kernel_prolong       4 0.0 8.7110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551349f5890_wrap_pyop2_kernel_prolong       4 0.0 2.8635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15535a19a1d0_wrap_pyop2_kernel_prolong       4 0.0 8.7274e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155359f9d690_wrap_pyop2_kernel_prolong       4 0.0 3.0446e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b795fbbd0_wrap_pyop2_kernel_prolong       4 0.0 8.7115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b7960e7d0_wrap_pyop2_kernel_prolong       4 0.0 2.7661e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3ff25d450_wrap_pyop2_kernel_prolong       4 0.0 8.7207e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3ff274190_wrap_pyop2_kernel_prolong       4 0.0 3.1502e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457a4d606d0_wrap_pyop2_kernel_prolong       4 0.0 8.7248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457a4d62690_wrap_pyop2_kernel_prolong       4 0.0 2.9550e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15294ea63590_wrap_pyop2_kernel_prolong       4 0.0 8.7199e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15294ec65f50_wrap_pyop2_kernel_prolong       4 0.0 3.9697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520853b3a90_wrap_pyop2_kernel_prolong       4 0.0 8.7235e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520853b1710_wrap_pyop2_kernel_prolong       4 0.0 3.0519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acdbe72fd0_wrap_pyop2_kernel_prolong       4 0.0 8.7210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acdbfdf710_wrap_pyop2_kernel_prolong       4 0.0 3.2468e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1dc62890_wrap_pyop2_kernel_prolong       4 0.0 8.7279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1dc61d90_wrap_pyop2_kernel_prolong       4 0.0 3.8530e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515ac6cde10_wrap_pyop2_kernel_prolong       4 0.0 8.7164e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515ac6ce390_wrap_pyop2_kernel_prolong       4 0.0 3.0527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bcaaf2410_wrap_pyop2_kernel_prolong       4 0.0 8.7327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bcaaf1390_wrap_pyop2_kernel_prolong       4 0.0 3.4447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4acab0f50_wrap_pyop2_kernel_prolong       4 0.0 8.7170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4acab00d0_wrap_pyop2_kernel_prolong       4 0.0 3.5626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146951f7fbd0_wrap_pyop2_kernel_prolong       4 0.0 8.7167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146952009250_wrap_pyop2_kernel_prolong       4 0.0 3.2732e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21a25dd50_wrap_pyop2_kernel_prolong       4 0.0 8.7117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21a2bfed0_wrap_pyop2_kernel_prolong       4 0.0 2.6105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e409d7ed0_wrap_pyop2_kernel_prolong       4 0.0 8.7198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e40871890_wrap_pyop2_kernel_prolong       4 0.0 3.5823e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155096e46990_wrap_pyop2_kernel_prolong       4 0.0 8.7159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15509700d710_wrap_pyop2_kernel_prolong       4 0.0 3.4335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e2110bd0_wrap_pyop2_kernel_prolong       4 0.0 8.7277e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e0dc5490_wrap_pyop2_kernel_prolong       4 0.0 3.1907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539a8e51310_wrap_pyop2_kernel_prolong       4 0.0 8.7239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539a3f4c9d0_wrap_pyop2_kernel_prolong       4 0.0 3.3509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac2eff93d0_wrap_pyop2_kernel_prolong       4 0.0 8.7183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac2effb090_wrap_pyop2_kernel_prolong       4 0.0 3.4628e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfa37168d0_wrap_pyop2_kernel_prolong       4 0.0 8.7122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfa3997610_wrap_pyop2_kernel_prolong       4 0.0 2.8233e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ef6abfbd0_wrap_pyop2_kernel_prolong       4 0.0 8.7117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ef6d1c590_wrap_pyop2_kernel_prolong       4 0.0 3.3661e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464ad8e2510_wrap_pyop2_kernel_prolong       4 0.0 8.7213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464ad8e2cd0_wrap_pyop2_kernel_prolong       4 0.0 3.2538e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb9b7b6cd0_wrap_pyop2_kernel_prolong       4 0.0 8.7177e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb9b80b9d0_wrap_pyop2_kernel_prolong       4 0.0 3.2393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feefb53750_wrap_pyop2_kernel_prolong       4 0.0 8.7305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feef1d02d0_wrap_pyop2_kernel_prolong       4 0.0 3.6990e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e40043d390_wrap_pyop2_kernel_prolong       4 0.0 8.7134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e40044fcd0_wrap_pyop2_kernel_prolong       4 0.0 3.2153e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af22bf3a90_wrap_pyop2_kernel_prolong       4 0.0 8.7167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af22c26310_wrap_pyop2_kernel_prolong       4 0.0 3.2693e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1988f36d0_wrap_pyop2_kernel_prolong       4 0.0 8.7143e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d198a73910_wrap_pyop2_kernel_prolong       4 0.0 2.8007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14750ba09790_wrap_pyop2_kernel_prolong       4 0.0 8.7325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14750ba23a90_wrap_pyop2_kernel_prolong       4 0.0 3.6722e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd93e12590_wrap_pyop2_kernel_prolong       4 0.0 8.7224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd93d25550_wrap_pyop2_kernel_prolong       4 0.0 3.1651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cef9eb7390_wrap_pyop2_kernel_prolong       4 0.0 8.7310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cef9ed7610_wrap_pyop2_kernel_prolong       4 0.0 3.8506e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477cc1ed850_wrap_pyop2_kernel_prolong       4 0.0 8.7178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477cc1ec550_wrap_pyop2_kernel_prolong       4 0.0 3.4916e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504c20bca90_wrap_pyop2_kernel_prolong       4 0.0 8.7166e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504c1eec450_wrap_pyop2_kernel_prolong       4 0.0 3.5710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468060d7310_wrap_pyop2_kernel_prolong       4 0.0 8.7123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146806082bd0_wrap_pyop2_kernel_prolong       4 0.0 3.2334e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cf1b69c50_wrap_pyop2_kernel_prolong       4 0.0 8.7250e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cf1b69450_wrap_pyop2_kernel_prolong       4 0.0 2.7361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba1f2ca10_wrap_pyop2_kernel_prolong       4 0.0 8.7211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba1f5d690_wrap_pyop2_kernel_prolong       4 0.0 3.8983e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145815fb4290_wrap_pyop2_kernel_prolong       4 0.0 8.7133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145815fb6150_wrap_pyop2_kernel_prolong       4 0.0 3.2665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146154511750_wrap_pyop2_kernel_prolong       4 0.0 8.7206e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146154513590_wrap_pyop2_kernel_prolong       4 0.0 3.9769e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fe5ecfd90_wrap_pyop2_kernel_prolong       4 0.0 8.7175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fe5e80e50_wrap_pyop2_kernel_prolong       4 0.0 3.8032e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e41b298250_wrap_pyop2_kernel_prolong       4 0.0 8.7229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e41a9e1510_wrap_pyop2_kernel_prolong       4 0.0 3.7326e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        226 1.0 4.1706e-03 1.6 0.00e+00 0.0 9.7e+04 4.0e+00 2.3e+02  0  0  1  0  1   0  0  1  0  6    -0
SFSetGraph           226 1.0 7.5199e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.0 6.9976e-03 1.4 0.00e+00 0.0 1.9e+05 2.3e+01 2.3e+02  0  0  2  0  1   0  0  2  0  6    -0
SFPack           1411659 1.2 6.0053e-01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1411659 1.2 6.8048e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            10073 1.0 8.7916e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             20143 1.0 3.0446e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             2878 1.0 1.6624e+00 1.6 1.24e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 74988
VecAYPX            20146 1.0 2.0641e+00 3.0 6.32e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 30700
VecAXPBYCZ          5756 1.0 3.1193e-03 2.3 1.30e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 416298
VecScatterBegin  1411659 1.2 9.0984e+00 1.2 0.00e+00 0.0 8.2e+06 1.1e+04 0.0e+00  2  0 68 31  0   6  0 94 100  0    -0
VecScatterEnd    1411659 1.2 1.3408e+01 9.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult            14390 1.0 6.6168e+01 1.2 4.42e+10 1.2 7.5e+06 1.2e+04 0.0e+00 14  9 63 31  0  43 56 87 100  0 66712
MatMultAdd          4317 1.0 3.8997e+00 1.3 1.87e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 48150
MatMultTranspose    4317 1.0 3.0858e+00 1.9 1.87e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 60849
MatSolve          703671 1.2 3.9491e+01 1.2 2.18e+10 1.2 1.1e+06 5.9e+01 1.1e+03  9  4  9  0  7  26 28 13  0 28 55297
MatLUFactorNum     50850 1.2 7.3497e+00 1.2 7.20e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5  9  0  0  0 98174
MatResidual         4317 1.0 3.6526e+01 1.3 2.24e+10 1.2 2.3e+06 2.0e+04 0.0e+00  8  4 19 16  0  22 28 26 50  0 61201
MatAssemblyBegin   50400 1.2 6.8793e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     50400 1.2 7.1544e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     210 1.0 1.3557e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   9  0  0  0  0    -0
PCSetUp            51285 1.2 2.0747e+01 1.2 7.20e+09 1.2 0.0e+00 0.0e+00 0.0e+00  5  1  0  0  0  14  9  0  0  0 34778
PCSetUpOnBlocks     5756 1.0 1.4171e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             4317 1.0 7.5546e+01 1.2 2.91e+10 1.2 7.1e+06 1.4e+02 2.6e+03 17  6 60  0 15  51 37 83  1 64 38666
PCApplyOnBlocks   702232 1.2 4.3524e+01 1.2 2.90e+10 1.2 0.0e+00 0.0e+00 0.0e+00 10  6  0  0  0  29 37  0  0  0 66728
KSPSetUp           50626 1.2 3.2731e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            4317 1.0 1.0701e+02 1.1 5.27e+10 1.2 7.9e+06 5.9e+03 4.0e+03 25 11 66 16 24  73 67 91 51 100 49324
MGSmooth Level 0    1439 1.0 1.1125e+01 2.2 2.95e+08 1.3 7.1e+06 1.4e+02 4.0e+03  2  0 60  0 24   4  0 83  1 100  2538
MGSmooth Level 1    2878 1.0 1.0134e+02 1.1 5.24e+10 1.2 7.5e+05 6.0e+04 0.0e+00 24 10  6 16  0  69 67  9 49  0 51802
MGResid Level 1     1439 1.0 3.6299e+01 1.3 2.23e+10 1.2 7.5e+05 6.0e+04 0.0e+00  7  4  6 16  0  22 28  9 49  0 61498
MGInterp Level 1    2878 1.0 6.6296e+00 1.4 3.73e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   4  5  0  0  0 56411
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   239            237
              Viewer     3              3
         PetscRandom    16             16
           Index Set  3721           3721
   IS L to G Mapping   451            445
             Section   493            493
   Star Forest Graph   709            707
              Vector  2393           2385
              Matrix  1386           1361
      Preconditioner   253            253
       Krylov Solver   267            267
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   143            145
            DM Label   345            345
          Quadrature   144            144
      Mesh Transform     2              2
       Swarm Cell DM     4              4
    GraphPartitioner    41             41
     Discrete System   198            200
           Weak Form   198            200
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   452            452
   Star Forest Graph   230            225
              Vector   453            454
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.74e-08
Average time for MPI_Barrier(): 4.218e-06
Average time for zero size MPI_Send(): 2.50929e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_hmg/smoke.profile # (source: code)
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

