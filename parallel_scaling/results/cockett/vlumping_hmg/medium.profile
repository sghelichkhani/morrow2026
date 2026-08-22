****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0625.gadi.nci.org.au with 208 processes, by sg8812 on Fri Aug 21 23:35:36 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.029e+03     1.000   1.029e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                7.632e+11     1.150   7.201e+11  1.498e+14
Flops/sec:            7.420e+08     1.150   7.001e+08  1.456e+11
MPI Msg Count:        3.966e+05     3.740   2.619e+05  5.447e+07
MPI Msg Len (bytes):  1.294e+10     2.544   3.852e+04  2.098e+12
MPI Reductions:       2.892e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.6620e+02  45.3%  8.1000e+13  54.1%  9.669e+06  17.8%  8.970e+04       41.3%  1.720e+04  59.5%
 1:        MG Apply: 5.6234e+02  54.7%  6.8779e+13  45.9%  4.480e+07  82.2%  2.747e+04       58.7%  1.170e+04  40.5%

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

BuildTwoSided        756 1.0 1.9784e+01 4.6 0.00e+00 0.0 1.0e+05 4.0e+00 6.4e+02  1  0  0  0  2   2  0  1  0  4    -0
BuildTwoSidedF       558 1.0 1.9522e+01 4.7 0.00e+00 0.0 1.0e+05 4.9e+05 5.6e+02  1  0  0  2  2   2  0  1  6  3    -0
SFSetGraph           204 1.1 8.4124e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              198 1.1 3.3835e-01 6.4 0.00e+00 0.0 1.1e+05 1.2e+03 8.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         449 1.0 1.4008e-01 3.3 0.00e+00 0.0 4.5e+05 5.9e+04 0.0e+00  0  0  1  1  0   0  0  5  3  0    -0
SFBcastEnd           449 1.0 7.8715e+00 198.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 2.9777e-02 9.1 0.00e+00 0.0 1.6e+05 8.0e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
SFReduceEnd          154 1.0 2.9789e+00 158.1 1.02e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   552
SFFetchOpBegin         4 1.0 2.3921e-05 3.7 0.00e+00 0.0 3.5e+03 9.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 8.6952e-04 33.4 0.00e+00 0.0 3.5e+03 9.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 1.4313e-03 2.5 0.00e+00 0.0 1.9e+03 2.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 7.9929e-03 1.4 0.00e+00 0.0 9.0e+04 1.2e+02 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 4.9207e-03 2.9 0.00e+00 0.0 4.3e+04 5.2e+01 3.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 6.8504e-05 5.3 0.00e+00 0.0 1.1e+03 2.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            242522 1.1 1.9045e+00 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          242526 1.1 6.9381e-02 4.5 1.02e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23712
VecDot                91 1.0 2.9269e-01 11.4 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 22527
VecMDot             7444 1.0 5.8795e+01 2.3 3.15e+10 1.1 0.0e+00 0.0e+00 7.4e+03  4  4  0  0 26   8  8  0  0 43 106557
VecNorm             8075 1.0 8.8971e+00 4.1 2.57e+09 1.1 0.0e+00 0.0e+00 8.1e+03  0  0  0  0 28   1  1  0  0 47 57628
VecScale            7863 1.0 2.9353e-01 1.2 1.25e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 847200
VecCopy              819 1.0 4.6349e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2694 1.0 8.5866e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              419 1.0 1.4166e-01 1.5 1.19e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 167875
VecWAXPY             237 1.0 1.8892e-01 1.8 4.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 45447
VecMAXPY            7863 1.0 3.3421e+01 1.1 3.38e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   7  8  0  0  0 201628
VecScatterBegin   241915 1.1 4.2364e+00 1.5 0.00e+00 0.0 8.6e+06 8.5e+04 0.0e+00  0  0 16 35  0   1  0 89 85  0    -0
VecScatterEnd     241915 1.1 2.7028e+01 36.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       182 1.0 3.1265e-02 1.8 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 421774
VecReduceComm         91 1.0 6.6934e-02 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize        2002 1.0 2.5039e+00 5.2 5.48e+08 1.1 0.0e+00 0.0e+00 2.0e+03  0  0  0  0  7   0  0  0  0 12 43560
MatMult             7681 1.0 1.8563e+02 1.2 1.37e+11 1.2 8.6e+06 8.5e+04 0.0e+00 17 18 16 35  0  37 33 89 85  0 145921
MatSolve          117117 1.1 1.2377e+01 1.2 8.54e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 137489
MatLUFactorSym       117 1.1 1.5280e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     10648 1.1 2.6298e+00 1.2 3.82e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 289171
MatILUFactorSym        1 1.0 8.6503e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   11516 1.1 1.9627e+01 3.9 0.00e+00 0.0 1.0e+05 4.9e+05 5.6e+02  1  0  0  2  2   3  0  1  6  3    -0
MatAssemblyEnd     11516 1.1 2.7194e+00 7.3 3.20e+07 0.0 6.7e+03 8.1e+03 4.4e+01  0  0  0  0  0   0  0  0  0  0  1090
MatGetRowIJ          117 1.1 2.0392e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      91 1.0 9.6364e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+02  1  0  0  0  0   2  0  0  0  1    -0
MatGetOrdering       117 1.1 1.6772e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 3.1822e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 8.9396e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.3706e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.2878e+00 1.1 2.65e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 408212
MatPtAPSymbolic        2 1.0 1.7757e-01 1.0 0.00e+00 0.0 6.7e+03 1.1e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 9.1092e+00 1.0 1.01e+10 1.2 2.1e+05 1.9e+05 1.9e+02  1  1  0  2  1   2  2  2  5  1 219167
MatGetLocalMat       184 1.0 3.8440e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 3.3226e-01 2.0 0.00e+00 0.0 2.1e+05 1.9e+05 0.0e+00  0  0  0  2  0   0  0  2  5  0    -0
MatSetPreallCOO       16 1.0 3.8135e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 1.8143e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 7.4118e+01 1.0 4.54e+10 1.1 2.3e+06 6.1e+04 4.4e+03  7  6  4  7 15  16 11 24 16 26 121578
PCApply             5624 1.0 5.7271e+02 1.0 3.48e+11 1.1 4.5e+07 2.7e+04 1.2e+04 55 46 82 59 40 Multiple stages 120095
PCApplyOnBlocks   117117 1.1 1.5322e+01 1.2 1.24e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   3  3  0  0  0 160598
KSPSetUp              91 1.0 1.3828e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 7.8001e+02 1.0 5.29e+11 1.1 5.1e+07 3.6e+04 2.3e+04 76 70 94 89 80 Multiple stages 134267
KSPGMRESOrthog      7444 1.0 8.6805e+01 1.6 6.29e+10 1.1 0.0e+00 0.0e+00 7.4e+03  7  8  0  0 26  15 15  0  0 43 144346
DMRefine               1 1.0 2.3504e-02 1.0 2.40e+03 1.0 6.8e+03 4.4e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0    21
Mesh Partition         3 1.0 1.1845e-01 1.0 0.00e+00 0.0 2.6e+04 9.3e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 2.0240e-02 1.1 0.00e+00 0.0 9.0e+04 1.2e+02 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 3.4406e-03 1264.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 1.4080e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 3.3502e-03 1.3 0.00e+00 0.0 5.0e+03 7.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 1.3242e-03 4.8 0.00e+00 0.0 2.5e+03 3.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 2.4795e-03 2.4 0.00e+00 0.0 2.7e+03 4.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 1.8675e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.2846e-01 1.0 0.00e+00 0.0 8.1e+03 4.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 2.2608e-03 1.1 0.00e+00 0.0 1.5e+04 1.9e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 9.0471e-03 1.0 0.00e+00 0.0 4.3e+04 1.2e+02 1.1e+02  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        2 1.0 1.3308e-02 1.0 0.00e+00 0.0 1.1e+05 9.2e+01 1.6e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 4.7823e-03 1.3 0.00e+00 0.0 2.2e+04 7.9e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 3.3911e-04 1.1 0.00e+00 0.0 1.7e+04 5.2e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 3.6744e-03 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 5.1100e-04 12.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 7.4726e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 1.5236e-04 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.2115e-03 1.2 0.00e+00 0.0 3.4e+03 3.4e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 6.1391e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 4.0251e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 5.2634e-04 4.8 0.00e+00 0.0 3.4e+03 3.4e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 4.5419e-05 7.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 9.8915e-04 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 2.6980e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.0023e+03 1.0 7.63e+11 1.1 5.4e+07 3.9e+04 2.8e+04 97 100 99 100 98 Multiple stages 149435
SNESSetUp              1 1.0 4.5055e-05 6.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4070e+01 1.1 7.74e+10 1.2 3.1e+05 9.6e+04 1.0e+00  4 10  1  1  0   9 18  3  3  0 331916
SNESJacobianEval      91 1.0 1.0118e+02 1.0 1.11e+11 1.3 2.0e+05 2.8e+05 3.6e+02 10 14  0  3  1  22 26  2  7  2 207631
SNESLineSearch        91 1.0 2.3501e+01 1.0 6.02e+10 1.2 3.1e+05 9.7e+04 3.6e+02  2  8  1  1  1   5 14  3  3  2 485134
DualSpaceSetUp         4 1.0 3.7731e-03 1.1 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                4 1.0 1.0699e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.0258e+03 1.0 7.63e+11 1.1 5.4e+07 3.9e+04 2.9e+04 100 100 100 100 100 Multiple stages 146014
firedrake.__init__       1 1.0 1.1130e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.3777e+00 29.5 0.00e+00 0.0 1.2e+05 9.0e+01 1.9e+02  0  0  0  0  1   1  0  1  0  1    -0
CreateMesh             2 1.0 1.8513e-01 1.0 0.00e+00 0.0 2.3e+05 1.1e+02 3.2e+02  0  0  0  0  1   0  0  2  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.6049e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.7760e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.6708e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 6.5715e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 3.3467e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.4634e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.1336e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.9146e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.9026e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 8.9752e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 7.9244e-03 1.2 0.00e+00 0.0 1.6e+04 7.5e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.6092e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8827e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 1.9957e-02 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 9.5323e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.5295e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.3598e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0148e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 9.4740e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.4338e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.3799e+02 1.1 1.89e+11 1.3 2.8e+05 9.4e+04 1.2e+01 13 24  1  1  0  28 44  3  3  0 258222
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 9.0867e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 3.4398e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.0928e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.9384e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.8509e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.7266e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.7265e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 9.6674e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 9.5391e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 3.0522e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.5557e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 6.7419e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.8251e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   553
firedrake.interpolation.interpolate       6 1.0 1.3114e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 9.9564e+00 1.0 4.29e+06 1.1 2.6e+04 3.1e+03 9.7e+01  1  0  0  0  0   2  0  0  0  1    86
firedrake.formmanipulation.split_form       4 1.0 2.5222e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.5463e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 9.7283e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.7431e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.5293e-01 4.9 0.00e+00 0.0 2.8e+05 9.4e+04 2.0e+00  0  0  1  1  0   0  0  3  3  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.4277e+00 1.0 4.29e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   249
firedrake.halo.Halo.global_to_local_end     243 1.0 7.6388e+00 219.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.5727e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.3472e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6988e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.2269e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.1271e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.9046e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.4213e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.2788e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.4671e+00 1.0 0.00e+00 0.0 6.8e+03 5.3e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9201e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5659e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1581e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1581e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         3 1.0 2.6238e+00 1.3 0.00e+00 0.0 1.0e+04 1.7e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 4.3727e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.0024e+03 1.0 7.63e+11 1.1 5.4e+07 3.9e+04 2.8e+04 97 100 99 100 98 Multiple stages 149424
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.7823e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2394e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.1989e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.2171e+00 1.1 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 411962
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9749e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4694
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9693e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4707
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.7775e+00 1.1 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 355323
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6839e+01 1.3 4.29e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   3 10  0  0  0 460109
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.3992e-02 6.7 0.00e+00 0.0 1.4e+05 9.7e+04 0.0e+00  0  0  0  1  0   0  0  1  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.9796e+00 149.8 1.02e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   552
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.6005e+01 1.1 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  6  0  0  0 289832
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4007e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3528
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3389e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3621
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8786e+01 1.2 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   6  6  0  0  0 169626
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.6463e+01 1.4 6.34e+10 1.4 0.0e+00 0.0e+00 0.0e+00  4  8  0  0  0   8 14  0  0  0 246806
firedrake.dmhooks.get_function_space       2 1.0 2.0300e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 9.0057e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 6.3022e+00 1.0 0.00e+00 0.0 1.5e+04 1.3e+02 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 6.2920e+00 1.0 0.00e+00 0.0 1.0e+04 1.0e+02 6.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 4.4054e+00 1.0 0.00e+00 0.0 5.7e+03 3.9e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 4.1640e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 4.1566e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 3.7341e+00 13.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 3.7256e+00 14.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 3.5795e+00 33.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 3.2233e+00 481.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 3.2232e+00 487.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 1.7724e-02 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 1.3889e-02 12.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.0499e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.6639e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.4002e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.4690e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.3693e-02 41.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 1.8872e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.6645e-02 3.3 0.00e+00 0.0 4.5e+03 1.8e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.3698e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.4849e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 3.0849e-01 1.1 6.37e+07 1.2 1.1e+06 3.1e+02 2.1e+03  0  0  2  0  7   0  0 12  0 12 40759
MGSetup Level 1       91 1.0 5.5633e+01 1.0 3.52e+10 1.1 1.0e+06 9.7e+04 2.0e+03  5  5  2  5  7  12  9 11 11 12 125897

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 8.7751e-03 6.0 0.00e+00 0.0 1.0e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            91 1.0 7.3922e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 1.0372e-02 3.8 0.00e+00 0.0 2.1e+05 4.3e+01 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFPack           2693896 1.1 3.2320e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2693896 1.1 1.4803e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            33744 1.0 4.1325e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             61862 1.0 9.8246e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            56240 1.0 1.1383e+01 1.9 6.16e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 107759
VecAXPBYCZ         11248 1.0 9.4467e-03 3.6 2.61e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 550189
VecScatterBegin  2693896 1.1 2.9722e+01 1.2 0.00e+00 0.0 4.4e+07 2.8e+04 0.0e+00  3  0 81 59  0   5  0 99 100  0    -0
VecScatterEnd    2693896 1.1 4.2277e+01 12.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            33744 1.0 3.0806e+02 1.1 2.27e+11 1.2 3.8e+07 3.2e+04 0.0e+00 28 30 70 59  0  52 66 85 100  0 146313
MatMultAdd         11248 1.0 1.4828e+01 1.2 8.20e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 110206
MatMultTranspose   11248 1.0 1.3121e+01 2.4 8.20e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 124542
MatSolve         1332888 1.1 2.0101e+02 1.2 9.82e+10 1.1 6.9e+06 1.6e+02 4.6e+02 18 13 13  0  2  34 28 15  0  4 95544
MatLUFactorNum        90 1.0 1.5369e+00 1.1 2.48e+07 268.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   291
MatResidual        11248 1.0 1.5975e+02 1.2 1.15e+11 1.2 1.3e+07 4.9e+04 0.0e+00 14 15 23 29  0  26 33 28 50  0 142226
PCSetUp               90 1.0 1.5377e+00 1.1 2.48e+07 268.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   291
PCSetUpOnBlocks    11248 1.0 5.6776e-02 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            16872 1.0 2.5089e+02 1.2 9.87e+10 1.1 3.2e+07 2.3e+02 6.1e+03 23 13 59  0 21  42 28 72  1 52 76942
PCApplyOnBlocks  1327264 1.1 1.5339e+02 1.2 9.62e+10 1.1 0.0e+00 0.0e+00 0.0e+00 14 13  0  0  0  26 28  0  0  0 124906
KSPSolve           16872 1.0 4.0197e+02 1.1 2.17e+11 1.1 3.8e+07 1.6e+04 1.2e+04 38 29 71 30 40  69 62 86 50 100 106524
MGSmooth Level 0    5624 1.0 7.6132e+01 1.6 3.09e+09 3.8 3.2e+07 2.3e+02 1.2e+04  5  0 59  0 40  10  0 72  1 100  2877
MGSmooth Level 1   11248 1.0 3.4757e+02 1.1 2.14e+11 1.1 6.3e+06 9.7e+04 0.0e+00 32 28 12 29  0  59 62 14 50  0 122566
MGResid Level 1     5624 1.0 1.5942e+02 1.2 1.14e+11 1.2 6.3e+06 9.7e+04 0.0e+00 14 15 12 29  0  26 33 14 50  0 142390
MGInterp Level 1   11248 1.0 2.7909e+01 1.4 1.64e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 116804
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
           Index Set  2344           2344
   IS L to G Mapping   213            209
             Section   303            303
   Star Forest Graph   379            378
              Vector  1055           1051
              Matrix   637            623
      Preconditioner   114            114
       Krylov Solver   112            112
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
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 8.2028e-06
Average time for zero size MPI_Send(): 2.3138e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg/medium.profile # (source: environment)
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

