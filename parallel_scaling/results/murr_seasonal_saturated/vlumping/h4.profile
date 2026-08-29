****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0185.gadi.nci.org.au with 416 processes, by sg8812 on Sat Aug 29 17:24:00 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.964e+03     1.000   1.964e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.674e+12     1.131   2.570e+12  1.069e+15
Flops/sec:            1.362e+09     1.131   1.309e+09  5.446e+11
MPI Msg Count:        2.060e+05     3.796   1.325e+05  5.512e+07
MPI Msg Len (bytes):  2.188e+10     3.195   1.159e+05  6.387e+12
MPI Reductions:       1.782e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 8.7827e+02  44.7%  7.5906e+14  71.0%  1.627e+07  29.5%  2.077e+05       52.9%  1.284e+04  72.0%
 1:        MG Apply: 1.0853e+03  55.3%  3.1021e+14  29.0%  3.885e+07  70.5%  7.744e+04       47.1%  4.966e+03  27.9%

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

BuildTwoSided       2278 1.0 1.2179e+02 3.0 0.00e+00 0.0 6.4e+05 4.0e+00 2.3e+03  4  0  1  0 13  10  0  4  0 18    -0
BuildTwoSidedF      2181 1.0 1.2093e+02 3.0 0.00e+00 0.0 9.8e+05 1.4e+06 2.2e+03  4  0  2 22 12   9  0  6 42 17    -0
SFSetGraph           104 1.0 8.2006e-03 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 4.3101e+00 152.7 0.00e+00 0.0 3.0e+05 1.1e+03 9.7e+01  0  0  1  0  1   0  0  2  0  1    -0
SFBcastBegin        1725 1.0 9.5771e-01 3.6 0.00e+00 0.0 3.7e+06 1.0e+05 0.0e+00  0  0  7  6  0   0  0 23 12  0    -0
SFBcastEnd          1725 1.0 3.6894e+01 113.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin       1017 1.0 3.9706e-01 28.8 0.00e+00 0.0 2.3e+06 1.2e+05 0.0e+00  0  0  4  4  0   0  0 14  8  0    -0
SFReduceEnd         1017 1.0 1.1913e+01 85.3 1.12e+08 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2753
SFFetchOpBegin         6 1.0 3.6460e-05 7.6 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 9.2020e-04 18.3 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.4701e-03 2.5 0.00e+00 0.0 5.4e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 9.5506e-03 1.3 0.00e+00 0.0 2.6e+05 7.9e+01 5.8e+01  0  0  0  0  0   0  0  2  0  0    -0
SFSectionSF           51 1.0 5.3816e-03 2.5 0.00e+00 0.0 1.2e+05 3.8e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.7795e-05 2.8 0.00e+00 0.0 4.7e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              6324 1.0 2.4758e+00 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            6330 1.0 5.6342e-01 10.8 1.12e+08 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 58203
VecDot               435 1.0 1.6399e+00 4.1 3.51e+08 1.1 0.0e+00 0.0e+00 4.4e+02  0  0  0  0  2   0  0  0  0  3 87608
VecMDot             3141 1.0 4.8181e+01 3.0 1.15e+10 1.1 0.0e+00 0.0e+00 3.1e+03  2  0  0  0 18   3  1  0  0 24 98135
VecNorm             5457 1.0 1.8333e+01 3.7 4.40e+09 1.1 0.0e+00 0.0e+00 5.5e+03  1  0  0  0 31   1  0  0  0 43 98309
VecScale            3594 1.0 1.2624e+00 1.3 1.45e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 470133
VecCopy             3738 1.0 5.1960e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet               889 1.0 7.7441e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              453 1.0 8.2680e-01 1.2 3.65e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 180958
VecWAXPY             950 1.0 2.0160e+00 1.2 5.91e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 120006
VecMAXPY            3594 1.0 1.8593e+01 1.1 1.41e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 310107
VecScatterBegin     3576 1.0 1.5986e+00 3.1 0.00e+00 0.0 8.0e+06 1.2e+05 0.0e+00  0  0 15 15  0   0  0 49 28  0    -0
VecScatterEnd       3576 1.0 3.6366e+01 15.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          17 1.0 6.5265e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       870 1.0 6.5897e-01 2.1 7.02e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 436044
VecReduceComm        435 1.0 5.4845e-01 34.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.4e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         368 1.0 1.5487e+00 3.0 4.45e+08 1.1 0.0e+00 0.0e+00 3.7e+02  0  0  0  0  2   0  0  0  0  3 117724
MatMult             3576 1.0 1.6172e+02 1.3 1.02e+11 1.1 8.0e+06 1.2e+05 0.0e+00  7  4 15 15  0  16  6 49 28  0 258576
MatSolve             368 1.0 1.5346e+01 1.3 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 270679
MatLUFactorSym         1 1.0 1.2182e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       452 1.0 7.8422e+01 1.0 4.76e+09 1.2 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   9  0  0  0  0 22254
MatILUFactorSym        1 1.0 1.4849e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    3100 1.0 1.2831e+02 2.3 0.00e+00 0.0 9.8e+05 1.4e+06 2.2e+03  5  0  2 22 12  10  0  6 42 17    -0
MatAssemblyEnd      3100 1.0 2.8760e+01 6.0 5.26e+08 0.0 8.9e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0  3060
MatGetRowIJ            1 1.0 9.1740e-06 77.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.0909e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       870 1.0 1.7985e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5206e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2748e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        870 1.0 8.3902e+00 1.2 1.26e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 615223
MatPtAPSymbolic        1 1.0 3.2123e-01 1.0 0.00e+00 0.0 6.7e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       435 1.0 5.8938e+01 1.0 5.05e+10 1.1 9.7e+05 3.6e+05 4.4e+02  3  2  2  5  2   7  3  6 10  3 350183
MatGetLocalMat       435 1.0 3.4100e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        435 1.0 1.8328e+00 2.1 0.00e+00 0.0 9.8e+05 3.6e+05 0.0e+00  0  0  2  6  0   0  0  6 10  0    -0
MatSetPreallCOO       32 1.0 6.8663e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.0647e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              435 1.0 1.8247e+02 1.0 8.21e+10 1.1 1.8e+06 2.5e+05 2.1e+03  9  3  3  7 12  21  4 11 13 16 183475
PCApply             2791 1.0 1.1078e+03 1.0 7.63e+11 1.1 3.9e+07 7.7e+04 5.0e+03 55 29 70 47 28 Multiple stages 280038
PCApplyOnBlocks      368 1.0 1.5350e+01 1.3 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 270614
KSPSetUp             435 1.0 2.0207e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             435 1.0 1.2447e+03 1.0 8.66e+11 1.1 4.5e+07 8.3e+04 1.1e+04 63 33 82 59 62 Multiple stages 283269
KSPGMRESOrthog      3141 1.0 6.2972e+01 2.0 2.31e+10 1.1 0.0e+00 0.0e+00 3.1e+03  2  1  0  0 18   5  1  0  0 24 150169
DMRefine               2 1.0 2.2251e-01 1.0 2.09e+03 1.0 3.2e+04 3.4e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     4
DMPlexCreateGmsh       1 1.0 2.4183e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.7408e+00 233.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 1.4295e-01 1.0 0.00e+00 0.0 7.9e+04 6.2e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 2.5272e-02 1.1 0.00e+00 0.0 2.9e+05 7.2e+01 2.4e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 3.7977e-03 1150.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 3.1025e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.9715e-03 1.5 0.00e+00 0.0 1.6e+04 4.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.0124e-03 2.0 0.00e+00 0.0 7.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 2.5445e-03 2.3 0.00e+00 0.0 8.2e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.1366e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.4106e-01 1.0 0.00e+00 0.0 1.7e+04 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 3.4227e-03 1.2 0.00e+00 0.0 4.5e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.0498e-02 1.0 0.00e+00 0.0 1.5e+05 7.0e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 3.0390e-02 1.0 0.00e+00 0.0 3.6e+05 6.8e+01 2.4e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexDistField        7 1.0 4.9912e-03 1.3 0.00e+00 0.0 6.6e+04 5.7e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 8.7474e-03 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 5.4455e-04 10.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1705e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.5220e-03 1.6 0.00e+00 0.0 1.8e+04 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.0889e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.4515e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.7165e-04 2.0 0.00e+00 0.0 1.4e+04 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.7551e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.1712e-04 1.8 0.00e+00 0.0 3.6e+03 3.6e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             26 1.0 1.8847e+03 1.0 2.67e+12 1.1 5.4e+07 1.2e+05 1.7e+04 96 100 98 100 96 Multiple stages 567315
SNESSetUp              1 1.0 5.8502e-05 6.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     976 1.0 7.9077e+01 1.2 8.90e+11 1.2 4.4e+06 1.2e+05 0.0e+00  4 33  8  8  0   8 46 27 16  0 4426705
SNESJacobianEval     435 1.0 3.5593e+02 1.0 8.29e+11 1.2 1.9e+06 7.8e+05 1.7e+03 18 31  4 24 10  41 43 12 45 14 918459
SNESLineSearch       435 1.0 8.9893e+01 1.0 8.82e+11 1.2 5.2e+06 1.2e+05 2.3e+03  5 32  9 10 13  10 46 32 19 18 3859485
DualSpaceSetUp         8 1.0 5.4327e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     8
FESetUp                8 1.0 1.8399e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.9591e+03 1.0 2.67e+12 1.1 5.5e+07 1.2e+05 1.8e+04 100 100 100 100 100 Multiple stages 545785
firedrake.__init__       1 1.0 2.0749e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 5.9663e+00 23.9 0.00e+00 0.0 7.0e+05 7.4e+01 4.4e+02  0  0  1  0  2   0  0  4  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 5.7418e+00 233.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.2809e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.6250e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.9875e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0707e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.3777e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.7410e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.1864e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.9551e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.9439e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.3118e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 1.0766e-02 1.8 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5961e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3806e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 6.0112e-02 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.6042e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.5041e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.7069e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3803e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.5975e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     352 1.0 6.6120e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      6640 1.0 3.5206e+02 1.2 1.72e+12 1.2 3.3e+06 1.2e+05 3.2e+01 16 63  6  6  0  37 89 20 12  0 1922585
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.5541e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   13280 1.0 2.8037e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.1034e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.5157e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.4327e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.6609e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.6608e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 1.0809e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 1.0660e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    6640 1.0 1.9149e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      6640 1.0 1.8032e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.0070e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.2174e+00 1.0 1.36e+07 1.1 3.8e+04 1.3e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   678
firedrake.interpolation.interpolate      13 1.0 5.0826e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.4224e+00 1.0 8.46e+07 1.1 5.8e+04 4.2e+04 3.7e+01  0  0  0  0  0   1  0  0  0  0  5393
firedrake.formmanipulation.split_form      14 1.0 4.2339e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.8831e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.6084e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0199e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1458 1.0 5.5497e+00 11.0 0.00e+00 0.0 3.3e+06 1.2e+05 4.0e+00  0  0  6  6  0   0  0 20 12  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.9315e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  5840
firedrake.halo.Halo.global_to_local_end    1458 1.0 3.2816e+01 157.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.4057e+00 69.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e91552fb50_wrap_pyop2_kernel_prolong       4 0.0 7.9713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9154ed590_wrap_pyop2_kernel_prolong       4 0.0 5.2227e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.2768e+00 1.0 6.85e+07 1.1 3.5e+04 6.0e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  6564
firedrake.function.Function.assign     118 1.0 7.0262e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     117 1.0 6.6437e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.3720e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      50 1.0 5.5441e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.9310e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4784e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.5513e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2248e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.5603e+00 1.0 0.00e+00 0.0 1.4e+04 4.8e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.9241e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.2938e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1588e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1588e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.1185e+00 1.1 0.00e+00 0.0 1.2e+04 2.8e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.6392e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      26 1.0 1.8848e+03 1.0 2.67e+12 1.1 5.4e+07 1.2e+05 1.7e+04 96 100 98 100 96 Multiple stages 567285
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0573e-01 1025.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 9.8360e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0568e-01 1219.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0565e-01 1384.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1952 1.0 2.3521e+01 1.5 2.26e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   2 12  0  0  0 3936722
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1952 1.0 1.2861e+00 1.1 2.91e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9260
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1952 1.0 1.5113e+00 1.2 1.94e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 53515
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1952 1.0 1.4745e+01 1.3 2.15e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1 12  0  0  0 5968339
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1952 1.0 3.2237e+01 1.4 4.49e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 16  0  0  0   3 22  0  0  0 5252517
firedrake.halo.Halo.local_to_global_begin     976 1.0 4.4590e-01 12.7 0.00e+00 0.0 2.2e+06 1.2e+05 0.0e+00  0  0  4  4  0   0  0 13  8  0    -0
firedrake.halo.Halo.local_to_global_end     976 1.0 1.1923e+01 80.7 1.12e+08 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2750
Parloop_Cells_wrap_form00_cell_integral     870 1.0 5.3956e+01 1.4 1.87e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   5 10  0  0  0 1420353
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     870 1.0 2.5070e+00 2.1 8.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14465
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     870 1.0 6.6415e+01 1.2 2.46e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   7 13  0  0  0 1518028
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     870 1.0 1.5924e+02 1.5 3.96e+11 1.3 0.0e+00 0.0e+00 0.0e+00  7 14  0  0  0  15 20  0  0  0 937737
firedrake.dmhooks.get_function_space       1 1.0 1.4430e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 6.7044e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      435 1.0 7.6860e+01 1.0 5.82e+08 37.2 0.0e+00 0.0e+00 2.0e+00  4  0  0  0  0   9  0  0  0  0   288
MGSetup Level 1      435 1.0 1.3371e+00 1.0 9.57e+08 1.1 2.2e+04 1.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 290085
firedrake.constant.Constant.assign      26 1.0 1.1688e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f920c00890_wrap_pyop2_kernel_prolong       4 0.0 7.9493e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f920e36050_wrap_pyop2_kernel_prolong       4 0.0 5.4176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151583555450_wrap_pyop2_kernel_prolong       4 0.0 7.8999e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15158357a150_wrap_pyop2_kernel_prolong       4 0.0 5.4289e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce85d44550_wrap_pyop2_kernel_prolong       4 0.0 7.9532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce85d73750_wrap_pyop2_kernel_prolong       4 0.0 5.0649e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15302303a390_wrap_pyop2_kernel_prolong       4 0.0 7.9429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153023181250_wrap_pyop2_kernel_prolong       4 0.0 5.8869e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553ad8ddf10_wrap_pyop2_kernel_prolong       4 0.0 7.9475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553ad95afd0_wrap_pyop2_kernel_prolong       4 0.0 6.2707e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14914defa050_wrap_pyop2_kernel_prolong       4 0.0 7.9518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14914df15e90_wrap_pyop2_kernel_prolong       4 0.0 5.6298e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492fb43cb10_wrap_pyop2_kernel_prolong       4 0.0 7.9134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492fb2da890_wrap_pyop2_kernel_prolong       4 0.0 6.2745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552dfdaf010_wrap_pyop2_kernel_prolong       4 0.0 7.9232e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552dfd3a550_wrap_pyop2_kernel_prolong       4 0.0 5.6374e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b16bb6e310_wrap_pyop2_kernel_prolong       4 0.0 7.9579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b16bb6f090_wrap_pyop2_kernel_prolong       4 0.0 6.2864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0fc95ffd0_wrap_pyop2_kernel_prolong       4 0.0 7.9527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0fc95e0d0_wrap_pyop2_kernel_prolong       4 0.0 5.9447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9c9731150_wrap_pyop2_kernel_prolong       4 0.0 7.9452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9c978b190_wrap_pyop2_kernel_prolong       4 0.0 5.6133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14976932c8d0_wrap_pyop2_kernel_prolong       4 0.0 7.9480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497693113d0_wrap_pyop2_kernel_prolong       4 0.0 7.1583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5ba11b610_wrap_pyop2_kernel_prolong       4 0.0 7.8520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5ba164190_wrap_pyop2_kernel_prolong       4 0.0 5.6565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15497b57ce50_wrap_pyop2_kernel_prolong       4 0.0 7.8828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15497b57c890_wrap_pyop2_kernel_prolong       4 0.0 5.7544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d9c2362d0_wrap_pyop2_kernel_prolong       4 0.0 7.8788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d9c435ed0_wrap_pyop2_kernel_prolong       4 0.0 6.3203e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b61333b90_wrap_pyop2_kernel_prolong       4 0.0 7.8935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b61330590_wrap_pyop2_kernel_prolong       4 0.0 5.1873e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d62478a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.9411e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d61fd695d0_wrap_pyop2_kernel_prolong       4 0.0 5.9356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15501ef403d0_wrap_pyop2_kernel_prolong       4 0.0 7.8850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15501e5d2fd0_wrap_pyop2_kernel_prolong       4 0.0 7.0988e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c43932790_wrap_pyop2_kernel_prolong       4 0.0 7.8996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c43911c50_wrap_pyop2_kernel_prolong       4 0.0 6.0642e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456365ea550_wrap_pyop2_kernel_prolong       4 0.0 7.8622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456365e9e10_wrap_pyop2_kernel_prolong       4 0.0 6.0902e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c4b26d810_wrap_pyop2_kernel_prolong       4 0.0 7.9246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c4b2558d0_wrap_pyop2_kernel_prolong       4 0.0 6.6403e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500062e2010_wrap_pyop2_kernel_prolong       4 0.0 7.9122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150006301ed0_wrap_pyop2_kernel_prolong       4 0.0 6.6921e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b32d8ad6d0_wrap_pyop2_kernel_prolong       4 0.0 7.9152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b32d4ee5d0_wrap_pyop2_kernel_prolong       4 0.0 6.1355e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468d4319190_wrap_pyop2_kernel_prolong       4 0.0 7.8916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468d41a9f50_wrap_pyop2_kernel_prolong       4 0.0 6.2379e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c87b56bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c87b1f290_wrap_pyop2_kernel_prolong       4 0.0 6.2223e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14676b7bcc50_wrap_pyop2_kernel_prolong       4 0.0 7.9321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14676b874190_wrap_pyop2_kernel_prolong       4 0.0 5.8083e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab44ed2710_wrap_pyop2_kernel_prolong       4 0.0 7.9199e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab44eba2d0_wrap_pyop2_kernel_prolong       4 0.0 6.6691e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148627e7e290_wrap_pyop2_kernel_prolong       4 0.0 7.9326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148627e7cf10_wrap_pyop2_kernel_prolong       4 0.0 6.6414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f37209bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f374402d0_wrap_pyop2_kernel_prolong       4 0.0 6.0827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14607da0cc90_wrap_pyop2_kernel_prolong       4 0.0 7.9147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14607d098150_wrap_pyop2_kernel_prolong       4 0.0 6.0072e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd68b04bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd681e8990_wrap_pyop2_kernel_prolong       4 0.0 6.0780e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf855667d0_wrap_pyop2_kernel_prolong       4 0.0 7.8369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf85567850_wrap_pyop2_kernel_prolong       4 0.0 5.5956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c25455110_wrap_pyop2_kernel_prolong       4 0.0 7.9404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c25454910_wrap_pyop2_kernel_prolong       4 0.0 5.8709e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15204c2def90_wrap_pyop2_kernel_prolong       4 0.0 7.9238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15204c1d7b10_wrap_pyop2_kernel_prolong       4 0.0 7.1072e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d016e1b90_wrap_pyop2_kernel_prolong       4 0.0 7.9137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d0163a550_wrap_pyop2_kernel_prolong       4 0.0 6.1698e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e0d713790_wrap_pyop2_kernel_prolong       4 0.0 7.9370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e0d675f10_wrap_pyop2_kernel_prolong       4 0.0 6.3216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15205faa3d90_wrap_pyop2_kernel_prolong       4 0.0 7.8690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15205faa2550_wrap_pyop2_kernel_prolong       4 0.0 5.1793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542a5b2be50_wrap_pyop2_kernel_prolong       4 0.0 7.9532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542a64a6b10_wrap_pyop2_kernel_prolong       4 0.0 6.8829e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146723f5e510_wrap_pyop2_kernel_prolong       4 0.0 7.8343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146723fe8810_wrap_pyop2_kernel_prolong       4 0.0 5.1845e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512a41be750_wrap_pyop2_kernel_prolong       4 0.0 7.8564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512a41bd6d0_wrap_pyop2_kernel_prolong       4 0.0 6.9371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7bfb32ed0_wrap_pyop2_kernel_prolong       4 0.0 7.8536e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7bfd93d90_wrap_pyop2_kernel_prolong       4 0.0 5.8245e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e41a05d0_wrap_pyop2_kernel_prolong       4 0.0 7.8405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550dfb619d0_wrap_pyop2_kernel_prolong       4 0.0 5.8614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f2638a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.8823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f26399a50_wrap_pyop2_kernel_prolong       4 0.0 6.2633e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0e5e115d0_wrap_pyop2_kernel_prolong       4 0.0 7.9212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0e5d8ddd0_wrap_pyop2_kernel_prolong       4 0.0 5.8621e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530b5569fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530b4a26ed0_wrap_pyop2_kernel_prolong       4 0.0 6.7232e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ad2abc610_wrap_pyop2_kernel_prolong       4 0.0 7.9303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ad2abd950_wrap_pyop2_kernel_prolong       4 0.0 6.0164e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acb5a95d10_wrap_pyop2_kernel_prolong       4 0.0 7.9783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acb5a971d0_wrap_pyop2_kernel_prolong       4 0.0 6.4717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14550975a590_wrap_pyop2_kernel_prolong       4 0.0 7.8427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145509759c50_wrap_pyop2_kernel_prolong       4 0.0 6.3847e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef47e0ed50_wrap_pyop2_kernel_prolong       4 0.0 7.8719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef47622490_wrap_pyop2_kernel_prolong       4 0.0 6.9266e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ae0946850_wrap_pyop2_kernel_prolong       4 0.0 7.9316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ae09af990_wrap_pyop2_kernel_prolong       4 0.0 6.0620e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15116b8a7f50_wrap_pyop2_kernel_prolong       4 0.0 7.8449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15116b794190_wrap_pyop2_kernel_prolong       4 0.0 6.9022e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac52967610_wrap_pyop2_kernel_prolong       4 0.0 7.8352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac5297f090_wrap_pyop2_kernel_prolong       4 0.0 5.6668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed2efaa310_wrap_pyop2_kernel_prolong       4 0.0 7.8329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed2efa9b10_wrap_pyop2_kernel_prolong       4 0.0 5.1703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519983071d0_wrap_pyop2_kernel_prolong       4 0.0 7.8379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151998331f50_wrap_pyop2_kernel_prolong       4 0.0 6.0755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cd3dd51d0_wrap_pyop2_kernel_prolong       4 0.0 7.8353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151cd3d51ad0_wrap_pyop2_kernel_prolong       4 0.0 5.4607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5da101750_wrap_pyop2_kernel_prolong       4 0.0 7.9056e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5da103650_wrap_pyop2_kernel_prolong       4 0.0 5.6367e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bec9d3a10_wrap_pyop2_kernel_prolong       4 0.0 7.8617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bec9d0250_wrap_pyop2_kernel_prolong       4 0.0 6.2128e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a640bbcd0_wrap_pyop2_kernel_prolong       4 0.0 7.8718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a640dd6d0_wrap_pyop2_kernel_prolong       4 0.0 5.3223e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464ef889f10_wrap_pyop2_kernel_prolong       4 0.0 7.9738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464ef85eb10_wrap_pyop2_kernel_prolong       4 0.0 5.7414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d18886590_wrap_pyop2_kernel_prolong       4 0.0 7.9778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d18886890_wrap_pyop2_kernel_prolong       4 0.0 7.3161e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a69aa19e10_wrap_pyop2_kernel_prolong       4 0.0 7.8874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a69aa1b390_wrap_pyop2_kernel_prolong       4 0.0 5.9520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500bd6822d0_wrap_pyop2_kernel_prolong       4 0.0 7.8912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500bd5cc490_wrap_pyop2_kernel_prolong       4 0.0 6.0316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151546d25c50_wrap_pyop2_kernel_prolong       4 0.0 7.9711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151545a99390_wrap_pyop2_kernel_prolong       4 0.0 6.8856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151571e8e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.9409e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151571e8d410_wrap_pyop2_kernel_prolong       4 0.0 6.9596e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7531d9d50_wrap_pyop2_kernel_prolong       4 0.0 7.8416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c753b7ca50_wrap_pyop2_kernel_prolong       4 0.0 4.5487e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514a273a350_wrap_pyop2_kernel_prolong       4 0.0 7.8617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514a12ebc90_wrap_pyop2_kernel_prolong       4 0.0 5.3895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14639488d290_wrap_pyop2_kernel_prolong       4 0.0 7.9087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463948c1b90_wrap_pyop2_kernel_prolong       4 0.0 5.9895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6d7061090_wrap_pyop2_kernel_prolong       4 0.0 7.8409e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6d7032bd0_wrap_pyop2_kernel_prolong       4 0.0 6.9623e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b45fb4fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b45df4bd0_wrap_pyop2_kernel_prolong       4 0.0 6.6569e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a73867a710_wrap_pyop2_kernel_prolong       4 0.0 7.8431e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a738679e10_wrap_pyop2_kernel_prolong       4 0.0 7.0901e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472b30b5490_wrap_pyop2_kernel_prolong       4 0.0 7.8406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472b30b4390_wrap_pyop2_kernel_prolong       4 0.0 6.7147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f0586c850_wrap_pyop2_kernel_prolong       4 0.0 7.8416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f0586c190_wrap_pyop2_kernel_prolong       4 0.0 6.3062e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488c2de2d50_wrap_pyop2_kernel_prolong       4 0.0 7.8377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488c2e017d0_wrap_pyop2_kernel_prolong       4 0.0 6.2826e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fd5bf9a10_wrap_pyop2_kernel_prolong       4 0.0 7.8371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fd5bf9210_wrap_pyop2_kernel_prolong       4 0.0 5.8802e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523bb96ded0_wrap_pyop2_kernel_prolong       4 0.0 7.8408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523bb96f8d0_wrap_pyop2_kernel_prolong       4 0.0 6.2549e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14836c21d610_wrap_pyop2_kernel_prolong       4 0.0 7.8444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148367f4a110_wrap_pyop2_kernel_prolong       4 0.0 5.6122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0e5c87e50_wrap_pyop2_kernel_prolong       4 0.0 7.9133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0e5c85d90_wrap_pyop2_kernel_prolong       4 0.0 6.4658e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b33e48d510_wrap_pyop2_kernel_prolong       4 0.0 7.8342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b33e612b90_wrap_pyop2_kernel_prolong       4 0.0 4.6932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd92c1be90_wrap_pyop2_kernel_prolong       4 0.0 7.8683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd92b10610_wrap_pyop2_kernel_prolong       4 0.0 5.7768e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15318b7c4c90_wrap_pyop2_kernel_prolong       4 0.0 7.8447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15318b7c6090_wrap_pyop2_kernel_prolong       4 0.0 6.0712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147997d68350_wrap_pyop2_kernel_prolong       4 0.0 7.8521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147997d6a5d0_wrap_pyop2_kernel_prolong       4 0.0 5.1820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb7220950_wrap_pyop2_kernel_prolong       4 0.0 7.8525e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb71e24d0_wrap_pyop2_kernel_prolong       4 0.0 6.4539e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15247660dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.9774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524764214d0_wrap_pyop2_kernel_prolong       4 0.0 7.6113e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a064cf650_wrap_pyop2_kernel_prolong       4 0.0 7.8715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a063a4e10_wrap_pyop2_kernel_prolong       4 0.0 5.7002e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef97d595d0_wrap_pyop2_kernel_prolong       4 0.0 7.9825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef97d81910_wrap_pyop2_kernel_prolong       4 0.0 6.0277e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdf1a07590_wrap_pyop2_kernel_prolong       4 0.0 7.8421e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdf1b4f510_wrap_pyop2_kernel_prolong       4 0.0 6.4540e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14757f606190_wrap_pyop2_kernel_prolong       4 0.0 7.9820e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14757f606050_wrap_pyop2_kernel_prolong       4 0.0 6.5753e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ac31f59d0_wrap_pyop2_kernel_prolong       4 0.0 7.8410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ac2e69050_wrap_pyop2_kernel_prolong       4 0.0 6.0858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152431ee3fd0_wrap_pyop2_kernel_prolong       4 0.0 7.8846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152431f09710_wrap_pyop2_kernel_prolong       4 0.0 6.8857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b66ccbbc90_wrap_pyop2_kernel_prolong       4 0.0 7.8608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b66ccb97d0_wrap_pyop2_kernel_prolong       4 0.0 6.6624e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b367870bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3678fbe10_wrap_pyop2_kernel_prolong       4 0.0 5.6025e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14952c949f90_wrap_pyop2_kernel_prolong       4 0.0 7.8976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14952c948e50_wrap_pyop2_kernel_prolong       4 0.0 6.3680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0b5ce1090_wrap_pyop2_kernel_prolong       4 0.0 7.8668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0b5ce2bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e983d1ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e983d3f90_wrap_pyop2_kernel_prolong       4 0.0 6.2354e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac8645ee90_wrap_pyop2_kernel_prolong       4 0.0 7.8376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac86687e10_wrap_pyop2_kernel_prolong       4 0.0 6.1939e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547c535ae10_wrap_pyop2_kernel_prolong       4 0.0 7.8658e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547c49b4550_wrap_pyop2_kernel_prolong       4 0.0 5.9759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d22c0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d225d1d0_wrap_pyop2_kernel_prolong       4 0.0 4.8438e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b280fa1d0_wrap_pyop2_kernel_prolong       4 0.0 7.8965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b280f9cd0_wrap_pyop2_kernel_prolong       4 0.0 5.8181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154555fcf0d0_wrap_pyop2_kernel_prolong       4 0.0 7.8540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154555fcd790_wrap_pyop2_kernel_prolong       4 0.0 6.8008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e63b0ca1d0_wrap_pyop2_kernel_prolong       4 0.0 7.9751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e63b0c9890_wrap_pyop2_kernel_prolong       4 0.0 6.6889e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca44cff9d0_wrap_pyop2_kernel_prolong       4 0.0 7.9049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca44ca58d0_wrap_pyop2_kernel_prolong       4 0.0 6.0540e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c3c7a5ad0_wrap_pyop2_kernel_prolong       4 0.0 7.8987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c3c82e390_wrap_pyop2_kernel_prolong       4 0.0 7.0438e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15492b8d7550_wrap_pyop2_kernel_prolong       4 0.0 7.8830e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15492b8d6710_wrap_pyop2_kernel_prolong       4 0.0 7.3894e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15410e120d10_wrap_pyop2_kernel_prolong       4 0.0 7.9177e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15410dfe2150_wrap_pyop2_kernel_prolong       4 0.0 5.2301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b96e5ef950_wrap_pyop2_kernel_prolong       4 0.0 8.0293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b96e5efa10_wrap_pyop2_kernel_prolong       4 0.0 5.5086e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afa688ea10_wrap_pyop2_kernel_prolong       4 0.0 8.0672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afa688e090_wrap_pyop2_kernel_prolong       4 0.0 6.3563e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab51b3cd0_wrap_pyop2_kernel_prolong       4 0.0 8.0535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab5208bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8551e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1f7fc65d0_wrap_pyop2_kernel_prolong       4 0.0 8.0445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1f76de410_wrap_pyop2_kernel_prolong       4 0.0 5.8060e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e45f6c3f10_wrap_pyop2_kernel_prolong       4 0.0 8.0043e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e45f4c8ad0_wrap_pyop2_kernel_prolong       4 0.0 6.3907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455a16d28d0_wrap_pyop2_kernel_prolong       4 0.0 8.0097e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455a16d2050_wrap_pyop2_kernel_prolong       4 0.0 4.6332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faf536b5d0_wrap_pyop2_kernel_prolong       4 0.0 8.0283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faf5669d10_wrap_pyop2_kernel_prolong       4 0.0 5.7675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152736ff5dd0_wrap_pyop2_kernel_prolong       4 0.0 8.0323e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527366876d0_wrap_pyop2_kernel_prolong       4 0.0 5.6475e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b708e6710_wrap_pyop2_kernel_prolong       4 0.0 8.0542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b708e4810_wrap_pyop2_kernel_prolong       4 0.0 4.8127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f413373e50_wrap_pyop2_kernel_prolong       4 0.0 8.0395e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f412aad590_wrap_pyop2_kernel_prolong       4 0.0 5.5462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f73a96950_wrap_pyop2_kernel_prolong       4 0.0 8.0280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f73a95e90_wrap_pyop2_kernel_prolong       4 0.0 6.2495e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150200782b10_wrap_pyop2_kernel_prolong       4 0.0 8.0647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502007066d0_wrap_pyop2_kernel_prolong       4 0.0 7.4160e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154820a17c90_wrap_pyop2_kernel_prolong       4 0.0 7.9929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548209f50d0_wrap_pyop2_kernel_prolong       4 0.0 5.4332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad946c93d0_wrap_pyop2_kernel_prolong       4 0.0 7.9788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad94f9d290_wrap_pyop2_kernel_prolong       4 0.0 5.3098e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1b7939210_wrap_pyop2_kernel_prolong       4 0.0 8.0119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1b7963fd0_wrap_pyop2_kernel_prolong       4 0.0 6.2630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b0e6668d0_wrap_pyop2_kernel_prolong       4 0.0 7.9238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b0e667f10_wrap_pyop2_kernel_prolong       4 0.0 6.7698e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f7b94dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.9207e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f7b975990_wrap_pyop2_kernel_prolong       4 0.0 6.2935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dad30715d0_wrap_pyop2_kernel_prolong       4 0.0 7.9153e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dad26c1f90_wrap_pyop2_kernel_prolong       4 0.0 6.2402e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5e4bd8a90_wrap_pyop2_kernel_prolong       4 0.0 7.9280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5e4c05490_wrap_pyop2_kernel_prolong       4 0.0 6.2368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf3abf69d0_wrap_pyop2_kernel_prolong       4 0.0 8.0092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf3abf5850_wrap_pyop2_kernel_prolong       4 0.0 5.3208e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac213b2b10_wrap_pyop2_kernel_prolong       4 0.0 7.9343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac21490e10_wrap_pyop2_kernel_prolong       4 0.0 6.7253e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb72f6c50_wrap_pyop2_kernel_prolong       4 0.0 8.0500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb719dc90_wrap_pyop2_kernel_prolong       4 0.0 6.4826e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c7200f310_wrap_pyop2_kernel_prolong       4 0.0 7.9326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c7200e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.3505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521820dc750_wrap_pyop2_kernel_prolong       4 0.0 8.0634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152181921290_wrap_pyop2_kernel_prolong       4 0.0 6.5050e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508f96a5050_wrap_pyop2_kernel_prolong       4 0.0 8.0223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508f8e6dd10_wrap_pyop2_kernel_prolong       4 0.0 7.3662e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8ed366550_wrap_pyop2_kernel_prolong       4 0.0 8.0393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8ed365c10_wrap_pyop2_kernel_prolong       4 0.0 5.8337e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15442f3cb1d0_wrap_pyop2_kernel_prolong       4 0.0 8.0406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15442f40b050_wrap_pyop2_kernel_prolong       4 0.0 5.2937e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaa07d2790_wrap_pyop2_kernel_prolong       4 0.0 8.0210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaa0aaa110_wrap_pyop2_kernel_prolong       4 0.0 6.7749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ded60a8b90_wrap_pyop2_kernel_prolong       4 0.0 7.9354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ded60ab810_wrap_pyop2_kernel_prolong       4 0.0 6.4886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486e48aa610_wrap_pyop2_kernel_prolong       4 0.0 7.9808e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486e2262490_wrap_pyop2_kernel_prolong       4 0.0 5.8576e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146144ca6390_wrap_pyop2_kernel_prolong       4 0.0 7.9346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146144ca6b10_wrap_pyop2_kernel_prolong       4 0.0 7.3909e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef25fe60d0_wrap_pyop2_kernel_prolong       4 0.0 8.0261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef2556d8d0_wrap_pyop2_kernel_prolong       4 0.0 6.0683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bed7a0090_wrap_pyop2_kernel_prolong       4 0.0 8.0451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bed430bd0_wrap_pyop2_kernel_prolong       4 0.0 5.1059e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a00f93eb50_wrap_pyop2_kernel_prolong       4 0.0 7.9597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a00f9b4990_wrap_pyop2_kernel_prolong       4 0.0 5.4963e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458faa7bf90_wrap_pyop2_kernel_prolong       4 0.0 7.9347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458faa74750_wrap_pyop2_kernel_prolong       4 0.0 6.7214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7fc37e850_wrap_pyop2_kernel_prolong       4 0.0 8.0233e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7fc3461d0_wrap_pyop2_kernel_prolong       4 0.0 6.1912e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518ab1a8e10_wrap_pyop2_kernel_prolong       4 0.0 7.9929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518ab1ab0d0_wrap_pyop2_kernel_prolong       4 0.0 6.1889e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fdb8be550_wrap_pyop2_kernel_prolong       4 0.0 8.0356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fdb8bf9d0_wrap_pyop2_kernel_prolong       4 0.0 7.3780e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb1cf02650_wrap_pyop2_kernel_prolong       4 0.0 8.0117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb1cf31cd0_wrap_pyop2_kernel_prolong       4 0.0 5.0936e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac0c619590_wrap_pyop2_kernel_prolong       4 0.0 8.0526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac0c8ca410_wrap_pyop2_kernel_prolong       4 0.0 5.4223e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153846cffdd0_wrap_pyop2_kernel_prolong       4 0.0 8.0311e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153846d5add0_wrap_pyop2_kernel_prolong       4 0.0 5.8634e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cd4dd9190_wrap_pyop2_kernel_prolong       4 0.0 8.0401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cd4e11550_wrap_pyop2_kernel_prolong       4 0.0 6.8373e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d29dde50_wrap_pyop2_kernel_prolong       4 0.0 8.0527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d29dd750_wrap_pyop2_kernel_prolong       4 0.0 6.1838e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbd0275d10_wrap_pyop2_kernel_prolong       4 0.0 8.0141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbd02d6bd0_wrap_pyop2_kernel_prolong       4 0.0 6.7183e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6d79455d0_wrap_pyop2_kernel_prolong       4 0.0 8.0524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6d7946910_wrap_pyop2_kernel_prolong       4 0.0 6.6924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b21f356390_wrap_pyop2_kernel_prolong       4 0.0 8.0380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b21f355ad0_wrap_pyop2_kernel_prolong       4 0.0 6.8128e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca70a9b90_wrap_pyop2_kernel_prolong       4 0.0 7.9702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca6f5da50_wrap_pyop2_kernel_prolong       4 0.0 7.1714e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb776fde90_wrap_pyop2_kernel_prolong       4 0.0 7.9455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb776fd850_wrap_pyop2_kernel_prolong       4 0.0 6.7013e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea289fac50_wrap_pyop2_kernel_prolong       4 0.0 8.0134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea289f8ad0_wrap_pyop2_kernel_prolong       4 0.0 6.2521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7228a5e50_wrap_pyop2_kernel_prolong       4 0.0 8.0679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7228a54d0_wrap_pyop2_kernel_prolong       4 0.0 6.6488e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c65d65bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c65d81710_wrap_pyop2_kernel_prolong       4 0.0 6.8028e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d0dc02050_wrap_pyop2_kernel_prolong       4 0.0 7.9079e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d0dc01ad0_wrap_pyop2_kernel_prolong       4 0.0 4.8657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c53a59f50_wrap_pyop2_kernel_prolong       4 0.0 7.9689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c53a5b290_wrap_pyop2_kernel_prolong       4 0.0 5.6633e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce24fd0650_wrap_pyop2_kernel_prolong       4 0.0 7.9940e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce24fd0a50_wrap_pyop2_kernel_prolong       4 0.0 5.6548e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f69afe1490_wrap_pyop2_kernel_prolong       4 0.0 7.9105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f69afe0750_wrap_pyop2_kernel_prolong       4 0.0 5.5396e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3c8c62450_wrap_pyop2_kernel_prolong       4 0.0 7.9517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3c8c3cad0_wrap_pyop2_kernel_prolong       4 0.0 6.2895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a590253e90_wrap_pyop2_kernel_prolong       4 0.0 7.9147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a59044d1d0_wrap_pyop2_kernel_prolong       4 0.0 6.3911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532484cd710_wrap_pyop2_kernel_prolong       4 0.0 7.9158e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15324837ae50_wrap_pyop2_kernel_prolong       4 0.0 5.8971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c4fd55bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9867e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c4fddaed0_wrap_pyop2_kernel_prolong       4 0.0 5.4238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb6e19d2d0_wrap_pyop2_kernel_prolong       4 0.0 7.9848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb6d8c2190_wrap_pyop2_kernel_prolong       4 0.0 7.3166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529f84f2c50_wrap_pyop2_kernel_prolong       4 0.0 7.9126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529f850c950_wrap_pyop2_kernel_prolong       4 0.0 5.8239e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148099afa2d0_wrap_pyop2_kernel_prolong       4 0.0 7.9761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148099aefb50_wrap_pyop2_kernel_prolong       4 0.0 6.1562e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf11979290_wrap_pyop2_kernel_prolong       4 0.0 8.0242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf11925850_wrap_pyop2_kernel_prolong       4 0.0 6.0065e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ccc455590_wrap_pyop2_kernel_prolong       4 0.0 8.0054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ccc217690_wrap_pyop2_kernel_prolong       4 0.0 7.0301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15356fd457d0_wrap_pyop2_kernel_prolong       4 0.0 8.0063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15356fb2e750_wrap_pyop2_kernel_prolong       4 0.0 5.8313e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15063f3a01d0_wrap_pyop2_kernel_prolong       4 0.0 7.9122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15063f3281d0_wrap_pyop2_kernel_prolong       4 0.0 5.8250e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14818ee86990_wrap_pyop2_kernel_prolong       4 0.0 7.9206e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14818ee86b90_wrap_pyop2_kernel_prolong       4 0.0 7.1224e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f775117350_wrap_pyop2_kernel_prolong       4 0.0 7.9388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f775116cd0_wrap_pyop2_kernel_prolong       4 0.0 5.6051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150567b69050_wrap_pyop2_kernel_prolong       4 0.0 7.9622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150567b30fd0_wrap_pyop2_kernel_prolong       4 0.0 5.9889e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d94cce4d0_wrap_pyop2_kernel_prolong       4 0.0 8.0080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d94cce290_wrap_pyop2_kernel_prolong       4 0.0 7.3006e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cf64d3fd0_wrap_pyop2_kernel_prolong       4 0.0 8.0027e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cf6f026d0_wrap_pyop2_kernel_prolong       4 0.0 6.0096e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f492dae390_wrap_pyop2_kernel_prolong       4 0.0 8.0130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f492dadb50_wrap_pyop2_kernel_prolong       4 0.0 7.0046e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477eb09d850_wrap_pyop2_kernel_prolong       4 0.0 7.9491e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477ea70a590_wrap_pyop2_kernel_prolong       4 0.0 6.5147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14941ae1d050_wrap_pyop2_kernel_prolong       4 0.0 7.9285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14941ac45210_wrap_pyop2_kernel_prolong       4 0.0 6.2985e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15351d9e5750_wrap_pyop2_kernel_prolong       4 0.0 7.9434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15351d66ec90_wrap_pyop2_kernel_prolong       4 0.0 6.6374e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eab0f35b90_wrap_pyop2_kernel_prolong       4 0.0 7.9415e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eab0e57dd0_wrap_pyop2_kernel_prolong       4 0.0 6.5897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152027fbde10_wrap_pyop2_kernel_prolong       4 0.0 7.9691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152027fc9650_wrap_pyop2_kernel_prolong       4 0.0 7.1202e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153699814990_wrap_pyop2_kernel_prolong       4 0.0 7.9817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153699835890_wrap_pyop2_kernel_prolong       4 0.0 5.4975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537880b6f10_wrap_pyop2_kernel_prolong       4 0.0 7.9517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15378833bb90_wrap_pyop2_kernel_prolong       4 0.0 4.5425e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc01f5fa50_wrap_pyop2_kernel_prolong       4 0.0 7.9216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc01f8b590_wrap_pyop2_kernel_prolong       4 0.0 5.2473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e860b2150_wrap_pyop2_kernel_prolong       4 0.0 7.9690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e860b1cd0_wrap_pyop2_kernel_prolong       4 0.0 6.5636e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15236621f550_wrap_pyop2_kernel_prolong       4 0.0 7.9570e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15236562e290_wrap_pyop2_kernel_prolong       4 0.0 6.5267e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7b81fd950_wrap_pyop2_kernel_prolong       4 0.0 7.9739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7b3f2fc50_wrap_pyop2_kernel_prolong       4 0.0 7.1441e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483dfb53ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483dfbd78d0_wrap_pyop2_kernel_prolong       4 0.0 5.1371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459d97267d0_wrap_pyop2_kernel_prolong       4 0.0 7.9879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459d95d86d0_wrap_pyop2_kernel_prolong       4 0.0 6.4766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c65875e490_wrap_pyop2_kernel_prolong       4 0.0 7.9422e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c653bb6190_wrap_pyop2_kernel_prolong       4 0.0 7.5932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154233492310_wrap_pyop2_kernel_prolong       4 0.0 7.9927e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154233468a90_wrap_pyop2_kernel_prolong       4 0.0 6.8571e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3a980a950_wrap_pyop2_kernel_prolong       4 0.0 7.9145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3a980a090_wrap_pyop2_kernel_prolong       4 0.0 5.9941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548e05fa950_wrap_pyop2_kernel_prolong       4 0.0 7.9162e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548e0662c50_wrap_pyop2_kernel_prolong       4 0.0 6.4103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2ef2ce190_wrap_pyop2_kernel_prolong       4 0.0 7.9447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2ef2ed9d0_wrap_pyop2_kernel_prolong       4 0.0 6.0126e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c00ad2b10_wrap_pyop2_kernel_prolong       4 0.0 7.9115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c00ad2210_wrap_pyop2_kernel_prolong       4 0.0 5.4700e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3627cbad0_wrap_pyop2_kernel_prolong       4 0.0 7.9550e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3627c8950_wrap_pyop2_kernel_prolong       4 0.0 7.1181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a41926ea10_wrap_pyop2_kernel_prolong       4 0.0 7.9568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a41926d090_wrap_pyop2_kernel_prolong       4 0.0 6.6823e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab04a5b050_wrap_pyop2_kernel_prolong       4 0.0 7.9360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab04a79750_wrap_pyop2_kernel_prolong       4 0.0 6.1403e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d125dc10_wrap_pyop2_kernel_prolong       4 0.0 7.9568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9d12c9450_wrap_pyop2_kernel_prolong       4 0.0 6.2392e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14567bb8cb10_wrap_pyop2_kernel_prolong       4 0.0 7.9231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14567b212310_wrap_pyop2_kernel_prolong       4 0.0 7.8858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fcfeebb50_wrap_pyop2_kernel_prolong       4 0.0 7.9419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fcfee9150_wrap_pyop2_kernel_prolong       4 0.0 5.2320e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7ebfa7a90_wrap_pyop2_kernel_prolong       4 0.0 7.9170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7eb501bd0_wrap_pyop2_kernel_prolong       4 0.0 6.6783e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f31b96cd0_wrap_pyop2_kernel_prolong       4 0.0 7.9768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f31b96690_wrap_pyop2_kernel_prolong       4 0.0 6.6099e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154830fe3ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9904e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548312099d0_wrap_pyop2_kernel_prolong       4 0.0 5.5871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499e8510d90_wrap_pyop2_kernel_prolong       4 0.0 8.0127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499e84e85d0_wrap_pyop2_kernel_prolong       4 0.0 7.6867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15523bb0e590_wrap_pyop2_kernel_prolong       4 0.0 7.9855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552401caa10_wrap_pyop2_kernel_prolong       4 0.0 7.1276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d12bb26490_wrap_pyop2_kernel_prolong       4 0.0 7.9308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d12bb25350_wrap_pyop2_kernel_prolong       4 0.0 7.8539e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506ec31fbd0_wrap_pyop2_kernel_prolong       4 0.0 8.2072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506ec31dad0_wrap_pyop2_kernel_prolong       4 0.0 4.8622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af5a94e9d0_wrap_pyop2_kernel_prolong       4 0.0 8.2084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af5a94e590_wrap_pyop2_kernel_prolong       4 0.0 5.4387e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bbec47e10_wrap_pyop2_kernel_prolong       4 0.0 8.2061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bbea2b890_wrap_pyop2_kernel_prolong       4 0.0 5.4012e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac93a78650_wrap_pyop2_kernel_prolong       4 0.0 8.2044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac93ac9850_wrap_pyop2_kernel_prolong       4 0.0 4.6268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e895db1750_wrap_pyop2_kernel_prolong       4 0.0 8.2043e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8965cce50_wrap_pyop2_kernel_prolong       4 0.0 5.3507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154118fa2850_wrap_pyop2_kernel_prolong       4 0.0 8.2154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154119000350_wrap_pyop2_kernel_prolong       4 0.0 7.1155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154473668e10_wrap_pyop2_kernel_prolong       4 0.0 8.2088e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15447366aad0_wrap_pyop2_kernel_prolong       4 0.0 5.6274e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aa39cc6d0_wrap_pyop2_kernel_prolong       4 0.0 8.2069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aa2f5d790_wrap_pyop2_kernel_prolong       4 0.0 5.6335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150072bcf790_wrap_pyop2_kernel_prolong       4 0.0 8.2129e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150072bcd910_wrap_pyop2_kernel_prolong       4 0.0 6.4496e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469325fa090_wrap_pyop2_kernel_prolong       4 0.0 8.2105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469325f8490_wrap_pyop2_kernel_prolong       4 0.0 5.6424e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3aea63110_wrap_pyop2_kernel_prolong       4 0.0 8.1996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3ae151f90_wrap_pyop2_kernel_prolong       4 0.0 5.9510e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b50b659090_wrap_pyop2_kernel_prolong       4 0.0 8.2148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b50ae95b90_wrap_pyop2_kernel_prolong       4 0.0 6.7245e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbd1d75010_wrap_pyop2_kernel_prolong       4 0.0 8.1929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbd200b450_wrap_pyop2_kernel_prolong       4 0.0 6.7813e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533d2241cd0_wrap_pyop2_kernel_prolong       4 0.0 8.1843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533d2241810_wrap_pyop2_kernel_prolong       4 0.0 4.8694e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5999dbd10_wrap_pyop2_kernel_prolong       4 0.0 8.1971e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5999acb50_wrap_pyop2_kernel_prolong       4 0.0 6.0017e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aae81ed210_wrap_pyop2_kernel_prolong       4 0.0 8.2024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aae8066f90_wrap_pyop2_kernel_prolong       4 0.0 5.7932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5b1a71890_wrap_pyop2_kernel_prolong       4 0.0 8.1979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5b1ced8d0_wrap_pyop2_kernel_prolong       4 0.0 6.1907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14786c212e90_wrap_pyop2_kernel_prolong       4 0.0 8.2065e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14786c211cd0_wrap_pyop2_kernel_prolong       4 0.0 5.2165e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cf8166c90_wrap_pyop2_kernel_prolong       4 0.0 8.2102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cf83b0dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff119bb350_wrap_pyop2_kernel_prolong       4 0.0 8.2067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff11bbc1d0_wrap_pyop2_kernel_prolong       4 0.0 6.4890e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bee9b66d0_wrap_pyop2_kernel_prolong       4 0.0 8.2048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bee9b5d50_wrap_pyop2_kernel_prolong       4 0.0 5.4556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14695ad2b810_wrap_pyop2_kernel_prolong       4 0.0 8.2113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14695aac2450_wrap_pyop2_kernel_prolong       4 0.0 6.2020e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f83b8dcd0_wrap_pyop2_kernel_prolong       4 0.0 8.2076e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f83b8d3d0_wrap_pyop2_kernel_prolong       4 0.0 6.4796e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2dff7c990_wrap_pyop2_kernel_prolong       4 0.0 8.2067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2dff7e910_wrap_pyop2_kernel_prolong       4 0.0 6.7046e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a6fa4f590_wrap_pyop2_kernel_prolong       4 0.0 8.2084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a6f179590_wrap_pyop2_kernel_prolong       4 0.0 6.7069e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15082fca7bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15082f2e5f10_wrap_pyop2_kernel_prolong       4 0.0 7.3911e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460f0d9bb10_wrap_pyop2_kernel_prolong       4 0.0 8.2034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460f0b30550_wrap_pyop2_kernel_prolong       4 0.0 5.0820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e71baa90_wrap_pyop2_kernel_prolong       4 0.0 8.2059e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e67aced0_wrap_pyop2_kernel_prolong       4 0.0 4.9859e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c33d46d110_wrap_pyop2_kernel_prolong       4 0.0 8.1993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c31bd60750_wrap_pyop2_kernel_prolong       4 0.0 6.1722e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbc4e43750_wrap_pyop2_kernel_prolong       4 0.0 8.1878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbc4e42d90_wrap_pyop2_kernel_prolong       4 0.0 5.0898e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498532a9950_wrap_pyop2_kernel_prolong       4 0.0 8.2061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498532a8790_wrap_pyop2_kernel_prolong       4 0.0 5.6528e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c89e103d0_wrap_pyop2_kernel_prolong       4 0.0 8.2137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c89dc9210_wrap_pyop2_kernel_prolong       4 0.0 7.0828e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebbb931d90_wrap_pyop2_kernel_prolong       4 0.0 8.2067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebbb8c4050_wrap_pyop2_kernel_prolong       4 0.0 5.6059e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d5d5c110_wrap_pyop2_kernel_prolong       4 0.0 8.2084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547d5da4610_wrap_pyop2_kernel_prolong       4 0.0 5.8592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15466c81cd10_wrap_pyop2_kernel_prolong       4 0.0 8.2089e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15466c998ed0_wrap_pyop2_kernel_prolong       4 0.0 6.2296e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d5938ae90_wrap_pyop2_kernel_prolong       4 0.0 8.2075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d58a1b3d0_wrap_pyop2_kernel_prolong       4 0.0 5.5165e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b1016f690_wrap_pyop2_kernel_prolong       4 0.0 8.1956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b0bb85890_wrap_pyop2_kernel_prolong       4 0.0 6.1282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cb51ede10_wrap_pyop2_kernel_prolong       4 0.0 8.2235e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cb520a750_wrap_pyop2_kernel_prolong       4 0.0 7.4008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ebe431e50_wrap_pyop2_kernel_prolong       4 0.0 8.2116e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ebe430c10_wrap_pyop2_kernel_prolong       4 0.0 6.8158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c26f2ff450_wrap_pyop2_kernel_prolong       4 0.0 8.1928e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c26f2341d0_wrap_pyop2_kernel_prolong       4 0.0 5.0957e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544424b4710_wrap_pyop2_kernel_prolong       4 0.0 8.2078e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154441b12990_wrap_pyop2_kernel_prolong       4 0.0 5.6768e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc27d51610_wrap_pyop2_kernel_prolong       4 0.0 8.1953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc27f50090_wrap_pyop2_kernel_prolong       4 0.0 5.8417e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494ea8b1b90_wrap_pyop2_kernel_prolong       4 0.0 8.2040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494ea8b0a10_wrap_pyop2_kernel_prolong       4 0.0 5.6029e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149adb1692d0_wrap_pyop2_kernel_prolong       4 0.0 8.2189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ada7455d0_wrap_pyop2_kernel_prolong       4 0.0 5.0196e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cce1f5ad0_wrap_pyop2_kernel_prolong       4 0.0 8.1956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cce1f5450_wrap_pyop2_kernel_prolong       4 0.0 5.6572e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bebe6b2d0_wrap_pyop2_kernel_prolong       4 0.0 8.1921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bebe50e50_wrap_pyop2_kernel_prolong       4 0.0 5.7088e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480c34594d0_wrap_pyop2_kernel_prolong       4 0.0 8.2064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480c345ba50_wrap_pyop2_kernel_prolong       4 0.0 6.0877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14633eb01e10_wrap_pyop2_kernel_prolong       4 0.0 8.1947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14633eb016d0_wrap_pyop2_kernel_prolong       4 0.0 6.6617e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511e5fc7150_wrap_pyop2_kernel_prolong       4 0.0 8.1970e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511e4b21610_wrap_pyop2_kernel_prolong       4 0.0 6.4371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcedfd3550_wrap_pyop2_kernel_prolong       4 0.0 8.2076e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcedff5810_wrap_pyop2_kernel_prolong       4 0.0 6.2247e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f260104fd0_wrap_pyop2_kernel_prolong       4 0.0 8.2008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f25bd6ef90_wrap_pyop2_kernel_prolong       4 0.0 5.9802e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc6accebd0_wrap_pyop2_kernel_prolong       4 0.0 8.2100e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc6acd9d90_wrap_pyop2_kernel_prolong       4 0.0 7.5711e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508950aa890_wrap_pyop2_kernel_prolong       4 0.0 8.1970e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150895d29410_wrap_pyop2_kernel_prolong       4 0.0 4.6455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467bec47fd0_wrap_pyop2_kernel_prolong       4 0.0 8.1957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467beda7010_wrap_pyop2_kernel_prolong       4 0.0 5.6398e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be123d2250_wrap_pyop2_kernel_prolong       4 0.0 8.2008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be119e9e10_wrap_pyop2_kernel_prolong       4 0.0 5.6120e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537454179d0_wrap_pyop2_kernel_prolong       4 0.0 8.2001e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153745446bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8548e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db56612890_wrap_pyop2_kernel_prolong       4 0.0 8.1909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db56672290_wrap_pyop2_kernel_prolong       4 0.0 5.8578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1a1639fd0_wrap_pyop2_kernel_prolong       4 0.0 8.1956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1a15f6890_wrap_pyop2_kernel_prolong       4 0.0 5.3073e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa1be82310_wrap_pyop2_kernel_prolong       4 0.0 8.1898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa1beb3450_wrap_pyop2_kernel_prolong       4 0.0 5.5040e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481013a5310_wrap_pyop2_kernel_prolong       4 0.0 8.1893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481013a7e50_wrap_pyop2_kernel_prolong       4 0.0 5.3522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dc258e550_wrap_pyop2_kernel_prolong       4 0.0 8.2074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dc27e8bd0_wrap_pyop2_kernel_prolong       4 0.0 7.1917e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab9a238d0_wrap_pyop2_kernel_prolong       4 0.0 8.1894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ab99d2a10_wrap_pyop2_kernel_prolong       4 0.0 5.2361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504f566f610_wrap_pyop2_kernel_prolong       4 0.0 8.2026e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504f56ebd90_wrap_pyop2_kernel_prolong       4 0.0 6.4301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7e24da2d0_wrap_pyop2_kernel_prolong       4 0.0 8.2229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7e2613e10_wrap_pyop2_kernel_prolong       4 0.0 6.1967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e49498c810_wrap_pyop2_kernel_prolong       4 0.0 8.1954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4940921d0_wrap_pyop2_kernel_prolong       4 0.0 5.6642e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488e846a0d0_wrap_pyop2_kernel_prolong       4 0.0 8.1986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488e8499ed0_wrap_pyop2_kernel_prolong       4 0.0 5.3118e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514f4512850_wrap_pyop2_kernel_prolong       4 0.0 8.1835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514f4519ad0_wrap_pyop2_kernel_prolong       4 0.0 4.3432e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df7cf56810_wrap_pyop2_kernel_prolong       4 0.0 8.2058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df7cfe9d90_wrap_pyop2_kernel_prolong       4 0.0 6.2460e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c02c746650_wrap_pyop2_kernel_prolong       4 0.0 8.1980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c02c747810_wrap_pyop2_kernel_prolong       4 0.0 5.0886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14829f38a1d0_wrap_pyop2_kernel_prolong       4 0.0 8.2036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14829f3b5a90_wrap_pyop2_kernel_prolong       4 0.0 5.6474e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc480f5110_wrap_pyop2_kernel_prolong       4 0.0 8.2040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc48107dd0_wrap_pyop2_kernel_prolong       4 0.0 6.6494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369e36c490_wrap_pyop2_kernel_prolong       4 0.0 8.1895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369e3b18d0_wrap_pyop2_kernel_prolong       4 0.0 4.6655e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521c4519d50_wrap_pyop2_kernel_prolong       4 0.0 8.1912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521c4519450_wrap_pyop2_kernel_prolong       4 0.0 6.1112e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bb1219150_wrap_pyop2_kernel_prolong       4 0.0 8.1926e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bb24df1d0_wrap_pyop2_kernel_prolong       4 0.0 5.8163e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146952c0cc90_wrap_pyop2_kernel_prolong       4 0.0 8.2209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146952c0f790_wrap_pyop2_kernel_prolong       4 0.0 5.8226e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e80f26bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e80f4e250_wrap_pyop2_kernel_prolong       4 0.0 6.9255e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e54700bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e5472da90_wrap_pyop2_kernel_prolong       4 0.0 5.9817e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f56b92bc50_wrap_pyop2_kernel_prolong       4 0.0 8.2115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f56b8d7610_wrap_pyop2_kernel_prolong       4 0.0 7.1231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ccef86b90_wrap_pyop2_kernel_prolong       4 0.0 8.1875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cce50d510_wrap_pyop2_kernel_prolong       4 0.0 4.8051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2d68f57d0_wrap_pyop2_kernel_prolong       4 0.0 8.1997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2d68dd510_wrap_pyop2_kernel_prolong       4 0.0 5.0270e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15427b3a5610_wrap_pyop2_kernel_prolong       4 0.0 8.2000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15427b3c2290_wrap_pyop2_kernel_prolong       4 0.0 5.3146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7909b9210_wrap_pyop2_kernel_prolong       4 0.0 8.1958e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7909bae10_wrap_pyop2_kernel_prolong       4 0.0 5.7300e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af734b22d0_wrap_pyop2_kernel_prolong       4 0.0 8.1997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af734b0810_wrap_pyop2_kernel_prolong       4 0.0 6.0909e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f0f2be750_wrap_pyop2_kernel_prolong       4 0.0 8.2013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f0f2befd0_wrap_pyop2_kernel_prolong       4 0.0 6.9146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5e66aa2d0_wrap_pyop2_kernel_prolong       4 0.0 8.1959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5e6689550_wrap_pyop2_kernel_prolong       4 0.0 6.0735e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5ef296610_wrap_pyop2_kernel_prolong       4 0.0 8.1923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5ef295b90_wrap_pyop2_kernel_prolong       4 0.0 6.7178e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a8451e6d0_wrap_pyop2_kernel_prolong       4 0.0 8.1973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a8451dd10_wrap_pyop2_kernel_prolong       4 0.0 6.5110e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a39e449150_wrap_pyop2_kernel_prolong       4 0.0 8.2030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a39e44b410_wrap_pyop2_kernel_prolong       4 0.0 6.0233e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d345d0f6d0_wrap_pyop2_kernel_prolong       4 0.0 8.2029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d345bee090_wrap_pyop2_kernel_prolong       4 0.0 6.2903e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15506cbf4f10_wrap_pyop2_kernel_prolong       4 0.0 8.2179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15506cc8c050_wrap_pyop2_kernel_prolong       4 0.0 6.8801e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c61b003850_wrap_pyop2_kernel_prolong       4 0.0 8.2294e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c61b001ed0_wrap_pyop2_kernel_prolong       4 0.0 7.0724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15284f91f4d0_wrap_pyop2_kernel_prolong       4 0.0 8.1903e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15284f013890_wrap_pyop2_kernel_prolong       4 0.0 5.3993e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519ac173a10_wrap_pyop2_kernel_prolong       4 0.0 8.2131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519a7471a90_wrap_pyop2_kernel_prolong       4 0.0 5.5213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147625bee650_wrap_pyop2_kernel_prolong       4 0.0 8.2009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147625bedf10_wrap_pyop2_kernel_prolong       4 0.0 7.4123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f532df9d0_wrap_pyop2_kernel_prolong       4 0.0 8.2032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f532ac6d0_wrap_pyop2_kernel_prolong       4 0.0 6.6175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce63c4a910_wrap_pyop2_kernel_prolong       4 0.0 8.1914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce62fb8d90_wrap_pyop2_kernel_prolong       4 0.0 4.7000e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb51c4a10_wrap_pyop2_kernel_prolong       4 0.0 8.2049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb4875f50_wrap_pyop2_kernel_prolong       4 0.0 6.8257e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ca3ef1850_wrap_pyop2_kernel_prolong       4 0.0 8.1922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ca3ef0fd0_wrap_pyop2_kernel_prolong       4 0.0 6.0763e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c02da1290_wrap_pyop2_kernel_prolong       4 0.0 8.2095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c02dbefd0_wrap_pyop2_kernel_prolong       4 0.0 6.4620e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1bba74d0_wrap_pyop2_kernel_prolong       4 0.0 8.2248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1bba5550_wrap_pyop2_kernel_prolong       4 0.0 7.1278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abd7d530d0_wrap_pyop2_kernel_prolong       4 0.0 8.1980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abd7359210_wrap_pyop2_kernel_prolong       4 0.0 5.1789e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540e544ed50_wrap_pyop2_kernel_prolong       4 0.0 8.2236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540e5e35310_wrap_pyop2_kernel_prolong       4 0.0 7.1531e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd99302bd0_wrap_pyop2_kernel_prolong       4 0.0 8.2055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd99302390_wrap_pyop2_kernel_prolong       4 0.0 7.1535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c23d2ea310_wrap_pyop2_kernel_prolong       4 0.0 8.2123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c23d2ea210_wrap_pyop2_kernel_prolong       4 0.0 7.5851e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c787c0b10_wrap_pyop2_kernel_prolong       4 0.0 8.0439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c787c0910_wrap_pyop2_kernel_prolong       4 0.0 5.4117e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b089997a50_wrap_pyop2_kernel_prolong       4 0.0 8.0584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b089762150_wrap_pyop2_kernel_prolong       4 0.0 5.6825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3b5482c50_wrap_pyop2_kernel_prolong       4 0.0 8.0397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3b42041d0_wrap_pyop2_kernel_prolong       4 0.0 6.2337e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a3b861d50_wrap_pyop2_kernel_prolong       4 0.0 8.0307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a391c5810_wrap_pyop2_kernel_prolong       4 0.0 5.8630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4d4b65c50_wrap_pyop2_kernel_prolong       4 0.0 8.0544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4d4b64b90_wrap_pyop2_kernel_prolong       4 0.0 5.5865e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149da4d19cd0_wrap_pyop2_kernel_prolong       4 0.0 8.0347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149da4d187d0_wrap_pyop2_kernel_prolong       4 0.0 6.0636e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467a07d5bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14679bd73050_wrap_pyop2_kernel_prolong       4 0.0 4.9102e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b79470bb90_wrap_pyop2_kernel_prolong       4 0.0 8.0365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b794709250_wrap_pyop2_kernel_prolong       4 0.0 5.4635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14770c28aad0_wrap_pyop2_kernel_prolong       4 0.0 8.0272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14770c28b2d0_wrap_pyop2_kernel_prolong       4 0.0 5.7988e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9cae69ed0_wrap_pyop2_kernel_prolong       4 0.0 8.0403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9cae69890_wrap_pyop2_kernel_prolong       4 0.0 5.9452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ace87a210_wrap_pyop2_kernel_prolong       4 0.0 8.0346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ace8f0490_wrap_pyop2_kernel_prolong       4 0.0 5.9261e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153eb5a7a550_wrap_pyop2_kernel_prolong       4 0.0 8.0474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153eb5a7a590_wrap_pyop2_kernel_prolong       4 0.0 5.5164e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148756c3bc10_wrap_pyop2_kernel_prolong       4 0.0 8.0288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148756c38890_wrap_pyop2_kernel_prolong       4 0.0 7.1369e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f06687750_wrap_pyop2_kernel_prolong       4 0.0 7.9477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f06685990_wrap_pyop2_kernel_prolong       4 0.0 5.8659e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfc9ae2010_wrap_pyop2_kernel_prolong       4 0.0 7.9500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfc9ae1c10_wrap_pyop2_kernel_prolong       4 0.0 5.3348e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d826a38b90_wrap_pyop2_kernel_prolong       4 0.0 8.0074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d826a3a6d0_wrap_pyop2_kernel_prolong       4 0.0 5.1506e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517a0294c50_wrap_pyop2_kernel_prolong       4 0.0 7.9470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517a0294050_wrap_pyop2_kernel_prolong       4 0.0 5.2626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15141245fe50_wrap_pyop2_kernel_prolong       4 0.0 7.9468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15141245ddd0_wrap_pyop2_kernel_prolong       4 0.0 5.8877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d038ea0a10_wrap_pyop2_kernel_prolong       4 0.0 7.9580e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d038c99bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7118e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14643b52b9d0_wrap_pyop2_kernel_prolong       4 0.0 8.0082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14643b785610_wrap_pyop2_kernel_prolong       4 0.0 5.8143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15173ca55610_wrap_pyop2_kernel_prolong       4 0.0 8.0241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15173cbddd90_wrap_pyop2_kernel_prolong       4 0.0 6.0949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c4a1f2b10_wrap_pyop2_kernel_prolong       4 0.0 8.0560e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c4a23d910_wrap_pyop2_kernel_prolong       4 0.0 7.5091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b48139bb90_wrap_pyop2_kernel_prolong       4 0.0 7.9974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b481399350_wrap_pyop2_kernel_prolong       4 0.0 6.7456e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d08f47a890_wrap_pyop2_kernel_prolong       4 0.0 7.9668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d08f4a8bd0_wrap_pyop2_kernel_prolong       4 0.0 7.2379e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c14c6b81d0_wrap_pyop2_kernel_prolong       4 0.0 8.0073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c14c6e9390_wrap_pyop2_kernel_prolong       4 0.0 7.1859e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14926efbdb10_wrap_pyop2_kernel_prolong       4 0.0 7.9617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14926ec3dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5069e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15388b00bd90_wrap_pyop2_kernel_prolong       4 0.0 8.0089e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15388b00a050_wrap_pyop2_kernel_prolong       4 0.0 5.8992e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a971cdebd0_wrap_pyop2_kernel_prolong       4 0.0 7.9770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a971d16990_wrap_pyop2_kernel_prolong       4 0.0 5.3618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147af9daa4d0_wrap_pyop2_kernel_prolong       4 0.0 7.9601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147af9d9ddd0_wrap_pyop2_kernel_prolong       4 0.0 5.3557e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6620b3790_wrap_pyop2_kernel_prolong       4 0.0 8.0492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6620b2350_wrap_pyop2_kernel_prolong       4 0.0 6.4831e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7f76e8a50_wrap_pyop2_kernel_prolong       4 0.0 8.0047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7f76eb550_wrap_pyop2_kernel_prolong       4 0.0 6.3793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146719d85710_wrap_pyop2_kernel_prolong       4 0.0 8.0597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146719d86350_wrap_pyop2_kernel_prolong       4 0.0 6.5228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153888725810_wrap_pyop2_kernel_prolong       4 0.0 7.9475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538886c65d0_wrap_pyop2_kernel_prolong       4 0.0 5.5075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9f652ed90_wrap_pyop2_kernel_prolong       4 0.0 8.0317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9f5c4d050_wrap_pyop2_kernel_prolong       4 0.0 6.5603e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f479d8a390_wrap_pyop2_kernel_prolong       4 0.0 8.0570e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f479b5b590_wrap_pyop2_kernel_prolong       4 0.0 6.7881e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15168a3b5ed0_wrap_pyop2_kernel_prolong       4 0.0 8.0222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151688ba7e50_wrap_pyop2_kernel_prolong       4 0.0 6.9254e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148debabd6d0_wrap_pyop2_kernel_prolong       4 0.0 7.9954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148deaea6650_wrap_pyop2_kernel_prolong       4 0.0 7.4960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149de8fe2450_wrap_pyop2_kernel_prolong       4 0.0 8.0444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149de8de0d50_wrap_pyop2_kernel_prolong       4 0.0 6.5604e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c287de0d0_wrap_pyop2_kernel_prolong       4 0.0 8.0468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c288099d0_wrap_pyop2_kernel_prolong       4 0.0 6.7544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cb6459fd0_wrap_pyop2_kernel_prolong       4 0.0 7.9875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cb645a1d0_wrap_pyop2_kernel_prolong       4 0.0 6.4653e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5a31b56d0_wrap_pyop2_kernel_prolong       4 0.0 8.0170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5a2843650_wrap_pyop2_kernel_prolong       4 0.0 6.5399e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154085cafc10_wrap_pyop2_kernel_prolong       4 0.0 8.0609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154085cae010_wrap_pyop2_kernel_prolong       4 0.0 6.5699e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14924601eb10_wrap_pyop2_kernel_prolong       4 0.0 7.9477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14924601c390_wrap_pyop2_kernel_prolong       4 0.0 6.0070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535ae90a090_wrap_pyop2_kernel_prolong       4 0.0 7.9514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535ad8c2650_wrap_pyop2_kernel_prolong       4 0.0 6.2444e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15183f470510_wrap_pyop2_kernel_prolong       4 0.0 7.9822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15183f471d10_wrap_pyop2_kernel_prolong       4 0.0 6.2636e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540826468d0_wrap_pyop2_kernel_prolong       4 0.0 7.9472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540826d1dd0_wrap_pyop2_kernel_prolong       4 0.0 5.8924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c658139d0_wrap_pyop2_kernel_prolong       4 0.0 7.9469e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c65a63d90_wrap_pyop2_kernel_prolong       4 0.0 4.9982e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148590546510_wrap_pyop2_kernel_prolong       4 0.0 8.0194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148590546f10_wrap_pyop2_kernel_prolong       4 0.0 7.4048e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499f23e70d0_wrap_pyop2_kernel_prolong       4 0.0 7.9477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499f198a790_wrap_pyop2_kernel_prolong       4 0.0 5.4787e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d399ec4b10_wrap_pyop2_kernel_prolong       4 0.0 8.0225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d399ec6650_wrap_pyop2_kernel_prolong       4 0.0 7.2211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537492e2490_wrap_pyop2_kernel_prolong       4 0.0 7.9760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15374919ddd0_wrap_pyop2_kernel_prolong       4 0.0 6.3260e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7e865e050_wrap_pyop2_kernel_prolong       4 0.0 7.9951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7e865d050_wrap_pyop2_kernel_prolong       4 0.0 7.2229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e541bc1a10_wrap_pyop2_kernel_prolong       4 0.0 7.9843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e541b59d90_wrap_pyop2_kernel_prolong       4 0.0 5.0791e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5619be650_wrap_pyop2_kernel_prolong       4 0.0 7.9897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5619bf310_wrap_pyop2_kernel_prolong       4 0.0 6.0227e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548dcb2d490_wrap_pyop2_kernel_prolong       4 0.0 7.9545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548dc170e90_wrap_pyop2_kernel_prolong       4 0.0 6.2207e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efe355a050_wrap_pyop2_kernel_prolong       4 0.0 7.9471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14efe37c9010_wrap_pyop2_kernel_prolong       4 0.0 6.4686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bfb086390_wrap_pyop2_kernel_prolong       4 0.0 7.9718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bfb087cd0_wrap_pyop2_kernel_prolong       4 0.0 5.2209e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150df1f718d0_wrap_pyop2_kernel_prolong       4 0.0 7.9752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150df1f91f90_wrap_pyop2_kernel_prolong       4 0.0 6.8152e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533da092690_wrap_pyop2_kernel_prolong       4 0.0 7.9443e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533da0e3190_wrap_pyop2_kernel_prolong       4 0.0 5.8412e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7e2725490_wrap_pyop2_kernel_prolong       4 0.0 7.9439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7e2727e50_wrap_pyop2_kernel_prolong       4 0.0 5.0668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1b3076b50_wrap_pyop2_kernel_prolong       4 0.0 7.9665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1b3076790_wrap_pyop2_kernel_prolong       4 0.0 6.2761e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b99449710_wrap_pyop2_kernel_prolong       4 0.0 7.9531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b9944b3d0_wrap_pyop2_kernel_prolong       4 0.0 6.2828e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7f8bb4950_wrap_pyop2_kernel_prolong       4 0.0 7.9932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7f8bb5e50_wrap_pyop2_kernel_prolong       4 0.0 5.7389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7e8cf4d50_wrap_pyop2_kernel_prolong       4 0.0 7.9854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7e8d1ddd0_wrap_pyop2_kernel_prolong       4 0.0 6.0261e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d244a76410_wrap_pyop2_kernel_prolong       4 0.0 7.9500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d24413ef90_wrap_pyop2_kernel_prolong       4 0.0 6.1497e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a5523b850_wrap_pyop2_kernel_prolong       4 0.0 7.9432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a5523a910_wrap_pyop2_kernel_prolong       4 0.0 5.0738e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b24fe8ff90_wrap_pyop2_kernel_prolong       4 0.0 7.9527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b24fffdb10_wrap_pyop2_kernel_prolong       4 0.0 6.1633e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db85b6afd0_wrap_pyop2_kernel_prolong       4 0.0 7.9762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db85b681d0_wrap_pyop2_kernel_prolong       4 0.0 6.4236e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0119a9a90_wrap_pyop2_kernel_prolong       4 0.0 7.9566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0119a8150_wrap_pyop2_kernel_prolong       4 0.0 6.6580e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15045ba15350_wrap_pyop2_kernel_prolong       4 0.0 8.0140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15045ba41810_wrap_pyop2_kernel_prolong       4 0.0 6.9382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf4ab81590_wrap_pyop2_kernel_prolong       4 0.0 7.9589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf4abaaf90_wrap_pyop2_kernel_prolong       4 0.0 6.9074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5a9ac9d10_wrap_pyop2_kernel_prolong       4 0.0 7.9570e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5a9aa9190_wrap_pyop2_kernel_prolong       4 0.0 6.3938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510e3d3dd50_wrap_pyop2_kernel_prolong       4 0.0 7.9971e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510e3d3fa50_wrap_pyop2_kernel_prolong       4 0.0 6.2084e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145795a40a50_wrap_pyop2_kernel_prolong       4 0.0 7.9570e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145794e4e790_wrap_pyop2_kernel_prolong       4 0.0 6.7228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdbf4efd50_wrap_pyop2_kernel_prolong       4 0.0 8.0231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdbf466b50_wrap_pyop2_kernel_prolong       4 0.0 5.7737e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebc1070750_wrap_pyop2_kernel_prolong       4 0.0 7.9723e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebc1082190_wrap_pyop2_kernel_prolong       4 0.0 6.9170e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce18805610_wrap_pyop2_kernel_prolong       4 0.0 7.9544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce18807650_wrap_pyop2_kernel_prolong       4 0.0 6.7259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4df4fb990_wrap_pyop2_kernel_prolong       4 0.0 7.9695e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4df526410_wrap_pyop2_kernel_prolong       4 0.0 7.7980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535eaedacd0_wrap_pyop2_kernel_prolong       4 0.0 8.0034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535eaf19110_wrap_pyop2_kernel_prolong       4 0.0 6.0746e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14820f0f94d0_wrap_pyop2_kernel_prolong       4 0.0 8.0218e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14820f0f9590_wrap_pyop2_kernel_prolong       4 0.0 6.0377e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e30bd6390_wrap_pyop2_kernel_prolong       4 0.0 8.0053e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e30ca9c90_wrap_pyop2_kernel_prolong       4 0.0 7.1325e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512711b4fd0_wrap_pyop2_kernel_prolong       4 0.0 7.9548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151270712490_wrap_pyop2_kernel_prolong       4 0.0 5.0766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155174a568d0_wrap_pyop2_kernel_prolong       4 0.0 8.0061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155174a56110_wrap_pyop2_kernel_prolong       4 0.0 6.9601e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8b659a190_wrap_pyop2_kernel_prolong       4 0.0 7.9557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8b65c5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.0099e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7425b4c50_wrap_pyop2_kernel_prolong       4 0.0 7.9821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7425d5b50_wrap_pyop2_kernel_prolong       4 0.0 6.4395e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa97820bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa96505650_wrap_pyop2_kernel_prolong       4 0.0 6.0543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e590c759d0_wrap_pyop2_kernel_prolong       4 0.0 7.9509e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e590cf8bd0_wrap_pyop2_kernel_prolong       4 0.0 6.4427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a78fdb9ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a78fdb9a50_wrap_pyop2_kernel_prolong       4 0.0 4.8914e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485335eb450_wrap_pyop2_kernel_prolong       4 0.0 7.9888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485335e9a50_wrap_pyop2_kernel_prolong       4 0.0 6.8984e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c36ffe53d0_wrap_pyop2_kernel_prolong       4 0.0 7.9564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c36ffed0d0_wrap_pyop2_kernel_prolong       4 0.0 6.6104e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4ba10d910_wrap_pyop2_kernel_prolong       4 0.0 7.9622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4bab7cdd0_wrap_pyop2_kernel_prolong       4 0.0 7.1467e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e192533d0_wrap_pyop2_kernel_prolong       4 0.0 7.9837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e190ff0d0_wrap_pyop2_kernel_prolong       4 0.0 7.1726e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cbc3cded0_wrap_pyop2_kernel_prolong       4 0.0 7.9434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cb7932590_wrap_pyop2_kernel_prolong       4 0.0 5.6348e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502d62e9950_wrap_pyop2_kernel_prolong       4 0.0 7.9535e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502d60c8b10_wrap_pyop2_kernel_prolong       4 0.0 6.9466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e87d7d9490_wrap_pyop2_kernel_prolong       4 0.0 7.9488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e87d819850_wrap_pyop2_kernel_prolong       4 0.0 7.1696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15532442a690_wrap_pyop2_kernel_prolong       4 0.0 7.9467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155324ddad10_wrap_pyop2_kernel_prolong       4 0.0 6.0453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbcbf55a90_wrap_pyop2_kernel_prolong       4 0.0 7.9773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbcbf55390_wrap_pyop2_kernel_prolong       4 0.0 7.6351e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eedbfdbe10_wrap_pyop2_kernel_prolong       4 0.0 7.9448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eedbea42d0_wrap_pyop2_kernel_prolong       4 0.0 5.5616e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faba7b0d90_wrap_pyop2_kernel_prolong       4 0.0 7.9550e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fab9e65990_wrap_pyop2_kernel_prolong       4 0.0 7.4527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525ea5c1d90_wrap_pyop2_kernel_prolong       4 0.0 7.9506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525ea5c0990_wrap_pyop2_kernel_prolong       4 0.0 6.7112e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f70361ec10_wrap_pyop2_kernel_prolong       4 0.0 7.9540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7038b93d0_wrap_pyop2_kernel_prolong       4 0.0 6.7515e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455fa7f3a10_wrap_pyop2_kernel_prolong       4 0.0 7.9758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455fa7f1610_wrap_pyop2_kernel_prolong       4 0.0 6.7614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475aea1f990_wrap_pyop2_kernel_prolong       4 0.0 8.0128e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475aea1cd50_wrap_pyop2_kernel_prolong       4 0.0 7.0404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cfa4b4a10_wrap_pyop2_kernel_prolong       4 0.0 7.9608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cfa4b7ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3204e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        435 1.0 1.2242e-01 3.4 0.00e+00 0.0 1.2e+06 4.0e+00 4.4e+02  0  0  2  0  2   0  0  3  0  9    -0
SFSetGraph           435 1.0 1.8798e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              435 1.0 1.5674e-01 2.2 0.00e+00 0.0 2.4e+06 2.0e+02 4.4e+02  0  0  4  0  2   0  0  6  0  9    -0
SFPack             19537 1.0 5.0457e+00 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           19537 1.0 1.6513e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2791 1.0 3.7109e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             11163 1.0 2.3698e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY            11164 1.0 1.6340e+01 1.8 9.00e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 225650
VecAYPX            11164 1.0 1.6328e+01 2.2 4.50e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 112908
VecScatterBegin    19537 1.0 5.6027e+00 3.2 0.00e+00 0.0 3.3e+07 9.2e+04 0.0e+00  0  0 59 47  0   0  0 84 100  0    -0
VecScatterEnd      19537 1.0 1.1931e+02 16.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
MatMult            11164 1.0 5.1755e+02 1.3 3.19e+11 1.1 2.5e+07 1.2e+05 0.0e+00 23 12 45 47  0  41 42 64 100  0 252241
MatMultAdd          2791 1.0 1.4397e+01 1.2 6.75e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 192077
MatMultTranspose    2791 1.0 1.1255e+01 2.0 6.75e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 245711
MatSolve           13955 1.0 5.9301e+02 1.3 3.15e+11 1.1 1.4e+07 5.5e+02 2.2e+03 27 12 25  0 12  48 41 36  0 44 212870
MatLUFactorNum       418 1.0 7.0282e+01 1.4 1.07e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   6 14  0  0  0 602842
MatResidual         2791 1.0 1.3689e+02 1.4 8.09e+10 1.1 6.2e+06 1.2e+05 0.0e+00  6  3 11 12  0  11 11 16 25  0 241781
PCSetUpOnBlocks     5582 1.0 7.0342e+01 1.4 1.07e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   6 14  0  0  0 602325
PCApply            13955 1.0 5.9323e+02 1.3 3.15e+11 1.1 1.4e+07 5.5e+02 2.2e+03 27 12 25  0 12  48 41 36  0 44 212793
PCApplyOnBlocks    11164 1.0 5.0261e+02 1.4 3.10e+11 1.1 0.0e+00 0.0e+00 0.0e+00 22 12  0  0  0  40 41  0  0  0 250719
KSPSetUp               1 1.0 3.4549e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            8373 1.0 9.1014e+02 1.1 5.64e+11 1.1 3.3e+07 6.9e+04 5.0e+03 45 21 59 35 28  81 74 84 75 100 251847
MGSmooth Level 0    2791 1.0 1.0930e+02 1.5 7.19e+09 61.3 1.4e+07 5.5e+02 5.0e+03  5  0 25  0 28   8  0 36  0 100  2005
MGSmooth Level 1    5582 1.0 9.0002e+02 1.1 6.68e+11 1.1 1.9e+07 1.2e+05 0.0e+00 44 25 34 35  0  79 87 48 75  0 301512
MGResid Level 1     2791 1.0 1.3690e+02 1.4 8.09e+10 1.1 6.2e+06 1.2e+05 0.0e+00  6  3 11 12  0  11 11 16 25  0 241762
MGInterp Level 1    5582 1.0 2.5158e+01 1.4 1.35e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 219847
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   131            131
              Viewer     3              3
         PetscRandom    17             17
           Index Set  2413           2413
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   402            837
              Vector  1587           1586
              Matrix   132            132
      Preconditioner     6              6
       Krylov Solver    22             22
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

           Index Set   870            870
   Star Forest Graph   435              0
              Vector   437            438
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 1.14894e-05
Average time for zero size MPI_Send(): 2.54736e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal_saturated/vlumping/h4.profile # (source: code)
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

