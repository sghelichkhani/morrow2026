****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0428.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 13:29:42 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.794e+02     1.000   4.794e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.641e+11     1.274   4.851e+11  1.009e+14
Flops/sec:            1.177e+09     1.274   1.012e+09  2.105e+11
MPI Msg Count:        1.221e+05     4.112   5.635e+04  1.172e+07
MPI Msg Len (bytes):  1.000e+10     6.116   1.009e+05  1.183e+12
MPI Reductions:       1.004e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.1094e+02  64.9%  8.3881e+13  83.1%  4.289e+06  36.6%  1.847e+05       67.0%  7.338e+03  73.1%
 1:        MG Apply: 1.6842e+02  35.1%  1.7030e+13  16.9%  7.431e+06  63.4%  5.259e+04       33.0%  2.688e+03  26.8%

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

BuildTwoSided       1357 1.0 5.7241e+01 4.6 0.00e+00 0.0 2.1e+05 4.0e+00 1.2e+03  7  0  2  0 12  11  0  5  0 17    -0
BuildTwoSidedF      1131 1.0 5.6583e+01 4.7 0.00e+00 0.0 2.5e+05 1.4e+06 1.1e+03  8  0  2 29 11  12  0  6 44 15    -0
SFSetGraph           233 1.1 1.2225e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.1 2.1006e+00 70.0 0.00e+00 0.0 1.7e+05 8.9e+02 9.8e+01  0  0  1  0  1   0  0  4  0  1    -0
SFBcastBegin         888 1.0 3.5931e-01 5.5 0.00e+00 0.0 9.8e+05 7.7e+04 0.0e+00  0  0  8  6  0   0  0 23 10  0    -0
SFBcastEnd           888 1.0 1.7188e+01 118.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin        341 1.0 7.5464e-02 18.1 0.00e+00 0.0 3.8e+05 9.8e+04 0.0e+00  0  0  3  3  0   0  0  9  5  0    -0
SFReduceEnd          341 1.0 2.9491e+00 61.4 3.94e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1585
SFFetchOpBegin         6 1.0 3.7294e-05 5.9 0.00e+00 0.0 6.6e+03 5.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 7.3549e-04 15.8 0.00e+00 0.0 6.6e+03 5.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.2285e-03 2.4 0.00e+00 0.0 3.3e+03 7.2e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.7838e-03 1.5 0.00e+00 0.0 1.5e+05 5.9e+01 5.8e+01  0  0  1  0  1   0  0  4  0  1    -0
SFSectionSF           51 1.0 4.3581e-03 2.7 0.00e+00 0.0 7.0e+04 2.9e+01 5.1e+01  0  0  1  0  1   0  0  2  0  1    -0
SFRemoteOff            2 1.0 8.6101e-05 2.2 0.00e+00 0.0 2.9e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             60251 1.1 1.0259e+00 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           60257 1.1 2.3686e-01 26.3 3.94e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 19736
VecDot               225 1.0 9.4478e-01 16.8 1.04e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  3 20631
VecMDot             1773 1.0 1.9755e+01 5.5 4.09e+09 1.1 0.0e+00 0.0e+00 1.8e+03  2  1  0  0 18   3  1  0  0 24 38945
VecNorm             2769 1.0 4.1955e+00 5.0 1.28e+09 1.1 0.0e+00 0.0e+00 2.8e+03  1  0  0  0 28   1  0  0  0 38 57175
VecScale            2009 1.0 1.2766e-01 1.3 4.63e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 681661
VecCopy             1588 1.0 9.8619e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               904 1.0 3.9526e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              236 1.0 1.3751e-01 1.2 1.09e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 148679
VecWAXPY             225 1.0 2.1939e-01 1.3 5.18e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 44423
VecMAXPY            2009 1.0 5.3169e+00 1.2 4.91e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 173590
VecScatterBegin    59016 1.1 1.1180e+00 1.9 0.00e+00 0.0 2.2e+06 1.1e+05 0.0e+00  0  0 19 21  0   0  0 52 31  0    -0
VecScatterEnd      59016 1.1 1.4323e+01 79.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          10 1.0 2.1109e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       450 1.0 1.2317e-01 2.3 2.07e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 316498
VecReduceComm        225 1.0 1.3214e-01 13.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         221 1.0 4.3315e-01 5.9 1.53e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  3 66300
MatMult             1998 1.0 5.2211e+01 1.4 3.26e+10 1.2 2.2e+06 1.1e+05 0.0e+00  9  6 19 21  0  14  7 52 31  0 117205
MatSolve           28288 1.1 3.5595e+00 1.7 1.78e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 93912
MatLUFactorSym       129 1.1 4.9565e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      1505 1.1 1.1692e+01 1.0 4.06e+08 1.3 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0  6086
MatAssemblyBegin    2910 1.1 5.7795e+01 2.9 0.00e+00 0.0 2.5e+05 1.4e+06 1.1e+03  9  0  2 29 11  13  0  6 44 15    -0
MatAssemblyEnd      2910 1.1 2.0294e+01 8.5 2.84e+08 0.0 4.5e+03 1.4e+04 1.7e+01  2  0  0  0  0   3  0  0  0  0  1053
MatGetRowIJ          128 1.1 3.0629e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      10 1.0 8.2883e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.3e+02  0  0  0  0  1   0  0  0  0  2    -0
MatGetOrdering       128 1.1 2.1892e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       450 1.0 4.1592e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 6.0098e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 6.8937e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        450 1.0 2.1548e+00 1.2 3.73e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 324300
MatPtAPSymbolic        1 1.0 1.2192e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       225 1.0 1.6054e+01 1.0 1.49e+10 1.2 2.5e+05 3.3e+05 2.3e+02  3  3  2  7  2   5  3  6 11  3 174133
MatGetLocalMat       225 1.0 9.9846e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        225 1.0 1.0093e+00 4.2 0.00e+00 0.0 2.5e+05 3.3e+05 0.0e+00  0  0  2  7  0   0  0  6 11  0    -0
MatSetPreallCOO       32 1.0 6.3838e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.3091e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 4.2847e+01 1.0 2.29e+10 1.2 4.9e+05 2.2e+05 1.3e+03  9  4  4  9 13  14  5 11 14 18 100032
PCApply             1563 1.0 1.7727e+02 1.1 9.10e+10 1.2 7.4e+06 5.3e+04 2.7e+03 35 17 63 33 27 Multiple stages 96065
PCApplyOnBlocks    28288 1.1 3.9425e+00 1.6 2.14e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 102260
KSPSetUp             225 1.0 7.5142e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 2.1666e+02 1.0 1.25e+11 1.2 9.2e+06 6.4e+04 6.0e+03 45 23 78 50 60 Multiple stages 107862
KSPGMRESOrthog      1773 1.0 2.3654e+01 3.0 8.18e+09 1.1 0.0e+00 0.0e+00 1.8e+03  3  2  0  0 18   4  2  0  0 24 65052
DMRefine               2 1.0 2.6819e-02 1.0 2.09e+03 1.0 2.0e+04 2.7e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1    16
DMPlexCreateGmsh       1 1.0 1.2234e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.2103e+00 388.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 6.2325e-02 1.0 0.00e+00 0.0 4.8e+04 4.7e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.6335e-02 1.1 0.00e+00 0.0 1.7e+05 5.5e+01 2.4e+02  0  0  1  0  2   0  0  4  0  3    -0
DMPlexPartSelf         1 1.0 1.6861e-03 693.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.9870e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.0042e-03 1.3 0.00e+00 0.0 9.2e+03 3.6e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.6422e-03 2.3 0.00e+00 0.0 4.6e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.8161e-03 4.8 0.00e+00 0.0 4.8e+03 1.5e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.6629e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.8984e-02 1.0 0.00e+00 0.0 8.6e+03 1.1e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.9708e-03 1.1 0.00e+00 0.0 2.7e+04 8.2e+01 8.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 6.0588e-03 1.0 0.00e+00 0.0 8.5e+04 5.2e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 2.1610e-02 1.0 0.00e+00 0.0 2.1e+05 5.3e+01 2.4e+02  0  0  2  0  2   0  0  5  0  3    -0
DMPlexDistField        7 1.0 3.6771e-03 1.3 0.00e+00 0.0 3.8e+04 4.5e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 3.4089e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.7419e-04 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1308e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.0508e-03 1.5 0.00e+00 0.0 1.1e+04 2.3e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 9.3416e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 2.8917e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.7412e-04 2.2 0.00e+00 0.0 8.7e+03 2.1e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 7.2170e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.0265e-04 2.1 0.00e+00 0.0 2.2e+03 2.9e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.1780e+02 1.0 5.64e+11 1.3 1.1e+07 1.1e+05 9.2e+03 87 100 95 100 92 Multiple stages 241509
SNESSetUp              1 1.0 4.4052e-05 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 2.2615e+01 1.1 1.61e+11 1.3 7.6e+05 1.1e+05 0.0e+00  4 28  6  7  0   7 34 18 11  0 1245414
SNESJacobianEval     225 1.0 1.2958e+02 1.0 2.52e+11 1.3 5.0e+05 7.4e+05 9.0e+02 27 44  4 31  9  42 53 12 47 12 341718
SNESLineSearch       225 1.0 1.5415e+01 1.0 1.25e+11 1.3 7.5e+05 1.1e+05 9.0e+02  3 22  6  7  9   5 26 18 11 12 1421985
DualSpaceSetUp         8 1.0 5.7150e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.0423e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.7725e+02 1.0 5.64e+11 1.3 1.2e+07 1.0e+05 1.0e+04 100 100 100 100 100 Multiple stages 211440
firedrake.__init__       1 1.0 1.0813e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 5.3294e+00 40.4 0.00e+00 0.0 4.2e+05 5.5e+01 4.4e+02  1  0  4  0  4   1  0 10  0  6    -0
firedrake.mesh._from_gmsh       1 1.0 5.2110e+00 387.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 9.6085e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.5050e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.7127e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.1707e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 2.8874e-02 1.2 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 2.0227e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 2.6685e-02 1.2 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.4164e-02 1.2 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.4030e-02 1.2 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 8.2580e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 5.4961e-03 1.4 0.00e+00 0.0 8.8e+03 6.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.4143e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.6642e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 1.7943e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.0672e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2101e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.1478e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2885e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.0608e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 8.2095e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2420 1.0 1.1986e+02 1.3 4.12e+11 1.3 7.0e+05 1.1e+05 3.2e+01 22 72  6  6  0  34 86 16 10  0 604247
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.0167e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4840 1.0 2.4639e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0551e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.5668e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.2735e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.3902e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.3901e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.1263e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.9629e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    2420 1.0 7.1873e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2420 1.0 6.4508e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.1194e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 7.8992e+00 1.0 7.78e+06 1.1 2.2e+04 1.0e+04 1.3e+01  2  0  0  0  0   3  0  1  0  0   185
firedrake.interpolation.interpolate      13 1.0 4.5554e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.8110e+00 1.0 4.81e+07 1.1 3.3e+04 3.4e+04 3.7e+01  1  0  0  0  0   2  0  1  0  1  1556
firedrake.formmanipulation.split_form      14 1.0 5.0409e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.5243e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 2.5639e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 2.0705e-01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 4.4498e+00 22.6 0.00e+00 0.0 7.1e+05 1.1e+05 4.0e+00  0  0  6  6  0   1  0 17 10  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.3473e+00 1.0 4.81e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  1691
firedrake.halo.Halo.global_to_local_end     621 1.0 1.3608e+01 318.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.6022e+00 72.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486b6b338d0_wrap_pyop2_kernel_prolong       4 0.0 7.6382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486b6b28350_wrap_pyop2_kernel_prolong       4 0.0 2.5128e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9185e+00 1.0 3.89e+07 1.1 1.9e+04 5.0e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  1868
firedrake.function.Function.assign     314 1.0 1.0698e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 9.9855e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.0662e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6805e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.1054e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4644e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9630e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2009e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.1623e+00 1.0 0.00e+00 0.0 7.3e+03 4.3e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.1531e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 5.7221e-04 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2349e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2349e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         2 1.0 1.8934e+00 1.1 0.00e+00 0.0 6.7e+03 2.3e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 3.1204e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.1796e+02 1.0 5.64e+11 1.3 1.1e+07 1.1e+05 9.4e+03 87 100 95 100 93 Multiple stages 241414
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.5410e-01 1308.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1870e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.5405e-01 1587.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.5402e-01 1815.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 5.3260e+00 1.3 3.96e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  9  0  0  0 1396804
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 9.9304e-01 1.0 5.11e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   967
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2291e+00 1.0 4.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10183
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 3.9406e+00 1.2 3.77e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  8  0  0  0 1800497
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 7.6592e+00 1.4 8.35e+10 1.6 0.0e+00 0.0e+00 0.0e+00  1 13  0  0  0   2 16  0  0  0 1777298
firedrake.halo.Halo.local_to_global_begin     300 1.0 8.1915e-02 8.0 0.00e+00 0.0 3.3e+05 1.1e+05 0.0e+00  0  0  3  3  0   0  0  8  5  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.9507e+00 58.5 3.94e+07 6.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1584
Parloop_Cells_wrap_form00_cell_integral     450 1.0 1.9055e+01 1.5 5.52e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 12  0  0  0 544618
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.6358e+00 1.5 3.61e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5844
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 2.2248e+01 1.3 7.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4 14  0  0  0   6 16  0  0  0 614816
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 5.1673e+01 1.7 1.24e+11 1.6 0.0e+00 0.0e+00 0.0e+00  8 20  0  0  0  13 24  0  0  0 390754
firedrake.dmhooks.get_function_space       2 1.0 2.6512e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.2555e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 1.1865e+01 1.0 7.71e+07 26.7 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   4  0  0  0  0   191
MGSetup Level 1      225 1.0 8.6654e-01 1.0 3.52e+08 1.2 1.1e+04 1.1e+05 1.5e+02  0  0  0  0  2   0  0  0  0  2 76242
firedrake.constant.Constant.assign      75 1.0 3.3169e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154763a4f710_wrap_pyop2_kernel_prolong       4 0.0 7.6386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154763a5d250_wrap_pyop2_kernel_prolong       4 0.0 2.3422e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e75ce26250_wrap_pyop2_kernel_prolong       4 0.0 7.6251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e75ce25810_wrap_pyop2_kernel_prolong       4 0.0 2.7862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493508d4710_wrap_pyop2_kernel_prolong       4 0.0 7.6329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493508d7c10_wrap_pyop2_kernel_prolong       4 0.0 2.8001e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4c739f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6298e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4c739d490_wrap_pyop2_kernel_prolong       4 0.0 2.4352e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed08a73910_wrap_pyop2_kernel_prolong       4 0.0 7.6316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed08a71210_wrap_pyop2_kernel_prolong       4 0.0 3.3031e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0f1cb850_wrap_pyop2_kernel_prolong       4 0.0 7.6326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0ef82bd0_wrap_pyop2_kernel_prolong       4 0.0 2.6902e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad8a1265d0_wrap_pyop2_kernel_prolong       4 0.0 7.6331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad8a126010_wrap_pyop2_kernel_prolong       4 0.0 3.1485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14722ddff0d0_wrap_pyop2_kernel_prolong       4 0.0 7.6300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14722de255d0_wrap_pyop2_kernel_prolong       4 0.0 2.4821e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2943b8150_wrap_pyop2_kernel_prolong       4 0.0 7.6331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2943b9390_wrap_pyop2_kernel_prolong       4 0.0 2.7176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462dd301150_wrap_pyop2_kernel_prolong       4 0.0 7.6394e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462dd302210_wrap_pyop2_kernel_prolong       4 0.0 3.9376e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbf4605850_wrap_pyop2_kernel_prolong       4 0.0 7.6392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbefb85010_wrap_pyop2_kernel_prolong       4 0.0 3.9071e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3ba1dccd0_wrap_pyop2_kernel_prolong       4 0.0 7.6359e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3ba1dd950_wrap_pyop2_kernel_prolong       4 0.0 4.2783e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151878607c90_wrap_pyop2_kernel_prolong       4 0.0 7.6162e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518784ed810_wrap_pyop2_kernel_prolong       4 0.0 2.5390e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8d58a22d0_wrap_pyop2_kernel_prolong       4 0.0 7.6158e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8d58a1910_wrap_pyop2_kernel_prolong       4 0.0 2.9328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465b893fd10_wrap_pyop2_kernel_prolong       4 0.0 7.6207e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465b87eded0_wrap_pyop2_kernel_prolong       4 0.0 2.7370e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfb18f8b10_wrap_pyop2_kernel_prolong       4 0.0 7.6248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfb0cd9190_wrap_pyop2_kernel_prolong       4 0.0 3.1462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e1e6c2c90_wrap_pyop2_kernel_prolong       4 0.0 7.6222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e1e6c1b50_wrap_pyop2_kernel_prolong       4 0.0 3.5577e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c84a36e50_wrap_pyop2_kernel_prolong       4 0.0 7.6189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c84b8e450_wrap_pyop2_kernel_prolong       4 0.0 3.7969e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6e8efba90_wrap_pyop2_kernel_prolong       4 0.0 7.6182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6e8ecca90_wrap_pyop2_kernel_prolong       4 0.0 2.9290e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e2454b250_wrap_pyop2_kernel_prolong       4 0.0 7.6242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e2454b110_wrap_pyop2_kernel_prolong       4 0.0 3.7429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba66f88790_wrap_pyop2_kernel_prolong       4 0.0 7.6253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba66649b10_wrap_pyop2_kernel_prolong       4 0.0 3.6302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c1c6a5850_wrap_pyop2_kernel_prolong       4 0.0 7.6251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c1c07d810_wrap_pyop2_kernel_prolong       4 0.0 2.6257e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ef9eb7690_wrap_pyop2_kernel_prolong       4 0.0 7.6187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ef9eb6110_wrap_pyop2_kernel_prolong       4 0.0 3.5625e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552709b9150_wrap_pyop2_kernel_prolong       4 0.0 7.6266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155270bfa010_wrap_pyop2_kernel_prolong       4 0.0 3.6928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a07370e50_wrap_pyop2_kernel_prolong       4 0.0 7.6255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a07371590_wrap_pyop2_kernel_prolong       4 0.0 3.5116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476939afa90_wrap_pyop2_kernel_prolong       4 0.0 7.6240e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476939ad290_wrap_pyop2_kernel_prolong       4 0.0 2.0184e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c32e94e090_wrap_pyop2_kernel_prolong       4 0.0 7.6202e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c32e90d6d0_wrap_pyop2_kernel_prolong       4 0.0 2.7087e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15444d63a950_wrap_pyop2_kernel_prolong       4 0.0 7.6304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15444d638e10_wrap_pyop2_kernel_prolong       4 0.0 3.7454e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15044f1835d0_wrap_pyop2_kernel_prolong       4 0.0 7.6315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15044fa20250_wrap_pyop2_kernel_prolong       4 0.0 3.9095e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14756e0ecb50_wrap_pyop2_kernel_prolong       4 0.0 7.6258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14756d758050_wrap_pyop2_kernel_prolong       4 0.0 3.3520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d03aff1310_wrap_pyop2_kernel_prolong       4 0.0 7.6363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d03abd7dd0_wrap_pyop2_kernel_prolong       4 0.0 4.4519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500916dc110_wrap_pyop2_kernel_prolong       4 0.0 7.6171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150091718050_wrap_pyop2_kernel_prolong       4 0.0 3.1543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14586e29be50_wrap_pyop2_kernel_prolong       4 0.0 7.6252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14586e2be910_wrap_pyop2_kernel_prolong       4 0.0 2.8913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a418ef150_wrap_pyop2_kernel_prolong       4 0.0 7.6268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a41be66d0_wrap_pyop2_kernel_prolong       4 0.0 2.5469e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14850c9e6dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148507fd2e50_wrap_pyop2_kernel_prolong       4 0.0 2.8566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474302f7810_wrap_pyop2_kernel_prolong       4 0.0 7.6181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147430326c10_wrap_pyop2_kernel_prolong       4 0.0 2.8523e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d60fb0f50_wrap_pyop2_kernel_prolong       4 0.0 7.6430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d60fb1610_wrap_pyop2_kernel_prolong       4 0.0 4.6645e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b535e1c750_wrap_pyop2_kernel_prolong       4 0.0 7.6281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b535e16150_wrap_pyop2_kernel_prolong       4 0.0 4.9428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e89d4f6850_wrap_pyop2_kernel_prolong       4 0.0 7.6242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e89d4f7d90_wrap_pyop2_kernel_prolong       4 0.0 3.1282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14920f1e02d0_wrap_pyop2_kernel_prolong       4 0.0 7.6219e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14920ed37510_wrap_pyop2_kernel_prolong       4 0.0 2.3893e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487faf8d910_wrap_pyop2_kernel_prolong       4 0.0 7.6284e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487fafbdfd0_wrap_pyop2_kernel_prolong       4 0.0 2.8465e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9a8096d50_wrap_pyop2_kernel_prolong       4 0.0 7.6342e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9a80c1690_wrap_pyop2_kernel_prolong       4 0.0 3.9892e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a30f437710_wrap_pyop2_kernel_prolong       4 0.0 7.6115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a30e1f7f50_wrap_pyop2_kernel_prolong       4 0.0 2.5443e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14910629d190_wrap_pyop2_kernel_prolong       4 0.0 7.6253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491060a0bd0_wrap_pyop2_kernel_prolong       4 0.0 3.8161e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8ad1e1690_wrap_pyop2_kernel_prolong       4 0.0 7.6246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8ad079b90_wrap_pyop2_kernel_prolong       4 0.0 3.5684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456a4612610_wrap_pyop2_kernel_prolong       4 0.0 7.6315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456a4448910_wrap_pyop2_kernel_prolong       4 0.0 3.7119e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14795007e690_wrap_pyop2_kernel_prolong       4 0.0 7.6227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14794b7b1590_wrap_pyop2_kernel_prolong       4 0.0 4.3002e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547f240aa90_wrap_pyop2_kernel_prolong       4 0.0 7.6173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547f2580490_wrap_pyop2_kernel_prolong       4 0.0 3.3639e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f50ffa6110_wrap_pyop2_kernel_prolong       4 0.0 7.6140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f50ffa5a50_wrap_pyop2_kernel_prolong       4 0.0 2.9026e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544f5277650_wrap_pyop2_kernel_prolong       4 0.0 7.6126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544f5274a50_wrap_pyop2_kernel_prolong       4 0.0 2.6407e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15172550a650_wrap_pyop2_kernel_prolong       4 0.0 7.6303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517254c0450_wrap_pyop2_kernel_prolong       4 0.0 4.0561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bede4c8410_wrap_pyop2_kernel_prolong       4 0.0 7.6267e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bede481c90_wrap_pyop2_kernel_prolong       4 0.0 2.1668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da875bbcd0_wrap_pyop2_kernel_prolong       4 0.0 7.6166e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da87348150_wrap_pyop2_kernel_prolong       4 0.0 2.4888e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf245a0f90_wrap_pyop2_kernel_prolong       4 0.0 7.6195e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf245c6dd0_wrap_pyop2_kernel_prolong       4 0.0 2.8948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b36254a850_wrap_pyop2_kernel_prolong       4 0.0 7.6259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3625497d0_wrap_pyop2_kernel_prolong       4 0.0 2.6867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148175023cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148175021c50_wrap_pyop2_kernel_prolong       4 0.0 2.3280e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471dd07ba90_wrap_pyop2_kernel_prolong       4 0.0 7.6390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471dce58150_wrap_pyop2_kernel_prolong       4 0.0 3.1973e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493329acf10_wrap_pyop2_kernel_prolong       4 0.0 7.6381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149332cafe90_wrap_pyop2_kernel_prolong       4 0.0 2.8595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494f736e650_wrap_pyop2_kernel_prolong       4 0.0 7.6357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494f739b090_wrap_pyop2_kernel_prolong       4 0.0 2.5216e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de654e7250_wrap_pyop2_kernel_prolong       4 0.0 7.6198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de657586d0_wrap_pyop2_kernel_prolong       4 0.0 3.5662e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb76164050_wrap_pyop2_kernel_prolong       4 0.0 7.6274e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb76190750_wrap_pyop2_kernel_prolong       4 0.0 4.2277e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd2b92fc10_wrap_pyop2_kernel_prolong       4 0.0 7.6243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd2b92d610_wrap_pyop2_kernel_prolong       4 0.0 2.4760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd2fc2c8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd2f188310_wrap_pyop2_kernel_prolong       4 0.0 4.4035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a000a43d0_wrap_pyop2_kernel_prolong       4 0.0 7.6390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a000a6050_wrap_pyop2_kernel_prolong       4 0.0 4.5438e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14846966ab10_wrap_pyop2_kernel_prolong       4 0.0 7.6112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484697e1dd0_wrap_pyop2_kernel_prolong       4 0.0 2.3389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fe5e6bd10_wrap_pyop2_kernel_prolong       4 0.0 7.6176e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fe62e5110_wrap_pyop2_kernel_prolong       4 0.0 3.1181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd8c6082d0_wrap_pyop2_kernel_prolong       4 0.0 7.6158e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd8c0c67d0_wrap_pyop2_kernel_prolong       4 0.0 2.8337e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150972937f10_wrap_pyop2_kernel_prolong       4 0.0 7.6352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150972935ed0_wrap_pyop2_kernel_prolong       4 0.0 2.9330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f47d5ba50_wrap_pyop2_kernel_prolong       4 0.0 7.6156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f47d86850_wrap_pyop2_kernel_prolong       4 0.0 2.7162e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526102a5a10_wrap_pyop2_kernel_prolong       4 0.0 7.6435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15261019bf10_wrap_pyop2_kernel_prolong       4 0.0 4.0123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb6a0aa310_wrap_pyop2_kernel_prolong       4 0.0 7.6472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb6a0ab9d0_wrap_pyop2_kernel_prolong       4 0.0 4.2316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150676e74d50_wrap_pyop2_kernel_prolong       4 0.0 7.6328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150676eabb50_wrap_pyop2_kernel_prolong       4 0.0 4.1392e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149465e17c50_wrap_pyop2_kernel_prolong       4 0.0 7.6275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149465396450_wrap_pyop2_kernel_prolong       4 0.0 3.3427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f066b67190_wrap_pyop2_kernel_prolong       4 0.0 7.6327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f066b66690_wrap_pyop2_kernel_prolong       4 0.0 3.3652e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463f8824a10_wrap_pyop2_kernel_prolong       4 0.0 7.6429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463f8825510_wrap_pyop2_kernel_prolong       4 0.0 3.9527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f717d66a10_wrap_pyop2_kernel_prolong       4 0.0 7.6333e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f717d64f90_wrap_pyop2_kernel_prolong       4 0.0 4.5789e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459ba65b4d0_wrap_pyop2_kernel_prolong       4 0.0 7.6301e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459ba659710_wrap_pyop2_kernel_prolong       4 0.0 4.9951e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470841ea8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470841ea890_wrap_pyop2_kernel_prolong       4 0.0 2.4712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460425cb090_wrap_pyop2_kernel_prolong       4 0.0 7.6183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146042840e50_wrap_pyop2_kernel_prolong       4 0.0 2.9440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14572af43bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6378e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14572a752bd0_wrap_pyop2_kernel_prolong       4 0.0 3.3011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502ff7a4f10_wrap_pyop2_kernel_prolong       4 0.0 7.6279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502ff576b50_wrap_pyop2_kernel_prolong       4 0.0 2.7541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484e7e53610_wrap_pyop2_kernel_prolong       4 0.0 7.6146e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484e7e87a90_wrap_pyop2_kernel_prolong       4 0.0 2.4831e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152721dc0f90_wrap_pyop2_kernel_prolong       4 0.0 7.6424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152721de4ad0_wrap_pyop2_kernel_prolong       4 0.0 4.0659e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521e2f8e190_wrap_pyop2_kernel_prolong       4 0.0 7.6274e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521e2f8dcd0_wrap_pyop2_kernel_prolong       4 0.0 2.4918e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f657d7ce50_wrap_pyop2_kernel_prolong       4 0.0 7.6248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f65ca17f90_wrap_pyop2_kernel_prolong       4 0.0 3.6525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6f4607dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6f462df10_wrap_pyop2_kernel_prolong       4 0.0 3.5585e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14652f10ef90_wrap_pyop2_kernel_prolong       4 0.0 7.6408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14652efc1e90_wrap_pyop2_kernel_prolong       4 0.0 4.0610e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495f6e30790_wrap_pyop2_kernel_prolong       4 0.0 7.6428e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495f6fa33d0_wrap_pyop2_kernel_prolong       4 0.0 4.0066e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14618ee7f750_wrap_pyop2_kernel_prolong       4 0.0 7.6320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14618f9b4fd0_wrap_pyop2_kernel_prolong       4 0.0 3.5482e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544f5219d90_wrap_pyop2_kernel_prolong       4 0.0 7.6356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544f5219610_wrap_pyop2_kernel_prolong       4 0.0 3.9135e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14877b617690_wrap_pyop2_kernel_prolong       4 0.0 7.6320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14877b614e10_wrap_pyop2_kernel_prolong       4 0.0 3.1879e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e11f344610_wrap_pyop2_kernel_prolong       4 0.0 7.6351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e11f345ed0_wrap_pyop2_kernel_prolong       4 0.0 2.9082e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487ee5839d0_wrap_pyop2_kernel_prolong       4 0.0 7.6432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487ee55df50_wrap_pyop2_kernel_prolong       4 0.0 3.7368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d24c45310_wrap_pyop2_kernel_prolong       4 0.0 7.6330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d24363610_wrap_pyop2_kernel_prolong       4 0.0 4.4856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d57c12bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d56562cd0_wrap_pyop2_kernel_prolong       4 0.0 3.7964e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2b312f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2b3035990_wrap_pyop2_kernel_prolong       4 0.0 2.5794e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e469004a50_wrap_pyop2_kernel_prolong       4 0.0 7.6385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4690053d0_wrap_pyop2_kernel_prolong       4 0.0 3.5989e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149de0570210_wrap_pyop2_kernel_prolong       4 0.0 7.6317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149de05ceb50_wrap_pyop2_kernel_prolong       4 0.0 4.5414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae6a8dc7d0_wrap_pyop2_kernel_prolong       4 0.0 7.6180e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae6a8c3d90_wrap_pyop2_kernel_prolong       4 0.0 3.5978e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea9fd41510_wrap_pyop2_kernel_prolong       4 0.0 7.6392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea9ff56dd0_wrap_pyop2_kernel_prolong       4 0.0 3.1951e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a78296fe90_wrap_pyop2_kernel_prolong       4 0.0 7.6387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a782996390_wrap_pyop2_kernel_prolong       4 0.0 2.8447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da82ca8790_wrap_pyop2_kernel_prolong       4 0.0 7.6433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da822b9950_wrap_pyop2_kernel_prolong       4 0.0 3.8518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4e8aa9dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4e8aaa390_wrap_pyop2_kernel_prolong       4 0.0 4.1976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b13dc6b090_wrap_pyop2_kernel_prolong       4 0.0 7.6879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b13de810d0_wrap_pyop2_kernel_prolong       4 0.0 2.2476e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457d5e69bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6876e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457d5c47350_wrap_pyop2_kernel_prolong       4 0.0 2.4718e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d854606510_wrap_pyop2_kernel_prolong       4 0.0 7.6862e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d854658310_wrap_pyop2_kernel_prolong       4 0.0 3.3673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac423d5d90_wrap_pyop2_kernel_prolong       4 0.0 7.6856e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac423fd9d0_wrap_pyop2_kernel_prolong       4 0.0 3.3202e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1eac90710_wrap_pyop2_kernel_prolong       4 0.0 7.6812e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1eacef150_wrap_pyop2_kernel_prolong       4 0.0 2.2257e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c52ab7cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6906e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c52a82050_wrap_pyop2_kernel_prolong       4 0.0 4.1968e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15499a973810_wrap_pyop2_kernel_prolong       4 0.0 7.6677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15499a999e10_wrap_pyop2_kernel_prolong       4 0.0 2.6316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f694b0ba50_wrap_pyop2_kernel_prolong       4 0.0 7.6764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f694a0b750_wrap_pyop2_kernel_prolong       4 0.0 2.9715e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f575468d0_wrap_pyop2_kernel_prolong       4 0.0 7.6839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f57546390_wrap_pyop2_kernel_prolong       4 0.0 2.7075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480dbbec9d0_wrap_pyop2_kernel_prolong       4 0.0 7.6810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480db1ae410_wrap_pyop2_kernel_prolong       4 0.0 2.7920e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6ed5d9010_wrap_pyop2_kernel_prolong       4 0.0 7.6846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6ecbd9d50_wrap_pyop2_kernel_prolong       4 0.0 3.4231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d81b0bc10_wrap_pyop2_kernel_prolong       4 0.0 7.6807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d819adc50_wrap_pyop2_kernel_prolong       4 0.0 4.6858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b79170cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6910e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b788359d0_wrap_pyop2_kernel_prolong       4 0.0 3.7740e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d72a19cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d72716d90_wrap_pyop2_kernel_prolong       4 0.0 2.2641e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15191fa07e10_wrap_pyop2_kernel_prolong       4 0.0 7.6690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15191fa04310_wrap_pyop2_kernel_prolong       4 0.0 2.4166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffc2707c10_wrap_pyop2_kernel_prolong       4 0.0 7.6794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffc2755090_wrap_pyop2_kernel_prolong       4 0.0 4.6280e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145aab2cd510_wrap_pyop2_kernel_prolong       4 0.0 7.6672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145aab2ce750_wrap_pyop2_kernel_prolong       4 0.0 2.4156e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcb8c6f950_wrap_pyop2_kernel_prolong       4 0.0 7.6719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcb8c6c250_wrap_pyop2_kernel_prolong       4 0.0 3.5059e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153def2dbb10_wrap_pyop2_kernel_prolong       4 0.0 7.6673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153def2da850_wrap_pyop2_kernel_prolong       4 0.0 3.8181e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd70dc4590_wrap_pyop2_kernel_prolong       4 0.0 7.6756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd70df2310_wrap_pyop2_kernel_prolong       4 0.0 2.9623e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e480ad150_wrap_pyop2_kernel_prolong       4 0.0 7.6735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e43e6df50_wrap_pyop2_kernel_prolong       4 0.0 4.0318e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466b8f2eed0_wrap_pyop2_kernel_prolong       4 0.0 7.6725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466b8f84bd0_wrap_pyop2_kernel_prolong       4 0.0 4.7163e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15514fdd3c10_wrap_pyop2_kernel_prolong       4 0.0 7.6671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15514fdd0fd0_wrap_pyop2_kernel_prolong       4 0.0 3.2669e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468801d6850_wrap_pyop2_kernel_prolong       4 0.0 7.6783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468801d5510_wrap_pyop2_kernel_prolong       4 0.0 3.7344e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cb2b9b6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cb2b99390_wrap_pyop2_kernel_prolong       4 0.0 3.7524e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f1cc2a450_wrap_pyop2_kernel_prolong       4 0.0 7.6702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f1cc29fd0_wrap_pyop2_kernel_prolong       4 0.0 4.2305e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c67e03dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.6685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c67de7d9d0_wrap_pyop2_kernel_prolong       4 0.0 2.4235e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e12e59310_wrap_pyop2_kernel_prolong       4 0.0 7.6694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e12e5b350_wrap_pyop2_kernel_prolong       4 0.0 2.0702e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15408ade48d0_wrap_pyop2_kernel_prolong       4 0.0 7.6787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15408a46c490_wrap_pyop2_kernel_prolong       4 0.0 2.6197e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aab2156410_wrap_pyop2_kernel_prolong       4 0.0 7.6733e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aab2155f50_wrap_pyop2_kernel_prolong       4 0.0 2.5513e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146620d2abd0_wrap_pyop2_kernel_prolong       4 0.0 7.6771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146620c02050_wrap_pyop2_kernel_prolong       4 0.0 2.6590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d69d2cb10_wrap_pyop2_kernel_prolong       4 0.0 7.6804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d69d2f490_wrap_pyop2_kernel_prolong       4 0.0 3.9340e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c4e815cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c4e5aa110_wrap_pyop2_kernel_prolong       4 0.0 3.4167e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149027cc0d10_wrap_pyop2_kernel_prolong       4 0.0 7.6770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14902726dc50_wrap_pyop2_kernel_prolong       4 0.0 2.0850e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482edc46fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482eda40ad0_wrap_pyop2_kernel_prolong       4 0.0 3.6218e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f667ca110_wrap_pyop2_kernel_prolong       4 0.0 7.6744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f66782110_wrap_pyop2_kernel_prolong       4 0.0 4.5002e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf76c6a610_wrap_pyop2_kernel_prolong       4 0.0 7.6816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf76a17550_wrap_pyop2_kernel_prolong       4 0.0 5.0811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e27392fad0_wrap_pyop2_kernel_prolong       4 0.0 7.6766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e27391a710_wrap_pyop2_kernel_prolong       4 0.0 3.3443e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e837951310_wrap_pyop2_kernel_prolong       4 0.0 7.6779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e837980510_wrap_pyop2_kernel_prolong       4 0.0 4.5620e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a97e859750_wrap_pyop2_kernel_prolong       4 0.0 7.6770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a97e858b90_wrap_pyop2_kernel_prolong       4 0.0 3.6703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483d690e210_wrap_pyop2_kernel_prolong       4 0.0 7.6673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483d6032350_wrap_pyop2_kernel_prolong       4 0.0 2.8217e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146407223d90_wrap_pyop2_kernel_prolong       4 0.0 7.6802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464070b6cd0_wrap_pyop2_kernel_prolong       4 0.0 4.0924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543c0241010_wrap_pyop2_kernel_prolong       4 0.0 7.6917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543bb703dd0_wrap_pyop2_kernel_prolong       4 0.0 4.9429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d48b6e7a50_wrap_pyop2_kernel_prolong       4 0.0 7.6695e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d48b968390_wrap_pyop2_kernel_prolong       4 0.0 3.0331e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146986d42450_wrap_pyop2_kernel_prolong       4 0.0 7.6721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146986b467d0_wrap_pyop2_kernel_prolong       4 0.0 2.6198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d317948bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3179a8f50_wrap_pyop2_kernel_prolong       4 0.0 2.7346e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15038c34c150_wrap_pyop2_kernel_prolong       4 0.0 7.6719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15038c34f150_wrap_pyop2_kernel_prolong       4 0.0 3.0439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e1b23f750_wrap_pyop2_kernel_prolong       4 0.0 7.6712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e1b26fc50_wrap_pyop2_kernel_prolong       4 0.0 2.8519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2dc389f50_wrap_pyop2_kernel_prolong       4 0.0 7.6836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2dc38abd0_wrap_pyop2_kernel_prolong       4 0.0 4.2752e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb52980a10_wrap_pyop2_kernel_prolong       4 0.0 7.6877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb51f7b990_wrap_pyop2_kernel_prolong       4 0.0 4.5877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148906cbfad0_wrap_pyop2_kernel_prolong       4 0.0 7.6804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148906cbd690_wrap_pyop2_kernel_prolong       4 0.0 4.2586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f10b89410_wrap_pyop2_kernel_prolong       4 0.0 7.6895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f102ae110_wrap_pyop2_kernel_prolong       4 0.0 4.7924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe68d45950_wrap_pyop2_kernel_prolong       4 0.0 7.6670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe68d2e090_wrap_pyop2_kernel_prolong       4 0.0 2.3862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14946e483650_wrap_pyop2_kernel_prolong       4 0.0 7.6728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14946e4ad3d0_wrap_pyop2_kernel_prolong       4 0.0 2.0504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5d9f6db50_wrap_pyop2_kernel_prolong       4 0.0 7.6859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5d9d8a110_wrap_pyop2_kernel_prolong       4 0.0 2.3798e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b12f13810_wrap_pyop2_kernel_prolong       4 0.0 7.6854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b13399050_wrap_pyop2_kernel_prolong       4 0.0 3.1492e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14934f17c110_wrap_pyop2_kernel_prolong       4 0.0 7.6814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14934f17cd10_wrap_pyop2_kernel_prolong       4 0.0 2.8163e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540de252b10_wrap_pyop2_kernel_prolong       4 0.0 7.6864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540dd984350_wrap_pyop2_kernel_prolong       4 0.0 4.4368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530f64e8d50_wrap_pyop2_kernel_prolong       4 0.0 7.6916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530f6553610_wrap_pyop2_kernel_prolong       4 0.0 4.0514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482325ea790_wrap_pyop2_kernel_prolong       4 0.0 7.6875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482325e8ad0_wrap_pyop2_kernel_prolong       4 0.0 3.3791e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456d56cf390_wrap_pyop2_kernel_prolong       4 0.0 7.6703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456d6131890_wrap_pyop2_kernel_prolong       4 0.0 4.3433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff4d7fa490_wrap_pyop2_kernel_prolong       4 0.0 7.6636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff4d7f9f10_wrap_pyop2_kernel_prolong       4 0.0 2.7734e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abbe30b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.6738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abbd981890_wrap_pyop2_kernel_prolong       4 0.0 4.3332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15514110a4d0_wrap_pyop2_kernel_prolong       4 0.0 7.6710e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551408c5590_wrap_pyop2_kernel_prolong       4 0.0 4.7394e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a93b345d0_wrap_pyop2_kernel_prolong       4 0.0 7.6759e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a93949390_wrap_pyop2_kernel_prolong       4 0.0 3.1862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547e9494590_wrap_pyop2_kernel_prolong       4 0.0 7.6699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547e6e0a710_wrap_pyop2_kernel_prolong       4 0.0 2.7602e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484b7818190_wrap_pyop2_kernel_prolong       4 0.0 7.6626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484b7841b50_wrap_pyop2_kernel_prolong       4 0.0 2.2185e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a8589250_wrap_pyop2_kernel_prolong       4 0.0 7.6660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a85b1990_wrap_pyop2_kernel_prolong       4 0.0 3.3505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b3efe2390_wrap_pyop2_kernel_prolong       4 0.0 7.6687e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b3f012c50_wrap_pyop2_kernel_prolong       4 0.0 3.1603e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149665aa2310_wrap_pyop2_kernel_prolong       4 0.0 7.6838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14966590d510_wrap_pyop2_kernel_prolong       4 0.0 2.8556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7e92fffd0_wrap_pyop2_kernel_prolong       4 0.0 7.6916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7e938a150_wrap_pyop2_kernel_prolong       4 0.0 4.2326e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b355713890_wrap_pyop2_kernel_prolong       4 0.0 7.6888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3557112d0_wrap_pyop2_kernel_prolong       4 0.0 3.0589e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517813b5490_wrap_pyop2_kernel_prolong       4 0.0 7.6644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151781ceb6d0_wrap_pyop2_kernel_prolong       4 0.0 2.7370e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f3187d110_wrap_pyop2_kernel_prolong       4 0.0 7.6689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f323a1710_wrap_pyop2_kernel_prolong       4 0.0 3.7504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549268eddd0_wrap_pyop2_kernel_prolong       4 0.0 7.6716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154926941290_wrap_pyop2_kernel_prolong       4 0.0 3.6493e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c74e43b390_wrap_pyop2_kernel_prolong       4 0.0 7.6897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c74e325610_wrap_pyop2_kernel_prolong       4 0.0 3.6056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a554844110_wrap_pyop2_kernel_prolong       4 0.0 7.6769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5547debd0_wrap_pyop2_kernel_prolong       4 0.0 4.0500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15167fdc5a10_wrap_pyop2_kernel_prolong       4 0.0 7.6994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15167fdc4e10_wrap_pyop2_kernel_prolong       4 0.0 5.2754e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490e167b290_wrap_pyop2_kernel_prolong       4 0.0 7.6796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490e16a43d0_wrap_pyop2_kernel_prolong       4 0.0 2.0422e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478e94ef310_wrap_pyop2_kernel_prolong       4 0.0 7.6788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478e94eeed0_wrap_pyop2_kernel_prolong       4 0.0 2.5535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5c28bf410_wrap_pyop2_kernel_prolong       4 0.0 7.6826e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5c28e9910_wrap_pyop2_kernel_prolong       4 0.0 4.3099e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15061825ad10_wrap_pyop2_kernel_prolong       4 0.0 7.6797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15061814ab50_wrap_pyop2_kernel_prolong       4 0.0 2.2198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15147b80a290_wrap_pyop2_kernel_prolong       4 0.0 7.6891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15147b832290_wrap_pyop2_kernel_prolong       4 0.0 3.6534e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d042451850_wrap_pyop2_kernel_prolong       4 0.0 7.6851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d042478450_wrap_pyop2_kernel_prolong       4 0.0 4.3391e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b62ceab90_wrap_pyop2_kernel_prolong       4 0.0 7.6610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b62f101d0_wrap_pyop2_kernel_prolong       4 0.0 2.6014e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3a3b8a450_wrap_pyop2_kernel_prolong       4 0.0 7.6702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3a3b8a650_wrap_pyop2_kernel_prolong       4 0.0 3.9080e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bedfd115d0_wrap_pyop2_kernel_prolong       4 0.0 7.6911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bedfd6d550_wrap_pyop2_kernel_prolong       4 0.0 4.4344e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c75f22bf10_wrap_pyop2_kernel_prolong       4 0.0 7.6924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c75efbc210_wrap_pyop2_kernel_prolong       4 0.0 4.3439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a6a977b90_wrap_pyop2_kernel_prolong       4 0.0 7.6830e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a6abf0ed0_wrap_pyop2_kernel_prolong       4 0.0 3.9353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150898108490_wrap_pyop2_kernel_prolong       4 0.0 7.6833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150893ee9750_wrap_pyop2_kernel_prolong       4 0.0 3.1471e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c627d8550_wrap_pyop2_kernel_prolong       4 0.0 7.6968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c62a6d290_wrap_pyop2_kernel_prolong       4 0.0 4.5746e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d152b3d90_wrap_pyop2_kernel_prolong       4 0.0 7.6833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d1519dad0_wrap_pyop2_kernel_prolong       4 0.0 3.4285e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbb8e7e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.6881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbb8e7d690_wrap_pyop2_kernel_prolong       4 0.0 3.4226e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548fb8abad0_wrap_pyop2_kernel_prolong       4 0.0 7.6937e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548fb8a9dd0_wrap_pyop2_kernel_prolong       4 0.0 4.5655e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465d6f80f10_wrap_pyop2_kernel_prolong       4 0.0 7.6693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465d6f6ff50_wrap_pyop2_kernel_prolong       4 0.0 3.6775e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14813b6b8d10_wrap_pyop2_kernel_prolong       4 0.0 7.6870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14813b8f66d0_wrap_pyop2_kernel_prolong       4 0.0 4.5731e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edb11a88d0_wrap_pyop2_kernel_prolong       4 0.0 7.6731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edb11a8fd0_wrap_pyop2_kernel_prolong       4 0.0 3.0657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149448274610_wrap_pyop2_kernel_prolong       4 0.0 7.6673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494482a1410_wrap_pyop2_kernel_prolong       4 0.0 3.0794e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee0f413a90_wrap_pyop2_kernel_prolong       4 0.0 7.6852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee0f41bf50_wrap_pyop2_kernel_prolong       4 0.0 3.9371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151616ddd590_wrap_pyop2_kernel_prolong       4 0.0 7.6956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151616fed7d0_wrap_pyop2_kernel_prolong       4 0.0 4.7044e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c928aff950_wrap_pyop2_kernel_prolong       4 0.0 7.6737e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9281619d0_wrap_pyop2_kernel_prolong       4 0.0 4.3581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15417183e050_wrap_pyop2_kernel_prolong       4 0.0 7.6691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15417183d490_wrap_pyop2_kernel_prolong       4 0.0 3.8607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d46dc6df50_wrap_pyop2_kernel_prolong       4 0.0 7.6803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d46dc6d8d0_wrap_pyop2_kernel_prolong       4 0.0 4.1690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b83b99eb50_wrap_pyop2_kernel_prolong       4 0.0 7.6781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b83b9c6d90_wrap_pyop2_kernel_prolong       4 0.0 5.5175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 3.4718e-02 4.1 0.00e+00 0.0 3.3e+05 4.0e+00 2.2e+02  0  0  3  0  2   0  0  4  0  8    -0
SFSetGraph           225 1.0 5.3971e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 4.3183e-02 2.0 0.00e+00 0.0 6.6e+05 1.0e+02 2.2e+02  0  0  6  0  2   0  0  9  0  8    -0
SFPack            814323 1.1 1.2296e+00 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          814323 1.1 4.8519e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1563 1.0 9.5398e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             12503 1.0 3.4716e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             3126 1.0 1.5706e+00 1.5 1.44e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 172425
VecAYPX             3126 1.0 1.9905e+00 3.0 7.20e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 68023
VecScatterBegin   814323 1.1 9.4731e+00 1.4 0.00e+00 0.0 5.8e+06 6.8e+04 0.0e+00  2  0 49 33  0   5  0 78 100  0    -0
VecScatterEnd     814323 1.1 1.7198e+01 28.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
MatMult             3126 1.0 8.0386e+01 1.4 5.11e+10 1.2 3.5e+06 1.1e+05 0.0e+00 14  9 30 33  0  41 56 47 100  0 119102
MatMultAdd          1563 1.0 4.5463e+00 1.4 2.16e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 89350
MatMultTranspose    1563 1.0 3.0905e+00 2.2 2.16e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 131438
MatSolve          401691 1.1 7.0347e+01 1.5 2.55e+10 1.2 3.9e+06 2.8e+02 1.1e+03 12  5 34  0 11  34 28 53  0 42 67604
MatLUFactorNum     27520 1.1 6.8583e+00 1.4 7.88e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  9  0  0  0 215957
MatResidual         1563 1.0 4.4385e+01 1.6 2.59e+10 1.2 1.7e+06 1.1e+05 0.0e+00  8  5 15 16  0  22 29 23 50  0 109380
MatAssemblyBegin   27520 1.1 5.9560e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     27520 1.1 6.7992e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     215 1.0 1.5858e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
PCSetUp            27735 1.1 2.2633e+01 1.3 7.88e+09 1.1 0.0e+00 0.0e+00 0.0e+00  4  1  0  0  0  12  9  0  0  0 65441
PCApply             4689 1.0 1.0330e+02 1.4 3.34e+10 1.2 3.9e+06 2.8e+02 1.1e+03 19  6 34  0 11  53 37 53  0 42 60376
PCApplyOnBlocks   400128 1.1 6.0029e+01 1.7 3.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00 10  6  0  0  0  27 36  0  0  0 103439
KSPSetUp           27521 1.1 4.6452e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            4689 1.0 1.3988e+02 1.2 6.07e+10 1.2 5.7e+06 3.4e+04 2.7e+03 26 11 49 17 27  75 67 77 50 100 81229
MGSmooth Level 0    1563 1.0 2.7093e+01 1.9 1.04e+09 31.7 3.9e+06 2.8e+02 2.7e+03  4  0 34  0 27  11  0 53  0 100  1015
MGSmooth Level 1    3126 1.0 1.2466e+02 1.3 6.04e+10 1.2 1.7e+06 1.1e+05 0.0e+00 22 11 15 16  0  63 67 23 50  0 90924
MGResid Level 1     1563 1.0 4.4390e+01 1.6 2.59e+10 1.2 1.7e+06 1.1e+05 0.0e+00  8  5 15 16  0  22 29 23 50  0 109368
MGInterp Level 1    3126 1.0 7.3886e+00 1.5 4.32e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   4  5  0  0  0 109956
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
         PetscRandom    10             10
           Index Set  2803           2803
   IS L to G Mapping   319            319
             Section   472            472
   Star Forest Graph   502            727
              Vector  1280           1279
              Matrix   704            704
      Preconditioner   118            118
       Krylov Solver   126            126
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   120            120
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   175            175
           Weak Form   175            175
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   450            450
   Star Forest Graph   225              0
              Vector   227            228
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 8.6662e-06
Average time for zero size MPI_Send(): 2.46697e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_linesmooth/sweep.profile # (source: code)
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

