****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0461.gadi.nci.org.au with 832 processes, by sg8812 on Fri Aug 21 23:30:51 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.965e+03     1.000   1.965e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.094e+12     1.252   1.036e+12  8.620e+14
Flops/sec:            5.566e+08     1.252   5.272e+08  4.386e+11
MPI Msg Count:        8.121e+05     5.249   4.277e+05  3.559e+08
MPI Msg Len (bytes):  2.921e+10     3.127   4.861e+04  1.730e+13
MPI Reductions:       4.338e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 6.7450e+02  34.3%  4.1419e+14  48.1%  5.782e+07  16.2%  1.156e+05       38.7%  2.446e+04  56.4%
 1:        MG Apply: 1.2907e+03  65.7%  4.4779e+14  51.9%  2.981e+08  83.8%  3.560e+04       61.3%  1.890e+04  43.6%

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

BuildTwoSided        712 1.0 3.1366e+01 8.4 0.00e+00 0.0 4.4e+05 4.0e+00 6.4e+02  1  0  0  0  1   2  0  1  0  3    -0
BuildTwoSidedF       558 1.0 3.1084e+01 8.5 0.00e+00 0.0 4.4e+05 5.9e+05 5.6e+02  1  0  0  1  1   2  0  1  4  2    -0
SFSetGraph           160 1.1 1.0226e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              154 1.1 4.4759e-01 4.8 0.00e+00 0.0 4.4e+05 1.5e+03 8.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         449 1.0 1.7519e-01 3.2 0.00e+00 0.0 1.9e+06 7.5e+04 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
SFBcastEnd           449 1.0 1.1917e+01 173.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 3.8662e-02 17.9 0.00e+00 0.0 6.9e+05 1.0e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
SFReduceEnd          154 1.0 4.3620e+00 175.1 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1988
SFFetchOpBegin         4 1.0 2.8850e-05 5.6 0.00e+00 0.0 1.5e+04 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 8.0710e-04 34.1 0.00e+00 0.0 1.5e+04 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 2.6959e-03 4.7 0.00e+00 0.0 8.2e+03 2.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 1.7110e-02 1.4 0.00e+00 0.0 3.8e+05 8.8e+01 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 9.7522e-03 4.7 0.00e+00 0.0 1.7e+05 4.1e+01 3.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 6.7158e-05 5.1 0.00e+00 0.0 4.8e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            158143 1.2 4.6315e+00 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          158147 1.2 1.0102e-01 6.1 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 85829
VecDot                91 1.0 3.6171e-01 10.7 3.27e+07 1.2 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 72340
VecMDot            11042 1.0 1.2364e+02 2.6 5.02e+10 1.2 0.0e+00 0.0e+00 1.1e+04  4  5  0  0 25  11 10  0  0 45 325059
VecNorm            11784 1.0 1.8500e+01 4.1 3.88e+09 1.2 0.0e+00 0.0e+00 1.2e+04  0  0  0  0 27   1  1  0  0 48 167618
VecScale           11572 1.0 4.2316e-01 1.3 1.90e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3592066
VecCopy              819 1.0 4.0739e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2805 1.0 8.6429e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              530 1.0 1.9509e-01 1.5 1.58e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 647245
VecWAXPY             348 1.0 2.8499e-01 2.2 6.25e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 175557
VecMAXPY           11572 1.0 5.3508e+01 1.2 5.39e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   7 10  0  0  0 805574
VecScatterBegin   157536 1.2 6.6732e+00 2.3 0.00e+00 0.0 5.3e+07 1.1e+05 0.0e+00  0  0 15 35  0   1  0 93 90  0    -0
VecScatterEnd     157536 1.2 6.3572e+01 39.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
VecReduceArith       182 1.0 3.3251e-02 2.1 6.54e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1573830
VecReduceComm         91 1.0 1.2222e-01 22.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        2002 1.0 4.3657e+00 4.6 5.41e+08 1.2 0.0e+00 0.0e+00 2.0e+03  0  0  0  0  5   0  0  0  0  8 99053
MatMult            11390 1.0 3.0161e+02 1.2 2.09e+11 1.2 5.3e+07 1.1e+05 0.0e+00 14 19 15 35  0  41 40 93 90  0 552691
MatSolve           73073 1.2 1.4536e+01 1.7 8.45e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 464873
MatLUFactorSym        73 1.2 1.0505e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      6644 1.2 3.2127e+00 1.4 3.78e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 940204
MatILUFactorSym        1 1.0 7.4894e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    7512 1.2 3.1264e+01 6.7 0.00e+00 0.0 4.4e+05 5.9e+05 5.6e+02  1  0  0  1  1   2  0  1  4  2    -0
MatAssemblyEnd      7512 1.2 5.0096e+00 5.8 5.02e+07 0.0 2.8e+04 1.0e+04 4.4e+01  0  0  0  0  0   0  0  0  0  0  2991
MatGetRowIJ           73 1.2 2.2030e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      91 1.0 8.0904e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 7.3e+01  0  0  0  0  0   1  0  0  0  0    -0
MatGetOrdering        73 1.2 1.6698e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 2.9339e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatTranspose           5 1.0 1.0690e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.5250e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.3985e+00 1.2 2.62e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1493587
MatPtAPSymbolic        2 1.0 2.1323e-01 1.1 0.00e+00 0.0 2.8e+04 1.3e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 8.0352e+00 1.0 9.94e+09 1.3 8.6e+05 2.4e+05 1.9e+02  0  1  0  1  0   1  2  1  3  1 987478
MatGetLocalMat       184 1.0 4.2557e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 5.0273e-01 2.1 0.00e+00 0.0 8.7e+05 2.4e+05 0.0e+00  0  0  0  1  0   0  0  2  3  0    -0
MatSetPreallCOO       16 1.0 7.9118e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 3.5932e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 8.1350e+01 1.0 4.48e+10 1.2 9.5e+06 7.7e+04 4.4e+03  4  4  3  4 10  12  9 16 11 18 440062
PCApply             9222 1.0 1.3133e+03 1.0 5.67e+11 1.2 3.0e+08 3.6e+04 1.9e+04 66 52 84 61 44 Multiple stages 340955
PCApplyOnBlocks    73073 1.2 1.7414e+01 1.6 1.22e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 561276
KSPSetUp              91 1.0 1.3253e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.6643e+03 1.0 8.61e+11 1.2 3.4e+08 4.7e+04 3.8e+04 85 79 96 93 87 Multiple stages 410356
KSPGMRESOrthog     11042 1.0 1.6746e+02 1.8 1.00e+11 1.2 0.0e+00 0.0e+00 1.1e+04  6  9  0  0 25  18 19  0  0 45 479998
DMRefine               1 1.0 9.5904e-01 1.0 2.40e+03 1.0 2.9e+04 3.6e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     2
Mesh Partition         3 1.0 3.4285e-01 1.0 0.00e+00 0.0 1.1e+05 7.1e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 4.5987e-02 1.0 0.00e+00 0.0 3.7e+05 8.9e+01 1.8e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 9.1176e-03 1806.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 5.9964e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 1.1226e-02 2.4 0.00e+00 0.0 2.1e+04 5.9e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 2.6277e-03 2.3 0.00e+00 0.0 1.1e+04 2.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 4.7749e-03 1.6 0.00e+00 0.0 1.2e+04 2.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 3.7132e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.4946e-01 1.0 0.00e+00 0.0 3.2e+04 3.2e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 6.1110e-03 1.1 0.00e+00 0.0 6.3e+04 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 2.3024e-02 1.0 0.00e+00 0.0 1.8e+05 9.1e+01 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        2 1.0 4.6187e-02 1.1 0.00e+00 0.0 4.6e+05 7.4e+01 1.6e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        5 1.0 9.3714e-03 1.2 0.00e+00 0.0 9.4e+04 6.1e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 5.4613e-04 1.2 0.00e+00 0.0 7.2e+04 4.1e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 7.3299e-03 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 1.2844e-03 41.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.0835e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 1.2768e-04 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 3.0446e-03 1.8 0.00e+00 0.0 1.4e+04 2.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 6.8629e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.1967e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 5.4868e-04 4.7 0.00e+00 0.0 1.4e+04 2.8e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.7119e-05 6.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 9.8431e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 3.2694e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.8995e+03 1.0 1.09e+12 1.3 3.5e+08 4.9e+04 4.3e+04 97 100 100 100 99 Multiple stages 453791
SNESSetUp              1 1.0 4.5357e-05 7.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.5808e+01 1.1 7.87e+10 1.4 1.3e+06 1.2e+05 1.0e+00  2  7  0  1  0   7 14  2  2  0 1268899
SNESJacobianEval      91 1.0 1.0433e+02 1.0 1.13e+11 1.4 8.5e+05 3.4e+05 3.6e+02  5 10  0  2  1  15 20  1  4  1 800129
SNESLineSearch        91 1.0 2.4104e+01 1.0 6.12e+10 1.4 1.3e+06 1.2e+05 3.6e+02  1  5  0  1  1   4 11  2  2  1 1879612
DualSpaceSetUp         4 1.0 7.7504e-03 2.7 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     8
FESetUp                4 1.0 9.2008e-01 24.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.9545e+03 1.0 1.09e+12 1.3 3.6e+08 4.9e+04 4.3e+04 99 100 100 100 100 Multiple stages 441026
firedrake.__init__       1 1.0 2.8585e+01 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 2.3842e+01 38.9 0.00e+00 0.0 5.2e+05 6.7e+01 1.9e+02  1  0  0  0  0   3  0  1  0  1    -0
CreateMesh             2 1.0 6.3262e-01 1.0 0.00e+00 0.0 9.8e+05 8.3e+01 3.2e+02  0  0  0  0  1   0  0  2  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.2146e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 5.4180e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 6.1285e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 9.6128e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 2.1709e-01 1.0 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.7707e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 2.1478e-01 1.0 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.1253e-01 1.0 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.1240e-01 1.0 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.8126e-01 22.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 1.9017e-01 11.7 0.00e+00 0.0 6.8e+04 6.0e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 9.2902e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8128e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 2.5770e-01 70.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 9.4193e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 2.9619e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 8.3077e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.4916e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 9.4135e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.2255e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.4806e+02 1.2 1.92e+11 1.4 1.2e+06 1.2e+05 1.2e+01  7 16  0  1  0  21 34  2  2  0 956252
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 9.3739e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 4.4831e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.2805e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.2548e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.9953e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 2.7578e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 2.7577e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.5186e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.5029e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 3.1641e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.4274e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 1.2305e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 1.2159e+00 1.3 2.70e+06 1.2 1.9e+04 2.2e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1774
firedrake.interpolation.interpolate       6 1.0 1.4260e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.6062e+01 1.0 4.24e+06 1.2 1.1e+05 3.9e+03 9.7e+01  1  0  0  0  0   2  0  0  0  0   211
firedrake.formmanipulation.split_form       4 1.0 3.4486e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.9659e-04 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.0605e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.3 6.1564e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 6.0129e-01 4.1 0.00e+00 0.0 1.2e+06 1.2e+05 2.0e+00  0  0  0  1  0   0  0  2  2  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.7096e+00 1.1 4.23e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   913
firedrake.halo.Halo.global_to_local_end     243 1.0 1.1794e+01 544.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 5.0755e-01 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 4.6841e-01 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1617e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.7301e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.4609e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.0698e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.6928e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.4053e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.8895e+00 1.0 0.00e+00 0.0 2.8e+04 6.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9496e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5656e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1835e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1835e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         3 1.0 3.0807e+00 1.4 0.00e+00 0.0 4.3e+04 2.2e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 4.5819e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.8996e+03 1.0 1.09e+12 1.3 3.5e+08 4.9e+04 4.3e+04 97 100 100 100 99 Multiple stages 453778
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.0693e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.3133e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.2653e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.2162e+00 1.2 1.68e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   1  3  0  0  0 1635082
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1527e+00 1.0 2.89e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10736
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.1233e+00 1.0 2.89e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10885
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0612e+01 1.2 1.73e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   1  3  0  0  0 1301741
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7838e+01 1.4 4.46e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   2  7  0  0  0 1727963
firedrake.halo.Halo.local_to_global_begin     121 1.0 4.0996e-02 8.2 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 4.3632e+00 165.9 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1987
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.9416e+01 1.5 2.30e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 948078
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.5042e+00 1.0 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8431
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.4240e+00 1.0 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8710
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8431e+01 1.2 2.43e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   4  5  0  0  0 682883
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.6174e+01 1.5 6.60e+10 1.5 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   6 11  0  0  0 987571
firedrake.dmhooks.get_function_space       2 1.0 2.2996e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.7199e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 1.1921e+01 1.0 0.00e+00 0.0 6.2e+04 9.8e+01 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 1.1909e+01 1.0 0.00e+00 0.0 4.3e+04 8.0e+01 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 6.5345e+00 1.0 0.00e+00 0.0 2.4e+04 3.1e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.9438e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.9187e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.4928e+00 17.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.4847e+00 22.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.3332e+00 49.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 4.8011e+00 718.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 4.8010e+00 728.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 2.8285e-02 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 1.8961e-02 14.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 9.2420e-04 13.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.7621e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 3.2589e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.5685e-03 16.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.2132e-02 37.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 5.3720e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 2.5356e-02 4.3 0.00e+00 0.0 1.9e+04 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.3290e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.3371e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 1.7329e+00 1.0 3.94e+07 1.3 4.7e+06 2.5e+02 2.1e+03  0  0  1  0  5   0  0  8  0  9 17910
MGSetup Level 1       91 1.0 5.6684e+01 1.0 3.48e+10 1.2 4.3e+06 1.2e+05 2.0e+03  3  3  1  3  5   8  7  7  8  8 491103

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 2.3828e-02 3.1 0.00e+00 0.0 3.6e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            91 1.0 5.5397e-04 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 2.9936e-02 2.3 0.00e+00 0.0 7.2e+05 3.1e+01 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack           2794266 1.2 7.7261e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2794266 1.2 1.8157e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            55332 1.0 7.1256e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet            101440 1.0 1.6377e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAYPX            92220 1.0 1.8215e+01 1.9 9.97e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 437658
VecAXPBYCZ         18444 1.0 1.1155e-02 3.0 2.66e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1904730
VecScatterBegin  2794266 1.2 4.8135e+01 1.4 0.00e+00 0.0 3.0e+08 3.6e+04 0.0e+00  2  0 83 61  0   3  0 99 100  0    -0
VecScatterEnd    2794266 1.2 1.1035e+02 15.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            55332 1.0 5.3133e+02 1.2 3.68e+11 1.2 2.6e+08 4.1e+04 0.0e+00 25 34 73 61  0  38 66 87 100  0 552747
MatMultAdd         18444 1.0 2.5775e+01 1.2 1.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 412176
MatMultTranspose   18444 1.0 2.1265e+01 2.3 1.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 499588
MatSolve         1374078 1.2 6.9050e+02 1.1 1.62e+11 1.2 3.8e+07 1.1e+02 4.6e+02 34 14 11  0  1  51 28 13  0  2 180822
MatLUFactorNum        90 1.0 1.1223e+01 1.0 5.87e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   115
MatResidual        18444 1.0 2.7498e+02 1.2 1.86e+11 1.2 8.7e+07 6.1e+04 0.0e+00 13 17 24 31  0  19 33 29 50  0 538539
PCSetUp               90 1.0 1.1224e+01 1.0 5.87e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   115
PCSetUpOnBlocks    18444 1.0 1.0681e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            27666 1.0 7.7435e+02 1.1 1.63e+11 1.2 2.1e+08 1.8e+02 9.7e+03 38 15 59  0 22  57 28 71  0 51 161763
PCApplyOnBlocks  1364856 1.2 2.6679e+02 1.3 1.56e+11 1.2 0.0e+00 0.0e+00 0.0e+00 12 14  0  0  0  19 28  0  0  0 467226
KSPSolve           27666 1.0 1.0320e+03 1.1 3.55e+11 1.2 2.5e+08 2.1e+04 1.9e+04 51 32 72 31 44  77 62 85 50 100 269923
MGSmooth Level 0    9222 1.0 4.8119e+02 1.1 9.77e+09 12.2 2.1e+08 1.8e+02 1.9e+04 23  0 59  0 44  35  0 71  0 100  1880
MGSmooth Level 1   18444 1.0 5.8672e+02 1.2 3.48e+11 1.2 4.3e+07 1.2e+05 0.0e+00 28 32 12 31  0  43 62 15 50  0 473247
MGResid Level 1     9222 1.0 2.7464e+02 1.3 1.85e+11 1.2 4.3e+07 1.2e+05 0.0e+00 13 17 12 31  0  19 33 15 50  0 538908
MGInterp Level 1   18444 1.0 4.6298e+01 1.5 2.65e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   3  5  0  0  0 458191
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
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 8.7524e-06
Average time for zero size MPI_Send(): 2.4477e-06
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

