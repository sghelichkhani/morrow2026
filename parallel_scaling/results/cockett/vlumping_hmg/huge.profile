****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0408.gadi.nci.org.au with 832 processes, by sg8812 on Tue Aug 25 22:37:47 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.975e+03     1.000   1.975e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.094e+12     1.252   1.036e+12  8.620e+14
Flops/sec:            5.538e+08     1.252   5.246e+08  4.365e+11
MPI Msg Count:        7.156e+05     4.485   4.281e+05  3.562e+08
MPI Msg Len (bytes):  2.921e+10     3.127   4.857e+04  1.730e+13
MPI Reductions:       4.338e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 6.4338e+02  32.6%  4.1419e+14  48.1%  5.782e+07  16.2%  1.156e+05       38.7%  2.446e+04  56.4%
 1:        MG Apply: 1.3314e+03  67.4%  4.4778e+14  51.9%  2.984e+08  83.8%  3.557e+04       61.3%  1.890e+04  43.6%

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

BuildTwoSided        712 1.0 3.1625e+01 8.5 0.00e+00 0.0 4.4e+05 4.0e+00 6.4e+02  1  0  0  0  1   2  0  1  0  3    -0
BuildTwoSidedF       558 1.0 3.1317e+01 7.9 0.00e+00 0.0 4.4e+05 5.9e+05 5.6e+02  1  0  0  1  1   2  0  1  4  2    -0
SFSetGraph           160 1.1 1.0501e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              154 1.1 4.2610e-01 3.2 0.00e+00 0.0 4.4e+05 1.5e+03 8.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         449 1.0 1.8508e-01 3.4 0.00e+00 0.0 1.9e+06 7.5e+04 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
SFBcastEnd           449 1.0 1.1844e+01 243.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 4.3174e-02 21.1 0.00e+00 0.0 6.9e+05 1.0e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
SFReduceEnd          154 1.0 4.3198e+00 174.3 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2007
SFFetchOpBegin         4 1.0 3.3678e-05 7.5 0.00e+00 0.0 1.5e+04 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 7.4596e-04 26.6 0.00e+00 0.0 1.5e+04 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 2.7617e-03 4.7 0.00e+00 0.0 8.2e+03 2.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 1.6734e-02 1.4 0.00e+00 0.0 3.8e+05 8.8e+01 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 9.7051e-03 4.9 0.00e+00 0.0 1.7e+05 4.1e+01 3.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 5.7495e-05 4.3 0.00e+00 0.0 4.8e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            158143 1.2 4.4365e+00 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          158147 1.2 8.8484e-02 5.7 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 97994
VecDot                91 1.0 3.4062e-01 16.6 3.27e+07 1.2 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 76818
VecMDot            11042 1.0 1.2072e+02 2.5 5.02e+10 1.2 0.0e+00 0.0e+00 1.1e+04  4  5  0  0 25  12 10  0  0 45 332930
VecNorm            11784 1.0 1.9861e+01 3.8 3.88e+09 1.2 0.0e+00 0.0e+00 1.2e+04  0  0  0  0 27   2  1  0  0 48 156133
VecScale           11572 1.0 4.7344e-01 1.4 1.90e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3210599
VecCopy              819 1.0 4.0338e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2805 1.0 8.6442e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              530 1.0 1.9450e-01 1.5 1.58e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 649209
VecWAXPY             348 1.0 2.8944e-01 2.2 6.25e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 172860
VecMAXPY           11572 1.0 5.2825e+01 1.2 5.39e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   8 10  0  0  0 815976
VecScatterBegin   157536 1.2 6.3826e+00 2.2 0.00e+00 0.0 5.3e+07 1.1e+05 0.0e+00  0  0 15 35  0   1  0 93 90  0    -0
VecScatterEnd     157536 1.2 6.6007e+01 36.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
VecReduceArith       182 1.0 3.6135e-02 2.2 6.54e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1448251
VecReduceComm         91 1.0 1.1529e-01 14.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        2002 1.0 4.5767e+00 4.4 5.41e+08 1.2 0.0e+00 0.0e+00 2.0e+03  0  0  0  0  5   0  0  0  0  8 94486
MatMult            11390 1.0 3.0138e+02 1.2 2.09e+11 1.2 5.3e+07 1.1e+05 0.0e+00 14 19 15 35  0  43 40 93 90  0 553106
MatSolve           73073 1.2 1.4114e+01 1.7 8.45e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 478770
MatLUFactorSym        73 1.2 1.2221e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      6644 1.2 3.2072e+00 1.4 3.78e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 941812
MatILUFactorSym        1 1.0 8.0382e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    7512 1.2 3.1497e+01 5.6 0.00e+00 0.0 4.4e+05 5.9e+05 5.6e+02  1  0  0  1  1   2  0  1  4  2    -0
MatAssemblyEnd      7512 1.2 4.7766e+00 5.1 5.02e+07 0.0 2.8e+04 1.0e+04 4.4e+01  0  0  0  0  0   0  0  0  0  0  3137
MatGetRowIJ           73 1.2 2.1261e-05 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      91 1.0 8.0917e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 7.3e+01  0  0  0  0  0   1  0  0  0  0    -0
MatGetOrdering        73 1.2 7.0412e-02 55.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 2.9181e+00 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatTranspose           5 1.0 1.0366e-02 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.5281e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.3804e+00 1.2 2.62e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1513157
MatPtAPSymbolic        2 1.0 2.1295e-01 1.1 0.00e+00 0.0 2.8e+04 1.3e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 8.0471e+00 1.0 9.94e+09 1.3 8.6e+05 2.4e+05 1.9e+02  0  1  0  1  0   1  2  1  3  1 986020
MatGetLocalMat       184 1.0 4.1126e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 5.1522e-01 2.0 0.00e+00 0.0 8.7e+05 2.4e+05 0.0e+00  0  0  0  1  0   0  0  2  3  0    -0
MatSetPreallCOO       16 1.0 4.4751e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 2.1495e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 8.1657e+01 1.0 4.48e+10 1.2 9.5e+06 7.7e+04 4.4e+03  4  4  3  4 10  13  9 16 11 18 438407
PCApply             9222 1.0 1.3587e+03 1.0 5.66e+11 1.2 3.0e+08 3.6e+04 1.9e+04 67 52 84 61 44 Multiple stages 329556
PCApplyOnBlocks    73073 1.2 1.7024e+01 1.6 1.22e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 574135
KSPSetUp              91 1.0 1.4874e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.7062e+03 1.0 8.60e+11 1.2 3.4e+08 4.7e+04 3.8e+04 86 79 96 93 87 Multiple stages 400289
KSPGMRESOrthog     11042 1.0 1.6517e+02 1.7 1.00e+11 1.2 0.0e+00 0.0e+00 1.1e+04  6  9  0  0 25  19 19  0  0 45 486643
DMRefine               1 1.0 2.2558e-01 1.0 2.40e+03 1.0 2.9e+04 3.6e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     9
Mesh Partition         3 1.0 3.4521e-01 1.0 0.00e+00 0.0 1.1e+05 7.1e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 4.5212e-02 1.0 0.00e+00 0.0 3.7e+05 8.9e+01 1.8e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 9.1563e-03 1811.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 6.0694e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 1.0925e-02 2.2 0.00e+00 0.0 2.1e+04 5.9e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 2.8976e-03 2.0 0.00e+00 0.0 1.1e+04 2.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 4.9368e-03 1.7 0.00e+00 0.0 1.2e+04 2.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 2.0543e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.5165e-01 1.0 0.00e+00 0.0 3.2e+04 3.2e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 5.9756e-03 1.1 0.00e+00 0.0 6.3e+04 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 2.2529e-02 1.0 0.00e+00 0.0 1.8e+05 9.1e+01 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        2 1.0 4.6218e-02 1.1 0.00e+00 0.0 4.6e+05 7.4e+01 1.6e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        5 1.0 9.0395e-03 1.2 0.00e+00 0.0 9.4e+04 6.1e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 4.8528e-04 1.2 0.00e+00 0.0 7.2e+04 4.1e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 5.0350e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 1.3056e-03 44.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.0001e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 4.0728e-04 18.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.6992e-03 1.4 0.00e+00 0.0 1.4e+04 2.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 5.1343e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 5.0149e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 4.9239e-04 5.0 0.00e+00 0.0 1.4e+04 2.8e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.4079e-05 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 8.4867e-04 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 2.7467e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.9418e+03 1.0 1.09e+12 1.3 3.5e+08 4.9e+04 4.3e+04 98 100 100 100 99 Multiple stages 443900
SNESSetUp              1 1.0 4.3471e-05 6.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.6265e+01 1.1 7.87e+10 1.4 1.3e+06 1.2e+05 1.0e+00  2  7  0  1  0   7 14  2  2  0 1256363
SNESJacobianEval      91 1.0 1.0415e+02 1.0 1.13e+11 1.4 8.5e+05 3.4e+05 3.6e+02  5 10  0  2  1  16 20  1  4  1 801523
SNESLineSearch        91 1.0 2.4499e+01 1.0 6.12e+10 1.4 1.3e+06 1.2e+05 3.6e+02  1  5  0  1  1   4 11  2  2  1 1849277
DualSpaceSetUp         4 1.0 3.7729e-03 1.4 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    16
FESetUp                4 1.0 1.9324e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.9702e+03 1.0 1.09e+12 1.3 3.6e+08 4.9e+04 4.3e+04 100 100 100 100 100 Multiple stages 437511
firedrake.__init__       1 1.0 1.2811e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 7.2754e+00 16.4 0.00e+00 0.0 5.2e+05 6.7e+01 1.9e+02  0  0  0  0  0   1  0  1  0  1    -0
CreateMesh             2 1.0 4.6551e-01 1.0 0.00e+00 0.0 9.8e+05 8.3e+01 3.2e+02  0  0  0  0  1   0  0  2  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.3115e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.4640e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 2.6634e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 8.7987e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 9.3754e-02 1.2 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 3.7330e-03 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 9.1507e-02 1.2 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 8.9265e-02 1.3 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 8.9153e-02 1.3 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 3.4279e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 1.5907e-02 1.2 0.00e+00 0.0 6.8e+04 6.0e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 6.5382e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.7970e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 3.8564e-02 9.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 2.2288e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.8913e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 7.0601e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.1049e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 2.2230e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.1391e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.4007e+02 1.2 1.92e+11 1.4 1.2e+06 1.2e+05 1.2e+01  7 16  0  1  0  20 34  2  2  0 1010821
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 2.1773e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 3.7553e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.2885e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.2797e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.9938e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.9819e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.9818e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.0474e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.0332e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 3.2755e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.6133e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.8900e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.6275e-01 1.0 2.70e+06 1.2 1.9e+04 2.2e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  2240
firedrake.interpolation.interpolate       6 1.0 3.5084e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.6067e+01 1.0 4.24e+06 1.2 1.1e+05 3.9e+03 9.7e+01  1  0  0  0  0   2  0  0  0  0   211
firedrake.formmanipulation.split_form       4 1.0 3.0123e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.9288e-04 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.4043e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.3 9.3601e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.0719e-01 3.5 0.00e+00 0.0 1.2e+06 1.2e+05 2.0e+00  0  0  0  1  0   0  0  2  2  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.5017e+00 1.0 4.23e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   967
firedrake.halo.Halo.global_to_local_end     243 1.0 1.1536e+01 483.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.9504e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.6674e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.4607e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 9.4211e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.3511e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 1.3987e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 7.0253e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 1.2963e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.8592e+00 1.0 0.00e+00 0.0 2.8e+04 6.7e+05 2.3e+01  0  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 3.0899e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8952e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1381e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1381e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         3 1.0 2.9006e+00 1.2 0.00e+00 0.0 4.3e+04 2.2e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 4.6324e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.9419e+03 1.0 1.09e+12 1.3 3.5e+08 4.9e+04 4.3e+04 98 100 100 100 99 Multiple stages 443886
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.0007e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2540e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 4.2483e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.5759e+00 1.2 1.68e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   1  3  0  0  0 1566509
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1968e+00 1.0 2.89e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10521
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.1156e+00 1.0 2.89e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10924
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0524e+01 1.2 1.73e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   1  3  0  0  0 1312535
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.8229e+01 1.4 4.46e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   2  7  0  0  0 1690890
firedrake.halo.Halo.local_to_global_begin     121 1.0 4.6888e-02 9.5 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 4.3210e+00 165.0 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2007
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.6345e+01 1.2 2.30e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 1126184
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4868e+00 1.0 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8490
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.4438e+00 1.0 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8640
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.9314e+01 1.3 2.43e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   4  5  0  0  0 662300
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5856e+01 1.5 6.60e+10 1.5 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   6 11  0  0  0 994424
firedrake.dmhooks.get_function_space       2 1.0 2.3320e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 1.0134e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 1.2077e+01 1.0 0.00e+00 0.0 6.2e+04 9.8e+01 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 1.1990e+01 1.0 0.00e+00 0.0 4.3e+04 8.0e+01 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 6.4555e+00 1.0 0.00e+00 0.0 2.4e+04 3.1e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.8631e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.8453e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.4180e+00 11.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.3557e+00 21.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.2064e+00 49.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 5.0774e+00 766.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 5.0773e+00 776.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 3.1276e-02 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 2.3398e-02 18.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.2005e-03 16.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.9307e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.8286e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.7300e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.1525e-01 362.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 5.5341e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 2.6668e-01 3.6 0.00e+00 0.0 1.9e+04 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 1.6076e-02 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 1.7238e-03 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 1.7568e+00 1.0 3.95e+07 1.3 4.7e+06 2.5e+02 2.1e+03  0  0  1  0  5   0  0  8  0  9 17665
MGSetup Level 1       91 1.0 5.6698e+01 1.0 3.48e+10 1.2 4.3e+06 1.2e+05 2.0e+03  3  3  1  3  5   9  7  7  8  8 490987

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 2.4627e-02 3.8 0.00e+00 0.0 3.6e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            91 1.0 5.8384e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 3.0186e-02 3.4 0.00e+00 0.0 7.2e+05 3.1e+01 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack           2794266 1.2 7.8168e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2794266 1.2 1.8295e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            55332 1.0 7.1037e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet            101440 1.0 1.6500e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAYPX            92220 1.0 1.7735e+01 1.6 9.97e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 449504
VecAXPBYCZ         18444 1.0 1.2396e-02 3.3 2.66e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1714098
VecScatterBegin  2794266 1.2 4.8682e+01 1.4 0.00e+00 0.0 3.0e+08 3.6e+04 0.0e+00  2  0 83 61  0   3  0 99 100  0    -0
VecScatterEnd    2794266 1.2 1.0929e+02 14.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            55332 1.0 5.2654e+02 1.2 3.68e+11 1.2 2.6e+08 4.1e+04 0.0e+00 25 34 73 61  0  37 66 87 100  0 557771
MatMultAdd         18444 1.0 2.5696e+01 1.2 1.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 413444
MatMultTranspose   18444 1.0 2.1209e+01 2.3 1.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 500898
MatSolve         1374078 1.2 7.3182e+02 1.1 1.61e+11 1.2 3.9e+07 1.1e+02 4.6e+02 36 14 11  0  1  53 28 13  0  2 170598
MatLUFactorNum        90 1.0 1.1555e+01 1.0 5.49e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   104
MatResidual        18444 1.0 2.7275e+02 1.2 1.86e+11 1.2 8.7e+07 6.1e+04 0.0e+00 13 17 24 31  0  19 33 29 50  0 542953
PCSetUp               90 1.0 1.1556e+01 1.0 5.49e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   104
PCSetUpOnBlocks    18444 1.0 1.0103e-01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            27666 1.0 8.2295e+02 1.1 1.62e+11 1.2 2.1e+08 1.8e+02 9.7e+03 40 15 59  0 22  59 28 71  0 51 152199
PCApplyOnBlocks  1364856 1.2 2.6267e+02 1.3 1.56e+11 1.2 0.0e+00 0.0e+00 0.0e+00 12 14  0  0  0  18 28  0  0  0 474568
KSPSolve           27666 1.0 1.0733e+03 1.1 3.54e+11 1.2 2.6e+08 2.1e+04 1.9e+04 53 32 72 31 44  78 62 85 50 100 259540
MGSmooth Level 0    9222 1.0 5.2256e+02 1.1 9.26e+09 11.6 2.1e+08 1.8e+02 1.9e+04 25  0 59  0 44  37  0 71  0 100  1712
MGSmooth Level 1   18444 1.0 5.8383e+02 1.2 3.48e+11 1.2 4.3e+07 1.2e+05 0.0e+00 28 32 12 31  0  41 62 15 50  0 475591
MGResid Level 1     9222 1.0 2.7176e+02 1.3 1.85e+11 1.2 4.3e+07 1.2e+05 0.0e+00 12 17 12 31  0  19 33 15 50  0 544613
MGInterp Level 1   18444 1.0 4.5788e+01 1.4 2.65e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   3  5  0  0  0 463301
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
           Index Set  3871           3871
   IS L to G Mapping   181            177
             Section   303            303
   Star Forest Graph   347            346
              Vector   959            955
              Matrix   465            451
      Preconditioner    82             82
       Krylov Solver    80             80
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
Average time for MPI_Barrier(): 7.915e-06
Average time for zero size MPI_Send(): 4.42781e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg/huge.profile # (source: environment)
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

