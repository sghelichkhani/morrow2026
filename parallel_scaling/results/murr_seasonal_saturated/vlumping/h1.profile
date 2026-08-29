****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0214.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 17:28:08 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           2.208e+03     1.000   2.208e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                4.525e+12     1.205   4.250e+12  4.420e+14
Flops/sec:            2.049e+09     1.205   1.925e+09  2.002e+11
MPI Msg Count:        2.033e+05     2.690   1.491e+05  1.550e+07
MPI Msg Len (bytes):  2.655e+10     2.996   1.256e+05  1.948e+12
MPI Reductions:       2.351e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.1077e+03  50.2%  3.5236e+14  79.7%  5.486e+06  35.4%  2.243e+05       63.2%  1.708e+04  72.7%
 1:        MG Apply: 1.1004e+03  49.8%  8.9657e+13  20.3%  1.002e+07  64.6%  7.159e+04       36.8%  6.406e+03  27.3%

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

BuildTwoSided       3688 1.0 1.5175e+02 9.4 0.00e+00 0.0 2.2e+05 4.0e+00 3.7e+03  4  0  1  0 16   8  0  4  0 22    -0
BuildTwoSidedF      3591 1.0 1.5170e+02 9.5 0.00e+00 0.0 3.8e+05 1.5e+06 3.6e+03  4  0  2 28 15   8  0  7 44 21    -0
SFSetGraph           104 1.0 7.1206e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 5.5618e-01 20.2 0.00e+00 0.0 6.9e+04 1.1e+03 9.7e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin        3010 1.0 1.6380e+00 3.1 0.00e+00 0.0 1.5e+06 1.1e+05 0.0e+00  0  0 10  9  0   0  0 28 14  0    -0
SFBcastEnd          3010 1.0 4.8197e+01 90.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin       2011 1.0 5.1251e-01 19.4 0.00e+00 0.0 1.0e+06 1.2e+05 0.0e+00  0  0  7  6  0   0  0 19 10  0    -0
SFReduceEnd         2011 1.0 2.7016e+01 76.7 2.13e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   578
SFFetchOpBegin         6 1.0 2.6368e-05 3.0 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.9876e-04 5.6 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.8918e-04 1.2 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.8645e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 2.7244e-03 1.8 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.4851e-05 2.2 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              8955 1.0 3.3604e+00 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            8961 1.0 1.0161e+00 13.7 2.13e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15355
VecDot               717 1.0 2.9647e+00 6.6 6.19e+08 1.2 0.0e+00 0.0e+00 7.2e+02  0  0  0  0  3   0  0  0  0  4 20951
VecMDot             3211 1.0 2.7662e+01 3.3 9.63e+09 1.2 0.0e+00 0.0e+00 3.2e+03  1  0  0  0 14   1  0  0  0 19 34916
VecNorm             7371 1.0 3.3698e+01 6.5 6.37e+09 1.2 0.0e+00 0.0e+00 7.4e+03  1  0  0  0 31   2  0  0  0 43 18949
VecScale            3948 1.0 1.6782e+00 1.4 1.71e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 101902
VecCopy             6865 1.0 1.0326e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              1455 1.0 1.3417e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              737 1.0 1.5131e+00 1.2 6.37e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 42195
VecWAXPY            1935 1.0 4.4623e+00 1.2 1.36e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 30606
VecMAXPY            3948 1.0 1.6421e+01 1.2 1.24e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 75756
VecScatterBegin     3928 1.0 1.6520e+00 3.3 0.00e+00 0.0 2.1e+06 1.2e+05 0.0e+00  0  0 13 13  0   0  0 38 20  0    -0
VecScatterEnd       3928 1.0 3.3468e+01 45.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          19 1.0 7.5441e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith      1434 1.0 1.1286e+00 1.8 1.24e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110072
VecReduceComm        717 1.0 8.7637e-01 103.4 0.00e+00 0.0 0.0e+00 0.0e+00 7.2e+02  0  0  0  0  3   0  0  0  0  4    -0
VecNormalize         410 1.0 1.4869e+00 3.5 5.31e+08 1.2 0.0e+00 0.0e+00 4.1e+02  0  0  0  0  2   0  0  0  0  2 35832
MatMult             3928 1.0 1.7342e+02 1.2 1.20e+11 1.2 2.1e+06 1.2e+05 0.0e+00  7  3 13 13  0  14  3 38 20  0 69373
MatSolve             410 1.0 1.7650e+01 1.2 1.22e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 68933
MatLUFactorSym         1 1.0 3.4902e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       736 1.0 1.8272e+01 1.0 5.37e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0 28153
MatILUFactorSym        1 1.0 1.6197e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    5074 1.0 1.5177e+02 3.6 0.00e+00 0.0 3.8e+05 1.5e+06 3.6e+03  4  0  2 28 15   9  0  7 44 21    -0
MatAssemblyEnd      5074 1.0 3.5815e+01 14.6 8.05e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0   952
MatGetRowIJ            1 1.0 4.6890e-06 33.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.5563e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries      1434 1.0 3.3962e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatTranspose           2 1.0 1.5515e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3182e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1434 1.0 1.2339e+01 1.1 2.23e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 180481
MatPtAPSymbolic        1 1.0 2.1557e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       717 1.0 8.0370e+01 1.0 8.91e+10 1.2 3.8e+05 3.6e+05 7.2e+02  4  2  2  7  3   7  3  7 11  4 110846
MatGetLocalMat       717 1.0 5.4673e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        717 1.0 2.7023e+00 2.0 0.00e+00 0.0 3.8e+05 3.6e+05 0.0e+00  0  0  2  7  0   0  0  7 11  0    -0
MatSetPreallCOO       32 1.0 1.0148e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 4.9206e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              717 1.0 1.5128e+02 1.0 1.27e+11 1.2 5.8e+05 2.8e+05 3.0e+03  7  3  4  8 13  14  4 11 13 18 83869
PCApply             2821 1.0 1.1091e+03 1.0 9.03e+11 1.2 1.0e+07 7.2e+04 6.4e+03 50 20 65 37 27 Multiple stages 80834
PCApplyOnBlocks      410 1.0 1.7655e+01 1.2 1.22e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 68913
KSPSetUp             717 1.0 2.1804e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             717 1.0 1.2461e+03 1.0 1.01e+12 1.2 1.1e+07 7.8e+04 1.3e+04 56 23 74 46 54 Multiple stages 80489
KSPGMRESOrthog      3211 1.0 3.9398e+01 1.9 1.93e+10 1.2 0.0e+00 0.0e+00 3.2e+03  1  0  0  0 14   2  1  0  0 19 49030
DMRefine               2 1.0 1.4014e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     2
DMPlexCreateGmsh       1 1.0 1.4620e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.0647e+00 194.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 4.4481e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.1663e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.2300e-03 567.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 6.0890e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.0580e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.3746e-03 1.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 8.5849e-04 2.6 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 6.2134e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.8372e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.5097e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.8491e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 9.0761e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  1   0  0  2  0  1    -0
DMPlexDistField        7 1.0 2.1298e-03 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.9180e-03 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.1340e-04 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.5607e-04 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.4263e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.7627e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 5.0895e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.6200e-04 2.0 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 1.4010e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 9.1423e-04 1.6 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             35 1.0 2.1399e+03 1.0 4.53e+12 1.2 1.5e+07 1.3e+05 2.3e+04 97 100 99 100 97 Multiple stages 206553
SNESSetUp              1 1.0 5.8134e-05 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval    1970 1.0 1.5483e+02 1.2 1.92e+12 1.2 2.1e+06 1.2e+05 0.0e+00  7 42 13 13  0  13 53 38 20  0 1195589
SNESJacobianEval     717 1.0 5.4880e+02 1.0 1.46e+12 1.2 7.5e+05 7.9e+05 2.9e+03 25 32  5 30 12  50 40 14 48 17 257219
SNESLineSearch       717 1.0 1.8206e+02 1.0 1.91e+12 1.2 2.4e+06 1.2e+05 4.1e+03  8 42 16 15 17  16 52 44 24 24 1013767
DualSpaceSetUp         8 1.0 1.0487e-02 2.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     1
FESetUp                8 1.0 1.1082e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 2.2058e+03 1.0 4.53e+12 1.2 1.6e+07 1.3e+05 2.3e+04 100 100 100 100 100 Multiple stages 200389
firedrake.__init__       1 1.0 1.6418e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 3.1646e+00 27.7 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  1  0  2   0  0  3  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 3.0659e+00 194.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0121e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.7830e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.6599e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0198e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.3230e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.9604e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.1230e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.8801e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.8674e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.3433e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.5184e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.9202e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3218e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.9538e-02 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.9069e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2589e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.5054e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3877e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.9005e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     406 1.0 6.7612e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute     12738 1.0 5.9737e+02 1.2 3.37e+12 1.2 1.4e+06 1.2e+05 3.2e+01 25 74  9  9  0  49 93 26 14  0 546111
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.8564e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   25476 1.0 2.8180e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0461e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.3401e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5780e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.6461e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.6460e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.6891e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.5117e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin   12738 1.0 3.6272e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd     12738 1.0 3.2535e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.3336e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 4.3980e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  0  0  0  0  0   0  0  0  0  0   332
firedrake.interpolation.interpolate      13 1.0 4.5328e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.2102e+00 1.0 9.06e+07 1.2 1.4e+04 4.2e+04 3.7e+01  0  0  0  0  0   1  0  0  0  0  1463
firedrake.formmanipulation.split_form      14 1.0 4.3033e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.9254e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5206e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 9.9619e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    2743 1.0 2.2530e+00 2.6 0.00e+00 0.0 1.4e+06 1.2e+05 4.0e+00  0  0  9  9  0   0  0 26 14  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.7175e+00 1.0 9.06e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  1589
firedrake.halo.Halo.global_to_local_end    2743 1.0 4.7750e+01 86.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 8.6292e-01 13.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a72c10bd50_wrap_pyop2_kernel_prolong       4 0.0 8.0238e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a72c08bbd0_wrap_pyop2_kernel_prolong       4 0.0 5.6572e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.1239e+00 1.0 7.34e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  1786
firedrake.function.Function.assign     154 1.0 9.3301e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     153 1.0 8.8367e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.0435e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      56 1.0 6.8651e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.1343e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5740e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9446e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.3134e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2692e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.6303e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6593e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0996e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0996e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 3.7599e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.9562e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      35 1.0 2.1400e+03 1.0 4.53e+12 1.2 1.5e+07 1.3e+05 2.3e+04 97 100 99 100 97 Multiple stages 206541
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.7092e-01 1142.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0508e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.7087e-01 1407.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.7084e-01 1649.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    3940 1.0 4.2734e+01 1.5 4.89e+11 1.2 0.0e+00 0.0e+00 0.0e+00  2 11  0  0  0   3 14  0  0  0 1147166
Parloop_Cells_wrap_form0_exterior_facet_top_integral    3940 1.0 1.2644e+00 1.1 6.29e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4987
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    3940 1.0 1.7886e+00 1.4 4.71e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 46513
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    3940 1.0 2.7708e+01 1.3 4.65e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 13  0  0  0 1681509
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    3940 1.0 6.3749e+01 1.4 9.62e+11 1.3 0.0e+00 0.0e+00 0.0e+00  3 20  0  0  0   5 25  0  0  0 1402200
firedrake.halo.Halo.local_to_global_begin    1970 1.0 5.8712e-01 8.4 0.00e+00 0.0 1.0e+06 1.2e+05 0.0e+00  0  0  7  6  0   0  0 19 10  0    -0
firedrake.halo.Halo.local_to_global_end    1970 1.0 2.7037e+01 73.2 2.13e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   577
Parloop_Cells_wrap_form00_cell_integral    1434 1.0 8.6634e+01 1.4 3.30e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   7  9  0  0  0 382442
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral    1434 1.0 3.7464e+00 3.1 1.72e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8131
Parloop_Cells_wrap_form00_interior_facet_horiz_integral    1434 1.0 1.0958e+02 1.3 4.35e+11 1.2 0.0e+00 0.0e+00 0.0e+00  5 10  0  0  0   9 12  0  0  0 397785
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral    1434 1.0 2.5873e+02 1.4 6.92e+11 1.3 0.0e+00 0.0e+00 0.0e+00 10 15  0  0  0  20 18  0  0  0 248826
firedrake.dmhooks.get_function_space       1 1.0 1.6728e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1277e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      717 1.0 1.5571e+01 1.0 2.70e+08 11.3 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   470
MGSetup Level 1      717 1.0 1.3912e+00 1.0 1.03e+09 1.2 5.2e+03 1.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 73228
firedrake.constant.Constant.assign      35 1.0 1.9122e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a761b4d10_wrap_pyop2_kernel_prolong       4 0.0 8.0228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a761b4f10_wrap_pyop2_kernel_prolong       4 0.0 5.1797e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e518b3bdd0_wrap_pyop2_kernel_prolong       4 0.0 8.0090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5189b2610_wrap_pyop2_kernel_prolong       4 0.0 6.8410e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b107629d0_wrap_pyop2_kernel_prolong       4 0.0 8.0034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b10762010_wrap_pyop2_kernel_prolong       4 0.0 6.1796e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147125a7c590_wrap_pyop2_kernel_prolong       4 0.0 8.0240e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147125012150_wrap_pyop2_kernel_prolong       4 0.0 6.7686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba983eba50_wrap_pyop2_kernel_prolong       4 0.0 7.9686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba98312c10_wrap_pyop2_kernel_prolong       4 0.0 7.3193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e07fb51d0_wrap_pyop2_kernel_prolong       4 0.0 8.0115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e07eeebd0_wrap_pyop2_kernel_prolong       4 0.0 6.1212e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b58da7ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b58dcdfd0_wrap_pyop2_kernel_prolong       4 0.0 5.1007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cffeedfc10_wrap_pyop2_kernel_prolong       4 0.0 8.0204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cffef21c90_wrap_pyop2_kernel_prolong       4 0.0 6.7852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14921439e050_wrap_pyop2_kernel_prolong       4 0.0 8.0047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492143cbd90_wrap_pyop2_kernel_prolong       4 0.0 5.1123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c82773f550_wrap_pyop2_kernel_prolong       4 0.0 8.0318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c826e1df90_wrap_pyop2_kernel_prolong       4 0.0 7.2829e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485fe8f6410_wrap_pyop2_kernel_prolong       4 0.0 7.9707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485fe000490_wrap_pyop2_kernel_prolong       4 0.0 6.6663e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1bc65fb90_wrap_pyop2_kernel_prolong       4 0.0 8.0257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1bc533490_wrap_pyop2_kernel_prolong       4 0.0 6.6779e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d1943810_wrap_pyop2_kernel_prolong       4 0.0 7.9446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d1b89690_wrap_pyop2_kernel_prolong       4 0.0 5.3347e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483b41f10d0_wrap_pyop2_kernel_prolong       4 0.0 8.0273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483b424dbd0_wrap_pyop2_kernel_prolong       4 0.0 6.3254e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa934e5510_wrap_pyop2_kernel_prolong       4 0.0 7.9604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa92a9ba10_wrap_pyop2_kernel_prolong       4 0.0 6.5692e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15407cd167d0_wrap_pyop2_kernel_prolong       4 0.0 7.9412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15407cd15a90_wrap_pyop2_kernel_prolong       4 0.0 5.2221e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510c298ed50_wrap_pyop2_kernel_prolong       4 0.0 7.9471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510c1f3a5d0_wrap_pyop2_kernel_prolong       4 0.0 7.1131e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c22dd66110_wrap_pyop2_kernel_prolong       4 0.0 8.0151e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c22dd34210_wrap_pyop2_kernel_prolong       4 0.0 6.2673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145faacc18d0_wrap_pyop2_kernel_prolong       4 0.0 7.9458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145faacfe0d0_wrap_pyop2_kernel_prolong       4 0.0 5.9871e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521fb5b7d90_wrap_pyop2_kernel_prolong       4 0.0 8.0315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521fb381510_wrap_pyop2_kernel_prolong       4 0.0 5.9760e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd471e1d50_wrap_pyop2_kernel_prolong       4 0.0 8.0149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd471e0ed0_wrap_pyop2_kernel_prolong       4 0.0 8.3063e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b15655e990_wrap_pyop2_kernel_prolong       4 0.0 8.0048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b155ba9bd0_wrap_pyop2_kernel_prolong       4 0.0 7.0810e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a05e60a5d0_wrap_pyop2_kernel_prolong       4 0.0 7.9462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a05e69a510_wrap_pyop2_kernel_prolong       4 0.0 6.2721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f88bd217d0_wrap_pyop2_kernel_prolong       4 0.0 7.9496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f88bcfd890_wrap_pyop2_kernel_prolong       4 0.0 7.0116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544ea56dfd0_wrap_pyop2_kernel_prolong       4 0.0 7.9985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544ea56fd10_wrap_pyop2_kernel_prolong       4 0.0 8.2541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd0cbd8690_wrap_pyop2_kernel_prolong       4 0.0 7.9909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd0c9ca250_wrap_pyop2_kernel_prolong       4 0.0 5.1667e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dea7ce1c90_wrap_pyop2_kernel_prolong       4 0.0 7.9844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dea7f9f3d0_wrap_pyop2_kernel_prolong       4 0.0 5.4047e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15125d924c50_wrap_pyop2_kernel_prolong       4 0.0 7.9453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15125db66190_wrap_pyop2_kernel_prolong       4 0.0 6.6793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491aa58e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.9644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491a9bf1bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515ef0621d0_wrap_pyop2_kernel_prolong       4 0.0 8.0003e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515ef060190_wrap_pyop2_kernel_prolong       4 0.0 7.3850e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a212b2d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.9941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21277f9d0_wrap_pyop2_kernel_prolong       4 0.0 6.0031e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d628f9dbd0_wrap_pyop2_kernel_prolong       4 0.0 8.0128e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d62902d910_wrap_pyop2_kernel_prolong       4 0.0 6.0132e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d95278cc90_wrap_pyop2_kernel_prolong       4 0.0 7.9512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d95256e7d0_wrap_pyop2_kernel_prolong       4 0.0 5.9788e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15468afe68d0_wrap_pyop2_kernel_prolong       4 0.0 7.9736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15468afe6c10_wrap_pyop2_kernel_prolong       4 0.0 5.7603e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154490da6b90_wrap_pyop2_kernel_prolong       4 0.0 8.0339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15448ba35090_wrap_pyop2_kernel_prolong       4 0.0 7.1258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14888cd4d750_wrap_pyop2_kernel_prolong       4 0.0 7.9718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14888d0aa390_wrap_pyop2_kernel_prolong       4 0.0 7.3288e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb34763050_wrap_pyop2_kernel_prolong       4 0.0 7.9587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb34625ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dd8b17e50_wrap_pyop2_kernel_prolong       4 0.0 7.9885e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dd8a13f10_wrap_pyop2_kernel_prolong       4 0.0 8.0597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508d1941750_wrap_pyop2_kernel_prolong       4 0.0 7.9403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508d1942190_wrap_pyop2_kernel_prolong       4 0.0 5.1008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b00bae0d10_wrap_pyop2_kernel_prolong       4 0.0 7.9639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b00b156250_wrap_pyop2_kernel_prolong       4 0.0 6.0875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534d1187c10_wrap_pyop2_kernel_prolong       4 0.0 7.9577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534d1179b50_wrap_pyop2_kernel_prolong       4 0.0 6.7053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536cc121c10_wrap_pyop2_kernel_prolong       4 0.0 7.9961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536cc1217d0_wrap_pyop2_kernel_prolong       4 0.0 5.5471e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd07fae410_wrap_pyop2_kernel_prolong       4 0.0 7.9446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd0768d7d0_wrap_pyop2_kernel_prolong       4 0.0 6.6097e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6e8bebfd0_wrap_pyop2_kernel_prolong       4 0.0 7.9501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6e8dedc90_wrap_pyop2_kernel_prolong       4 0.0 6.9156e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529beb7f7d0_wrap_pyop2_kernel_prolong       4 0.0 7.9818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529bee001d0_wrap_pyop2_kernel_prolong       4 0.0 7.3095e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3fd45b550_wrap_pyop2_kernel_prolong       4 0.0 7.9938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3fe21f150_wrap_pyop2_kernel_prolong       4 0.0 6.6278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471a4e33bd0_wrap_pyop2_kernel_prolong       4 0.0 7.9516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471a4d43010_wrap_pyop2_kernel_prolong       4 0.0 6.4990e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a92492510_wrap_pyop2_kernel_prolong       4 0.0 7.9648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a925e3bd0_wrap_pyop2_kernel_prolong       4 0.0 6.4417e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ef88221d0_wrap_pyop2_kernel_prolong       4 0.0 8.0173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ef8821a90_wrap_pyop2_kernel_prolong       4 0.0 6.9701e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3e02c0c50_wrap_pyop2_kernel_prolong       4 0.0 8.0243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3e02eded0_wrap_pyop2_kernel_prolong       4 0.0 7.3687e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d75811f710_wrap_pyop2_kernel_prolong       4 0.0 7.9523e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d753f6cb50_wrap_pyop2_kernel_prolong       4 0.0 6.6544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14598ce68990_wrap_pyop2_kernel_prolong       4 0.0 7.9487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14598ce6bad0_wrap_pyop2_kernel_prolong       4 0.0 5.3896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bebbb9e390_wrap_pyop2_kernel_prolong       4 0.0 7.9497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bebbb9c710_wrap_pyop2_kernel_prolong       4 0.0 6.1380e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b604bc4190_wrap_pyop2_kernel_prolong       4 0.0 7.9463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b604b6ad90_wrap_pyop2_kernel_prolong       4 0.0 7.6456e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c36434f390_wrap_pyop2_kernel_prolong       4 0.0 7.9773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3647af290_wrap_pyop2_kernel_prolong       4 0.0 6.6047e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526447a4390_wrap_pyop2_kernel_prolong       4 0.0 7.9451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15263f350ad0_wrap_pyop2_kernel_prolong       4 0.0 6.3147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d59180390_wrap_pyop2_kernel_prolong       4 0.0 7.9385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d59112c90_wrap_pyop2_kernel_prolong       4 0.0 5.6508e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6957c3350_wrap_pyop2_kernel_prolong       4 0.0 7.9805e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6957c0d50_wrap_pyop2_kernel_prolong       4 0.0 5.2138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f44e75410_wrap_pyop2_kernel_prolong       4 0.0 7.9368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f44464210_wrap_pyop2_kernel_prolong       4 0.0 5.4222e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14571540ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.9430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145714a0eb90_wrap_pyop2_kernel_prolong       4 0.0 5.9381e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151006faa950_wrap_pyop2_kernel_prolong       4 0.0 7.9558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151006d96e10_wrap_pyop2_kernel_prolong       4 0.0 7.0747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149444b62490_wrap_pyop2_kernel_prolong       4 0.0 7.9600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149444b622d0_wrap_pyop2_kernel_prolong       4 0.0 6.2891e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c071b39d0_wrap_pyop2_kernel_prolong       4 0.0 7.9839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c07a6d090_wrap_pyop2_kernel_prolong       4 0.0 7.0713e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccb85b6fd0_wrap_pyop2_kernel_prolong       4 0.0 7.9618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccb8471550_wrap_pyop2_kernel_prolong       4 0.0 7.9549e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0e00fd490_wrap_pyop2_kernel_prolong       4 0.0 7.9486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0dbe53290_wrap_pyop2_kernel_prolong       4 0.0 5.3883e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149917558290_wrap_pyop2_kernel_prolong       4 0.0 7.9497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14991778dad0_wrap_pyop2_kernel_prolong       4 0.0 5.9554e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dd6d0b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.9426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dd6d0bc90_wrap_pyop2_kernel_prolong       4 0.0 5.2560e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514e6e1e350_wrap_pyop2_kernel_prolong       4 0.0 7.9435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514e6e1f610_wrap_pyop2_kernel_prolong       4 0.0 6.2207e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499c6bf52d0_wrap_pyop2_kernel_prolong       4 0.0 7.9427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499c6bf7790_wrap_pyop2_kernel_prolong       4 0.0 5.8541e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4d4231a50_wrap_pyop2_kernel_prolong       4 0.0 7.9699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4d4232290_wrap_pyop2_kernel_prolong       4 0.0 7.5833e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155275559cd0_wrap_pyop2_kernel_prolong       4 0.0 7.9870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552755814d0_wrap_pyop2_kernel_prolong       4 0.0 5.8022e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458675cbc90_wrap_pyop2_kernel_prolong       4 0.0 7.9442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145867a61a50_wrap_pyop2_kernel_prolong       4 0.0 6.7928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c88f5fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.9531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c88f4c250_wrap_pyop2_kernel_prolong       4 0.0 7.6538e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeea03f1d0_wrap_pyop2_kernel_prolong       4 0.0 7.9364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeea03f210_wrap_pyop2_kernel_prolong       4 0.0 5.7601e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d29283ffd0_wrap_pyop2_kernel_prolong       4 0.0 7.9892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d292725010_wrap_pyop2_kernel_prolong       4 0.0 6.8136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d905798090_wrap_pyop2_kernel_prolong       4 0.0 7.9446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d905535c50_wrap_pyop2_kernel_prolong       4 0.0 7.0294e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150438a04ed0_wrap_pyop2_kernel_prolong       4 0.0 7.9669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150438a7add0_wrap_pyop2_kernel_prolong       4 0.0 6.2130e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486ec140910_wrap_pyop2_kernel_prolong       4 0.0 7.9444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486ec16e210_wrap_pyop2_kernel_prolong       4 0.0 4.9085e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538fe87af50_wrap_pyop2_kernel_prolong       4 0.0 7.9433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538fe7163d0_wrap_pyop2_kernel_prolong       4 0.0 6.8187e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed97303690_wrap_pyop2_kernel_prolong       4 0.0 7.9459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed972f39d0_wrap_pyop2_kernel_prolong       4 0.0 6.8249e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebc3f21cd0_wrap_pyop2_kernel_prolong       4 0.0 7.9408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebc3f23c50_wrap_pyop2_kernel_prolong       4 0.0 6.3496e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465a7714e50_wrap_pyop2_kernel_prolong       4 0.0 7.9463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465a753a010_wrap_pyop2_kernel_prolong       4 0.0 6.4198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aed4175950_wrap_pyop2_kernel_prolong       4 0.0 7.9516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aed41750d0_wrap_pyop2_kernel_prolong       4 0.0 6.8205e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15007994f150_wrap_pyop2_kernel_prolong       4 0.0 7.9719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150079977f50_wrap_pyop2_kernel_prolong       4 0.0 5.5417e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486d53410d0_wrap_pyop2_kernel_prolong       4 0.0 7.9400e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486d55923d0_wrap_pyop2_kernel_prolong       4 0.0 6.4278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6a775ffd0_wrap_pyop2_kernel_prolong       4 0.0 7.9426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6a78c7ed0_wrap_pyop2_kernel_prolong       4 0.0 6.2099e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab511ba650_wrap_pyop2_kernel_prolong       4 0.0 7.9458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab511b9f90_wrap_pyop2_kernel_prolong       4 0.0 6.2262e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b40c84f9d0_wrap_pyop2_kernel_prolong       4 0.0 7.9447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b40c6f5550_wrap_pyop2_kernel_prolong       4 0.0 7.1692e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f91577b10_wrap_pyop2_kernel_prolong       4 0.0 7.9483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f913ff610_wrap_pyop2_kernel_prolong       4 0.0 6.1115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15006eb9fc10_wrap_pyop2_kernel_prolong       4 0.0 7.9438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15006eb54e50_wrap_pyop2_kernel_prolong       4 0.0 6.2013e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543d2edafd0_wrap_pyop2_kernel_prolong       4 0.0 7.9848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543d2fdd910_wrap_pyop2_kernel_prolong       4 0.0 5.2304e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c0dc47a90_wrap_pyop2_kernel_prolong       4 0.0 7.9484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c0db195d0_wrap_pyop2_kernel_prolong       4 0.0 7.2710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148777212f10_wrap_pyop2_kernel_prolong       4 0.0 7.9406e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148777212b10_wrap_pyop2_kernel_prolong       4 0.0 6.0058e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151906c21c90_wrap_pyop2_kernel_prolong       4 0.0 7.9858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151906c21450_wrap_pyop2_kernel_prolong       4 0.0 7.0527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15250f0ab310_wrap_pyop2_kernel_prolong       4 0.0 7.9446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15250efd0110_wrap_pyop2_kernel_prolong       4 0.0 6.5732e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbdf50bb10_wrap_pyop2_kernel_prolong       4 0.0 7.9558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbdf267d90_wrap_pyop2_kernel_prolong       4 0.0 6.9865e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b175338550_wrap_pyop2_kernel_prolong       4 0.0 7.9445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b174f85a90_wrap_pyop2_kernel_prolong       4 0.0 6.4509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e14aa2b10_wrap_pyop2_kernel_prolong       4 0.0 7.9399e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e14900690_wrap_pyop2_kernel_prolong       4 0.0 5.8543e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15102eaa20d0_wrap_pyop2_kernel_prolong       4 0.0 7.9500e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15102eaa17d0_wrap_pyop2_kernel_prolong       4 0.0 7.7310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497ab7821d0_wrap_pyop2_kernel_prolong       4 0.0 7.9424e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497ab781810_wrap_pyop2_kernel_prolong       4 0.0 6.2217e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c11d24cd0_wrap_pyop2_kernel_prolong       4 0.0 7.9569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c11d1bd50_wrap_pyop2_kernel_prolong       4 0.0 7.9219e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c700d22150_wrap_pyop2_kernel_prolong       4 0.0 7.9509e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c700ae8210_wrap_pyop2_kernel_prolong       4 0.0 7.2303e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14801b196990_wrap_pyop2_kernel_prolong       4 0.0 7.9548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14801b194b50_wrap_pyop2_kernel_prolong       4 0.0 7.4340e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        717 1.0 3.7491e-02 3.3 0.00e+00 0.0 4.6e+05 4.0e+00 7.2e+02  0  0  3  0  3   0  0  5  0 11    -0
SFSetGraph           717 1.0 3.1740e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              717 1.0 5.7276e-02 1.7 0.00e+00 0.0 9.2e+05 2.3e+02 7.2e+02  0  0  6  0  3   0  0  9  0 11    -0
SFPack             19747 1.0 4.7948e+00 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           19747 1.0 1.7663e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2821 1.0 3.8284e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             11283 1.0 2.5844e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY            11284 1.0 1.5732e+01 1.4 9.75e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 62139
VecAYPX            11284 1.0 1.8883e+01 3.1 4.87e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 25884
VecScatterBegin    19747 1.0 5.3124e+00 3.4 0.00e+00 0.0 7.7e+06 9.3e+04 0.0e+00  0  0 50 37  0   0  0 77 100  0    -0
VecScatterEnd      19747 1.0 1.0515e+02 24.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult            11284 1.0 5.1726e+02 1.2 3.46e+11 1.2 5.9e+06 1.2e+05 0.0e+00 21  8 38 37  0  42 39 59 100  0 66814
MatMultAdd          2821 1.0 1.4485e+01 1.2 7.31e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 50614
MatMultTranspose    2821 1.0 1.2648e+01 2.4 7.31e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 57968
MatSolve           14105 1.0 5.0758e+02 1.2 3.37e+11 1.2 4.1e+06 5.5e+02 3.6e+03 22  8 26  0 15  43 37 41  0 56 66070
MatLUFactorNum       698 1.0 1.1253e+02 1.2 1.91e+11 1.2 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0  10 21  0  0  0 165548
MatResidual         2821 1.0 1.3436e+02 1.2 8.76e+10 1.2 1.5e+06 1.2e+05 0.0e+00  5  2 10  9  0  11 10 15 25  0 65217
PCSetUpOnBlocks     5642 1.0 1.1260e+02 1.2 1.91e+11 1.2 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0  10 21  0  0  0 165445
PCApply            14105 1.0 5.0782e+02 1.2 3.37e+11 1.2 4.1e+06 5.5e+02 3.6e+03 22  8 26  0 15  43 37 41  0 56 66039
PCApplyOnBlocks    11284 1.0 4.8271e+02 1.2 3.37e+11 1.2 0.0e+00 0.0e+00 0.0e+00 21  8  0  0  0  42 37  0  0  0 69370
KSPSetUp               1 1.0 2.0126e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            8463 1.0 8.5967e+02 1.0 6.10e+11 1.2 8.5e+06 6.3e+04 6.4e+03 38 14 55 28 27  77 68 85 75 100 70725
MGSmooth Level 0    2821 1.0 3.4436e+01 3.3 2.09e+09 10.3 4.1e+06 5.5e+02 6.4e+03  1  0 26  0 27   2  0 41  0 100  1450
MGSmooth Level 1    5642 1.0 9.5597e+02 1.1 8.00e+11 1.2 4.4e+06 1.2e+05 0.0e+00 42 18 29 28  0  85 89 44 75  0 83035
MGResid Level 1     2821 1.0 1.3437e+02 1.2 8.76e+10 1.2 1.5e+06 1.2e+05 0.0e+00  5  2 10  9  0  11 10 15 25  0 65210
MGInterp Level 1    5642 1.0 2.6891e+01 1.5 1.46e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 54528
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   149            149
              Viewer     3              3
         PetscRandom    19             19
           Index Set  1515           1515
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   406           1123
              Vector  2215           2214
              Matrix   132            132
      Preconditioner     6              6
       Krylov Solver    24             24
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   129            129
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   184            184
           Weak Form   184            184
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set  1434           1434
   Star Forest Graph   717              0
              Vector   719            720
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 4.7076e-06
Average time for zero size MPI_Send(): 2.2408e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal_saturated/vlumping/h1.profile # (source: code)
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

