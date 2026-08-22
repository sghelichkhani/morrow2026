****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0646.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:41:00 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.760e+02     1.000   9.760e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.240e+12     1.190   1.172e+12  1.219e+14
Flops/sec:            1.270e+09     1.190   1.201e+09  1.249e+11
MPI Msg Count:        8.417e+04     3.028   5.916e+04  6.153e+06
MPI Msg Len (bytes):  9.938e+09     2.995   1.185e+05  7.291e+11
MPI Reductions:       1.173e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 6.0056e+02  61.5%  9.5189e+13  78.1%  2.613e+06  42.5%  1.768e+05       63.4%  9.632e+03  82.1%
 1:        MG Apply: 3.7541e+02  38.5%  2.6736e+13  21.9%  3.540e+06  57.5%  7.547e+04       36.6%  2.081e+03  17.7%

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

BuildTwoSided       1133 1.0 4.6874e+01 4.7 0.00e+00 0.0 8.9e+04 4.0e+00 1.1e+03  3  0  1  0 10   4  0  3  0 12    -0
BuildTwoSidedF      1036 1.0 4.6369e+01 4.7 0.00e+00 0.0 1.1e+05 1.5e+06 1.0e+03  3  0  2 22  9   4  0  4 34 11    -0
SFSetGraph           104 1.0 7.1454e-03 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 9.4986e-01 57.3 0.00e+00 0.0 6.9e+04 1.1e+03 9.7e+01  0  0  1  0  1   0  0  3  0  1    -0
SFBcastBegin         850 1.0 3.9084e-01 3.5 0.00e+00 0.0 4.2e+05 8.7e+04 0.0e+00  0  0  7  5  0   0  0 16  8  0    -0
SFBcastEnd           850 1.0 1.3539e+01 101.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        322 1.0 6.3848e-02 17.8 0.00e+00 0.0 1.6e+05 1.1e+05 0.0e+00  0  0  3  2  0   0  0  6  4  0    -0
SFReduceEnd          322 1.0 3.4279e+00 71.1 3.03e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   649
SFFetchOpBegin         6 1.0 3.1736e-05 3.8 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.8136e-04 8.1 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.7779e-03 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.1242e-03 1.2 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  0   0  0  2  0  1    -0
SFSectionSF           51 1.0 3.2508e-03 1.9 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
SFRemoteOff            2 1.0 7.8645e-05 2.0 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4495 1.0 1.6139e+00 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4501 1.0 1.7086e-01 16.3 3.03e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13026
VecDot               206 1.0 8.0836e-01 4.6 1.78e+08 1.2 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  2   0  0  0  0  2 22077
VecMDot             3111 1.0 3.5938e+01 3.0 1.26e+10 1.2 0.0e+00 0.0e+00 3.1e+03  2  1  0  0 27   3  1  0  0 32 35261
VecNorm             4010 1.0 1.5321e+01 3.8 3.46e+09 1.2 0.0e+00 0.0e+00 4.0e+03  1  0  0  0 34   1  0  0  0 42 22674
VecScale            3523 1.0 1.3322e+00 1.3 1.52e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 114547
VecCopy             1669 1.0 2.3168e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               824 1.0 7.1109e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              412 1.0 7.1676e-01 1.2 3.56e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 49796
VecWAXPY             206 1.0 4.3419e-01 1.2 8.90e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 20551
VecMAXPY            3523 1.0 2.0096e+01 1.2 1.53e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  2  0  0  0 76471
VecScatterBegin     3317 1.0 1.3529e+00 3.0 0.00e+00 0.0 1.7e+06 1.2e+05 0.0e+00  0  0 28 29  0   0  0 67 45  0    -0
VecScatterEnd       3317 1.0 2.1005e+01 55.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       412 1.0 3.1961e-01 1.5 3.56e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 111672
VecReduceComm        206 1.0 2.8533e-01 88.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2266 1.0 1.1370e+01 3.7 2.94e+09 1.2 0.0e+00 0.0e+00 2.3e+03  1  0  0  0 19   1  0  0  0 24 25897
MatMult             3317 1.0 1.4088e+02 1.1 1.02e+11 1.2 1.7e+06 1.2e+05 0.0e+00 14  8 28 29  0  22 11 67 45  0 72112
MatSolve            2266 1.0 9.5066e+01 1.2 6.77e+10 1.2 0.0e+00 0.0e+00 0.0e+00  9  6  0  0  0  15  7  0  0  0 70734
MatLUFactorSym         1 1.0 2.3154e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       412 1.0 4.1469e+01 1.2 5.63e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   6  6  0  0  0 132629
MatILUFactorSym        1 1.0 1.6105e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1497 1.0 4.6392e+01 2.9 0.00e+00 0.0 1.1e+05 1.5e+06 1.0e+03  3  0  2 22  9   5  0  4 34 11    -0
MatAssemblyEnd      1497 1.0 1.0555e+01 11.3 2.31e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0   929
MatGetRowIJ            1 1.0 5.3250e-06 41.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.6864e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       412 1.0 7.5381e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.4446e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3601e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        412 1.0 3.6779e+00 1.1 6.41e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 173958
MatPtAPSymbolic        1 1.0 2.0947e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       206 1.0 2.6553e+01 1.0 2.56e+10 1.2 1.1e+05 3.6e+05 2.1e+02  3  2  2  5  2   4  3  4  8  2 96392
MatGetLocalMat       206 1.0 1.6178e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        206 1.0 7.8791e-01 1.9 0.00e+00 0.0 1.1e+05 3.6e+05 0.0e+00  0  0  2  5  0   0  0  4  9  0    -0
MatSetPreallCOO       32 1.0 6.0840e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.6097e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              206 1.0 2.7481e+02 1.0 2.37e+11 1.2 1.2e+06 1.4e+05 4.8e+03 28 19 19 23 41  46 25 46 37 50 85686
PCApply             1051 1.0 3.7991e+02 1.0 2.68e+11 1.2 3.5e+06 7.5e+04 2.1e+03 38 22 58 37 18 Multiple stages 70373
PCApplyOnBlocks     2266 1.0 9.5097e+01 1.2 6.77e+10 1.2 0.0e+00 0.0e+00 0.0e+00  9  6  0  0  0  15  7  0  0  0 70712
KSPSetUp             206 1.0 2.1524e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             206 1.0 4.3253e+02 1.0 3.09e+11 1.2 4.1e+06 8.2e+04 4.4e+03 44 25 66 46 37 Multiple stages 71204
KSPGMRESOrthog      3111 1.0 4.9627e+01 1.8 2.53e+10 1.2 0.0e+00 0.0e+00 3.1e+03  4  2  0  0 27   6  3  0  0 32 51070
DMRefine               2 1.0 2.5538e-02 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     9
DMPlexCreateGmsh       1 1.0 1.3094e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.0584e+00 414.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 4.5362e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.4605e-02 1.1 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  2   0  0  3  0  2    -0
DMPlexPartSelf         1 1.0 1.2612e-03 512.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 6.7576e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.2129e-03 1.2 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 8.2765e-04 4.2 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.4503e-03 4.2 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.8004e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.1840e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.7780e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 5.2991e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  1   0  0  1  0  2    -0
DMPlexDistOvrlp        3 1.0 9.4765e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexDistField        7 1.0 3.4696e-03 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 3.3025e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.4044e-04 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0845e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.0939e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1860e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.1285e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.2442e-04 2.0 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.3037e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.4204e-04 1.6 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 9.1409e+02 1.0 1.24e+12 1.2 5.9e+06 1.2e+05 1.1e+04 94 100 97 100 93 Multiple stages 133373
SNESSetUp              1 1.0 5.9476e-05 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     281 1.0 3.1622e+01 1.1 2.72e+11 1.2 3.3e+05 1.2e+05 0.0e+00  3 22  5  6  0   5 28 13  9  0 832677
SNESJacobianEval     206 1.0 1.6470e+02 1.0 4.18e+11 1.2 2.2e+05 7.9e+05 8.2e+02 17 33  4 23  7  27 43  8 37  9 245926
SNESLineSearch       206 1.0 2.6240e+01 1.0 2.07e+11 1.2 3.2e+05 1.2e+05 8.2e+02  3 16  5  5  7   4 21 12  8  9 763424
DualSpaceSetUp         8 1.0 5.3424e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.0852e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 9.7382e+02 1.0 1.24e+12 1.2 6.2e+06 1.2e+05 1.2e+04 100 100 100 100 100 Multiple stages 125203
firedrake.__init__       1 1.0 1.0345e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 6.1574e+00 54.5 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  3  0  4   1  0  6  0  5    -0
firedrake.mesh._from_gmsh       1 1.0 6.0591e+00 413.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.3748e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.8550e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.6087e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.0130e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 2.7266e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.6016e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 2.5401e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.2914e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.2804e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 8.0453e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.2282e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.6446e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.2982e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 1.9258e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.6832e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2680e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.0520e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2710e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.6185e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 9.4441e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2249 1.0 1.7079e+02 1.2 6.91e+11 1.2 3.1e+05 1.2e+05 3.2e+01 16 55  5  5  0  27 70 12  8  0 391314
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.1930e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4498 1.0 2.4400e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0557e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.5380e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.3893e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.3668e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.3667e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 8.9191e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.7345e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2249 1.0 6.8539e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2249 1.0 5.9520e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.0330e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 4.6568e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   314
firedrake.interpolation.interpolate      13 1.0 4.9443e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.9212e+00 1.0 9.02e+07 1.2 1.4e+04 4.2e+04 3.7e+01  1  0  0  0  0   1  0  1  0  0  1527
firedrake.formmanipulation.split_form      14 1.0 4.8775e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.6239e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5599e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0128e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     583 1.0 1.5319e+00 7.3 0.00e+00 0.0 3.1e+05 1.2e+05 4.0e+00  0  0  5  5  0   0  0 12  8  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4176e+00 1.0 9.02e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1669
firedrake.halo.Halo.global_to_local_end     583 1.0 1.2705e+01 145.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 1.1993e+00 19.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8d54e35d0_wrap_pyop2_kernel_prolong       4 0.0 7.3924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8d54e3bd0_wrap_pyop2_kernel_prolong       4 0.0 5.5551e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9223e+00 1.0 7.30e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  1866
firedrake.function.Function.assign     314 1.0 2.0065e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.9234e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2151e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6745e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.7721e-05 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4002e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.2107e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1165e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.3052e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.5708e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.9990e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1967e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1967e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 3.9068e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.9366e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 9.1437e+02 1.0 1.24e+12 1.2 5.9e+06 1.2e+05 1.1e+04 94 100 97 100 94 Multiple stages 133333
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.3456e-01 1216.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.4600e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.3451e-01 1464.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.3447e-01 1680.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     562 1.0 7.7907e+00 1.4 6.90e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 888184
Parloop_Cells_wrap_form0_exterior_facet_top_integral     562 1.0 9.8894e-01 1.0 8.97e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   909
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     562 1.0 1.2408e+00 1.1 6.64e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9449
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     562 1.0 5.5234e+00 1.2 6.63e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  7  0  0  0 1203212
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     562 1.0 1.1536e+01 1.3 1.37e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   2 13  0  0  0 1105322
firedrake.halo.Halo.local_to_global_begin     281 1.0 7.1521e-02 7.4 0.00e+00 0.0 1.5e+05 1.2e+05 0.0e+00  0  0  2  2  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     281 1.0 3.4305e+00 68.4 3.03e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   649
Parloop_Cells_wrap_form00_cell_integral     412 1.0 2.8366e+01 1.4 9.44e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   4 10  0  0  0 333696
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     412 1.0 1.9170e+00 1.7 4.95e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4565
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     412 1.0 3.4697e+01 1.2 1.25e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 13  0  0  0 360927
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     412 1.0 7.4602e+01 1.3 1.99e+11 1.3 0.0e+00 0.0e+00 0.0e+00  7 15  0  0  0  11 19  0  0  0 247934
firedrake.dmhooks.get_function_space       1 1.0 1.5080e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 4.9469e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      206 1.0 8.3392e+00 1.1 7.75e+07 15.5 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   243
MGSetup Level 1      206 1.0 2.3902e+02 1.0 2.12e+11 1.2 1.1e+06 1.2e+05 4.3e+03 24 17 18 18 37  40 22 41 28 45 87798
firedrake.constant.Constant.assign      75 1.0 3.6420e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7fe681850_wrap_pyop2_kernel_prolong       4 0.0 7.3874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7fe667bd0_wrap_pyop2_kernel_prolong       4 0.0 5.1683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5f664d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.3982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5f5c5e190_wrap_pyop2_kernel_prolong       4 0.0 6.5452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f696a61d0_wrap_pyop2_kernel_prolong       4 0.0 7.3895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f696739d0_wrap_pyop2_kernel_prolong       4 0.0 6.3871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497a0682fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497a059db90_wrap_pyop2_kernel_prolong       4 0.0 6.5985e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14904304a310_wrap_pyop2_kernel_prolong       4 0.0 7.3999e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149043049250_wrap_pyop2_kernel_prolong       4 0.0 7.6162e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153881a028d0_wrap_pyop2_kernel_prolong       4 0.0 7.3930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538818a19d0_wrap_pyop2_kernel_prolong       4 0.0 6.0661e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee0a87c7d0_wrap_pyop2_kernel_prolong       4 0.0 7.3897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee0a91f450_wrap_pyop2_kernel_prolong       4 0.0 5.2761e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e064400d0_wrap_pyop2_kernel_prolong       4 0.0 7.3859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e06689510_wrap_pyop2_kernel_prolong       4 0.0 6.7109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15531fa9cf50_wrap_pyop2_kernel_prolong       4 0.0 7.3783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15531ee86a50_wrap_pyop2_kernel_prolong       4 0.0 5.0756e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501c3d66d10_wrap_pyop2_kernel_prolong       4 0.0 7.4006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501c3d71e50_wrap_pyop2_kernel_prolong       4 0.0 7.5631e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d540a5590_wrap_pyop2_kernel_prolong       4 0.0 7.3819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d540a7a10_wrap_pyop2_kernel_prolong       4 0.0 6.6364e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149676f22890_wrap_pyop2_kernel_prolong       4 0.0 7.3931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149676dd8f50_wrap_pyop2_kernel_prolong       4 0.0 6.5961e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149497032b10_wrap_pyop2_kernel_prolong       4 0.0 7.3795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494970aed50_wrap_pyop2_kernel_prolong       4 0.0 5.2939e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dec85be450_wrap_pyop2_kernel_prolong       4 0.0 7.3857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dec85bd850_wrap_pyop2_kernel_prolong       4 0.0 6.2886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149534e33a50_wrap_pyop2_kernel_prolong       4 0.0 7.3800e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495357fde50_wrap_pyop2_kernel_prolong       4 0.0 6.8485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521356d7310_wrap_pyop2_kernel_prolong       4 0.0 7.3880e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152135b8ad10_wrap_pyop2_kernel_prolong       4 0.0 5.4093e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15149099a150_wrap_pyop2_kernel_prolong       4 0.0 7.3821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151490896b10_wrap_pyop2_kernel_prolong       4 0.0 7.0412e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a3ee234d0_wrap_pyop2_kernel_prolong       4 0.0 7.3803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a3ee498d0_wrap_pyop2_kernel_prolong       4 0.0 6.4559e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d87703aed0_wrap_pyop2_kernel_prolong       4 0.0 7.3779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d877254150_wrap_pyop2_kernel_prolong       4 0.0 5.9332e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150119845dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150119845850_wrap_pyop2_kernel_prolong       4 0.0 6.2123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152be7e7a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.3984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152be7e79bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9068e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d30c70ccd0_wrap_pyop2_kernel_prolong       4 0.0 7.3953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d30c5916d0_wrap_pyop2_kernel_prolong       4 0.0 6.9484e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507ec9ff310_wrap_pyop2_kernel_prolong       4 0.0 7.3922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507ec855b50_wrap_pyop2_kernel_prolong       4 0.0 6.5495e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b13b9fb10_wrap_pyop2_kernel_prolong       4 0.0 7.3887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b13840b90_wrap_pyop2_kernel_prolong       4 0.0 7.2484e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498f363b590_wrap_pyop2_kernel_prolong       4 0.0 7.3879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498f3639790_wrap_pyop2_kernel_prolong       4 0.0 7.8693e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f108bfb490_wrap_pyop2_kernel_prolong       4 0.0 7.3765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f108bbb090_wrap_pyop2_kernel_prolong       4 0.0 5.1126e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c625a4c050_wrap_pyop2_kernel_prolong       4 0.0 7.3841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c625ac4c10_wrap_pyop2_kernel_prolong       4 0.0 5.5978e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f267cf5790_wrap_pyop2_kernel_prolong       4 0.0 7.3901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26723a890_wrap_pyop2_kernel_prolong       4 0.0 6.8342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb96b0fd90_wrap_pyop2_kernel_prolong       4 0.0 7.3903e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb96ae80d0_wrap_pyop2_kernel_prolong       4 0.0 6.0127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cda411ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cda4133d0_wrap_pyop2_kernel_prolong       4 0.0 7.2691e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469cca6ec50_wrap_pyop2_kernel_prolong       4 0.0 7.3938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469cc96c990_wrap_pyop2_kernel_prolong       4 0.0 5.9209e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150066d71e90_wrap_pyop2_kernel_prolong       4 0.0 7.3882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150066d73dd0_wrap_pyop2_kernel_prolong       4 0.0 5.5168e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d8eabf450_wrap_pyop2_kernel_prolong       4 0.0 7.3790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d8eb3d150_wrap_pyop2_kernel_prolong       4 0.0 5.9065e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15512b354650_wrap_pyop2_kernel_prolong       4 0.0 7.3886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15512b357850_wrap_pyop2_kernel_prolong       4 0.0 5.9447e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475e62d3510_wrap_pyop2_kernel_prolong       4 0.0 7.3916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475e65803d0_wrap_pyop2_kernel_prolong       4 0.0 7.0737e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f39091790_wrap_pyop2_kernel_prolong       4 0.0 7.3930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f39090f90_wrap_pyop2_kernel_prolong       4 0.0 7.2357e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b4139950_wrap_pyop2_kernel_prolong       4 0.0 7.3953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538afb369d0_wrap_pyop2_kernel_prolong       4 0.0 7.4579e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aff048d590_wrap_pyop2_kernel_prolong       4 0.0 7.3929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aff023e590_wrap_pyop2_kernel_prolong       4 0.0 7.8908e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154457876b50_wrap_pyop2_kernel_prolong       4 0.0 7.3876e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544578f7c10_wrap_pyop2_kernel_prolong       4 0.0 5.2980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1dd6c4b90_wrap_pyop2_kernel_prolong       4 0.0 7.3796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1dd4f5550_wrap_pyop2_kernel_prolong       4 0.0 5.9848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471afb87bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471afbc42d0_wrap_pyop2_kernel_prolong       4 0.0 6.8747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461638d1ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461638d1050_wrap_pyop2_kernel_prolong       4 0.0 5.6669e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a19e0ee50_wrap_pyop2_kernel_prolong       4 0.0 7.3862e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a19d31910_wrap_pyop2_kernel_prolong       4 0.0 6.5302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f701393310_wrap_pyop2_kernel_prolong       4 0.0 7.3919e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7012ddd90_wrap_pyop2_kernel_prolong       4 0.0 6.8200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dec4aa5e90_wrap_pyop2_kernel_prolong       4 0.0 7.3897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dec4aa6710_wrap_pyop2_kernel_prolong       4 0.0 7.2318e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1cb1a0dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1cbaf7790_wrap_pyop2_kernel_prolong       4 0.0 6.8455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14877042fb90_wrap_pyop2_kernel_prolong       4 0.0 7.3889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148770f7ab10_wrap_pyop2_kernel_prolong       4 0.0 6.7409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5f0daffd0_wrap_pyop2_kernel_prolong       4 0.0 7.3910e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5f0c2ce50_wrap_pyop2_kernel_prolong       4 0.0 6.6422e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528ba8e8890_wrap_pyop2_kernel_prolong       4 0.0 7.3874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528ba83bad0_wrap_pyop2_kernel_prolong       4 0.0 7.1980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1af6702d0_wrap_pyop2_kernel_prolong       4 0.0 7.3911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1afe843d0_wrap_pyop2_kernel_prolong       4 0.0 7.0521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c379d375d0_wrap_pyop2_kernel_prolong       4 0.0 7.3975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c379d4be90_wrap_pyop2_kernel_prolong       4 0.0 6.8647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e80467910_wrap_pyop2_kernel_prolong       4 0.0 7.3669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e804674d0_wrap_pyop2_kernel_prolong       4 0.0 5.6083e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a35082410_wrap_pyop2_kernel_prolong       4 0.0 7.3753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a35081b10_wrap_pyop2_kernel_prolong       4 0.0 6.1035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147532d76c90_wrap_pyop2_kernel_prolong       4 0.0 7.3941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147532ebded0_wrap_pyop2_kernel_prolong       4 0.0 7.8938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aa7109fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3885e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148aa7132550_wrap_pyop2_kernel_prolong       4 0.0 6.5724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146147929910_wrap_pyop2_kernel_prolong       4 0.0 7.3773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461479a5ad0_wrap_pyop2_kernel_prolong       4 0.0 6.4543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491a559fa90_wrap_pyop2_kernel_prolong       4 0.0 7.3716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491a55a8950_wrap_pyop2_kernel_prolong       4 0.0 5.8503e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe1e56ff50_wrap_pyop2_kernel_prolong       4 0.0 7.3663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe1e5206d0_wrap_pyop2_kernel_prolong       4 0.0 5.2363e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147316a75510_wrap_pyop2_kernel_prolong       4 0.0 7.3839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147316a88bd0_wrap_pyop2_kernel_prolong       4 0.0 5.3756e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149eabaded90_wrap_pyop2_kernel_prolong       4 0.0 7.3770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149eaa21e4d0_wrap_pyop2_kernel_prolong       4 0.0 5.8924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146153573990_wrap_pyop2_kernel_prolong       4 0.0 7.3860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461532f7a10_wrap_pyop2_kernel_prolong       4 0.0 6.9774e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b2db597d0_wrap_pyop2_kernel_prolong       4 0.0 7.3771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b2da19dd0_wrap_pyop2_kernel_prolong       4 0.0 6.5489e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd7a3930d0_wrap_pyop2_kernel_prolong       4 0.0 7.3885e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd7a264c50_wrap_pyop2_kernel_prolong       4 0.0 7.3609e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ce5afe090_wrap_pyop2_kernel_prolong       4 0.0 7.3795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ce52ce950_wrap_pyop2_kernel_prolong       4 0.0 8.1959e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c89429450_wrap_pyop2_kernel_prolong       4 0.0 7.3680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c88b4f3d0_wrap_pyop2_kernel_prolong       4 0.0 5.5696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fecb50d10_wrap_pyop2_kernel_prolong       4 0.0 7.3852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fec0e6b10_wrap_pyop2_kernel_prolong       4 0.0 5.9518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c92822fc50_wrap_pyop2_kernel_prolong       4 0.0 7.3731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c928219b10_wrap_pyop2_kernel_prolong       4 0.0 5.4897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f598e71e10_wrap_pyop2_kernel_prolong       4 0.0 7.3814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f598e71490_wrap_pyop2_kernel_prolong       4 0.0 6.4630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0eae0fe10_wrap_pyop2_kernel_prolong       4 0.0 7.3845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0eae0d550_wrap_pyop2_kernel_prolong       4 0.0 5.7710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac0c2887d0_wrap_pyop2_kernel_prolong       4 0.0 7.3851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac07f6d650_wrap_pyop2_kernel_prolong       4 0.0 7.9094e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a47b47e90_wrap_pyop2_kernel_prolong       4 0.0 7.3706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a47da1a90_wrap_pyop2_kernel_prolong       4 0.0 5.9412e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503b28482d0_wrap_pyop2_kernel_prolong       4 0.0 7.3712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503b2ab96d0_wrap_pyop2_kernel_prolong       4 0.0 6.6791e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15110603f110_wrap_pyop2_kernel_prolong       4 0.0 7.3823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151105d8fcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542de4d1210_wrap_pyop2_kernel_prolong       4 0.0 7.3682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542de35e690_wrap_pyop2_kernel_prolong       4 0.0 5.7414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e854543090_wrap_pyop2_kernel_prolong       4 0.0 7.3854e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e84fb2d5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5737e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145629a9bdd0_wrap_pyop2_kernel_prolong       4 0.0 7.3789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145629a9b550_wrap_pyop2_kernel_prolong       4 0.0 7.2844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518c1aac290_wrap_pyop2_kernel_prolong       4 0.0 7.3982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518c1abe690_wrap_pyop2_kernel_prolong       4 0.0 6.4416e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463472a3750_wrap_pyop2_kernel_prolong       4 0.0 7.3692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146347289990_wrap_pyop2_kernel_prolong       4 0.0 5.1281e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15197f814110_wrap_pyop2_kernel_prolong       4 0.0 7.3750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15197f841450_wrap_pyop2_kernel_prolong       4 0.0 7.0080e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ec3b6aed0_wrap_pyop2_kernel_prolong       4 0.0 7.3753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ec2719890_wrap_pyop2_kernel_prolong       4 0.0 6.9863e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b97472590_wrap_pyop2_kernel_prolong       4 0.0 7.3975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b97471410_wrap_pyop2_kernel_prolong       4 0.0 6.4921e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a243bfe90_wrap_pyop2_kernel_prolong       4 0.0 7.3794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a1f6f9710_wrap_pyop2_kernel_prolong       4 0.0 6.3956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15215e55acd0_wrap_pyop2_kernel_prolong       4 0.0 7.3760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15215e75a590_wrap_pyop2_kernel_prolong       4 0.0 6.9849e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15095f000bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15095f048c10_wrap_pyop2_kernel_prolong       4 0.0 5.5364e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1ea379490_wrap_pyop2_kernel_prolong       4 0.0 7.3747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1ea38fad0_wrap_pyop2_kernel_prolong       4 0.0 6.6188e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460d07e2910_wrap_pyop2_kernel_prolong       4 0.0 7.3787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460d0130750_wrap_pyop2_kernel_prolong       4 0.0 6.3852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9f9f1abd0_wrap_pyop2_kernel_prolong       4 0.0 7.3827e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9f9eeee10_wrap_pyop2_kernel_prolong       4 0.0 6.8820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9b7a67ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3772e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9b7a28890_wrap_pyop2_kernel_prolong       4 0.0 7.3427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150556f99090_wrap_pyop2_kernel_prolong       4 0.0 7.3712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150556f47290_wrap_pyop2_kernel_prolong       4 0.0 6.3044e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506e0977550_wrap_pyop2_kernel_prolong       4 0.0 7.3833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506e09742d0_wrap_pyop2_kernel_prolong       4 0.0 6.3567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ec247b850_wrap_pyop2_kernel_prolong       4 0.0 7.3707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ec2713bd0_wrap_pyop2_kernel_prolong       4 0.0 5.4302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d73dc76950_wrap_pyop2_kernel_prolong       4 0.0 7.3835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d73def6b10_wrap_pyop2_kernel_prolong       4 0.0 7.4767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d86197050_wrap_pyop2_kernel_prolong       4 0.0 7.3743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d85fce410_wrap_pyop2_kernel_prolong       4 0.0 6.1748e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493e1c0b350_wrap_pyop2_kernel_prolong       4 0.0 7.3798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493e1a81690_wrap_pyop2_kernel_prolong       4 0.0 7.1127e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f28b7950_wrap_pyop2_kernel_prolong       4 0.0 7.3868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f1632f10_wrap_pyop2_kernel_prolong       4 0.0 6.5509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb28c5490_wrap_pyop2_kernel_prolong       4 0.0 7.3832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb29f33d0_wrap_pyop2_kernel_prolong       4 0.0 7.2166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14caf58d6e50_wrap_pyop2_kernel_prolong       4 0.0 7.3762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14caf5745290_wrap_pyop2_kernel_prolong       4 0.0 6.6199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a4a8794d0_wrap_pyop2_kernel_prolong       4 0.0 7.3685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a4b22bcd0_wrap_pyop2_kernel_prolong       4 0.0 5.3551e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478f8e5b590_wrap_pyop2_kernel_prolong       4 0.0 7.3896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478f9522f90_wrap_pyop2_kernel_prolong       4 0.0 7.9850e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15298a2d2f90_wrap_pyop2_kernel_prolong       4 0.0 7.3731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15298a061250_wrap_pyop2_kernel_prolong       4 0.0 6.4111e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d0ce37890_wrap_pyop2_kernel_prolong       4 0.0 7.3843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d0cc45cd0_wrap_pyop2_kernel_prolong       4 0.0 8.1199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bee74fb90_wrap_pyop2_kernel_prolong       4 0.0 7.3795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bee4f7f10_wrap_pyop2_kernel_prolong       4 0.0 7.4373e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e673e8f50_wrap_pyop2_kernel_prolong       4 0.0 7.3788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e6675a3d0_wrap_pyop2_kernel_prolong       4 0.0 7.6744e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        206 1.0 1.1346e-02 4.2 0.00e+00 0.0 1.3e+05 4.0e+00 2.1e+02  0  0  2  0  2   0  0  4  0 10    -0
SFSetGraph           206 1.0 9.0300e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              206 1.0 1.6917e-02 1.8 0.00e+00 0.0 2.6e+05 2.3e+02 2.1e+02  0  0  4  0  2   0  0  7  0 10    -0
SFPack              7357 1.0 1.8004e+00 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            7357 1.0 7.2561e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             3153 1.0 4.1054e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              4203 1.0 9.4985e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             6306 1.0 1.0313e+01 2.2 3.63e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 35313
VecAXPBYCZ          2102 1.0 4.3360e+00 1.6 4.54e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 104992
VecScatterBegin     7357 1.0 1.9856e+00 3.4 0.00e+00 0.0 2.9e+06 9.3e+04 0.0e+00  0  0 47 37  0   0  0 81 100  0    -0
VecScatterEnd       7357 1.0 3.5700e+01 59.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             4204 1.0 1.9075e+02 1.2 1.29e+11 1.2 2.2e+06 1.2e+05 0.0e+00 17 11 36 37  0  45 48 62 100  0 67502
MatMultAdd          1051 1.0 5.6404e+00 1.2 2.72e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 48427
MatMultTranspose    1051 1.0 4.9937e+00 2.4 2.72e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 54698
MatSolve            5255 1.0 1.9263e+02 1.2 1.26e+11 1.2 1.3e+06 5.8e+02 1.0e+03 18 10 22  0  9  48 47 38  0 49 64861
MatResidual         1051 1.0 5.1143e+01 1.3 3.27e+10 1.2 5.5e+05 1.2e+05 0.0e+00  5  3  9  9  0  12 12 16 25  0 63831
PCSetUpOnBlocks     2102 1.0 2.3479e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             5255 1.0 1.9272e+02 1.2 1.26e+11 1.2 1.3e+06 5.8e+02 1.0e+03 18 10 22  0  9  48 47 38  0 49 64832
PCApplyOnBlocks     4204 1.0 1.8206e+02 1.2 1.26e+11 1.2 0.0e+00 0.0e+00 0.0e+00 18 10  0  0  0  46 47  0  0  0 68523
KSPSolve            3153 1.0 3.2668e+02 1.1 2.30e+11 1.2 3.0e+06 6.7e+04 2.1e+03 33 19 49 28 18  85 86 84 75 100 70177
MGSmooth Level 0    1051 1.0 1.3587e+01 2.7 7.57e+08 20.5 1.3e+06 5.8e+02 2.1e+03  1  0 22  0 18   2  0 38  0 100  1373
MGSmooth Level 1    2102 1.0 3.2163e+02 1.1 2.30e+11 1.2 1.7e+06 1.2e+05 0.0e+00 32 19 27 27  0  83 86 47 75  0 71220
MGResid Level 1     1051 1.0 5.1148e+01 1.3 3.27e+10 1.2 5.5e+05 1.2e+05 0.0e+00  5  3  9  9  0  12 12 16 25  0 63824
MGInterp Level 1    2102 1.0 1.0342e+01 1.5 5.45e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 52825
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
           Index Set  1515           1515
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   368            574
              Vector   994            994
              Matrix   132            132
      Preconditioner     6              6
       Krylov Solver     5              5
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   110            110
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   165            165
           Weak Form   165            165
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   412            412
   Star Forest Graph   206              0
              Vector   206            206
========================================================================================================================
Average time to get PetscTime(): 2.66e-08
Average time for MPI_Barrier(): 4.2908e-06
Average time for zero size MPI_Send(): 2.36348e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/vlumping_inexact/h1.profile # (source: code)
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

