****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0430.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 13:34:34 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.756e+02     1.000   7.756e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.315e+12     1.210   1.232e+12  1.281e+14
Flops/sec:            1.695e+09     1.210   1.589e+09  1.652e+11
MPI Msg Count:        7.793e+04     2.937   5.330e+04  5.543e+06
MPI Msg Len (bytes):  8.911e+09     2.994   1.180e+05  6.539e+11
MPI Reductions:       1.089e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.9082e+02  63.3%  1.1212e+14  87.5%  2.256e+06  40.7%  2.087e+05       72.0%  8.089e+03  74.3%
 1:        MG Apply: 2.8479e+02  36.7%  1.6031e+13  12.5%  3.287e+06  59.3%  5.572e+04       28.0%  2.782e+03  25.5%

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

BuildTwoSided       1689 1.0 5.3813e+01 6.9 0.00e+00 0.0 1.1e+05 4.0e+00 1.4e+03  4  0  2  0 13   6  0  5  0 18    -0
BuildTwoSidedF      1351 1.0 5.3369e+01 7.0 0.00e+00 0.0 1.4e+05 1.5e+06 1.4e+03  4  0  3 32 12   6  0  6 44 17    -0
SFSetGraph           345 1.1 1.5712e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              338 1.1 1.1416e+00 32.1 0.00e+00 0.0 6.9e+04 1.1e+03 9.8e+01  0  0  1  0  1   0  0  3  0  1    -0
SFBcastBegin        1087 1.0 5.3399e-01 3.2 0.00e+00 0.0 5.4e+05 9.5e+04 0.0e+00  0  0 10  8  0   0  0 24 11  0    -0
SFBcastEnd          1087 1.0 1.6862e+01 68.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        538 1.0 1.1041e-01 15.0 0.00e+00 0.0 2.8e+05 1.1e+05 0.0e+00  0  0  5  5  0   0  0 12  7  0    -0
SFReduceEnd          538 1.0 6.6846e+00 72.1 5.37e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   589
SFFetchOpBegin         6 1.0 2.9041e-05 4.6 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.6998e-04 8.1 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.0924e-04 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.2514e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  1   0  0  3  0  1    -0
SFSectionSF           51 1.0 2.6604e-03 1.8 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  1  0  0   0  0  1  0  1    -0
SFRemoteOff            2 1.0 8.0169e-05 2.2 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            181063 1.1 1.4882e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          181069 1.1 2.6142e-01 6.5 5.37e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15057
VecDot               269 1.0 9.8120e-01 4.6 2.32e+08 1.2 0.0e+00 0.0e+00 2.7e+02  0  0  0  0  2   0  0  0  0  3 23750
VecMDot             1787 1.0 1.4764e+01 2.3 7.43e+09 1.2 0.0e+00 0.0e+00 1.8e+03  1  1  0  0 16   2  1  0  0 22 50492
VecNorm             3126 1.0 1.1462e+01 5.5 2.70e+09 1.2 0.0e+00 0.0e+00 3.1e+03  1  0  0  0 29   1  0  0  0 39 23627
VecScale            2074 1.0 8.3297e-01 1.4 8.96e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 107850
VecCopy             2123 1.0 3.0368e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              1293 1.0 1.1524e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              287 1.0 5.2241e-01 1.3 2.48e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47593
VecWAXPY             464 1.0 1.0269e+00 1.2 2.85e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 27797
VecMAXPY            2074 1.0 1.1818e+01 1.2 8.98e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 76175
VecScatterBegin   179432 1.2 2.8998e+00 1.4 0.00e+00 0.0 1.1e+06 1.2e+05 0.0e+00  0  0 19 20  0   1  0 48 28  0    -0
VecScatterEnd     179432 1.2 1.4856e+01 35.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          17 1.0 6.5973e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       538 1.0 4.2206e-01 1.6 4.65e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110428
VecReduceComm        269 1.0 3.5976e-01 40.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.7e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         368 1.0 1.6642e+00 4.5 4.77e+08 1.2 0.0e+00 0.0e+00 3.7e+02  0  0  0  0  3   0  0  0  0  5 28734
MatMult             2056 1.0 8.9827e+01 1.1 6.30e+10 1.2 1.1e+06 1.2e+05 0.0e+00 11  5 19 20  0  17  6 48 28  0 70102
MatSolve           88320 1.2 9.5553e+00 1.3 5.55e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0 58253
MatLUFactorSym       241 1.2 3.2551e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      4349 1.1 8.3918e+00 1.0 1.25e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0 14280
MatAssemblyBegin    6018 1.1 5.3398e+01 3.1 0.00e+00 0.0 1.4e+05 1.5e+06 1.4e+03  4  0  3 32 12   7  0  6 44 17    -0
MatAssemblyEnd      6018 1.1 1.3534e+01 9.3 3.02e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0   946
MatGetRowIJ          240 1.2 3.7431e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      17 1.0 2.5769e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  0  0  0  0  2   0  0  0  0  3    -0
MatGetOrdering       240 1.2 4.0571e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       538 1.0 1.0860e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5185e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3230e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        538 1.0 4.5967e+00 1.1 8.37e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 181752
MatPtAPSymbolic        1 1.0 2.1279e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       269 1.0 3.0047e+01 1.0 3.34e+10 1.2 1.4e+05 3.6e+05 2.7e+02  4  3  3  8  3   6  3  6 11  3 111234
MatGetLocalMat       269 1.0 2.0595e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        269 1.0 1.0294e+00 1.9 0.00e+00 0.0 1.4e+05 3.6e+05 0.0e+00  0  0  3  8  0   0  0  6 11  0    -0
MatSetPreallCOO       32 1.0 5.9826e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.5111e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              269 1.0 8.1373e+01 1.0 5.82e+10 1.2 3.3e+05 2.2e+05 1.8e+03 10  5  6 11 17  17  5 15 16 23 71566
PCApply             1437 1.0 2.8809e+02 1.0 1.60e+11 1.2 3.3e+06 5.6e+04 2.8e+03 37 13 59 28 26 Multiple stages 55648
PCApplyOnBlocks    88320 1.2 1.0803e+01 1.3 6.72e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 62365
KSPSetUp             269 1.0 2.1657e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             269 1.0 3.6006e+02 1.0 2.17e+11 1.2 4.0e+06 6.8e+04 5.9e+03 46 17 73 42 54 Multiple stages 60170
KSPGMRESOrthog      1787 1.0 2.3660e+01 1.5 1.49e+10 1.2 0.0e+00 0.0e+00 1.8e+03  2  1  0  0 16   4  1  0  0 22 63014
DMRefine               2 1.0 2.5350e-02 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     9
DMPlexCreateGmsh       1 1.0 9.2456e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.0624e+00 505.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 3.6119e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.0979e-02 1.1 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexPartSelf         1 1.0 1.1838e-03 565.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 5.8472e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.0476e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 6.8265e-04 2.2 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.0441e-03 2.5 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 3.7817e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.8992e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.3183e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.3489e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 9.3561e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  2   0  0  4  0  3    -0
DMPlexDistField        7 1.0 2.1711e-03 1.3 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 3.1061e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9388e-04 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.2495e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.1140e-03 1.5 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.2093e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.2482e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.6069e-04 2.1 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.4725e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 9.8291e-04 2.5 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             33 1.0 7.1375e+02 1.0 1.31e+12 1.2 5.3e+06 1.2e+05 1.0e+04 92 100 96 100 93 Multiple stages 179527
SNESSetUp              1 1.0 5.0551e-05 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     497 1.0 4.7816e+01 1.2 4.83e+11 1.2 5.4e+05 1.2e+05 0.0e+00  6 36 10 10  0   9 42 24 14  0 976651
SNESJacobianEval     269 1.0 2.1060e+02 1.0 5.47e+11 1.2 2.8e+05 7.9e+05 1.1e+03 27 41  5 34 10  43 47 12 47 13 251478
SNESLineSearch       269 1.0 4.9536e+01 1.0 4.61e+11 1.2 6.3e+05 1.2e+05 1.3e+03  6 35 11 12 12  10 40 28 16 16 900058
DualSpaceSetUp         8 1.0 5.1475e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.0687e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 7.7348e+02 1.0 1.31e+12 1.2 5.5e+06 1.2e+05 1.1e+04 100 100 100 100 100 Multiple stages 165675
firedrake.__init__       1 1.0 1.0858e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 5.1446e+00 56.2 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  3  0  4   1  0  7  0  5    -0
firedrake.mesh._from_gmsh       1 1.0 5.0632e+00 503.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 7.8243e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.2960e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.2709e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 8.7890e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 2.8450e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.8404e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 2.6363e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.3840e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.3715e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 9.0431e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.1665e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.2943e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.6198e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.0879e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.1228e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.1905e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9616e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3216e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.1162e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     394 1.0 6.1857e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      3581 1.0 2.2288e+02 1.2 1.03e+12 1.2 4.3e+05 1.2e+05 3.2e+01 27 78  8  8  0  42 89 19 11  0 447116
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.0737e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    7162 1.0 2.4815e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0600e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.2033e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.6772e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.3870e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.3869e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.0090e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.8621e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    3581 1.0 1.0794e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      3581 1.0 9.1802e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.3336e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 6.1970e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   236
firedrake.interpolation.interpolate      13 1.0 4.6935e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.8955e+00 1.0 9.06e+07 1.2 1.4e+04 4.2e+04 3.7e+01  1  0  0  0  0   1  0  1  0  0  1541
firedrake.formmanipulation.split_form      14 1.0 4.3536e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.8350e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5278e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 9.9563e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     820 1.0 2.4301e+00 7.0 0.00e+00 0.0 4.4e+05 1.2e+05 4.0e+00  0  0  8  8  0   0  0 19 11  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4052e+00 1.0 9.06e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1681
firedrake.halo.Halo.global_to_local_end     820 1.0 1.6574e+01 74.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 2.5078e+00 39.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ddb910250_wrap_pyop2_kernel_prolong       4 0.0 7.5396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ddb5f09d0_wrap_pyop2_kernel_prolong       4 0.0 5.5674e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8973e+00 1.0 7.34e+07 1.2 8.1e+03 6.1e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  1889
firedrake.function.Function.assign     146 1.0 8.7362e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     145 1.0 8.2894e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.3184e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      70 1.0 8.3393e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.0324e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5242e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9284e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2724e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.3444e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.7656e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6056e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1578e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1578e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 3.9251e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.7552e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      33 1.0 7.1388e+02 1.0 1.31e+12 1.2 5.3e+06 1.2e+05 1.0e+04 92 100 96 100 94 Multiple stages 179496
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2948e-01 1243.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0011e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2942e-01 1487.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2939e-01 1732.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     994 1.0 1.4802e+01 1.7 1.23e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   2 11  0  0  0 835556
Parloop_Cells_wrap_form0_exterior_facet_top_integral     994 1.0 1.0025e+00 1.0 1.59e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1587
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     994 1.0 1.2983e+00 1.1 1.19e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16166
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     994 1.0 8.5467e+00 1.3 1.17e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   2 10  0  0  0 1375299
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     994 1.0 1.8333e+01 1.3 2.43e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 18  0  0  0   3 20  0  0  0 1230083
firedrake.halo.Halo.local_to_global_begin     497 1.0 1.2915e-01 7.1 0.00e+00 0.0 2.6e+05 1.2e+05 0.0e+00  0  0  5  5  0   0  0 12  7  0    -0
firedrake.halo.Halo.local_to_global_end     497 1.0 6.6895e+00 69.9 5.37e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   588
Parloop_Cells_wrap_form00_cell_integral     538 1.0 3.5116e+01 1.4 1.24e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4 10  0  0  0   6 11  0  0  0 353983
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     538 1.0 2.1123e+00 1.9 6.47e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5410
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     538 1.0 4.3595e+01 1.2 1.63e+11 1.2 0.0e+00 0.0e+00 0.0e+00  5 13  0  0  0   8 15  0  0  0 375107
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     538 1.0 9.8040e+01 1.3 2.60e+11 1.3 0.0e+00 0.0e+00 0.0e+00 11 19  0  0  0  18 22  0  0  0 246358
firedrake.dmhooks.get_function_space       2 1.0 2.3882e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.2786e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      269 1.0 7.7014e+00 1.0 1.04e+08 9.4 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   353
MGSetup Level 1      269 1.0 1.8542e+00 1.0 6.60e+08 1.2 5.2e+03 1.2e+05 2.7e+02  0  0  0  0  2   0  0  0  0  3 35632
firedrake.constant.Constant.assign      33 1.0 1.6100e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fb8839390_wrap_pyop2_kernel_prolong       4 0.0 7.5342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fb33c6250_wrap_pyop2_kernel_prolong       4 0.0 5.1618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530c88ab290_wrap_pyop2_kernel_prolong       4 0.0 7.5313e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530c88aa1d0_wrap_pyop2_kernel_prolong       4 0.0 6.7330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15431f3da090_wrap_pyop2_kernel_prolong       4 0.0 7.5238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15431f3db5d0_wrap_pyop2_kernel_prolong       4 0.0 6.3854e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455458c23d0_wrap_pyop2_kernel_prolong       4 0.0 7.5247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455458c1290_wrap_pyop2_kernel_prolong       4 0.0 6.8435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148124f1a590_wrap_pyop2_kernel_prolong       4 0.0 7.5141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148124f19cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5940e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c26d8c8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c265d00d0_wrap_pyop2_kernel_prolong       4 0.0 6.2621e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a1713b250_wrap_pyop2_kernel_prolong       4 0.0 7.5326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a16fddc10_wrap_pyop2_kernel_prolong       4 0.0 5.3050e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdf3b7de50_wrap_pyop2_kernel_prolong       4 0.0 7.5312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdf3b7e4d0_wrap_pyop2_kernel_prolong       4 0.0 7.0282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150770e03890_wrap_pyop2_kernel_prolong       4 0.0 7.5024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150771036290_wrap_pyop2_kernel_prolong       4 0.0 5.3158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdfe3e4a90_wrap_pyop2_kernel_prolong       4 0.0 7.5540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdfe411750_wrap_pyop2_kernel_prolong       4 0.0 7.5740e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3a4b40910_wrap_pyop2_kernel_prolong       4 0.0 7.5165e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d39f6c9d50_wrap_pyop2_kernel_prolong       4 0.0 6.5855e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475fd12f390_wrap_pyop2_kernel_prolong       4 0.0 7.5389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475fd12cc10_wrap_pyop2_kernel_prolong       4 0.0 6.5821e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514618d96d0_wrap_pyop2_kernel_prolong       4 0.0 7.5389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15146195edd0_wrap_pyop2_kernel_prolong       4 0.0 5.3142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c894827d0_wrap_pyop2_kernel_prolong       4 0.0 7.4506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c894ae310_wrap_pyop2_kernel_prolong       4 0.0 6.5013e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472d80b6490_wrap_pyop2_kernel_prolong       4 0.0 7.4319e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472d3681d10_wrap_pyop2_kernel_prolong       4 0.0 6.7878e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c8fc41210_wrap_pyop2_kernel_prolong       4 0.0 7.5043e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c8fe51e50_wrap_pyop2_kernel_prolong       4 0.0 5.1338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522f616e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522f616dd90_wrap_pyop2_kernel_prolong       4 0.0 7.0448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e7a2120d0_wrap_pyop2_kernel_prolong       4 0.0 7.4829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e7a241f90_wrap_pyop2_kernel_prolong       4 0.0 6.5165e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aacbba3b10_wrap_pyop2_kernel_prolong       4 0.0 7.4880e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aacbba31d0_wrap_pyop2_kernel_prolong       4 0.0 6.1599e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0efba5510_wrap_pyop2_kernel_prolong       4 0.0 7.4612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0efba4190_wrap_pyop2_kernel_prolong       4 0.0 6.1620e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c76654a4d0_wrap_pyop2_kernel_prolong       4 0.0 7.4965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c765bc1b10_wrap_pyop2_kernel_prolong       4 0.0 8.1687e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151501ffb390_wrap_pyop2_kernel_prolong       4 0.0 7.4884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151501ff8a90_wrap_pyop2_kernel_prolong       4 0.0 7.2611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e259c2be50_wrap_pyop2_kernel_prolong       4 0.0 7.5022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e259c87450_wrap_pyop2_kernel_prolong       4 0.0 6.5005e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ded5bffb10_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ded5c7f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.2640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3d1102d0_wrap_pyop2_kernel_prolong       4 0.0 7.5523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3d138050_wrap_pyop2_kernel_prolong       4 0.0 7.9138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e661d53890_wrap_pyop2_kernel_prolong       4 0.0 7.4236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e661cdfa50_wrap_pyop2_kernel_prolong       4 0.0 5.3151e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536816e5dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5161e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15368171a410_wrap_pyop2_kernel_prolong       4 0.0 5.5550e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0b825bc90_wrap_pyop2_kernel_prolong       4 0.0 7.5145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0b8258190_wrap_pyop2_kernel_prolong       4 0.0 6.8281e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db60400210_wrap_pyop2_kernel_prolong       4 0.0 7.4924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db5b93db90_wrap_pyop2_kernel_prolong       4 0.0 6.0195e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b26e34d0_wrap_pyop2_kernel_prolong       4 0.0 7.5302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b3040dd0_wrap_pyop2_kernel_prolong       4 0.0 7.2057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ce4f3a5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4927e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ce503ab50_wrap_pyop2_kernel_prolong       4 0.0 6.1574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458a894bd10_wrap_pyop2_kernel_prolong       4 0.0 7.4450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458a8948250_wrap_pyop2_kernel_prolong       4 0.0 5.7439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473dc0d4bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473dc0f8c10_wrap_pyop2_kernel_prolong       4 0.0 6.2027e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f46124cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f3fa3f290_wrap_pyop2_kernel_prolong       4 0.0 5.6580e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14670ba9f2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14670ba9c090_wrap_pyop2_kernel_prolong       4 0.0 7.0095e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0ad351a90_wrap_pyop2_kernel_prolong       4 0.0 7.4310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0ad3ea850_wrap_pyop2_kernel_prolong       4 0.0 7.2306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd795c6b10_wrap_pyop2_kernel_prolong       4 0.0 7.5372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd79544b50_wrap_pyop2_kernel_prolong       4 0.0 7.4677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15064ac028d0_wrap_pyop2_kernel_prolong       4 0.0 7.5056e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15064ac03310_wrap_pyop2_kernel_prolong       4 0.0 7.9938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc0706b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc07069110_wrap_pyop2_kernel_prolong       4 0.0 5.2981e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aad156fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146aac7d77d0_wrap_pyop2_kernel_prolong       4 0.0 5.9988e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c63ed91ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c63ec8b090_wrap_pyop2_kernel_prolong       4 0.0 6.8809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd9c0f9dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5107e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd9c0f98d0_wrap_pyop2_kernel_prolong       4 0.0 5.7103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d282cf90_wrap_pyop2_kernel_prolong       4 0.0 7.4913e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d2893350_wrap_pyop2_kernel_prolong       4 0.0 6.5136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2404aeb10_wrap_pyop2_kernel_prolong       4 0.0 7.5057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d240616090_wrap_pyop2_kernel_prolong       4 0.0 6.7848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503486b5110_wrap_pyop2_kernel_prolong       4 0.0 7.4841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503486e2250_wrap_pyop2_kernel_prolong       4 0.0 7.2601e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e7180e110_wrap_pyop2_kernel_prolong       4 0.0 7.4677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e7180fe10_wrap_pyop2_kernel_prolong       4 0.0 6.7840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adfaf3ac50_wrap_pyop2_kernel_prolong       4 0.0 7.4318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adfaf3a250_wrap_pyop2_kernel_prolong       4 0.0 6.7474e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec7d77f790_wrap_pyop2_kernel_prolong       4 0.0 7.5363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec7d77d910_wrap_pyop2_kernel_prolong       4 0.0 6.6460e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f142476e50_wrap_pyop2_kernel_prolong       4 0.0 7.4816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1425d5e90_wrap_pyop2_kernel_prolong       4 0.0 7.1834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510ad7850d0_wrap_pyop2_kernel_prolong       4 0.0 7.5005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510ace578d0_wrap_pyop2_kernel_prolong       4 0.0 7.2538e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbff277450_wrap_pyop2_kernel_prolong       4 0.0 7.5055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbff275310_wrap_pyop2_kernel_prolong       4 0.0 6.9070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb05035150_wrap_pyop2_kernel_prolong       4 0.0 7.4210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb04eb52d0_wrap_pyop2_kernel_prolong       4 0.0 5.3253e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b7c9e54d0_wrap_pyop2_kernel_prolong       4 0.0 7.4245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b7c9e57d0_wrap_pyop2_kernel_prolong       4 0.0 6.3037e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508fb782f90_wrap_pyop2_kernel_prolong       4 0.0 7.4372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508fb782b90_wrap_pyop2_kernel_prolong       4 0.0 8.4535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adbaadf3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4267e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adbaadc690_wrap_pyop2_kernel_prolong       4 0.0 6.7806e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a15d6a2410_wrap_pyop2_kernel_prolong       4 0.0 7.4275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a15d6d1810_wrap_pyop2_kernel_prolong       4 0.0 6.4310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8883af890_wrap_pyop2_kernel_prolong       4 0.0 7.4657e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f888141b90_wrap_pyop2_kernel_prolong       4 0.0 5.8107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153474219e10_wrap_pyop2_kernel_prolong       4 0.0 7.4270e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534742183d0_wrap_pyop2_kernel_prolong       4 0.0 5.4148e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511b73d1610_wrap_pyop2_kernel_prolong       4 0.0 7.4197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511b6a06010_wrap_pyop2_kernel_prolong       4 0.0 5.5712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3d2b13cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3d28f9ed0_wrap_pyop2_kernel_prolong       4 0.0 6.1284e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148470204d10_wrap_pyop2_kernel_prolong       4 0.0 7.4513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14846b7ce950_wrap_pyop2_kernel_prolong       4 0.0 7.1952e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149170b6b550_wrap_pyop2_kernel_prolong       4 0.0 7.4598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149170e3ab10_wrap_pyop2_kernel_prolong       4 0.0 6.4650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548cc9122d0_wrap_pyop2_kernel_prolong       4 0.0 7.4341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548cc93bd90_wrap_pyop2_kernel_prolong       4 0.0 7.2600e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14670555f010_wrap_pyop2_kernel_prolong       4 0.0 7.4343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14670555b650_wrap_pyop2_kernel_prolong       4 0.0 8.1224e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e86894fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e868b8d90_wrap_pyop2_kernel_prolong       4 0.0 5.5579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b8ae1d310_wrap_pyop2_kernel_prolong       4 0.0 7.4247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b8ae4dcd0_wrap_pyop2_kernel_prolong       4 0.0 6.1771e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2b8183810_wrap_pyop2_kernel_prolong       4 0.0 7.4528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2b3f54510_wrap_pyop2_kernel_prolong       4 0.0 5.4517e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc6394ea50_wrap_pyop2_kernel_prolong       4 0.0 7.4269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc63962150_wrap_pyop2_kernel_prolong       4 0.0 6.4310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14967f4f2790_wrap_pyop2_kernel_prolong       4 0.0 7.4606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14967f4f1490_wrap_pyop2_kernel_prolong       4 0.0 6.0118e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeff8b8c50_wrap_pyop2_kernel_prolong       4 0.0 7.4409e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aefebd5bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8700e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adf0c1de90_wrap_pyop2_kernel_prolong       4 0.0 7.4275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adf0ca3b10_wrap_pyop2_kernel_prolong       4 0.0 5.9490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15539333fa10_wrap_pyop2_kernel_prolong       4 0.0 7.4271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553937b93d0_wrap_pyop2_kernel_prolong       4 0.0 6.5838e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154395768fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154395762990_wrap_pyop2_kernel_prolong       4 0.0 7.8448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550b47b2bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550b4685f10_wrap_pyop2_kernel_prolong       4 0.0 5.9039e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519af82a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519afa65d10_wrap_pyop2_kernel_prolong       4 0.0 7.0972e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146485a32d10_wrap_pyop2_kernel_prolong       4 0.0 7.4824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146485a3d450_wrap_pyop2_kernel_prolong       4 0.0 7.2523e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14562a7e9b50_wrap_pyop2_kernel_prolong       4 0.0 7.4726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14562a8ad050_wrap_pyop2_kernel_prolong       4 0.0 6.3960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca1cf33710_wrap_pyop2_kernel_prolong       4 0.0 7.4190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca1cf306d0_wrap_pyop2_kernel_prolong       4 0.0 5.0961e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463656f7210_wrap_pyop2_kernel_prolong       4 0.0 7.4455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463658e4850_wrap_pyop2_kernel_prolong       4 0.0 7.8520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df5cd5f410_wrap_pyop2_kernel_prolong       4 0.0 7.4300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df5cfdfc90_wrap_pyop2_kernel_prolong       4 0.0 6.9829e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153328df2290_wrap_pyop2_kernel_prolong       4 0.0 7.4399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533284e2090_wrap_pyop2_kernel_prolong       4 0.0 6.4923e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c72118bc50_wrap_pyop2_kernel_prolong       4 0.0 7.4331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c72118ac10_wrap_pyop2_kernel_prolong       4 0.0 6.5877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c95f91750_wrap_pyop2_kernel_prolong       4 0.0 7.4335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c95f90510_wrap_pyop2_kernel_prolong       4 0.0 6.9991e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba37335650_wrap_pyop2_kernel_prolong       4 0.0 7.4266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba370ddf50_wrap_pyop2_kernel_prolong       4 0.0 5.7555e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522735471d0_wrap_pyop2_kernel_prolong       4 0.0 7.4336e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522735478d0_wrap_pyop2_kernel_prolong       4 0.0 6.5911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd621cc810_wrap_pyop2_kernel_prolong       4 0.0 7.4305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd623fafd0_wrap_pyop2_kernel_prolong       4 0.0 6.3659e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15377fb19ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15377fb19790_wrap_pyop2_kernel_prolong       4 0.0 6.3930e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da83845fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da83845b10_wrap_pyop2_kernel_prolong       4 0.0 7.2509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a49750250_wrap_pyop2_kernel_prolong       4 0.0 7.4291e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a49665b90_wrap_pyop2_kernel_prolong       4 0.0 6.0638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146468eb5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146468c4dc10_wrap_pyop2_kernel_prolong       4 0.0 6.3996e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6f72f6c10_wrap_pyop2_kernel_prolong       4 0.0 7.4204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6f72f5dd0_wrap_pyop2_kernel_prolong       4 0.0 5.4511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb9b73abd0_wrap_pyop2_kernel_prolong       4 0.0 7.4299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb9b738110_wrap_pyop2_kernel_prolong       4 0.0 7.4074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14616fbff0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14616f37ead0_wrap_pyop2_kernel_prolong       4 0.0 6.1419e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3c2d7fc90_wrap_pyop2_kernel_prolong       4 0.0 7.4306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3c2d3dc10_wrap_pyop2_kernel_prolong       4 0.0 7.1818e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507e450d590_wrap_pyop2_kernel_prolong       4 0.0 7.4493e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507e4536710_wrap_pyop2_kernel_prolong       4 0.0 6.8332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14627b4f3e50_wrap_pyop2_kernel_prolong       4 0.0 7.4459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14627b575890_wrap_pyop2_kernel_prolong       4 0.0 7.2302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb87568150_wrap_pyop2_kernel_prolong       4 0.0 7.4497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb87545dd0_wrap_pyop2_kernel_prolong       4 0.0 6.5611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bb22e7fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4319e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bb2562150_wrap_pyop2_kernel_prolong       4 0.0 5.5845e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150097fb4d50_wrap_pyop2_kernel_prolong       4 0.0 7.4614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15009756ac10_wrap_pyop2_kernel_prolong       4 0.0 7.9176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f608315790_wrap_pyop2_kernel_prolong       4 0.0 7.4441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6082ee950_wrap_pyop2_kernel_prolong       4 0.0 6.3750e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad59723990_wrap_pyop2_kernel_prolong       4 0.0 7.4845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad59720d10_wrap_pyop2_kernel_prolong       4 0.0 8.1246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15144b5d9b90_wrap_pyop2_kernel_prolong       4 0.0 7.4712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15144b486090_wrap_pyop2_kernel_prolong       4 0.0 7.4842e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537908d6050_wrap_pyop2_kernel_prolong       4 0.0 7.4821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537908d7050_wrap_pyop2_kernel_prolong       4 0.0 7.5857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        269 1.0 1.6526e-02 4.1 0.00e+00 0.0 1.7e+05 4.0e+00 2.7e+02  0  0  3  0  2   0  0  5  0 10    -0
SFSetGraph           269 1.0 1.2900e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              269 1.0 2.4113e-02 2.0 0.00e+00 0.0 3.4e+05 2.3e+02 2.7e+02  0  0  6  0  2   0  0 10  0 10    -0
SFPack           1392453 1.2 1.3028e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1392453 1.2 6.8138e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1437 1.0 2.0697e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             11495 1.0 6.3766e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             2874 1.0 5.0151e+00 1.9 2.48e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  2  0  0  0 49645
VecAYPX             2874 1.0 5.1891e+00 3.3 1.24e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 23990
VecScatterBegin  1392453 1.2 1.7726e+01 1.2 0.00e+00 0.0 2.4e+06 7.5e+04 0.0e+00  2  0 44 28  0   6  0 74 100  0    -0
VecScatterEnd    1392453 1.2 2.3948e+01 24.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             2874 1.0 1.2884e+02 1.2 8.81e+10 1.2 1.5e+06 1.2e+05 0.0e+00 15  7 27 28  0  41 55 46 99  0 68319
MatMultAdd          1437 1.0 7.8443e+00 1.2 3.72e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 47609
MatMultTranspose    1437 1.0 6.3830e+00 1.7 3.72e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 58509
MatSolve          691197 1.2 8.4135e+01 1.3 4.42e+10 1.2 1.8e+06 5.9e+02 1.3e+03 10  3 32  0 12  26 27 54  1 48 51972
MatLUFactorNum     60480 1.2 1.4270e+01 1.2 1.73e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5 11  0  0  0 121652
MatResidual         1437 1.0 7.2862e+01 1.3 4.46e+10 1.2 7.5e+05 1.2e+05 0.0e+00  8  3 14 14  0  22 28 23 50  0 61259
MatAssemblyBegin   60480 1.2 9.2018e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     60480 1.2 1.4152e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     252 1.0 3.4563e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0  11  0  0  0  0    -0
PCSetUp            60732 1.2 4.9042e+01 1.2 1.73e+10 1.2 0.0e+00 0.0e+00 0.0e+00  6  1  0  0  0  16 11  0  0  0 35398
PCApply             4311 1.0 1.5036e+02 1.2 6.15e+10 1.2 1.8e+06 5.9e+02 1.3e+03 19  5 32  0 12  51 38 54  1 48 40627
PCApplyOnBlocks   689760 1.2 8.6485e+01 1.2 6.07e+10 1.2 0.0e+00 0.0e+00 0.0e+00 11  5  0  0  0  29 38  0  0  0 70337
KSPSetUp           60481 1.2 5.7149e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            4311 1.0 2.1598e+02 1.1 1.08e+11 1.2 2.5e+06 3.6e+04 2.8e+03 27  8 46 14 26  74 67 77 50 100 50103
MGSmooth Level 0    1437 1.0 1.7129e+01 3.2 1.05e+09 9.2 1.8e+06 5.9e+02 2.8e+03  1  0 32  0 26   3  0 54  1 100  1488
MGSmooth Level 1    2874 1.0 2.0999e+02 1.1 1.08e+11 1.2 7.5e+05 1.2e+05 0.0e+00 26  8 14 14  0  71 67 23 50  0 51410
MGResid Level 1     1437 1.0 7.2868e+01 1.3 4.46e+10 1.2 7.5e+05 1.2e+05 0.0e+00  8  3 14 14  0  22 28 23 50  0 61253
MGInterp Level 1    2874 1.0 1.3704e+01 1.3 7.45e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  5  0  0  0 54502
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   145            145
              Viewer     3              3
         PetscRandom    17             17
           Index Set  3673           3673
   IS L to G Mapping   447            447
             Section   472            472
   Star Forest Graph   644            913
              Vector  1976           1975
              Matrix  1328           1328
      Preconditioner   246            246
       Krylov Solver   261            261
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

           Index Set   538            538
   Star Forest Graph   269              0
              Vector   271            272
========================================================================================================================
Average time to get PetscTime(): 2.74e-08
Average time for MPI_Barrier(): 4.319e-06
Average time for zero size MPI_Send(): 2.29449e-06
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

