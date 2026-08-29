****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0103.gadi.nci.org.au with 416 processes, by sg8812 on Sat Aug 29 13:45:06 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.402e+03     1.000   1.402e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.850e+12     1.140   1.768e+12  7.357e+14
Flops/sec:            1.320e+09     1.140   1.262e+09  5.249e+11
MPI Msg Count:        2.071e+05     4.931   1.001e+05  4.166e+07
MPI Msg Len (bytes):  1.565e+10     3.191   1.097e+05  4.570e+12
MPI Reductions:       1.723e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.9502e+02  56.7%  6.1399e+14  83.5%  1.498e+07  36.0%  1.981e+05       64.9%  1.243e+04  72.2%
 1:        MG Apply: 6.0656e+02  43.3%  1.2170e+14  16.5%  2.668e+07  64.0%  6.007e+04       35.1%  4.777e+03  27.7%

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

BuildTwoSided       2138 1.0 1.1691e+02 2.9 0.00e+00 0.0 5.5e+05 4.0e+00 1.9e+03  5  0  1  0 11   9  0  4  0 15    -0
BuildTwoSidedF      1816 1.0 1.1219e+02 2.8 0.00e+00 0.0 8.1e+05 1.4e+06 1.8e+03  5  0  2 26 11   9  0  5 40 15    -0
SFSetGraph           329 1.1 1.5743e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              322 1.1 4.9341e+00 119.7 0.00e+00 0.0 3.0e+05 1.1e+03 9.8e+01  0  0  1  0  1   0  0  2  0  1    -0
SFBcastBegin        1415 1.0 7.4406e-01 3.6 0.00e+00 0.0 3.1e+06 1.0e+05 0.0e+00  0  0  7  7  0   0  0 20 10  0    -0
SFBcastEnd          1415 1.0 2.8669e+01 107.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        772 1.0 2.7054e-01 26.1 0.00e+00 0.0 1.7e+06 1.1e+05 0.0e+00  0  0  4  4  0   0  0 11  7  0    -0
SFReduceEnd          772 1.0 9.1896e+00 80.5 8.42e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2673
SFFetchOpBegin         6 1.0 3.1121e-05 5.2 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 1.0126e-03 26.1 0.00e+00 0.0 1.1e+04 7.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.4908e-03 2.4 0.00e+00 0.0 5.4e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 9.9247e-03 1.3 0.00e+00 0.0 2.6e+05 7.9e+01 5.8e+01  0  0  1  0  0   0  0  2  0  0    -0
SFSectionSF           51 1.0 5.4534e-03 2.7 0.00e+00 0.0 1.2e+05 3.8e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.8637e-05 2.6 0.00e+00 0.0 4.7e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            180942 1.1 2.1340e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          180948 1.1 4.3137e-01 9.1 8.42e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 56936
VecDot               362 1.0 1.4354e+00 4.4 2.92e+08 1.1 0.0e+00 0.0e+00 3.6e+02  0  0  0  0  2   0  0  0  0  3 83297
VecMDot             3337 1.0 3.9088e+01 2.0 1.52e+10 1.1 0.0e+00 0.0e+00 3.3e+03  2  1  0  0 19   3  1  0  0 27 159590
VecNorm             5191 1.0 1.8131e+01 4.3 4.19e+09 1.1 0.0e+00 0.0e+00 5.2e+03  1  0  0  0 30   1  0  0  0 42 94558
VecScale            3718 1.0 1.3169e+00 1.3 1.50e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 466243
VecCopy             2965 1.0 4.1282e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1522 1.0 1.2890e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              381 1.0 7.0911e-01 1.2 3.07e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 177457
VecWAXPY             697 1.0 1.4775e+00 1.2 4.16e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 115348
VecMAXPY            3718 1.0 2.3120e+01 1.1 1.79e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  1  0  0  0 317473
VecScatterBegin   178749 1.1 3.3982e+00 1.6 0.00e+00 0.0 8.3e+06 1.2e+05 0.0e+00  0  0 20 22  0   0  0 55 34  0    -0
VecScatterEnd     178749 1.1 3.7266e+01 38.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          18 1.0 6.7778e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       724 1.0 5.7255e-01 2.0 5.84e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 417645
VecReduceComm        362 1.0 4.7946e-01 20.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.6e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         389 1.0 1.4645e+00 2.8 4.71e+08 1.1 0.0e+00 0.0e+00 3.9e+02  0  0  0  0  2   0  0  0  0  3 131591
MatMult             3699 1.0 1.6899e+02 1.3 1.06e+11 1.1 8.3e+06 1.2e+05 0.0e+00 10  6 20 22  0  18  7 55 34  0 255964
MatSolve           87136 1.1 1.0887e+01 1.6 5.48e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 206055
MatLUFactorSym       225 1.1 1.3484e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      4394 1.1 7.3609e+01 1.0 1.65e+09 1.5 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   9  0  0  0  0  6672
MatAssemblyBegin    6621 1.0 1.1707e+02 2.4 0.00e+00 0.0 8.1e+05 1.4e+06 1.8e+03  6  0  2 26 11  10  0  5 40 15    -0
MatAssemblyEnd      6621 1.0 2.5352e+01 5.9 4.38e+08 0.0 8.9e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0  2889
MatGetRowIJ          224 1.1 3.1689e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      18 1.0 2.5518e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2    -0
MatGetOrdering       224 1.1 4.0098e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       724 1.0 1.4779e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5414e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2474e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        724 1.0 7.6486e+00 1.3 1.05e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 561625
MatPtAPSymbolic        1 1.0 2.2027e-01 1.0 0.00e+00 0.0 6.7e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       362 1.0 5.6062e+01 1.0 4.20e+10 1.1 8.1e+05 3.6e+05 3.7e+02  4  2  2  6  2   7  3  5 10  3 306366
MatGetLocalMat       362 1.0 2.8103e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        362 1.0 1.5877e+00 2.1 0.00e+00 0.0 8.1e+05 3.6e+05 0.0e+00  0  0  2  6  0   0  0  5 10  0    -0
MatSetPreallCOO       32 1.0 6.4485e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.0736e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              362 1.0 1.7616e+02 1.0 6.70e+10 1.1 1.7e+06 2.4e+05 2.1e+03 13  4  4  9 12  22  4 11 13 17 154508
PCApply             2967 1.0 6.2632e+02 1.1 3.05e+11 1.1 2.7e+07 6.0e+04 4.8e+03 43 17 64 35 28 Multiple stages 194304
PCApplyOnBlocks    87136 1.1 1.2164e+01 1.6 6.63e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 223272
KSPSetUp             362 1.0 1.9196e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             362 1.0 7.7260e+02 1.0 4.20e+11 1.1 3.3e+07 7.2e+04 1.1e+04 55 23 80 53 64 Multiple stages 218850
KSPGMRESOrthog      3337 1.0 5.8308e+01 1.5 3.05e+10 1.1 0.0e+00 0.0e+00 3.3e+03  3  2  0  0 19   6  2  0  0 27 213967
DMRefine               2 1.0 2.3942e-01 1.0 2.09e+03 1.0 3.2e+04 3.4e+01 6.3e+01  0  0  0  0  0   0  0  0  0  1     4
DMPlexCreateGmsh       1 1.0 2.2331e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.2870e+00 226.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 1.4539e-01 1.0 0.00e+00 0.0 7.9e+04 6.2e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
Mesh Migration         4 1.0 2.6187e-02 1.1 0.00e+00 0.0 2.9e+05 7.2e+01 2.4e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 3.8503e-03 1138.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 2.9952e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 7.0285e-03 1.2 0.00e+00 0.0 1.6e+04 4.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 3.1139e-03 2.8 0.00e+00 0.0 7.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 2.5596e-03 2.5 0.00e+00 0.0 8.2e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 9.5588e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.4635e-01 1.0 0.00e+00 0.0 1.7e+04 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 3.5949e-03 1.2 0.00e+00 0.0 4.5e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.1116e-02 1.0 0.00e+00 0.0 1.5e+05 7.0e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 2.8528e-02 1.0 0.00e+00 0.0 3.6e+05 6.8e+01 2.4e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexDistField        7 1.0 5.1366e-03 1.3 0.00e+00 0.0 6.6e+04 5.7e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 7.6675e-03 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 5.5773e-04 10.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1226e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.8468e-03 1.5 0.00e+00 0.0 1.8e+04 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1227e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.8168e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.9716e-04 2.0 0.00e+00 0.0 1.4e+04 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.8842e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 1.0628e-03 2.3 0.00e+00 0.0 3.6e+03 3.6e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             34 1.0 1.3343e+03 1.0 1.85e+12 1.1 4.1e+07 1.1e+05 1.6e+04 95 100 98 100 96 Multiple stages 551332
SNESSetUp              1 1.0 5.4617e-05 7.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     731 1.0 6.5080e+01 1.2 6.67e+11 1.2 3.3e+06 1.2e+05 0.0e+00  4 36  8  9  0   7 43 22 14  0 4028576
SNESJacobianEval     362 1.0 3.0220e+02 1.0 6.90e+11 1.2 1.6e+06 7.8e+05 1.4e+03 22 37  4 28  8  38 44 11 43 12 900212
SNESLineSearch       362 1.0 7.1102e+01 1.0 6.48e+11 1.2 3.9e+06 1.2e+05 1.8e+03  5 35  9 10 10   9 42 26 16 14 3587761
DualSpaceSetUp         8 1.0 5.4108e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     8
FESetUp                8 1.0 2.0226e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.3994e+03 1.0 1.85e+12 1.1 4.2e+07 1.1e+05 1.7e+04 100 100 100 100 100 Multiple stages 525724
firedrake.__init__       1 1.0 1.1234e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.5093e+00 22.7 0.00e+00 0.0 7.0e+05 7.4e+01 4.4e+02  0  0  2  0  3   0  0  5  0  4    -0
firedrake.mesh._from_gmsh       1 1.0 5.2878e+00 226.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0690e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.6320e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 5.0102e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0750e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 3.1701e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.8771e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 2.9488e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.7132e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.7005e-02 1.1 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 9.0175e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 8.3862e-03 1.2 0.00e+00 0.0 1.5e+04 8.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.6037e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.6077e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.9052e-02 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.2204e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.5079e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.6134e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3088e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.2138e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     400 1.0 6.9960e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      5123 1.0 3.0328e+02 1.3 1.36e+12 1.2 2.6e+06 1.2e+05 3.2e+01 19 73  6  7  0  34 87 17 10  0 1761262
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.1715e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   10246 1.0 2.6454e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0916e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.5829e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5542e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.5060e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.5059e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.8325e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.6669e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    5123 1.0 1.6853e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      5123 1.0 1.4614e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.9349e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.6712e+00 1.0 1.36e+07 1.1 3.8e+04 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   643
firedrake.interpolation.interpolate      13 1.0 4.9694e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.9951e+00 1.0 8.46e+07 1.1 5.8e+04 4.2e+04 3.7e+01  0  0  0  0  0   1  0  0  0  0  5778
firedrake.formmanipulation.split_form      14 1.0 4.3958e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.7517e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5970e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0404e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1148 1.0 5.7202e+00 15.4 0.00e+00 0.0 2.6e+06 1.2e+05 4.0e+00  0  0  6  7  0   0  0 17 10  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4998e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  6298
firedrake.halo.Halo.global_to_local_end    1148 1.0 2.7604e+01 172.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 3.8968e+00 61.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bca2b21f10_wrap_pyop2_kernel_prolong       4 0.0 7.4364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bca2b22550_wrap_pyop2_kernel_prolong       4 0.0 5.1161e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9936e+00 1.0 6.85e+07 1.1 3.5e+04 6.0e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  7030
firedrake.function.Function.assign     150 1.0 9.2302e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     149 1.0 8.7729e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2671e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      70 1.0 8.4809e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.6358e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5100e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9850e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2635e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.5854e+00 1.0 0.00e+00 0.0 1.4e+04 4.8e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.9610e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.0647e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2038e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2038e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.0884e+00 1.1 0.00e+00 0.0 1.2e+04 2.8e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.6689e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      34 1.0 1.3344e+03 1.0 1.85e+12 1.1 4.1e+07 1.1e+05 1.7e+04 95 100 98 100 96 Multiple stages 551279
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2708e-01 1250.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 2.0920e-05 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2702e-01 1523.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2699e-01 1743.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1462 1.0 1.8887e+01 1.5 1.69e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   2 11  0  0  0 3671967
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1462 1.0 1.0722e+00 1.1 2.18e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8319
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1462 1.0 1.4015e+00 1.1 1.46e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 43221
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1462 1.0 1.1335e+01 1.2 1.61e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1 11  0  0  0 5814777
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1462 1.0 2.4951e+01 1.3 3.36e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 17  0  0  0   3 21  0  0  0 5082732
firedrake.halo.Halo.local_to_global_begin     731 1.0 3.0224e-01 11.9 0.00e+00 0.0 1.6e+06 1.2e+05 0.0e+00  0  0  4  4  0   0  0 11  7  0    -0
firedrake.halo.Halo.local_to_global_end     731 1.0 9.1970e+00 76.4 8.42e+07 3.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2671
Parloop_Cells_wrap_form00_cell_integral     724 1.0 4.8096e+01 1.5 1.56e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   5 10  0  0  0 1326006
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     724 1.0 2.2124e+00 2.0 7.25e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13641
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     724 1.0 5.6951e+01 1.2 2.05e+11 1.1 0.0e+00 0.0e+00 0.0e+00  4 11  0  0  0   7 14  0  0  0 1473198
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     724 1.0 1.3321e+02 1.5 3.29e+11 1.3 0.0e+00 0.0e+00 0.0e+00  8 17  0  0  0  14 20  0  0  0 932843
firedrake.dmhooks.get_function_space       2 1.0 2.2013e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.2711e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      362 1.0 7.3913e+01 1.0 4.97e+08 36.5 0.0e+00 0.0e+00 2.0e+00  5  0  0  0  0   9  0  0  0  0   248
MGSetup Level 1      362 1.0 2.0175e+00 1.1 6.16e+08 1.1 2.2e+04 1.2e+05 2.5e+02  0  0  0  0  1   0  0  0  0  2 124930
firedrake.constant.Constant.assign      34 1.0 1.5653e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472231e3490_wrap_pyop2_kernel_prolong       4 0.0 7.4396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14722332d190_wrap_pyop2_kernel_prolong       4 0.0 5.6895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c2d73f550_wrap_pyop2_kernel_prolong       4 0.0 7.4394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c2d73cd90_wrap_pyop2_kernel_prolong       4 0.0 5.6674e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aceb895f10_wrap_pyop2_kernel_prolong       4 0.0 7.4358e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aceb897510_wrap_pyop2_kernel_prolong       4 0.0 5.2361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e546d5f410_wrap_pyop2_kernel_prolong       4 0.0 7.4390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e546539150_wrap_pyop2_kernel_prolong       4 0.0 5.8828e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c158ade2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c158a658d0_wrap_pyop2_kernel_prolong       4 0.0 6.3393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146893b5a1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146893b586d0_wrap_pyop2_kernel_prolong       4 0.0 5.6753e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1aadfa1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4906e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1aadf9990_wrap_pyop2_kernel_prolong       4 0.0 6.5108e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14698d122610_wrap_pyop2_kernel_prolong       4 0.0 7.4394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14698d121f10_wrap_pyop2_kernel_prolong       4 0.0 5.4152e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca00c4d10_wrap_pyop2_kernel_prolong       4 0.0 7.4785e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca00c7150_wrap_pyop2_kernel_prolong       4 0.0 6.3189e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506820790d0_wrap_pyop2_kernel_prolong       4 0.0 7.4402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150682078510_wrap_pyop2_kernel_prolong       4 0.0 5.6888e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146690152550_wrap_pyop2_kernel_prolong       4 0.0 7.4378e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146690174650_wrap_pyop2_kernel_prolong       4 0.0 5.4350e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15312fcc9050_wrap_pyop2_kernel_prolong       4 0.0 7.4442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15312f38e010_wrap_pyop2_kernel_prolong       4 0.0 6.8022e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c72d30550_wrap_pyop2_kernel_prolong       4 0.0 7.4650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c72f8af10_wrap_pyop2_kernel_prolong       4 0.0 5.6118e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14637979cf90_wrap_pyop2_kernel_prolong       4 0.0 7.4368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14637978c050_wrap_pyop2_kernel_prolong       4 0.0 5.7594e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fa566f710_wrap_pyop2_kernel_prolong       4 0.0 7.4479e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fa566e010_wrap_pyop2_kernel_prolong       4 0.0 6.2672e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bfce224d0_wrap_pyop2_kernel_prolong       4 0.0 7.4697e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bfce21e50_wrap_pyop2_kernel_prolong       4 0.0 5.2353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147759fba550_wrap_pyop2_kernel_prolong       4 0.0 7.4571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147759f91890_wrap_pyop2_kernel_prolong       4 0.0 5.9179e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15546dc92d50_wrap_pyop2_kernel_prolong       4 0.0 7.4539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15546d2d7250_wrap_pyop2_kernel_prolong       4 0.0 7.0605e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a8158e590_wrap_pyop2_kernel_prolong       4 0.0 7.4594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a8158f850_wrap_pyop2_kernel_prolong       4 0.0 5.8299e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f47a3de10_wrap_pyop2_kernel_prolong       4 0.0 7.4639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f47a3d490_wrap_pyop2_kernel_prolong       4 0.0 6.0483e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463823b7490_wrap_pyop2_kernel_prolong       4 0.0 7.4954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146382642a10_wrap_pyop2_kernel_prolong       4 0.0 6.6007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c27e7ca810_wrap_pyop2_kernel_prolong       4 0.0 7.4475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c27e7c92d0_wrap_pyop2_kernel_prolong       4 0.0 6.4660e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509f79712d0_wrap_pyop2_kernel_prolong       4 0.0 7.4633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509f799e750_wrap_pyop2_kernel_prolong       4 0.0 6.2134e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e816292610_wrap_pyop2_kernel_prolong       4 0.0 7.4310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e816291950_wrap_pyop2_kernel_prolong       4 0.0 6.2994e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffbc80a550_wrap_pyop2_kernel_prolong       4 0.0 7.4833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffbc80bb10_wrap_pyop2_kernel_prolong       4 0.0 6.3179e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e7c2e24d0_wrap_pyop2_kernel_prolong       4 0.0 7.4397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e7c361510_wrap_pyop2_kernel_prolong       4 0.0 5.8844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15431115fe90_wrap_pyop2_kernel_prolong       4 0.0 7.4736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154310f4a110_wrap_pyop2_kernel_prolong       4 0.0 6.7537e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7c5122fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7c5170290_wrap_pyop2_kernel_prolong       4 0.0 6.7047e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146498542210_wrap_pyop2_kernel_prolong       4 0.0 7.4861e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146498565cd0_wrap_pyop2_kernel_prolong       4 0.0 6.0739e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6bf60a850_wrap_pyop2_kernel_prolong       4 0.0 7.4987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6beab1a50_wrap_pyop2_kernel_prolong       4 0.0 6.0273e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511a674f350_wrap_pyop2_kernel_prolong       4 0.0 7.4387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511a667a310_wrap_pyop2_kernel_prolong       4 0.0 6.0430e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf1b54fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4499e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf1b7b8850_wrap_pyop2_kernel_prolong       4 0.0 5.6568e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e46e0f9790_wrap_pyop2_kernel_prolong       4 0.0 7.4371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e46d7d4fd0_wrap_pyop2_kernel_prolong       4 0.0 5.6056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495cd10cc90_wrap_pyop2_kernel_prolong       4 0.0 7.4591e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495cd13a690_wrap_pyop2_kernel_prolong       4 0.0 7.1311e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14739ffd22d0_wrap_pyop2_kernel_prolong       4 0.0 7.4600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473a41d4350_wrap_pyop2_kernel_prolong       4 0.0 6.1928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150174b05150_wrap_pyop2_kernel_prolong       4 0.0 7.4854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150174b2a650_wrap_pyop2_kernel_prolong       4 0.0 6.4142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508e1408bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508e128c950_wrap_pyop2_kernel_prolong       4 0.0 5.2127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc9de214d0_wrap_pyop2_kernel_prolong       4 0.0 7.4400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc9e012210_wrap_pyop2_kernel_prolong       4 0.0 6.4553e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14948965dd10_wrap_pyop2_kernel_prolong       4 0.0 7.4730e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14948965fa10_wrap_pyop2_kernel_prolong       4 0.0 5.2091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152546eb72d0_wrap_pyop2_kernel_prolong       4 0.0 7.4547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525480d7650_wrap_pyop2_kernel_prolong       4 0.0 6.9567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc8578f550_wrap_pyop2_kernel_prolong       4 0.0 7.4956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc84e41010_wrap_pyop2_kernel_prolong       4 0.0 5.6579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459ebf855d0_wrap_pyop2_kernel_prolong       4 0.0 7.4788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459ebf811d0_wrap_pyop2_kernel_prolong       4 0.0 5.9062e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf91958fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf9195a2d0_wrap_pyop2_kernel_prolong       4 0.0 6.2893e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b3f82ea10_wrap_pyop2_kernel_prolong       4 0.0 7.4378e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b3eec8f90_wrap_pyop2_kernel_prolong       4 0.0 5.9181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0b1017290_wrap_pyop2_kernel_prolong       4 0.0 7.4429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0b0d9d110_wrap_pyop2_kernel_prolong       4 0.0 6.7149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6bb4c94d0_wrap_pyop2_kernel_prolong       4 0.0 7.4686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6bb4ca990_wrap_pyop2_kernel_prolong       4 0.0 5.8852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15030dc35490_wrap_pyop2_kernel_prolong       4 0.0 7.4477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15030dc09910_wrap_pyop2_kernel_prolong       4 0.0 6.5646e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bec407af50_wrap_pyop2_kernel_prolong       4 0.0 7.4682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bec4099890_wrap_pyop2_kernel_prolong       4 0.0 6.4193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149061eca610_wrap_pyop2_kernel_prolong       4 0.0 7.4440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149061ec9e10_wrap_pyop2_kernel_prolong       4 0.0 6.9843e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d6f3763d0_wrap_pyop2_kernel_prolong       4 0.0 7.4388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d6f3759d0_wrap_pyop2_kernel_prolong       4 0.0 6.0923e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f024c2e710_wrap_pyop2_kernel_prolong       4 0.0 7.4945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f024c02110_wrap_pyop2_kernel_prolong       4 0.0 6.9594e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2d1a82790_wrap_pyop2_kernel_prolong       4 0.0 7.4246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2d1a43a10_wrap_pyop2_kernel_prolong       4 0.0 5.2828e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6def05bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6dc988190_wrap_pyop2_kernel_prolong       4 0.0 5.2433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fe6d9d950_wrap_pyop2_kernel_prolong       4 0.0 7.4339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fe6d43150_wrap_pyop2_kernel_prolong       4 0.0 6.1342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbeacf3950_wrap_pyop2_kernel_prolong       4 0.0 7.4256e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbead3da50_wrap_pyop2_kernel_prolong       4 0.0 5.3805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15408539f990_wrap_pyop2_kernel_prolong       4 0.0 7.4314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15408561c350_wrap_pyop2_kernel_prolong       4 0.0 5.6544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b85449850_wrap_pyop2_kernel_prolong       4 0.0 7.4352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b856cc550_wrap_pyop2_kernel_prolong       4 0.0 6.0601e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c084f3f10_wrap_pyop2_kernel_prolong       4 0.0 7.4245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c08792e50_wrap_pyop2_kernel_prolong       4 0.0 5.3082e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5fa9404d0_wrap_pyop2_kernel_prolong       4 0.0 7.4343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5fa943690_wrap_pyop2_kernel_prolong       4 0.0 5.7960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e705e0290_wrap_pyop2_kernel_prolong       4 0.0 7.4408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e6bba9e50_wrap_pyop2_kernel_prolong       4 0.0 7.3271e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdb97cfa10_wrap_pyop2_kernel_prolong       4 0.0 7.4297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fdb97cde10_wrap_pyop2_kernel_prolong       4 0.0 6.1158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe7059cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe705af310_wrap_pyop2_kernel_prolong       4 0.0 6.0950e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502ce283890_wrap_pyop2_kernel_prolong       4 0.0 7.4374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502ce2a2850_wrap_pyop2_kernel_prolong       4 0.0 6.7121e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553b2b216d0_wrap_pyop2_kernel_prolong       4 0.0 7.4331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553b2b41b90_wrap_pyop2_kernel_prolong       4 0.0 6.9405e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d722b9fe10_wrap_pyop2_kernel_prolong       4 0.0 7.4246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d722b9d690_wrap_pyop2_kernel_prolong       4 0.0 4.5716e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d029feb110_wrap_pyop2_kernel_prolong       4 0.0 7.4292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d029fea2d0_wrap_pyop2_kernel_prolong       4 0.0 5.6485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14621dd86350_wrap_pyop2_kernel_prolong       4 0.0 7.4311e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14621d42a350_wrap_pyop2_kernel_prolong       4 0.0 6.5271e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cb2214a50_wrap_pyop2_kernel_prolong       4 0.0 7.4340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cb21f48d0_wrap_pyop2_kernel_prolong       4 0.0 6.9722e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fd722e790_wrap_pyop2_kernel_prolong       4 0.0 7.4335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fd722c910_wrap_pyop2_kernel_prolong       4 0.0 6.7316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fedfb45550_wrap_pyop2_kernel_prolong       4 0.0 7.4373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fedfb71fd0_wrap_pyop2_kernel_prolong       4 0.0 7.1690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a6724ba90_wrap_pyop2_kernel_prolong       4 0.0 7.4326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a6729d0d0_wrap_pyop2_kernel_prolong       4 0.0 6.7507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15209545e850_wrap_pyop2_kernel_prolong       4 0.0 7.4332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152095db5dd0_wrap_pyop2_kernel_prolong       4 0.0 6.2823e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528d1e877d0_wrap_pyop2_kernel_prolong       4 0.0 7.4310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528d2536110_wrap_pyop2_kernel_prolong       4 0.0 6.3391e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f87ebffd10_wrap_pyop2_kernel_prolong       4 0.0 7.4280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f87ebfc710_wrap_pyop2_kernel_prolong       4 0.0 5.8792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f4cb47c90_wrap_pyop2_kernel_prolong       4 0.0 7.4331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f4cb44f10_wrap_pyop2_kernel_prolong       4 0.0 6.3485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f043d4f6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4291e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f043d687d0_wrap_pyop2_kernel_prolong       4 0.0 5.6482e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab11303910_wrap_pyop2_kernel_prolong       4 0.0 7.4350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab11300390_wrap_pyop2_kernel_prolong       4 0.0 6.5593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553a91b2ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4294e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553a917cc10_wrap_pyop2_kernel_prolong       4 0.0 4.5458e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bb5e01550_wrap_pyop2_kernel_prolong       4 0.0 7.4287e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bb5dbc450_wrap_pyop2_kernel_prolong       4 0.0 5.8308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149888754310_wrap_pyop2_kernel_prolong       4 0.0 7.4361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149888976050_wrap_pyop2_kernel_prolong       4 0.0 6.0574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cd357ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.4344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cd357f910_wrap_pyop2_kernel_prolong       4 0.0 5.2488e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ccb1545d0_wrap_pyop2_kernel_prolong       4 0.0 7.4355e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ccb314dd0_wrap_pyop2_kernel_prolong       4 0.0 6.4562e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6afa16dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4415e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6b4126b90_wrap_pyop2_kernel_prolong       4 0.0 7.6545e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e40021a10_wrap_pyop2_kernel_prolong       4 0.0 7.4393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e3b675810_wrap_pyop2_kernel_prolong       4 0.0 5.7618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af8009dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af80100ad0_wrap_pyop2_kernel_prolong       4 0.0 6.1168e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff8fe8a5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff8fe8a710_wrap_pyop2_kernel_prolong       4 0.0 6.4252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8e6018d10_wrap_pyop2_kernel_prolong       4 0.0 7.4430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8e6251350_wrap_pyop2_kernel_prolong       4 0.0 6.6219e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552edf26390_wrap_pyop2_kernel_prolong       4 0.0 7.4376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552ed5f7990_wrap_pyop2_kernel_prolong       4 0.0 6.0559e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150762116510_wrap_pyop2_kernel_prolong       4 0.0 7.4380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150762115c50_wrap_pyop2_kernel_prolong       4 0.0 6.9430e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c044e4fd90_wrap_pyop2_kernel_prolong       4 0.0 7.4390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c044e4c890_wrap_pyop2_kernel_prolong       4 0.0 6.7219e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2cc3eff10_wrap_pyop2_kernel_prolong       4 0.0 7.4357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2cc3ef790_wrap_pyop2_kernel_prolong       4 0.0 5.4349e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154901965d90_wrap_pyop2_kernel_prolong       4 0.0 7.4374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154901991a50_wrap_pyop2_kernel_prolong       4 0.0 6.5113e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac78d07fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac78fc1450_wrap_pyop2_kernel_prolong       4 0.0 7.3333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c366b7fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c366b6790_wrap_pyop2_kernel_prolong       4 0.0 6.2522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb0cd05990_wrap_pyop2_kernel_prolong       4 0.0 7.4368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb0ccf3490_wrap_pyop2_kernel_prolong       4 0.0 6.2271e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537adcaf090_wrap_pyop2_kernel_prolong       4 0.0 7.4399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537adce7350_wrap_pyop2_kernel_prolong       4 0.0 6.0260e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e40e498c90_wrap_pyop2_kernel_prolong       4 0.0 7.4309e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e40e4b2390_wrap_pyop2_kernel_prolong       4 0.0 4.8576e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d38b3a5210_wrap_pyop2_kernel_prolong       4 0.0 7.4300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d38af9b790_wrap_pyop2_kernel_prolong       4 0.0 5.5747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3a89baed0_wrap_pyop2_kernel_prolong       4 0.0 7.4440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3a8983cd0_wrap_pyop2_kernel_prolong       4 0.0 6.8302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155381641690_wrap_pyop2_kernel_prolong       4 0.0 7.4405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155380c8b6d0_wrap_pyop2_kernel_prolong       4 0.0 6.7246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480656e8b10_wrap_pyop2_kernel_prolong       4 0.0 7.4367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14806607a390_wrap_pyop2_kernel_prolong       4 0.0 6.0613e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15528cb1f750_wrap_pyop2_kernel_prolong       4 0.0 7.4436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15528cb1d650_wrap_pyop2_kernel_prolong       4 0.0 6.9763e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f1597a650_wrap_pyop2_kernel_prolong       4 0.0 7.4351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f15979cd0_wrap_pyop2_kernel_prolong       4 0.0 6.9411e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7a7b9d9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7a7957bd0_wrap_pyop2_kernel_prolong       4 0.0 4.9199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b8b077ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b8b074090_wrap_pyop2_kernel_prolong       4 0.0 5.1861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151407ec5650_wrap_pyop2_kernel_prolong       4 0.0 7.5383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151407e7e450_wrap_pyop2_kernel_prolong       4 0.0 6.3157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14870fecba10_wrap_pyop2_kernel_prolong       4 0.0 7.5150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14870feca5d0_wrap_pyop2_kernel_prolong       4 0.0 5.5947e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152524d13490_wrap_pyop2_kernel_prolong       4 0.0 7.5386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15252470f590_wrap_pyop2_kernel_prolong       4 0.0 5.7554e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9355a7850_wrap_pyop2_kernel_prolong       4 0.0 7.5412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e934a3f610_wrap_pyop2_kernel_prolong       4 0.0 6.1552e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15269b8e5b10_wrap_pyop2_kernel_prolong       4 0.0 7.5335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15269b766750_wrap_pyop2_kernel_prolong       4 0.0 4.5947e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdca5c9390_wrap_pyop2_kernel_prolong       4 0.0 7.5403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdca5e8c90_wrap_pyop2_kernel_prolong       4 0.0 5.8062e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541b6607850_wrap_pyop2_kernel_prolong       4 0.0 7.5380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541b6607cd0_wrap_pyop2_kernel_prolong       4 0.0 5.4046e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14663ba73b50_wrap_pyop2_kernel_prolong       4 0.0 7.5322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14663ba47ed0_wrap_pyop2_kernel_prolong       4 0.0 5.0456e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f39c2e850_wrap_pyop2_kernel_prolong       4 0.0 7.5382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f39c2f310_wrap_pyop2_kernel_prolong       4 0.0 5.5269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155221dab390_wrap_pyop2_kernel_prolong       4 0.0 7.5412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155221402910_wrap_pyop2_kernel_prolong       4 0.0 6.0055e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152322816290_wrap_pyop2_kernel_prolong       4 0.0 7.5457e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152322815ad0_wrap_pyop2_kernel_prolong       4 0.0 7.1061e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa78080ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa78286710_wrap_pyop2_kernel_prolong       4 0.0 5.3935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f0471e290_wrap_pyop2_kernel_prolong       4 0.0 7.5345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f044d4e50_wrap_pyop2_kernel_prolong       4 0.0 5.3075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531bd9bd490_wrap_pyop2_kernel_prolong       4 0.0 7.5325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531bd84bfd0_wrap_pyop2_kernel_prolong       4 0.0 6.0067e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461d586f250_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461d5f55790_wrap_pyop2_kernel_prolong       4 0.0 6.4999e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df39cad7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df39cadfd0_wrap_pyop2_kernel_prolong       4 0.0 6.4308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152933bb4990_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152933acbb50_wrap_pyop2_kernel_prolong       4 0.0 6.4564e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c40b2610_wrap_pyop2_kernel_prolong       4 0.0 7.5412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487c4074b10_wrap_pyop2_kernel_prolong       4 0.0 6.4487e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f40b903350_wrap_pyop2_kernel_prolong       4 0.0 7.5324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f40b902310_wrap_pyop2_kernel_prolong       4 0.0 5.2152e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d22204b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d221836910_wrap_pyop2_kernel_prolong       4 0.0 6.6712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5a2c42710_wrap_pyop2_kernel_prolong       4 0.0 7.5295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5a2e91750_wrap_pyop2_kernel_prolong       4 0.0 6.2346e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153500492c90_wrap_pyop2_kernel_prolong       4 0.0 7.5434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153500729550_wrap_pyop2_kernel_prolong       4 0.0 7.6850e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15094387da10_wrap_pyop2_kernel_prolong       4 0.0 7.5350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150943852390_wrap_pyop2_kernel_prolong       4 0.0 6.4790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494dbdc3350_wrap_pyop2_kernel_prolong       4 0.0 7.5432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494dbdc3950_wrap_pyop2_kernel_prolong       4 0.0 7.3813e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c8bd03d50_wrap_pyop2_kernel_prolong       4 0.0 7.5314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c8bd7db90_wrap_pyop2_kernel_prolong       4 0.0 5.8688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d3b721590_wrap_pyop2_kernel_prolong       4 0.0 7.5340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d3914b950_wrap_pyop2_kernel_prolong       4 0.0 5.5627e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7b6df6910_wrap_pyop2_kernel_prolong       4 0.0 7.5357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7b75e5bd0_wrap_pyop2_kernel_prolong       4 0.0 6.6626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464c8df1550_wrap_pyop2_kernel_prolong       4 0.0 7.5397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464c8c5ce50_wrap_pyop2_kernel_prolong       4 0.0 6.2778e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc0d2a7a50_wrap_pyop2_kernel_prolong       4 0.0 7.5401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc0d48d2d0_wrap_pyop2_kernel_prolong       4 0.0 5.8063e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a1b0b0890_wrap_pyop2_kernel_prolong       4 0.0 7.5408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a1b0d6850_wrap_pyop2_kernel_prolong       4 0.0 7.3017e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539ccb7ea90_wrap_pyop2_kernel_prolong       4 0.0 7.5318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539ccb7e350_wrap_pyop2_kernel_prolong       4 0.0 6.0747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153152599d10_wrap_pyop2_kernel_prolong       4 0.0 7.5304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531525fc4d0_wrap_pyop2_kernel_prolong       4 0.0 5.2967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a459f6c10_wrap_pyop2_kernel_prolong       4 0.0 7.5348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a45a73390_wrap_pyop2_kernel_prolong       4 0.0 5.2679e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14824d97e590_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14824d9dd890_wrap_pyop2_kernel_prolong       4 0.0 6.6550e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15140e44d310_wrap_pyop2_kernel_prolong       4 0.0 7.5383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15140e4418d0_wrap_pyop2_kernel_prolong       4 0.0 6.3074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148699204d50_wrap_pyop2_kernel_prolong       4 0.0 7.5339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148699220b10_wrap_pyop2_kernel_prolong       4 0.0 6.1440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e52f5f890_wrap_pyop2_kernel_prolong       4 0.0 7.5450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e52f5d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.3791e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14622577e050_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146224f53bd0_wrap_pyop2_kernel_prolong       4 0.0 5.0685e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491dc28e4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5301e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491dc2df710_wrap_pyop2_kernel_prolong       4 0.0 5.4414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bde6a035d0_wrap_pyop2_kernel_prolong       4 0.0 7.5271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bde61356d0_wrap_pyop2_kernel_prolong       4 0.0 5.8283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551d2746f50_wrap_pyop2_kernel_prolong       4 0.0 7.5419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551d2745850_wrap_pyop2_kernel_prolong       4 0.0 6.6159e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485742ec350_wrap_pyop2_kernel_prolong       4 0.0 7.5308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14857430b090_wrap_pyop2_kernel_prolong       4 0.0 5.9294e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e31be0050_wrap_pyop2_kernel_prolong       4 0.0 7.5411e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e31c43ed0_wrap_pyop2_kernel_prolong       4 0.0 6.6990e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a7f4e3510_wrap_pyop2_kernel_prolong       4 0.0 7.5378e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a7f4e3750_wrap_pyop2_kernel_prolong       4 0.0 6.6266e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7e13c6590_wrap_pyop2_kernel_prolong       4 0.0 7.5347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7e13c7b90_wrap_pyop2_kernel_prolong       4 0.0 6.7942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1c8f2f050_wrap_pyop2_kernel_prolong       4 0.0 7.5401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1c8f78690_wrap_pyop2_kernel_prolong       4 0.0 7.3666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145aaa0028d0_wrap_pyop2_kernel_prolong       4 0.0 7.5430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145aaa0000d0_wrap_pyop2_kernel_prolong       4 0.0 6.7278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c24822050_wrap_pyop2_kernel_prolong       4 0.0 7.5368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c24821a90_wrap_pyop2_kernel_prolong       4 0.0 6.2669e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149704f6ab10_wrap_pyop2_kernel_prolong       4 0.0 7.5425e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149704f69210_wrap_pyop2_kernel_prolong       4 0.0 6.9850e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551b6357d90_wrap_pyop2_kernel_prolong       4 0.0 7.5417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551b62deb50_wrap_pyop2_kernel_prolong       4 0.0 7.1280e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccf3836590_wrap_pyop2_kernel_prolong       4 0.0 7.5155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccf3836010_wrap_pyop2_kernel_prolong       4 0.0 5.0451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4c30df890_wrap_pyop2_kernel_prolong       4 0.0 7.5156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4c30dd890_wrap_pyop2_kernel_prolong       4 0.0 5.6383e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a9ed4c2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5153e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a9ed4f4d0_wrap_pyop2_kernel_prolong       4 0.0 5.6475e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a57c2fd0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a57c325c10_wrap_pyop2_kernel_prolong       4 0.0 5.3096e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e22a1e7910_wrap_pyop2_kernel_prolong       4 0.0 7.5329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e22a1e7210_wrap_pyop2_kernel_prolong       4 0.0 6.8434e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552f41df050_wrap_pyop2_kernel_prolong       4 0.0 7.5252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552f41ded50_wrap_pyop2_kernel_prolong       4 0.0 6.1243e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500ccfa1750_wrap_pyop2_kernel_prolong       4 0.0 7.5173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500ccf77490_wrap_pyop2_kernel_prolong       4 0.0 5.7906e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b67efde10_wrap_pyop2_kernel_prolong       4 0.0 7.5167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b675988d0_wrap_pyop2_kernel_prolong       4 0.0 5.4199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15103e35ffd0_wrap_pyop2_kernel_prolong       4 0.0 7.5246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15103e5e5f90_wrap_pyop2_kernel_prolong       4 0.0 7.3658e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5a2ac4590_wrap_pyop2_kernel_prolong       4 0.0 7.5285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5a2b011d0_wrap_pyop2_kernel_prolong       4 0.0 5.5950e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e30de94d50_wrap_pyop2_kernel_prolong       4 0.0 7.5204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e30d353650_wrap_pyop2_kernel_prolong       4 0.0 6.4431e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15119bf81750_wrap_pyop2_kernel_prolong       4 0.0 7.5259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15119bf83390_wrap_pyop2_kernel_prolong       4 0.0 6.1998e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14688d71a510_wrap_pyop2_kernel_prolong       4 0.0 7.5302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14688d66e310_wrap_pyop2_kernel_prolong       4 0.0 7.3070e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c5e952490_wrap_pyop2_kernel_prolong       4 0.0 7.5345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c5e951ed0_wrap_pyop2_kernel_prolong       4 0.0 5.8437e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483e22d22d0_wrap_pyop2_kernel_prolong       4 0.0 7.5217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483e22b72d0_wrap_pyop2_kernel_prolong       4 0.0 5.7592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d46764810_wrap_pyop2_kernel_prolong       4 0.0 7.5274e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d466dcbd0_wrap_pyop2_kernel_prolong       4 0.0 7.0978e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d12a023950_wrap_pyop2_kernel_prolong       4 0.0 7.5219e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d12a021410_wrap_pyop2_kernel_prolong       4 0.0 5.6596e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538f2c7ce10_wrap_pyop2_kernel_prolong       4 0.0 7.5363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538f2c7df50_wrap_pyop2_kernel_prolong       4 0.0 5.7503e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7e8dcaa90_wrap_pyop2_kernel_prolong       4 0.0 7.5255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7e8df6410_wrap_pyop2_kernel_prolong       4 0.0 7.2800e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fb9501590_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fb9500fd0_wrap_pyop2_kernel_prolong       4 0.0 5.9612e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ddb849b50_wrap_pyop2_kernel_prolong       4 0.0 7.5208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ddaf41890_wrap_pyop2_kernel_prolong       4 0.0 7.0214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbe3156b10_wrap_pyop2_kernel_prolong       4 0.0 7.5270e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbe27d41d0_wrap_pyop2_kernel_prolong       4 0.0 6.2074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503f26aaa10_wrap_pyop2_kernel_prolong       4 0.0 7.5269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503f1dfcf10_wrap_pyop2_kernel_prolong       4 0.0 6.2451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0a7d99010_wrap_pyop2_kernel_prolong       4 0.0 7.5335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0a7da9a50_wrap_pyop2_kernel_prolong       4 0.0 6.9023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480d6f1a710_wrap_pyop2_kernel_prolong       4 0.0 7.5266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480d6f1bdd0_wrap_pyop2_kernel_prolong       4 0.0 6.8805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d50324550_wrap_pyop2_kernel_prolong       4 0.0 7.5390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d50491ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458f6100690_wrap_pyop2_kernel_prolong       4 0.0 7.5203e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458f6121a50_wrap_pyop2_kernel_prolong       4 0.0 5.7746e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f705f47790_wrap_pyop2_kernel_prolong       4 0.0 7.5134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f705de1fd0_wrap_pyop2_kernel_prolong       4 0.0 4.5363e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507213c5110_wrap_pyop2_kernel_prolong       4 0.0 7.5267e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15072177db10_wrap_pyop2_kernel_prolong       4 0.0 5.4627e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15328d856550_wrap_pyop2_kernel_prolong       4 0.0 7.5229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15328d897bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba4f63fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.5217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba4f6257d0_wrap_pyop2_kernel_prolong       4 0.0 6.4576e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eca8430690_wrap_pyop2_kernel_prolong       4 0.0 7.5325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eca83aeb10_wrap_pyop2_kernel_prolong       4 0.0 7.6713e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c37dc14d0_wrap_pyop2_kernel_prolong       4 0.0 7.5189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c37d777d0_wrap_pyop2_kernel_prolong       4 0.0 5.0977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146308debb90_wrap_pyop2_kernel_prolong       4 0.0 7.5245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146308455c50_wrap_pyop2_kernel_prolong       4 0.0 6.4244e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148600ba2090_wrap_pyop2_kernel_prolong       4 0.0 7.5297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14860133d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f9d09bc50_wrap_pyop2_kernel_prolong       4 0.0 7.5288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f9d0b9f50_wrap_pyop2_kernel_prolong       4 0.0 6.9381e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532f9250ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532f87d4d10_wrap_pyop2_kernel_prolong       4 0.0 5.8386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bb75cf790_wrap_pyop2_kernel_prolong       4 0.0 7.5240e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bb75cf810_wrap_pyop2_kernel_prolong       4 0.0 6.1231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1b193e610_wrap_pyop2_kernel_prolong       4 0.0 7.5200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1b192dc50_wrap_pyop2_kernel_prolong       4 0.0 6.2620e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0087e1610_wrap_pyop2_kernel_prolong       4 0.0 7.5239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b003d62510_wrap_pyop2_kernel_prolong       4 0.0 5.4146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14862813c6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5333e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148628197590_wrap_pyop2_kernel_prolong       4 0.0 7.0332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15110084ced0_wrap_pyop2_kernel_prolong       4 0.0 7.5350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510fbd3dbd0_wrap_pyop2_kernel_prolong       4 0.0 6.6453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd29e0be50_wrap_pyop2_kernel_prolong       4 0.0 7.5242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd29e0ab50_wrap_pyop2_kernel_prolong       4 0.0 5.8308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67760c890_wrap_pyop2_kernel_prolong       4 0.0 7.5203e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b676a98cd0_wrap_pyop2_kernel_prolong       4 0.0 6.1760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146641c6bd50_wrap_pyop2_kernel_prolong       4 0.0 7.5368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146641cc7450_wrap_pyop2_kernel_prolong       4 0.0 6.9912e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3bdbbf510_wrap_pyop2_kernel_prolong       4 0.0 7.5223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3bdbbc990_wrap_pyop2_kernel_prolong       4 0.0 5.4010e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f164eebb50_wrap_pyop2_kernel_prolong       4 0.0 7.5237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f165197350_wrap_pyop2_kernel_prolong       4 0.0 6.6263e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8a1b4ff10_wrap_pyop2_kernel_prolong       4 0.0 7.5269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8a1b7a2d0_wrap_pyop2_kernel_prolong       4 0.0 6.9049e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bd1667450_wrap_pyop2_kernel_prolong       4 0.0 7.5248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bd1664390_wrap_pyop2_kernel_prolong       4 0.0 5.5526e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ac8bbe310_wrap_pyop2_kernel_prolong       4 0.0 7.5384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ac8ac3190_wrap_pyop2_kernel_prolong       4 0.0 7.3776e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddde29a510_wrap_pyop2_kernel_prolong       4 0.0 7.5318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddde29be10_wrap_pyop2_kernel_prolong       4 0.0 7.0615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b38dab1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b3828e010_wrap_pyop2_kernel_prolong       4 0.0 7.8830e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145710882910_wrap_pyop2_kernel_prolong       4 0.0 7.6420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14571074a050_wrap_pyop2_kernel_prolong       4 0.0 5.0563e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fc81598d0_wrap_pyop2_kernel_prolong       4 0.0 7.6412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fc82d1c10_wrap_pyop2_kernel_prolong       4 0.0 5.6574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b94e390d0_wrap_pyop2_kernel_prolong       4 0.0 7.5706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b94e38910_wrap_pyop2_kernel_prolong       4 0.0 5.4301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cc2231810_wrap_pyop2_kernel_prolong       4 0.0 7.6341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cc2252510_wrap_pyop2_kernel_prolong       4 0.0 4.6484e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e13fcf410_wrap_pyop2_kernel_prolong       4 0.0 7.5414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e13f7fd90_wrap_pyop2_kernel_prolong       4 0.0 5.5435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c782336bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c782336910_wrap_pyop2_kernel_prolong       4 0.0 7.3535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf4dfbe890_wrap_pyop2_kernel_prolong       4 0.0 7.6350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf4e1558d0_wrap_pyop2_kernel_prolong       4 0.0 5.8307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489743f6250_wrap_pyop2_kernel_prolong       4 0.0 7.6448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489743e20d0_wrap_pyop2_kernel_prolong       4 0.0 5.8007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504b6160090_wrap_pyop2_kernel_prolong       4 0.0 7.6068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504b6162050_wrap_pyop2_kernel_prolong       4 0.0 6.6551e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b3f2e1390_wrap_pyop2_kernel_prolong       4 0.0 7.6013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b3f2e12d0_wrap_pyop2_kernel_prolong       4 0.0 5.8217e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bc5763150_wrap_pyop2_kernel_prolong       4 0.0 7.6352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bc5761150_wrap_pyop2_kernel_prolong       4 0.0 6.2198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b2927f390_wrap_pyop2_kernel_prolong       4 0.0 7.5866e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b2927da10_wrap_pyop2_kernel_prolong       4 0.0 6.9745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d65a29890_wrap_pyop2_kernel_prolong       4 0.0 7.6216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d658c4e90_wrap_pyop2_kernel_prolong       4 0.0 6.8844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6688c4290_wrap_pyop2_kernel_prolong       4 0.0 7.6145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6688c5850_wrap_pyop2_kernel_prolong       4 0.0 5.0040e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14560907c450_wrap_pyop2_kernel_prolong       4 0.0 7.5741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456090b0b50_wrap_pyop2_kernel_prolong       4 0.0 6.1921e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a21fec050_wrap_pyop2_kernel_prolong       4 0.0 7.5986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a21fee450_wrap_pyop2_kernel_prolong       4 0.0 5.7805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460c492f250_wrap_pyop2_kernel_prolong       4 0.0 7.5367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460c492cc50_wrap_pyop2_kernel_prolong       4 0.0 6.2034e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e4e70f90_wrap_pyop2_kernel_prolong       4 0.0 7.5376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8e4e71190_wrap_pyop2_kernel_prolong       4 0.0 5.1630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2e72a0890_wrap_pyop2_kernel_prolong       4 0.0 7.5857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2e7275c90_wrap_pyop2_kernel_prolong       4 0.0 7.2449e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e569be4e10_wrap_pyop2_kernel_prolong       4 0.0 7.6091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e569bfa750_wrap_pyop2_kernel_prolong       4 0.0 6.7127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521d9c97390_wrap_pyop2_kernel_prolong       4 0.0 7.5465e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521d9c7b850_wrap_pyop2_kernel_prolong       4 0.0 5.6628e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517c930f850_wrap_pyop2_kernel_prolong       4 0.0 7.6306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517c930ebd0_wrap_pyop2_kernel_prolong       4 0.0 6.9252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14550155ab10_wrap_pyop2_kernel_prolong       4 0.0 7.5925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14550156d1d0_wrap_pyop2_kernel_prolong       4 0.0 6.4378e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b7f3d51d0_wrap_pyop2_kernel_prolong       4 0.0 7.6085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b7f3f4650_wrap_pyop2_kernel_prolong       4 0.0 6.9114e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f20fd8850_wrap_pyop2_kernel_prolong       4 0.0 7.6268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f20fc0490_wrap_pyop2_kernel_prolong       4 0.0 6.8994e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccf4e59010_wrap_pyop2_kernel_prolong       4 0.0 7.6078e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccf4e86c10_wrap_pyop2_kernel_prolong       4 0.0 7.6492e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152933347c10_wrap_pyop2_kernel_prolong       4 0.0 7.5494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152933316cd0_wrap_pyop2_kernel_prolong       4 0.0 5.2227e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5ff0f9010_wrap_pyop2_kernel_prolong       4 0.0 7.5349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5ff0f8950_wrap_pyop2_kernel_prolong       4 0.0 4.9970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0d6521190_wrap_pyop2_kernel_prolong       4 0.0 7.5620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0d64debd0_wrap_pyop2_kernel_prolong       4 0.0 6.3926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a472bd29d0_wrap_pyop2_kernel_prolong       4 0.0 7.5944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a472bd0710_wrap_pyop2_kernel_prolong       4 0.0 5.9628e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d209260d0_wrap_pyop2_kernel_prolong       4 0.0 7.5842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d1bd3df50_wrap_pyop2_kernel_prolong       4 0.0 5.8433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afb9d3c950_wrap_pyop2_kernel_prolong       4 0.0 7.5365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afb9322790_wrap_pyop2_kernel_prolong       4 0.0 7.2759e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ead7e56750_wrap_pyop2_kernel_prolong       4 0.0 7.6264e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ead7e74a50_wrap_pyop2_kernel_prolong       4 0.0 5.8290e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491f04c9710_wrap_pyop2_kernel_prolong       4 0.0 7.6095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491f04b8610_wrap_pyop2_kernel_prolong       4 0.0 6.0433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6a6884450_wrap_pyop2_kernel_prolong       4 0.0 7.5503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6a68b1350_wrap_pyop2_kernel_prolong       4 0.0 6.3898e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab0e9b9190_wrap_pyop2_kernel_prolong       4 0.0 7.5307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab0e9babd0_wrap_pyop2_kernel_prolong       4 0.0 5.6928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ce63d5990_wrap_pyop2_kernel_prolong       4 0.0 7.5475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ce63d7d10_wrap_pyop2_kernel_prolong       4 0.0 6.4875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a83bb4bad0_wrap_pyop2_kernel_prolong       4 0.0 7.6449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a83bba48d0_wrap_pyop2_kernel_prolong       4 0.0 7.3413e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14759f396290_wrap_pyop2_kernel_prolong       4 0.0 7.5523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14759f395a90_wrap_pyop2_kernel_prolong       4 0.0 7.1510e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15050d9ba410_wrap_pyop2_kernel_prolong       4 0.0 7.5779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15050d9b9d10_wrap_pyop2_kernel_prolong       4 0.0 5.3331e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153184ed7cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6207e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15318515c3d0_wrap_pyop2_kernel_prolong       4 0.0 6.0799e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543c86329d0_wrap_pyop2_kernel_prolong       4 0.0 7.6145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543c8665c90_wrap_pyop2_kernel_prolong       4 0.0 6.0399e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba1794b950_wrap_pyop2_kernel_prolong       4 0.0 7.5898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba17949b50_wrap_pyop2_kernel_prolong       4 0.0 5.6022e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14721a4ffd90_wrap_pyop2_kernel_prolong       4 0.0 7.6067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14721a4fc950_wrap_pyop2_kernel_prolong       4 0.0 5.1918e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e4606e510_wrap_pyop2_kernel_prolong       4 0.0 7.6423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e460c6bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a05528210_wrap_pyop2_kernel_prolong       4 0.0 7.6079e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a0552b490_wrap_pyop2_kernel_prolong       4 0.0 5.9965e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150128f27d90_wrap_pyop2_kernel_prolong       4 0.0 7.6310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150128f26850_wrap_pyop2_kernel_prolong       4 0.0 6.3155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c8ca78110_wrap_pyop2_kernel_prolong       4 0.0 7.6168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c8ca4f090_wrap_pyop2_kernel_prolong       4 0.0 6.9182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533770ef9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533770ee550_wrap_pyop2_kernel_prolong       4 0.0 6.6336e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a545097450_wrap_pyop2_kernel_prolong       4 0.0 7.5947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a545094d50_wrap_pyop2_kernel_prolong       4 0.0 6.5293e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14659c48a310_wrap_pyop2_kernel_prolong       4 0.0 7.6251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14659c469fd0_wrap_pyop2_kernel_prolong       4 0.0 6.2209e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511549bee10_wrap_pyop2_kernel_prolong       4 0.0 7.6410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151154c54b90_wrap_pyop2_kernel_prolong       4 0.0 7.5848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502b2aa7490_wrap_pyop2_kernel_prolong       4 0.0 7.5224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502b21fded0_wrap_pyop2_kernel_prolong       4 0.0 4.7912e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511b0fe9ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5695e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511b060de50_wrap_pyop2_kernel_prolong       4 0.0 5.8436e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d240547a90_wrap_pyop2_kernel_prolong       4 0.0 7.5307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d23bb71dd0_wrap_pyop2_kernel_prolong       4 0.0 5.8633e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15052056ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.5344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15052056ea10_wrap_pyop2_kernel_prolong       4 0.0 6.0574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496b580b690_wrap_pyop2_kernel_prolong       4 0.0 7.5310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496b5686c50_wrap_pyop2_kernel_prolong       4 0.0 6.1119e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f0bba6f90_wrap_pyop2_kernel_prolong       4 0.0 7.5264e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f0bba76d0_wrap_pyop2_kernel_prolong       4 0.0 5.5142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501a656aa50_wrap_pyop2_kernel_prolong       4 0.0 7.5327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501a65ddc50_wrap_pyop2_kernel_prolong       4 0.0 5.7077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc7f434650_wrap_pyop2_kernel_prolong       4 0.0 7.5314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc7eb01b90_wrap_pyop2_kernel_prolong       4 0.0 5.3801e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21b11acd0_wrap_pyop2_kernel_prolong       4 0.0 7.5506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21a7c02d0_wrap_pyop2_kernel_prolong       4 0.0 7.3622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d51fc2010_wrap_pyop2_kernel_prolong       4 0.0 7.5276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d51fe9b10_wrap_pyop2_kernel_prolong       4 0.0 5.8140e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d61552a90_wrap_pyop2_kernel_prolong       4 0.0 7.5318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d614ddb50_wrap_pyop2_kernel_prolong       4 0.0 6.6244e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f6f71df90_wrap_pyop2_kernel_prolong       4 0.0 7.5330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f6f743c90_wrap_pyop2_kernel_prolong       4 0.0 6.4057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea52afbdd0_wrap_pyop2_kernel_prolong       4 0.0 7.5321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea52bbaa10_wrap_pyop2_kernel_prolong       4 0.0 5.9181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf10c7b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5319e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf10c78310_wrap_pyop2_kernel_prolong       4 0.0 5.3180e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa23a1a710_wrap_pyop2_kernel_prolong       4 0.0 7.5279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa23a42010_wrap_pyop2_kernel_prolong       4 0.0 4.5136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2a1e46fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2a1ef96d0_wrap_pyop2_kernel_prolong       4 0.0 6.4622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cbf87d390_wrap_pyop2_kernel_prolong       4 0.0 7.5299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cbf87f790_wrap_pyop2_kernel_prolong       4 0.0 5.3178e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146315c1d710_wrap_pyop2_kernel_prolong       4 0.0 7.5294e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146315c45cd0_wrap_pyop2_kernel_prolong       4 0.0 5.8575e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7b82eb3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7b82e97d0_wrap_pyop2_kernel_prolong       4 0.0 6.8852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb1a39e50_wrap_pyop2_kernel_prolong       4 0.0 7.5229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb18bebd0_wrap_pyop2_kernel_prolong       4 0.0 4.8484e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15243d4d6dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15243d4babd0_wrap_pyop2_kernel_prolong       4 0.0 6.2605e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149789375e50_wrap_pyop2_kernel_prolong       4 0.0 7.5290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14978957c550_wrap_pyop2_kernel_prolong       4 0.0 6.0235e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d69ee02950_wrap_pyop2_kernel_prolong       4 0.0 7.5665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d69edb6710_wrap_pyop2_kernel_prolong       4 0.0 6.0006e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c1adea650_wrap_pyop2_kernel_prolong       4 0.0 7.5393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c1ade8990_wrap_pyop2_kernel_prolong       4 0.0 7.0815e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e8cb532d0_wrap_pyop2_kernel_prolong       4 0.0 7.5879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e8cb526d0_wrap_pyop2_kernel_prolong       4 0.0 6.2155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548e3b5c310_wrap_pyop2_kernel_prolong       4 0.0 7.5344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548e3b87c10_wrap_pyop2_kernel_prolong       4 0.0 7.3856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14748efdcbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14748f01e0d0_wrap_pyop2_kernel_prolong       4 0.0 4.9716e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516eb4e5c90_wrap_pyop2_kernel_prolong       4 0.0 7.5244e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516eb4e5510_wrap_pyop2_kernel_prolong       4 0.0 5.1906e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e0a29e290_wrap_pyop2_kernel_prolong       4 0.0 7.5271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e0a29fd90_wrap_pyop2_kernel_prolong       4 0.0 5.6277e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529531f9490_wrap_pyop2_kernel_prolong       4 0.0 7.5272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15295321a090_wrap_pyop2_kernel_prolong       4 0.0 5.9356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed956022d0_wrap_pyop2_kernel_prolong       4 0.0 7.5292e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed95857d50_wrap_pyop2_kernel_prolong       4 0.0 6.2598e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4e39a8d10_wrap_pyop2_kernel_prolong       4 0.0 7.5370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4e372bc90_wrap_pyop2_kernel_prolong       4 0.0 7.1228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476fe00b590_wrap_pyop2_kernel_prolong       4 0.0 7.5314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476fe009050_wrap_pyop2_kernel_prolong       4 0.0 6.2393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155221e8e4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155221e97510_wrap_pyop2_kernel_prolong       4 0.0 6.9156e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2c55839d0_wrap_pyop2_kernel_prolong       4 0.0 7.5555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2c4c5d2d0_wrap_pyop2_kernel_prolong       4 0.0 6.6959e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492b6c0a050_wrap_pyop2_kernel_prolong       4 0.0 7.5620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492b6c0b450_wrap_pyop2_kernel_prolong       4 0.0 6.2720e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a793596190_wrap_pyop2_kernel_prolong       4 0.0 7.5718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a793594810_wrap_pyop2_kernel_prolong       4 0.0 6.3665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b4c542110_wrap_pyop2_kernel_prolong       4 0.0 7.5665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b4c65c990_wrap_pyop2_kernel_prolong       4 0.0 7.6540e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dccef3dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dccf57850_wrap_pyop2_kernel_prolong       4 0.0 7.3419e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15388cbc6310_wrap_pyop2_kernel_prolong       4 0.0 7.5604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15388cc13850_wrap_pyop2_kernel_prolong       4 0.0 5.6230e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15108db8ffd0_wrap_pyop2_kernel_prolong       4 0.0 7.5712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15108db8df90_wrap_pyop2_kernel_prolong       4 0.0 5.6941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151dd434b110_wrap_pyop2_kernel_prolong       4 0.0 7.5820e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151dd434a950_wrap_pyop2_kernel_prolong       4 0.0 7.6411e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498352b6c90_wrap_pyop2_kernel_prolong       4 0.0 7.5828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498352dd450_wrap_pyop2_kernel_prolong       4 0.0 6.7991e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147268792350_wrap_pyop2_kernel_prolong       4 0.0 7.5755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147268791f50_wrap_pyop2_kernel_prolong       4 0.0 4.8864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488178cb810_wrap_pyop2_kernel_prolong       4 0.0 7.5418e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488178ca210_wrap_pyop2_kernel_prolong       4 0.0 7.0709e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15342fa42210_wrap_pyop2_kernel_prolong       4 0.0 7.5834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15342f82acd0_wrap_pyop2_kernel_prolong       4 0.0 6.2127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e454e6e90_wrap_pyop2_kernel_prolong       4 0.0 7.5581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e4552b710_wrap_pyop2_kernel_prolong       4 0.0 6.8055e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f6219cd10_wrap_pyop2_kernel_prolong       4 0.0 7.5409e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f6229df50_wrap_pyop2_kernel_prolong       4 0.0 7.3593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7cceb7b10_wrap_pyop2_kernel_prolong       4 0.0 7.5536e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7ccee48d0_wrap_pyop2_kernel_prolong       4 0.0 5.3567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14555b574e10_wrap_pyop2_kernel_prolong       4 0.0 7.5849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14555b575890_wrap_pyop2_kernel_prolong       4 0.0 7.4294e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bdc123050_wrap_pyop2_kernel_prolong       4 0.0 7.5398e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bdc121fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3589e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdea00e0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdea00d890_wrap_pyop2_kernel_prolong       4 0.0 7.8348e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470de1cdb50_wrap_pyop2_kernel_prolong       4 0.0 7.5412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470de245e50_wrap_pyop2_kernel_prolong       4 0.0 5.4885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cca0527450_wrap_pyop2_kernel_prolong       4 0.0 7.5401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cca04a9950_wrap_pyop2_kernel_prolong       4 0.0 5.4507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d58e702ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d58dc18050_wrap_pyop2_kernel_prolong       4 0.0 6.4384e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c13a172f50_wrap_pyop2_kernel_prolong       4 0.0 7.5405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c13a3f4310_wrap_pyop2_kernel_prolong       4 0.0 5.6689e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cfdd19f90_wrap_pyop2_kernel_prolong       4 0.0 7.5342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cfdd196d0_wrap_pyop2_kernel_prolong       4 0.0 5.4212e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dee09a6b90_wrap_pyop2_kernel_prolong       4 0.0 7.5390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dedbf76050_wrap_pyop2_kernel_prolong       4 0.0 5.7624e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d42ffa90d0_wrap_pyop2_kernel_prolong       4 0.0 7.5357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d42ffd66d0_wrap_pyop2_kernel_prolong       4 0.0 4.6019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505769450d0_wrap_pyop2_kernel_prolong       4 0.0 7.5370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150576a9e410_wrap_pyop2_kernel_prolong       4 0.0 5.2369e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519fddbb810_wrap_pyop2_kernel_prolong       4 0.0 7.5389e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519fde2ff50_wrap_pyop2_kernel_prolong       4 0.0 5.5343e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fd68b9210_wrap_pyop2_kernel_prolong       4 0.0 7.5377e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fd6b5aa90_wrap_pyop2_kernel_prolong       4 0.0 5.6030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe193e2c90_wrap_pyop2_kernel_prolong       4 0.0 7.5401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe192dcdd0_wrap_pyop2_kernel_prolong       4 0.0 5.6596e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d96f5110_wrap_pyop2_kernel_prolong       4 0.0 7.5361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d967d850_wrap_pyop2_kernel_prolong       4 0.0 5.5252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15206de6ba50_wrap_pyop2_kernel_prolong       4 0.0 7.5457e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15206e0e9390_wrap_pyop2_kernel_prolong       4 0.0 6.9695e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ec264b990_wrap_pyop2_kernel_prolong       4 0.0 7.5398e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ec26489d0_wrap_pyop2_kernel_prolong       4 0.0 5.6592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb522b9c90_wrap_pyop2_kernel_prolong       4 0.0 7.5347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb522aa750_wrap_pyop2_kernel_prolong       4 0.0 5.3347e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c770a8a2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5319e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c770a89910_wrap_pyop2_kernel_prolong       4 0.0 4.8658e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ce9ad3c50_wrap_pyop2_kernel_prolong       4 0.0 7.5281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ce9af7cd0_wrap_pyop2_kernel_prolong       4 0.0 5.2856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b461fa3b50_wrap_pyop2_kernel_prolong       4 0.0 7.5275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b461fa3190_wrap_pyop2_kernel_prolong       4 0.0 5.5818e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dea1eee690_wrap_pyop2_kernel_prolong       4 0.0 7.5446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dea219abd0_wrap_pyop2_kernel_prolong       4 0.0 7.3316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4d99fb1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4d99faa10_wrap_pyop2_kernel_prolong       4 0.0 5.8066e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ef62e9910_wrap_pyop2_kernel_prolong       4 0.0 7.5345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ef62c52d0_wrap_pyop2_kernel_prolong       4 0.0 5.8059e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552168ff750_wrap_pyop2_kernel_prolong       4 0.0 7.5438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552168fc7d0_wrap_pyop2_kernel_prolong       4 0.0 7.1245e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4cbfe0f50_wrap_pyop2_kernel_prolong       4 0.0 7.5373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4cbf62910_wrap_pyop2_kernel_prolong       4 0.0 6.4754e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f8e91bad0_wrap_pyop2_kernel_prolong       4 0.0 7.5453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f8e919390_wrap_pyop2_kernel_prolong       4 0.0 6.6355e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477367f3c90_wrap_pyop2_kernel_prolong       4 0.0 7.5388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477367a2e50_wrap_pyop2_kernel_prolong       4 0.0 6.8833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462befeea10_wrap_pyop2_kernel_prolong       4 0.0 7.5416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462befeecd0_wrap_pyop2_kernel_prolong       4 0.0 7.1278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463e0911890_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463dbfcf790_wrap_pyop2_kernel_prolong       4 0.0 5.6626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c881bee610_wrap_pyop2_kernel_prolong       4 0.0 7.5356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c881cde950_wrap_pyop2_kernel_prolong       4 0.0 5.0790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8a10fc110_wrap_pyop2_kernel_prolong       4 0.0 7.5310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8a1154b50_wrap_pyop2_kernel_prolong       4 0.0 5.6036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146af07680d0_wrap_pyop2_kernel_prolong       4 0.0 7.5360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146af0b3d6d0_wrap_pyop2_kernel_prolong       4 0.0 6.4436e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebf536c210_wrap_pyop2_kernel_prolong       4 0.0 7.5403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebf5394450_wrap_pyop2_kernel_prolong       4 0.0 6.0684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b70ae7250_wrap_pyop2_kernel_prolong       4 0.0 7.5358e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b70ae6ed0_wrap_pyop2_kernel_prolong       4 0.0 6.2423e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0d51c4d10_wrap_pyop2_kernel_prolong       4 0.0 7.5359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0d5031a10_wrap_pyop2_kernel_prolong       4 0.0 5.1976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd7de0b9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd7dda51d0_wrap_pyop2_kernel_prolong       4 0.0 6.2342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7fe559d90_wrap_pyop2_kernel_prolong       4 0.0 7.5428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7fe5595d0_wrap_pyop2_kernel_prolong       4 0.0 6.4558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c48d0951d0_wrap_pyop2_kernel_prolong       4 0.0 7.5448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c48c49d250_wrap_pyop2_kernel_prolong       4 0.0 6.6593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4699d5110_wrap_pyop2_kernel_prolong       4 0.0 7.5427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b469c87a90_wrap_pyop2_kernel_prolong       4 0.0 7.1316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df41728c50_wrap_pyop2_kernel_prolong       4 0.0 7.5414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df417539d0_wrap_pyop2_kernel_prolong       4 0.0 6.2846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fce13d96d0_wrap_pyop2_kernel_prolong       4 0.0 7.5405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fce13ce990_wrap_pyop2_kernel_prolong       4 0.0 6.4910e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15402991c250_wrap_pyop2_kernel_prolong       4 0.0 7.5438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15402997a810_wrap_pyop2_kernel_prolong       4 0.0 6.1365e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495562e9c50_wrap_pyop2_kernel_prolong       4 0.0 7.5408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149556316650_wrap_pyop2_kernel_prolong       4 0.0 6.2743e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15419ea03550_wrap_pyop2_kernel_prolong       4 0.0 7.5345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15419e9c2e50_wrap_pyop2_kernel_prolong       4 0.0 6.2781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fcc5ec610_wrap_pyop2_kernel_prolong       4 0.0 7.5365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fcc869090_wrap_pyop2_kernel_prolong       4 0.0 5.7019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df899fa490_wrap_pyop2_kernel_prolong       4 0.0 7.5356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df8992f550_wrap_pyop2_kernel_prolong       4 0.0 5.9681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fa0e12d10_wrap_pyop2_kernel_prolong       4 0.0 7.5419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fa0e3b750_wrap_pyop2_kernel_prolong       4 0.0 5.9428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff10265010_wrap_pyop2_kernel_prolong       4 0.0 7.5372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff10288d50_wrap_pyop2_kernel_prolong       4 0.0 5.6558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14855c139a90_wrap_pyop2_kernel_prolong       4 0.0 7.5308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14855c15fd10_wrap_pyop2_kernel_prolong       4 0.0 4.7844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8431e2f50_wrap_pyop2_kernel_prolong       4 0.0 7.5460e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e842afa290_wrap_pyop2_kernel_prolong       4 0.0 7.1346e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d96d511890_wrap_pyop2_kernel_prolong       4 0.0 7.5321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d96d510c10_wrap_pyop2_kernel_prolong       4 0.0 5.1892e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3bb8cfd50_wrap_pyop2_kernel_prolong       4 0.0 7.5459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3bb914cd0_wrap_pyop2_kernel_prolong       4 0.0 6.9164e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14750cd90f90_wrap_pyop2_kernel_prolong       4 0.0 7.5393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14750cdab610_wrap_pyop2_kernel_prolong       4 0.0 6.0752e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af7f1c1f50_wrap_pyop2_kernel_prolong       4 0.0 7.5437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af7df05e90_wrap_pyop2_kernel_prolong       4 0.0 6.8724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15171a516150_wrap_pyop2_kernel_prolong       4 0.0 7.5194e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15171a7a9710_wrap_pyop2_kernel_prolong       4 0.0 4.8555e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e2aced8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e2a32db10_wrap_pyop2_kernel_prolong       4 0.0 5.8175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15050cdf32d0_wrap_pyop2_kernel_prolong       4 0.0 7.5294e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15050ce44ed0_wrap_pyop2_kernel_prolong       4 0.0 6.0703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505a96ccc50_wrap_pyop2_kernel_prolong       4 0.0 7.5263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505a997f350_wrap_pyop2_kernel_prolong       4 0.0 6.2540e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b6e6578d0_wrap_pyop2_kernel_prolong       4 0.0 7.5237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b6e690d10_wrap_pyop2_kernel_prolong       4 0.0 5.0660e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347bd7e310_wrap_pyop2_kernel_prolong       4 0.0 7.5270e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347bdae6d0_wrap_pyop2_kernel_prolong       4 0.0 6.5903e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517ac382e50_wrap_pyop2_kernel_prolong       4 0.0 7.5234e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517ac5dcbd0_wrap_pyop2_kernel_prolong       4 0.0 5.6468e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dad8e2b990_wrap_pyop2_kernel_prolong       4 0.0 7.5186e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dad841a310_wrap_pyop2_kernel_prolong       4 0.0 4.9128e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15241347dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15241347d6d0_wrap_pyop2_kernel_prolong       4 0.0 6.0465e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f82fd9fa10_wrap_pyop2_kernel_prolong       4 0.0 7.5277e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f82fd9d750_wrap_pyop2_kernel_prolong       4 0.0 6.0046e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154aee441ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5274e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154aedb0f150_wrap_pyop2_kernel_prolong       4 0.0 5.4469e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab56b3dad0_wrap_pyop2_kernel_prolong       4 0.0 7.5291e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab5615a3d0_wrap_pyop2_kernel_prolong       4 0.0 5.8623e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eba3363210_wrap_pyop2_kernel_prolong       4 0.0 7.5282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eba3360d10_wrap_pyop2_kernel_prolong       4 0.0 5.9561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ed7f86c90_wrap_pyop2_kernel_prolong       4 0.0 7.5170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151edc89e550_wrap_pyop2_kernel_prolong       4 0.0 4.8100e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531ed832cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531ed832910_wrap_pyop2_kernel_prolong       4 0.0 5.9054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154992f34c90_wrap_pyop2_kernel_prolong       4 0.0 7.5295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154992d9d990_wrap_pyop2_kernel_prolong       4 0.0 6.1084e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f501d3ab50_wrap_pyop2_kernel_prolong       4 0.0 7.5284e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f501d92a10_wrap_pyop2_kernel_prolong       4 0.0 6.4580e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500e16de410_wrap_pyop2_kernel_prolong       4 0.0 7.5263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500e0ca2950_wrap_pyop2_kernel_prolong       4 0.0 6.6856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499c7866450_wrap_pyop2_kernel_prolong       4 0.0 7.5328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499c7866bd0_wrap_pyop2_kernel_prolong       4 0.0 6.6918e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508c69549d0_wrap_pyop2_kernel_prolong       4 0.0 7.5238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508c6901950_wrap_pyop2_kernel_prolong       4 0.0 6.1871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454c7d63890_wrap_pyop2_kernel_prolong       4 0.0 7.5232e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454c7d63450_wrap_pyop2_kernel_prolong       4 0.0 6.0306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d47d411f90_wrap_pyop2_kernel_prolong       4 0.0 7.5269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d47d3958d0_wrap_pyop2_kernel_prolong       4 0.0 6.4520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545d5894b10_wrap_pyop2_kernel_prolong       4 0.0 7.5275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545d58940d0_wrap_pyop2_kernel_prolong       4 0.0 5.5265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148deabaa5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148deabaa190_wrap_pyop2_kernel_prolong       4 0.0 6.6262e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14586b526890_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14586b4487d0_wrap_pyop2_kernel_prolong       4 0.0 6.4626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500fb56e950_wrap_pyop2_kernel_prolong       4 0.0 7.5367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500fa2b8a50_wrap_pyop2_kernel_prolong       4 0.0 7.6099e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c96b23150_wrap_pyop2_kernel_prolong       4 0.0 7.5260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c96b4e190_wrap_pyop2_kernel_prolong       4 0.0 5.8734e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea561efad0_wrap_pyop2_kernel_prolong       4 0.0 7.5250e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea561da8d0_wrap_pyop2_kernel_prolong       4 0.0 5.8592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c91283aad0_wrap_pyop2_kernel_prolong       4 0.0 7.5271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c91283a010_wrap_pyop2_kernel_prolong       4 0.0 6.8970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f487452190_wrap_pyop2_kernel_prolong       4 0.0 7.5218e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f486a39810_wrap_pyop2_kernel_prolong       4 0.0 4.8691e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15467ebb3e90_wrap_pyop2_kernel_prolong       4 0.0 7.5299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15467e995e10_wrap_pyop2_kernel_prolong       4 0.0 6.6579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d34e69bf10_wrap_pyop2_kernel_prolong       4 0.0 7.5280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d34e914210_wrap_pyop2_kernel_prolong       4 0.0 6.7978e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1bb41af90_wrap_pyop2_kernel_prolong       4 0.0 7.5234e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1bb43e110_wrap_pyop2_kernel_prolong       4 0.0 6.2640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f56d8cd50_wrap_pyop2_kernel_prolong       4 0.0 7.5258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f5549d1d0_wrap_pyop2_kernel_prolong       4 0.0 5.7671e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd1685e410_wrap_pyop2_kernel_prolong       4 0.0 7.5280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd16797a10_wrap_pyop2_kernel_prolong       4 0.0 6.2356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146767020a50_wrap_pyop2_kernel_prolong       4 0.0 7.5161e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14676725d810_wrap_pyop2_kernel_prolong       4 0.0 4.6856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fb3391b10_wrap_pyop2_kernel_prolong       4 0.0 7.5326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fb31c5990_wrap_pyop2_kernel_prolong       4 0.0 6.6670e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15003210c1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150031917e10_wrap_pyop2_kernel_prolong       4 0.0 6.4282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520da042b10_wrap_pyop2_kernel_prolong       4 0.0 7.5374e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520da092cd0_wrap_pyop2_kernel_prolong       4 0.0 6.8079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e32c9a150_wrap_pyop2_kernel_prolong       4 0.0 7.5340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e32c99ad0_wrap_pyop2_kernel_prolong       4 0.0 6.9023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d7e8d53d0_wrap_pyop2_kernel_prolong       4 0.0 7.5301e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d7e89b8d0_wrap_pyop2_kernel_prolong       4 0.0 5.5996e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe92312950_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe92289550_wrap_pyop2_kernel_prolong       4 0.0 6.6380e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15428f2b3e50_wrap_pyop2_kernel_prolong       4 0.0 7.5302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15428dfff3d0_wrap_pyop2_kernel_prolong       4 0.0 6.0925e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153acf92e990_wrap_pyop2_kernel_prolong       4 0.0 7.5323e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153acf948cd0_wrap_pyop2_kernel_prolong       4 0.0 5.7898e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479a200e390_wrap_pyop2_kernel_prolong       4 0.0 7.5386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479a1e7b390_wrap_pyop2_kernel_prolong       4 0.0 7.3653e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c67b2af510_wrap_pyop2_kernel_prolong       4 0.0 7.5251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c67b1725d0_wrap_pyop2_kernel_prolong       4 0.0 5.3342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e92243e210_wrap_pyop2_kernel_prolong       4 0.0 7.5336e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e92243c450_wrap_pyop2_kernel_prolong       4 0.0 6.7092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b27be7b490_wrap_pyop2_kernel_prolong       4 0.0 7.5239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b27be55cd0_wrap_pyop2_kernel_prolong       4 0.0 6.6915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153449f73490_wrap_pyop2_kernel_prolong       4 0.0 7.5334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153449f91850_wrap_pyop2_kernel_prolong       4 0.0 6.4832e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c22bfca3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c22b54c0d0_wrap_pyop2_kernel_prolong       4 0.0 6.4933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c91cffbc90_wrap_pyop2_kernel_prolong       4 0.0 7.5340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c91cffb810_wrap_pyop2_kernel_prolong       4 0.0 6.6963e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d3018fa90_wrap_pyop2_kernel_prolong       4 0.0 7.5366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d2b79b550_wrap_pyop2_kernel_prolong       4 0.0 7.3374e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        362 1.0 1.0241e-01 3.8 0.00e+00 0.0 1.0e+06 4.0e+00 3.6e+02  0  0  2  0  2   0  0  4  0  8    -0
SFSetGraph           362 1.0 1.6275e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              362 1.0 1.3919e-01 2.7 0.00e+00 0.0 2.0e+06 2.0e+02 3.6e+02  0  0  5  0  2   0  0  8  0  8    -0
SFPack           2685135 1.1 2.6436e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2685135 1.1 1.4703e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2967 1.0 3.9984e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             23735 1.0 1.2535e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             5934 1.0 9.7410e+00 2.5 4.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  2  0  0  0 201198
VecAYPX             5934 1.0 9.1970e+00 2.2 2.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 106549
VecScatterBegin  2685135 1.1 3.4960e+01 1.4 0.00e+00 0.0 2.2e+07 7.4e+04 0.0e+00  2  0 52 35  0   5  0 81 100  0    -0
VecScatterEnd    2685135 1.1 5.3207e+01 24.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             5934 1.0 2.6506e+02 1.3 1.70e+11 1.1 1.3e+07 1.2e+05 0.0e+00 17  9 32 35  0  39 57 50 100  0 261795
MatMultAdd          2967 1.0 1.5374e+01 1.2 7.18e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 191225
MatMultTranspose    2967 1.0 1.2733e+01 1.7 7.18e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 230887
MatSolve         1332183 1.1 2.5576e+02 1.4 9.14e+10 1.2 1.3e+07 5.8e+02 1.8e+03 16  5 32  0 11  37 28 50  0 38 134707
MatLUFactorNum     77056 1.1 1.9836e+01 1.3 2.21e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  7  0  0  0 455467
MatResidual         2967 1.0 1.5200e+02 1.5 8.60e+10 1.1 6.6e+06 1.2e+05 0.0e+00  9  5 16 17  0  20 29 25 50  0 231475
MatAssemblyBegin   77056 1.1 1.6207e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     77056 1.1 1.8557e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     344 1.0 4.4926e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   7  0  0  0  0    -0
PCSetUp            77400 1.1 6.4473e+01 1.2 2.21e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  1  0  0  0  10  7  0  0  0 140132
PCApply             8901 1.0 3.6074e+02 1.3 1.13e+11 1.2 1.3e+07 5.8e+02 1.8e+03 23  6 32  0 11  54 36 50  0 38 120550
PCApplyOnBlocks  1329216 1.1 1.9468e+02 1.6 1.06e+11 1.1 0.0e+00 0.0e+00 0.0e+00 12  6  0  0  0  27 36  0  0  0 222182
KSPSetUp           77057 1.1 9.2428e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            8901 1.0 4.9046e+02 1.2 2.04e+11 1.1 2.0e+07 4.0e+04 4.8e+03 33 11 48 18 28  75 66 75 50 100 164400
MGSmooth Level 0    2967 1.0 9.5471e+01 1.2 7.84e+09 46.3 1.3e+07 5.8e+02 4.8e+03  6  0 32  0 28  14  0 50  0 100  2436
MGSmooth Level 1    5934 1.0 4.1034e+02 1.3 1.96e+11 1.1 6.6e+06 1.2e+05 0.0e+00 27 11 16 17  0  62 66 25 50  0 195933
MGResid Level 1     2967 1.0 1.5202e+02 1.5 8.60e+10 1.1 6.6e+06 1.2e+05 0.0e+00  9  5 16 17  0  20 29 25 50  0 231456
MGInterp Level 1    5934 1.0 2.7479e+01 1.3 1.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  5  0  0  0 213967
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   147            147
              Viewer     3              3
         PetscRandom    18             18
           Index Set  4427           4427
   IS L to G Mapping   431            431
             Section   472            472
   Star Forest Graph   630            992
              Vector  2166           2165
              Matrix  1248           1248
      Preconditioner   230            230
       Krylov Solver   246            246
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   128            128
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   183            183
           Weak Form   183            183
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   724            724
   Star Forest Graph   362              0
              Vector   364            365
========================================================================================================================
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 1.20392e-05
Average time for zero size MPI_Send(): 2.5659e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal/vlumping_linesmooth/h4.profile # (source: code)
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

