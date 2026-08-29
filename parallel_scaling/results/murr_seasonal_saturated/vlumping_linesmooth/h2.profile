****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0428.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 08:22:55 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.571e+03     1.000   4.571e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                4.296e+12     1.118   4.135e+12  8.600e+14
Flops/sec:            9.398e+08     1.118   9.046e+08  1.882e+11
MPI Msg Count:        6.596e+05     3.545   3.950e+05  8.215e+07
MPI Msg Len (bytes):  6.257e+10     3.588   9.313e+04  7.651e+12
MPI Reductions:       5.927e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.8229e+03  39.9%  5.4819e+14  63.7%  2.379e+07  29.0%  1.483e+05       46.1%  4.211e+04  71.1%
 1:        MG Apply: 2.7480e+03  60.1%  3.1183e+14  36.3%  5.837e+07  71.0%  7.067e+04       53.9%  1.713e+04  28.9%

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

BuildTwoSided       2704 1.0 1.1236e+02 2.8 0.00e+00 0.0 3.7e+05 4.0e+00 2.5e+03  2  0  0  0  4   4  0  2  0  6    -0
BuildTwoSidedF      2382 1.0 1.0856e+02 2.8 0.00e+00 0.0 6.0e+05 1.4e+06 2.4e+03  2  0  1 11  4   4  0  3 24  6    -0
SFSetGraph           329 1.1 1.5998e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              322 1.1 3.9850e+00 97.9 0.00e+00 0.0 1.4e+05 1.1e+03 9.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin        1800 1.0 1.0916e+00 4.5 0.00e+00 0.0 1.9e+06 1.0e+05 0.0e+00  0  0  2  3  0   0  0  8  5  0    -0
SFBcastEnd          1800 1.0 3.3085e+01 157.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        881 1.0 3.1846e-01 6.4 0.00e+00 0.0 9.5e+05 1.1e+05 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
SFReduceEnd          881 1.0 8.2981e+00 54.4 1.09e+08 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1602
SFFetchOpBegin         6 1.0 3.0679e-05 5.0 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 7.2911e-04 18.5 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.2021e-03 2.1 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.4561e-03 1.4 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 4.3188e-03 3.2 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            2 1.0 9.3326e-05 2.8 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            611861 1.1 1.0389e+01 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          611867 1.1 6.1078e-01 4.7 1.09e+08 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 21765
VecDot               493 1.0 2.1069e+00 7.3 3.98e+08 1.1 0.0e+00 0.0e+00 4.9e+02  0  0  0  0  1   0  0  0  0  1 38359
VecMDot            17468 1.0 2.5999e+02 1.7 1.75e+11 1.1 0.0e+00 0.0e+00 1.7e+04  4  4  0  0 29  11  6  0  0 41 136679
VecNorm            20019 1.0 3.9581e+01 2.9 1.61e+10 1.1 0.0e+00 0.0e+00 2.0e+04  1  0  0  0 34   1  1  0  0 48 82911
VecScale           18442 1.0 5.3822e+00 1.2 7.44e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 280850
VecCopy             3951 1.0 5.2690e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              4149 1.0 3.5072e+00 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              974 1.0 1.5557e+00 1.2 7.85e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 102634
VecWAXPY            1079 1.0 2.1917e+00 1.4 5.25e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 48692
VecMAXPY           18442 1.0 2.2994e+02 1.1 1.89e+11 1.1 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0  12  7  0  0  0 166995
VecScatterBegin   609174 1.1 1.6346e+01 1.7 0.00e+00 0.0 2.0e+07 1.2e+05 0.0e+00  0  0 24 30  0   1  0 84 66  0    -0
VecScatterEnd     609174 1.1 1.0209e+02 16.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom          62 1.0 2.2803e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       986 1.0 7.3082e-01 2.1 7.95e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 221169
VecReduceComm        493 1.0 5.5478e-01 20.7 0.00e+00 0.0 0.0e+00 0.0e+00 4.9e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        1313 1.0 4.2479e+00 2.7 1.59e+09 1.1 0.0e+00 0.0e+00 1.3e+03  0  0  0  0  2   0  0  0  0  3 76005
MatMult            18324 1.0 7.6863e+02 1.2 5.24e+11 1.1 2.0e+07 1.2e+05 0.0e+00 15 12 24 30  0  39 19 84 66  0 138279
MatSolve          294112 1.1 3.2344e+01 1.3 1.85e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 116190
MatLUFactorSym       225 1.1 6.4971e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     14072 1.1 1.6609e+01 1.0 4.09e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 48903
MatCopy              182 1.0 9.5861e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 1.6114e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   16687 1.1 1.1327e+02 2.2 0.00e+00 0.0 6.0e+05 1.4e+06 2.4e+03  2  0  1 11  4   5  0  3 24  6    -0
MatAssemblyEnd     16687 1.1 3.3029e+01 8.6 6.10e+08 0.0 4.4e+03 1.5e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  1579
MatGetRowIJ          224 1.1 3.3921e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      62 1.0 7.8944e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  0   0  0  0  0  1    -0
MatGetOrdering       224 1.1 4.3273e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       732 1.0 1.9702e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.5253e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2403e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        368 1.0 3.5578e+00 1.3 5.34e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 304310
MatPtAPSymbolic        1 1.0 2.0286e-01 1.0 0.00e+00 0.0 3.3e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       184 1.0 2.4908e+01 1.0 2.14e+10 1.1 2.0e+05 3.4e+05 1.9e+02  1  1  0  1  0   1  1  1  2  0 173842
MatGetLocalMat       184 1.0 1.3312e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 8.1911e-01 2.4 0.00e+00 0.0 2.0e+05 3.5e+05 0.0e+00  0  0  0  1  0   0  0  1  2  0    -0
MatSetPreallCOO       32 1.0 6.9603e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.8951e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              548 1.0 1.8455e+02 1.0 1.04e+11 1.1 1.6e+06 1.5e+05 3.4e+03  4  2  2  3  6  10  4  7  6  8 113877
PCApply            16218 1.0 2.7901e+03 1.1 1.55e+12 1.1 5.8e+07 7.1e+04 1.7e+04 60 36 71 54 29 Multiple stages 111764
PCApplyOnBlocks   294112 1.1 3.6415e+01 1.3 2.25e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 125398
KSPSetUp             548 1.0 1.4911e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             548 1.0 3.8030e+03 1.0 2.39e+12 1.1 7.6e+07 8.1e+04 5.0e+04 83 56 93 81 85 Multiple stages 126699
KSPGMRESOrthog     17468 1.0 4.5624e+02 1.3 3.50e+11 1.1 0.0e+00 0.0e+00 1.7e+04  9  8  0  0 29  22 13  0  0 41 155774
DMRefine               2 1.0 2.3764e-01 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     2
DMPlexCreateGmsh       1 1.0 1.7430e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.4224e+00 352.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 9.1068e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.6733e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 2.0676e-03 830.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.4501e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 5.4534e-03 1.1 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.5857e-03 1.5 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.9675e-03 3.2 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 7.2170e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.4511e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 2.0703e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 6.5168e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        3 1.0 1.5312e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        7 1.0 3.4686e-03 1.3 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.4409e-03 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.1911e-04 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1192e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.1809e-03 1.6 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1102e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.1420e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.6789e-04 2.0 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.8163e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 9.2813e-04 2.3 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve            124 1.0 4.5016e+03 1.0 4.30e+12 1.1 8.2e+07 9.4e+04 5.8e+04 98 100 99 100 99 Multiple stages 191042
SNESSetUp              1 1.0 5.8430e-05 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     840 1.0 6.8084e+01 1.2 7.62e+11 1.2 2.0e+06 1.2e+05 0.0e+00  1 17  2  3  0   4 27  8  6  0 2195176
SNESJacobianEval     548 1.0 4.2214e+02 1.0 1.04e+12 1.2 1.2e+06 7.6e+05 2.2e+03  9 24  1 12  4  23 37  5 26  5 483961
SNESLineSearch       493 1.0 7.3799e+01 1.0 6.66e+11 1.2 2.1e+06 1.2e+05 2.2e+03  2 15  3  3  4   4 24  9  7  5 1771989
DualSpaceSetUp         8 1.0 5.3505e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 2.0207e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.5687e+03 1.0 4.30e+12 1.1 8.2e+07 9.3e+04 5.9e+04 100 100 100 100 100 Multiple stages 188241
firedrake.__init__       1 1.0 1.1553e+01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             3 1.0 6.5780e+00 38.4 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  0  0  0  0  1   0  0  1  0  1    -0
firedrake.mesh._from_gmsh       1 1.0 6.4230e+00 352.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.3041e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.6260e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.6845e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0530e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 3.3836e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 2.2391e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.1500e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.9084e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.8959e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.2873e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 9.7226e-03 2.0 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.6945e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.5692e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.2510e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.2489e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.7351e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.2236e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 5.5628e-04 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.2424e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     940 1.0 1.3850e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      6412 1.0 4.0253e+02 1.2 1.80e+12 1.2 1.7e+06 1.2e+05 3.2e+01  8 41  2  3  0  20 65  7  5  0 878702
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.1977e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   12824 1.0 2.6350e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0691e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.4229e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5491e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.5040e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.5039e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.7628e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.6111e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    6412 1.0 1.8572e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      6412 1.0 1.6694e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.0167e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.3050e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  0  0  0  0  0   0  0  0  0  0   333
firedrake.interpolation.interpolate      13 1.0 4.6211e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.9430e+00 1.0 8.46e+07 1.1 2.8e+04 4.0e+04 3.7e+01  0  0  0  0  0   0  0  0  0  0  2893
firedrake.formmanipulation.split_form      14 1.0 4.7557e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.6148e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5310e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0661e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1533 1.0 5.7134e+00 10.3 0.00e+00 0.0 1.7e+06 1.1e+05 4.0e+00  0  0  2  3  0   0  0  7  5  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4558e+00 1.0 8.46e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3151
firedrake.halo.Halo.global_to_local_end    1533 1.0 3.2650e+01 139.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.5692e+00 71.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aed3e6c8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aed89a6b90_wrap_pyop2_kernel_prolong       4 0.0 4.8653e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9497e+00 1.0 6.85e+07 1.1 1.7e+04 5.8e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  3528
firedrake.function.Function.assign     510 1.0 2.9105e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     509 1.0 2.7790e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1824e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     142 1.0 1.5552e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.0387e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.6202e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9688e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.3690e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.5492e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.9517e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.0794e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2032e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2032e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 4.1259e+00 1.1 0.00e+00 0.0 5.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.5349e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve     124 1.0 4.5021e+03 1.0 4.30e+12 1.1 8.2e+07 9.4e+04 5.9e+04 98 100 99 100 99 Multiple stages 191024
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.9626e-01 1078.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0918e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.9621e-01 1319.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.9617e-01 1521.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1680 1.0 2.0921e+01 1.5 1.95e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  7  0  0  0 1890688
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1680 1.0 1.0556e+00 1.0 2.50e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4819
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1680 1.0 1.4352e+00 1.2 2.01e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 34044
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1680 1.0 1.1929e+01 1.2 1.85e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  7  0  0  0 3151452
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1680 1.0 2.7854e+01 1.3 3.82e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1 13  0  0  0 2593528
firedrake.halo.Halo.local_to_global_begin     840 1.0 3.5067e-01 5.1 0.00e+00 0.0 9.2e+05 1.2e+05 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
firedrake.halo.Halo.local_to_global_end     840 1.0 8.3066e+00 51.8 1.09e+08 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1600
Parloop_Cells_wrap_form00_cell_integral    1096 1.0 6.7660e+01 1.4 2.36e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   3  9  0  0  0 708223
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral    1096 1.0 3.4236e+00 2.6 1.32e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9367
Parloop_Cells_wrap_form00_interior_facet_horiz_integral    1096 1.0 8.3686e+01 1.2 3.10e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   4 11  0  0  0 753286
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral    1096 1.0 1.9289e+02 1.4 4.93e+11 1.3 0.0e+00 0.0e+00 0.0e+00  4 11  0  0  0   9 17  0  0  0 483462
firedrake.dmhooks.get_function_space       2 1.0 2.6805e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.4051e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      184 1.0 1.4006e+01 1.0 1.10e+08 27.1 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0   285
MGSetup Level 1      184 1.0 1.7470e+00 1.0 6.16e+08 1.1 1.1e+04 1.2e+05 2.5e+02  0  0  0  0  0   0  0  0  0  1 71586
firedrake.constant.Constant.assign     124 1.0 7.5189e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15168e329410_wrap_pyop2_kernel_prolong       4 0.0 7.4851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15168e0fc3d0_wrap_pyop2_kernel_prolong       4 0.0 4.8053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15300cb69290_wrap_pyop2_kernel_prolong       4 0.0 7.4902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15300c1e5bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149074738c50_wrap_pyop2_kernel_prolong       4 0.0 7.4884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14907470a1d0_wrap_pyop2_kernel_prolong       4 0.0 5.5424e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2a7d7fa50_wrap_pyop2_kernel_prolong       4 0.0 7.4929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2a7d7e250_wrap_pyop2_kernel_prolong       4 0.0 6.9183e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15286721ebd0_wrap_pyop2_kernel_prolong       4 0.0 7.4864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15286721e5d0_wrap_pyop2_kernel_prolong       4 0.0 6.2146e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14940f81f710_wrap_pyop2_kernel_prolong       4 0.0 7.4810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14940faa0e10_wrap_pyop2_kernel_prolong       4 0.0 5.2382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f78573b590_wrap_pyop2_kernel_prolong       4 0.0 7.4861e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f78573c4d0_wrap_pyop2_kernel_prolong       4 0.0 5.2407e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee34aac210_wrap_pyop2_kernel_prolong       4 0.0 7.4861e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee34ab54d0_wrap_pyop2_kernel_prolong       4 0.0 5.2354e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473eb392f90_wrap_pyop2_kernel_prolong       4 0.0 7.4884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473eab19150_wrap_pyop2_kernel_prolong       4 0.0 5.5643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149025393210_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149025390ed0_wrap_pyop2_kernel_prolong       4 0.0 6.4521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be99bca290_wrap_pyop2_kernel_prolong       4 0.0 7.4882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be99bcebd0_wrap_pyop2_kernel_prolong       4 0.0 6.0354e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a11c2530d0_wrap_pyop2_kernel_prolong       4 0.0 7.4920e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a11c0e7fd0_wrap_pyop2_kernel_prolong       4 0.0 6.9984e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b196429610_wrap_pyop2_kernel_prolong       4 0.0 7.4642e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b195c65fd0_wrap_pyop2_kernel_prolong       4 0.0 5.5928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6ffdb7010_wrap_pyop2_kernel_prolong       4 0.0 7.4768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6ff4d41d0_wrap_pyop2_kernel_prolong       4 0.0 6.2313e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ccbd8c0d0_wrap_pyop2_kernel_prolong       4 0.0 7.4865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ccbfd5690_wrap_pyop2_kernel_prolong       4 0.0 7.3640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4fe179bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4fe179590_wrap_pyop2_kernel_prolong       4 0.0 4.8453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e163edd0_wrap_pyop2_kernel_prolong       4 0.0 7.4781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e163ca10_wrap_pyop2_kernel_prolong       4 0.0 5.9171e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539e6affa50_wrap_pyop2_kernel_prolong       4 0.0 7.4762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539e7652250_wrap_pyop2_kernel_prolong       4 0.0 7.3219e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e70cd0d490_wrap_pyop2_kernel_prolong       4 0.0 7.4816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e70c4e6110_wrap_pyop2_kernel_prolong       4 0.0 5.6317e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f59dc450_wrap_pyop2_kernel_prolong       4 0.0 7.4616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f59dc0d0_wrap_pyop2_kernel_prolong       4 0.0 5.0836e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e851ff350_wrap_pyop2_kernel_prolong       4 0.0 7.4635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e8525e690_wrap_pyop2_kernel_prolong       4 0.0 5.5512e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152249902750_wrap_pyop2_kernel_prolong       4 0.0 7.4797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522498f1410_wrap_pyop2_kernel_prolong       4 0.0 6.1566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c66f922d0_wrap_pyop2_kernel_prolong       4 0.0 7.4753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c66f91910_wrap_pyop2_kernel_prolong       4 0.0 7.1240e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc2acd6790_wrap_pyop2_kernel_prolong       4 0.0 7.4713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc2acc8e90_wrap_pyop2_kernel_prolong       4 0.0 6.1747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d644c19350_wrap_pyop2_kernel_prolong       4 0.0 7.4868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d644c25a10_wrap_pyop2_kernel_prolong       4 0.0 7.6726e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fefa0536d0_wrap_pyop2_kernel_prolong       4 0.0 7.4708e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fefa0528d0_wrap_pyop2_kernel_prolong       4 0.0 5.4986e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145866354f10_wrap_pyop2_kernel_prolong       4 0.0 7.4862e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14586590f590_wrap_pyop2_kernel_prolong       4 0.0 5.0990e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d6e9d0410_wrap_pyop2_kernel_prolong       4 0.0 7.4847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d6eb06f10_wrap_pyop2_kernel_prolong       4 0.0 5.8513e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554578b6810_wrap_pyop2_kernel_prolong       4 0.0 7.4779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554578b5f90_wrap_pyop2_kernel_prolong       4 0.0 6.2774e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15108dcccb50_wrap_pyop2_kernel_prolong       4 0.0 7.4665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15108daa9a50_wrap_pyop2_kernel_prolong       4 0.0 6.2629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ec9866190_wrap_pyop2_kernel_prolong       4 0.0 7.4832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ec9869790_wrap_pyop2_kernel_prolong       4 0.0 5.6201e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1ac8ea6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1ac8f2b90_wrap_pyop2_kernel_prolong       4 0.0 5.6255e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f67cc42710_wrap_pyop2_kernel_prolong       4 0.0 7.4760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f67cafdd10_wrap_pyop2_kernel_prolong       4 0.0 6.0321e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca3d6b4150_wrap_pyop2_kernel_prolong       4 0.0 7.4951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca3ceb7f90_wrap_pyop2_kernel_prolong       4 0.0 6.5854e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdc7aa12d0_wrap_pyop2_kernel_prolong       4 0.0 7.4858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdc7ac55d0_wrap_pyop2_kernel_prolong       4 0.0 5.5641e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15277336c8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527731c1e50_wrap_pyop2_kernel_prolong       4 0.0 6.9208e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bd80d0a90_wrap_pyop2_kernel_prolong       4 0.0 7.4808e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bd80d32d0_wrap_pyop2_kernel_prolong       4 0.0 6.3338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df81d68e50_wrap_pyop2_kernel_prolong       4 0.0 7.4811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df80b582d0_wrap_pyop2_kernel_prolong       4 0.0 7.5842e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bd4aafd90_wrap_pyop2_kernel_prolong       4 0.0 7.4914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bcf636b90_wrap_pyop2_kernel_prolong       4 0.0 5.7530e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14701e7da750_wrap_pyop2_kernel_prolong       4 0.0 7.4744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14701e7d9690_wrap_pyop2_kernel_prolong       4 0.0 6.0587e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e664afdd0_wrap_pyop2_kernel_prolong       4 0.0 7.4706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e66387bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2795e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521de507bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521de455e90_wrap_pyop2_kernel_prolong       4 0.0 6.2542e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553180c6f90_wrap_pyop2_kernel_prolong       4 0.0 7.4777e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553180c78d0_wrap_pyop2_kernel_prolong       4 0.0 5.4345e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f2c8e48d0_wrap_pyop2_kernel_prolong       4 0.0 7.4901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f2c7dcc10_wrap_pyop2_kernel_prolong       4 0.0 7.3507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467ed4048d0_wrap_pyop2_kernel_prolong       4 0.0 7.4809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467ed313350_wrap_pyop2_kernel_prolong       4 0.0 5.8130e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519c1c95490_wrap_pyop2_kernel_prolong       4 0.0 7.4929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519c1d06250_wrap_pyop2_kernel_prolong       4 0.0 7.2522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15003035aa50_wrap_pyop2_kernel_prolong       4 0.0 7.4859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150030369950_wrap_pyop2_kernel_prolong       4 0.0 6.6584e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf9eb34490_wrap_pyop2_kernel_prolong       4 0.0 7.4758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf9edd2310_wrap_pyop2_kernel_prolong       4 0.0 6.0649e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517020ea7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151702121890_wrap_pyop2_kernel_prolong       4 0.0 7.1439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de41ef9250_wrap_pyop2_kernel_prolong       4 0.0 7.4775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de41f0ea10_wrap_pyop2_kernel_prolong       4 0.0 6.3655e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a203aa3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a1b987bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b316a3bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b30f70e90_wrap_pyop2_kernel_prolong       4 0.0 5.2088e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461f8e03350_wrap_pyop2_kernel_prolong       4 0.0 7.4640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461f9055150_wrap_pyop2_kernel_prolong       4 0.0 5.2385e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456c5961b10_wrap_pyop2_kernel_prolong       4 0.0 7.4680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456c595bed0_wrap_pyop2_kernel_prolong       4 0.0 5.4595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454bda73250_wrap_pyop2_kernel_prolong       4 0.0 7.4766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454bda62bd0_wrap_pyop2_kernel_prolong       4 0.0 5.0836e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ab4fce850_wrap_pyop2_kernel_prolong       4 0.0 7.4743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ab4fad8d0_wrap_pyop2_kernel_prolong       4 0.0 6.1393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e41515bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e41524e10_wrap_pyop2_kernel_prolong       4 0.0 6.2299e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fb60d8890_wrap_pyop2_kernel_prolong       4 0.0 7.4618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fb60c0790_wrap_pyop2_kernel_prolong       4 0.0 4.8592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f454e99b90_wrap_pyop2_kernel_prolong       4 0.0 7.4802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f454ea0090_wrap_pyop2_kernel_prolong       4 0.0 5.8595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0e9f0a210_wrap_pyop2_kernel_prolong       4 0.0 7.4693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0e9f69b90_wrap_pyop2_kernel_prolong       4 0.0 5.6111e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a12c95e050_wrap_pyop2_kernel_prolong       4 0.0 7.4810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a127f90050_wrap_pyop2_kernel_prolong       4 0.0 5.6307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15123dba3b50_wrap_pyop2_kernel_prolong       4 0.0 7.4771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15123dce1250_wrap_pyop2_kernel_prolong       4 0.0 6.2531e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a26443410_wrap_pyop2_kernel_prolong       4 0.0 7.4795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a2643d150_wrap_pyop2_kernel_prolong       4 0.0 6.8514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd187d1010_wrap_pyop2_kernel_prolong       4 0.0 7.4954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd18a68110_wrap_pyop2_kernel_prolong       4 0.0 6.8818e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471909c4ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471909c1bd0_wrap_pyop2_kernel_prolong       4 0.0 5.3928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e33d767d0_wrap_pyop2_kernel_prolong       4 0.0 7.4673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e33d75610_wrap_pyop2_kernel_prolong       4 0.0 5.9305e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d3257bbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d3257a3d0_wrap_pyop2_kernel_prolong       4 0.0 6.6888e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef410b2c50_wrap_pyop2_kernel_prolong       4 0.0 7.4668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef410b2490_wrap_pyop2_kernel_prolong       4 0.0 5.9498e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfef27e590_wrap_pyop2_kernel_prolong       4 0.0 7.4834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfef27f1d0_wrap_pyop2_kernel_prolong       4 0.0 6.1518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf1c0e78d0_wrap_pyop2_kernel_prolong       4 0.0 7.4716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf1c099bd0_wrap_pyop2_kernel_prolong       4 0.0 7.0440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14625c0be690_wrap_pyop2_kernel_prolong       4 0.0 7.4695e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14625c1d5cd0_wrap_pyop2_kernel_prolong       4 0.0 6.2869e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146777100290_wrap_pyop2_kernel_prolong       4 0.0 7.4644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14677714f550_wrap_pyop2_kernel_prolong       4 0.0 5.3465e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e8573b710_wrap_pyop2_kernel_prolong       4 0.0 7.4838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e857347d0_wrap_pyop2_kernel_prolong       4 0.0 6.8770e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c0983fb10_wrap_pyop2_kernel_prolong       4 0.0 7.4690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c0983ccd0_wrap_pyop2_kernel_prolong       4 0.0 5.5866e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485f3abe750_wrap_pyop2_kernel_prolong       4 0.0 7.4675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485f3837cd0_wrap_pyop2_kernel_prolong       4 0.0 6.2540e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c853e0e190_wrap_pyop2_kernel_prolong       4 0.0 7.4756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c853d5cc50_wrap_pyop2_kernel_prolong       4 0.0 7.0533e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc41e77550_wrap_pyop2_kernel_prolong       4 0.0 7.4751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc41e74cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477de917590_wrap_pyop2_kernel_prolong       4 0.0 7.4863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477de90dd50_wrap_pyop2_kernel_prolong       4 0.0 6.0435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f675df310_wrap_pyop2_kernel_prolong       4 0.0 7.4827e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f675dd950_wrap_pyop2_kernel_prolong       4 0.0 6.0473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547f3429cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547f3428550_wrap_pyop2_kernel_prolong       4 0.0 6.1956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0fbf5e150_wrap_pyop2_kernel_prolong       4 0.0 7.4760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0fbf65510_wrap_pyop2_kernel_prolong       4 0.0 6.1594e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b10301dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b0b935550_wrap_pyop2_kernel_prolong       4 0.0 5.4123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1d35f17d0_wrap_pyop2_kernel_prolong       4 0.0 7.4867e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1d35d9f90_wrap_pyop2_kernel_prolong       4 0.0 7.3458e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543fc9c6c10_wrap_pyop2_kernel_prolong       4 0.0 7.4700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543e2153490_wrap_pyop2_kernel_prolong       4 0.0 5.2476e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ee39920d0_wrap_pyop2_kernel_prolong       4 0.0 7.4830e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ee39d10d0_wrap_pyop2_kernel_prolong       4 0.0 5.6252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474316b4990_wrap_pyop2_kernel_prolong       4 0.0 7.4707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474314c4050_wrap_pyop2_kernel_prolong       4 0.0 5.8058e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147513a32310_wrap_pyop2_kernel_prolong       4 0.0 7.4807e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147513102250_wrap_pyop2_kernel_prolong       4 0.0 6.6512e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f472aec90_wrap_pyop2_kernel_prolong       4 0.0 7.4706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f472af210_wrap_pyop2_kernel_prolong       4 0.0 5.7805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489cda5e850_wrap_pyop2_kernel_prolong       4 0.0 7.4738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489cda5d790_wrap_pyop2_kernel_prolong       4 0.0 6.6929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14881b4f6610_wrap_pyop2_kernel_prolong       4 0.0 7.4758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14881b4f5f90_wrap_pyop2_kernel_prolong       4 0.0 7.1116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1a579c850_wrap_pyop2_kernel_prolong       4 0.0 7.4796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1a53d31d0_wrap_pyop2_kernel_prolong       4 0.0 6.2650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2661c5810_wrap_pyop2_kernel_prolong       4 0.0 7.4821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2658821d0_wrap_pyop2_kernel_prolong       4 0.0 5.5999e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15171cbf6fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15171cbf5390_wrap_pyop2_kernel_prolong       4 0.0 6.6494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15091de53dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15091de41f10_wrap_pyop2_kernel_prolong       4 0.0 5.5400e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544c257a710_wrap_pyop2_kernel_prolong       4 0.0 7.4850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544c3086cd0_wrap_pyop2_kernel_prolong       4 0.0 6.9268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151200ea0490_wrap_pyop2_kernel_prolong       4 0.0 7.4928e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151200ea5410_wrap_pyop2_kernel_prolong       4 0.0 7.1028e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a35efc90_wrap_pyop2_kernel_prolong       4 0.0 7.4861e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a33c9150_wrap_pyop2_kernel_prolong       4 0.0 6.0609e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15503fd3acd0_wrap_pyop2_kernel_prolong       4 0.0 7.4767e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15503ffc5c90_wrap_pyop2_kernel_prolong       4 0.0 6.3179e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145733e91850_wrap_pyop2_kernel_prolong       4 0.0 7.4824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145733e958d0_wrap_pyop2_kernel_prolong       4 0.0 6.6452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539ada3e910_wrap_pyop2_kernel_prolong       4 0.0 7.4768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539ad1abbd0_wrap_pyop2_kernel_prolong       4 0.0 6.4832e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15148d866f50_wrap_pyop2_kernel_prolong       4 0.0 7.4882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15148d8ec890_wrap_pyop2_kernel_prolong       4 0.0 6.1449e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455c416a290_wrap_pyop2_kernel_prolong       4 0.0 7.4840e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455c4168290_wrap_pyop2_kernel_prolong       4 0.0 6.4189e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d1d4c4710_wrap_pyop2_kernel_prolong       4 0.0 7.4741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d1d308310_wrap_pyop2_kernel_prolong       4 0.0 7.3615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f74c9fe50_wrap_pyop2_kernel_prolong       4 0.0 7.5606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f7435b2d0_wrap_pyop2_kernel_prolong       4 0.0 5.1668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148553b9f090_wrap_pyop2_kernel_prolong       4 0.0 7.5610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148553b2c1d0_wrap_pyop2_kernel_prolong       4 0.0 5.4867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525069babd0_wrap_pyop2_kernel_prolong       4 0.0 7.5534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525068ad250_wrap_pyop2_kernel_prolong       4 0.0 5.5983e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da4127db10_wrap_pyop2_kernel_prolong       4 0.0 7.5589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da4127ccd0_wrap_pyop2_kernel_prolong       4 0.0 6.0171e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed9c29b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed9c29a610_wrap_pyop2_kernel_prolong       4 0.0 6.0591e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151577737750_wrap_pyop2_kernel_prolong       4 0.0 7.5680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515776eee50_wrap_pyop2_kernel_prolong       4 0.0 7.3967e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db3c61b090_wrap_pyop2_kernel_prolong       4 0.0 7.5602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db3c5f08d0_wrap_pyop2_kernel_prolong       4 0.0 5.4301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15269cbedc50_wrap_pyop2_kernel_prolong       4 0.0 7.5604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15269cc0b110_wrap_pyop2_kernel_prolong       4 0.0 5.8192e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fea9087810_wrap_pyop2_kernel_prolong       4 0.0 7.5588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fea9084910_wrap_pyop2_kernel_prolong       4 0.0 5.6203e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5d2442e10_wrap_pyop2_kernel_prolong       4 0.0 7.5610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5d2440190_wrap_pyop2_kernel_prolong       4 0.0 5.7188e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d14c48f290_wrap_pyop2_kernel_prolong       4 0.0 7.5645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d14c417d50_wrap_pyop2_kernel_prolong       4 0.0 6.1764e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146397e98950_wrap_pyop2_kernel_prolong       4 0.0 7.5577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146397ec4350_wrap_pyop2_kernel_prolong       4 0.0 6.4755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d835bd310_wrap_pyop2_kernel_prolong       4 0.0 7.5645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d83567d10_wrap_pyop2_kernel_prolong       4 0.0 6.4755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15093468b490_wrap_pyop2_kernel_prolong       4 0.0 7.6347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150934670e10_wrap_pyop2_kernel_prolong       4 0.0 4.9943e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547691fcb10_wrap_pyop2_kernel_prolong       4 0.0 7.5548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547691fe790_wrap_pyop2_kernel_prolong       4 0.0 5.9105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8ecc6d690_wrap_pyop2_kernel_prolong       4 0.0 7.5596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8ecc99b50_wrap_pyop2_kernel_prolong       4 0.0 6.3747e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d2003ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6d2001190_wrap_pyop2_kernel_prolong       4 0.0 5.6077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531bc294e90_wrap_pyop2_kernel_prolong       4 0.0 7.6310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531bc2e7b50_wrap_pyop2_kernel_prolong       4 0.0 5.7989e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6b1765410_wrap_pyop2_kernel_prolong       4 0.0 7.5522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6b17b1bd0_wrap_pyop2_kernel_prolong       4 0.0 6.3805e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b13770bdd0_wrap_pyop2_kernel_prolong       4 0.0 7.5502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b137742a10_wrap_pyop2_kernel_prolong       4 0.0 5.1745e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac3fe77c90_wrap_pyop2_kernel_prolong       4 0.0 7.5778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac3fc3a090_wrap_pyop2_kernel_prolong       4 0.0 5.0228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478bccb6510_wrap_pyop2_kernel_prolong       4 0.0 7.6178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478bccae5d0_wrap_pyop2_kernel_prolong       4 0.0 5.9767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c8a212d10_wrap_pyop2_kernel_prolong       4 0.0 7.5929e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c8a212190_wrap_pyop2_kernel_prolong       4 0.0 5.7116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14815a269250_wrap_pyop2_kernel_prolong       4 0.0 7.5578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14815a4daa90_wrap_pyop2_kernel_prolong       4 0.0 7.1640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471ae9f57d0_wrap_pyop2_kernel_prolong       4 0.0 7.5569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471aea5afd0_wrap_pyop2_kernel_prolong       4 0.0 5.4521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d9f9baed0_wrap_pyop2_kernel_prolong       4 0.0 7.6358e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d9e758650_wrap_pyop2_kernel_prolong       4 0.0 7.1221e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533522f1d50_wrap_pyop2_kernel_prolong       4 0.0 7.5539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533522f2410_wrap_pyop2_kernel_prolong       4 0.0 5.0267e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce3b6dedd0_wrap_pyop2_kernel_prolong       4 0.0 7.5542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce3b6dcc90_wrap_pyop2_kernel_prolong       4 0.0 5.7474e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cec5224850_wrap_pyop2_kernel_prolong       4 0.0 7.5542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cec5227550_wrap_pyop2_kernel_prolong       4 0.0 6.7348e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b31c6b6550_wrap_pyop2_kernel_prolong       4 0.0 7.5513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b31d01a990_wrap_pyop2_kernel_prolong       4 0.0 5.4511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d2f2f9990_wrap_pyop2_kernel_prolong       4 0.0 7.5550e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d2f578690_wrap_pyop2_kernel_prolong       4 0.0 6.5404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f01016790_wrap_pyop2_kernel_prolong       4 0.0 7.6251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f00fa5690_wrap_pyop2_kernel_prolong       4 0.0 6.6461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d19ff8bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5511e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d19ffef390_wrap_pyop2_kernel_prolong       4 0.0 5.0494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d60656bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6407e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d60569910_wrap_pyop2_kernel_prolong       4 0.0 6.6549e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14930ab1eb10_wrap_pyop2_kernel_prolong       4 0.0 7.5902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14930aa160d0_wrap_pyop2_kernel_prolong       4 0.0 5.5401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152228ffa5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5955e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15222903de10_wrap_pyop2_kernel_prolong       4 0.0 6.0754e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e78ee732d0_wrap_pyop2_kernel_prolong       4 0.0 7.5745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e78ef500d0_wrap_pyop2_kernel_prolong       4 0.0 6.9820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482a566db90_wrap_pyop2_kernel_prolong       4 0.0 7.6041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482a576da50_wrap_pyop2_kernel_prolong       4 0.0 6.1705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2367eacd0_wrap_pyop2_kernel_prolong       4 0.0 7.5532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2367e9010_wrap_pyop2_kernel_prolong       4 0.0 6.4991e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be954984d0_wrap_pyop2_kernel_prolong       4 0.0 7.5806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be9549a490_wrap_pyop2_kernel_prolong       4 0.0 6.0721e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466c76aa610_wrap_pyop2_kernel_prolong       4 0.0 7.5760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466c768e090_wrap_pyop2_kernel_prolong       4 0.0 6.4990e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ec597e9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ec597e250_wrap_pyop2_kernel_prolong       4 0.0 5.6451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14938a0fba10_wrap_pyop2_kernel_prolong       4 0.0 7.6346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14938a0fa2d0_wrap_pyop2_kernel_prolong       4 0.0 5.9122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af9a2da5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af9a13c810_wrap_pyop2_kernel_prolong       4 0.0 6.6167e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462f6bd3090_wrap_pyop2_kernel_prolong       4 0.0 7.6294e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462f6bd2fd0_wrap_pyop2_kernel_prolong       4 0.0 7.1267e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f9ea20750_wrap_pyop2_kernel_prolong       4 0.0 7.6258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f9ec36150_wrap_pyop2_kernel_prolong       4 0.0 5.9532e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b712b974d0_wrap_pyop2_kernel_prolong       4 0.0 7.6369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b712b9a890_wrap_pyop2_kernel_prolong       4 0.0 6.5113e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abd668e190_wrap_pyop2_kernel_prolong       4 0.0 7.6198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abd669dd90_wrap_pyop2_kernel_prolong       4 0.0 5.9477e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c92546bf10_wrap_pyop2_kernel_prolong       4 0.0 7.5981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c92546b650_wrap_pyop2_kernel_prolong       4 0.0 6.0028e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14638314f590_wrap_pyop2_kernel_prolong       4 0.0 7.5630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463831a9b50_wrap_pyop2_kernel_prolong       4 0.0 7.3643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bbece1610_wrap_pyop2_kernel_prolong       4 0.0 7.6130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bbece2490_wrap_pyop2_kernel_prolong       4 0.0 6.8812e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14613d547c10_wrap_pyop2_kernel_prolong       4 0.0 7.6083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14613d542e90_wrap_pyop2_kernel_prolong       4 0.0 7.6062e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6a543af90_wrap_pyop2_kernel_prolong       4 0.0 7.5755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6a5438910_wrap_pyop2_kernel_prolong       4 0.0 5.6474e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ee595bbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ee599a7d0_wrap_pyop2_kernel_prolong       4 0.0 6.3097e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5ecfe8190_wrap_pyop2_kernel_prolong       4 0.0 7.5729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5ecfdfdd0_wrap_pyop2_kernel_prolong       4 0.0 6.6744e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5c78da490_wrap_pyop2_kernel_prolong       4 0.0 7.5496e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5c7867310_wrap_pyop2_kernel_prolong       4 0.0 5.7175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552b52b8c50_wrap_pyop2_kernel_prolong       4 0.0 7.5506e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552b5289050_wrap_pyop2_kernel_prolong       4 0.0 6.0306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cfcf77090_wrap_pyop2_kernel_prolong       4 0.0 7.5487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cfd1ac6d0_wrap_pyop2_kernel_prolong       4 0.0 5.3091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eacbb5a590_wrap_pyop2_kernel_prolong       4 0.0 7.5465e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eacbb65510_wrap_pyop2_kernel_prolong       4 0.0 4.7201e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e6ae1d10_wrap_pyop2_kernel_prolong       4 0.0 7.5540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e6aa6d90_wrap_pyop2_kernel_prolong       4 0.0 5.4212e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b588f57810_wrap_pyop2_kernel_prolong       4 0.0 7.6466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b588fe0190_wrap_pyop2_kernel_prolong       4 0.0 6.4052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a187dfbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a187ccc90_wrap_pyop2_kernel_prolong       4 0.0 6.1680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546bdfea910_wrap_pyop2_kernel_prolong       4 0.0 7.5670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546bdfe8d50_wrap_pyop2_kernel_prolong       4 0.0 7.0926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6c3611cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6c2bcd650_wrap_pyop2_kernel_prolong       4 0.0 6.5012e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150980f3cc50_wrap_pyop2_kernel_prolong       4 0.0 7.5640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509811a3950_wrap_pyop2_kernel_prolong       4 0.0 7.0477e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5a44bf090_wrap_pyop2_kernel_prolong       4 0.0 7.5596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5a44c29d0_wrap_pyop2_kernel_prolong       4 0.0 5.8016e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a277753550_wrap_pyop2_kernel_prolong       4 0.0 7.5551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a277750a10_wrap_pyop2_kernel_prolong       4 0.0 5.7102e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dfbd142d0_wrap_pyop2_kernel_prolong       4 0.0 7.5579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dfbf4a290_wrap_pyop2_kernel_prolong       4 0.0 6.6800e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ad9e12050_wrap_pyop2_kernel_prolong       4 0.0 7.6001e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ad9512550_wrap_pyop2_kernel_prolong       4 0.0 6.4515e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518b465a110_wrap_pyop2_kernel_prolong       4 0.0 7.6402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518b465b9d0_wrap_pyop2_kernel_prolong       4 0.0 6.1821e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5db256d90_wrap_pyop2_kernel_prolong       4 0.0 7.5581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5db2556d0_wrap_pyop2_kernel_prolong       4 0.0 7.1297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501b607a810_wrap_pyop2_kernel_prolong       4 0.0 7.5797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501b6078fd0_wrap_pyop2_kernel_prolong       4 0.0 4.9178e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2fc43cf90_wrap_pyop2_kernel_prolong       4 0.0 7.6054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2fc43d550_wrap_pyop2_kernel_prolong       4 0.0 5.8864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b9ea33190_wrap_pyop2_kernel_prolong       4 0.0 7.5750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b9ea94510_wrap_pyop2_kernel_prolong       4 0.0 6.4506e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9261ce990_wrap_pyop2_kernel_prolong       4 0.0 7.5522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9258f2fd0_wrap_pyop2_kernel_prolong       4 0.0 5.7552e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6bc899d10_wrap_pyop2_kernel_prolong       4 0.0 7.5610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6bc899210_wrap_pyop2_kernel_prolong       4 0.0 7.0335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455ee181d10_wrap_pyop2_kernel_prolong       4 0.0 7.6114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455ee1814d0_wrap_pyop2_kernel_prolong       4 0.0 6.3843e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14639315bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146393107150_wrap_pyop2_kernel_prolong       4 0.0 7.6307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485dc76ed90_wrap_pyop2_kernel_prolong       4 0.0 7.6121e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485dc76d390_wrap_pyop2_kernel_prolong       4 0.0 6.0852e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154934f838d0_wrap_pyop2_kernel_prolong       4 0.0 7.5471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154934f8a0d0_wrap_pyop2_kernel_prolong       4 0.0 5.2811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d5ecf0790_wrap_pyop2_kernel_prolong       4 0.0 7.5630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d5ece88d0_wrap_pyop2_kernel_prolong       4 0.0 5.7525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14694318fe50_wrap_pyop2_kernel_prolong       4 0.0 7.5825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146943ace1d0_wrap_pyop2_kernel_prolong       4 0.0 5.4101e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485db6e1a50_wrap_pyop2_kernel_prolong       4 0.0 7.5610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485db5b6950_wrap_pyop2_kernel_prolong       4 0.0 6.2164e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b020163d0_wrap_pyop2_kernel_prolong       4 0.0 7.5846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b02017d50_wrap_pyop2_kernel_prolong       4 0.0 7.0720e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f935df590_wrap_pyop2_kernel_prolong       4 0.0 7.5865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f935d9850_wrap_pyop2_kernel_prolong       4 0.0 5.5896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15542d30dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15542d30d3d0_wrap_pyop2_kernel_prolong       4 0.0 6.8831e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14592303d810_wrap_pyop2_kernel_prolong       4 0.0 7.5631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14592303d0d0_wrap_pyop2_kernel_prolong       4 0.0 6.5975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e553dba4d0_wrap_pyop2_kernel_prolong       4 0.0 7.6206e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e553db9b90_wrap_pyop2_kernel_prolong       4 0.0 6.4363e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e796d81ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e796d60f90_wrap_pyop2_kernel_prolong       4 0.0 7.4059e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6318d7350_wrap_pyop2_kernel_prolong       4 0.0 7.5564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6318d5bd0_wrap_pyop2_kernel_prolong       4 0.0 6.6406e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15523647f050_wrap_pyop2_kernel_prolong       4 0.0 7.5653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15523647c650_wrap_pyop2_kernel_prolong       4 0.0 7.5629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c1f53f7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5556e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c1ec59410_wrap_pyop2_kernel_prolong       4 0.0 5.6021e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463dd1d8290_wrap_pyop2_kernel_prolong       4 0.0 7.5868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463dc906610_wrap_pyop2_kernel_prolong       4 0.0 5.7155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f22b6ec3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f22b6e75d0_wrap_pyop2_kernel_prolong       4 0.0 7.0769e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149beb6e7550_wrap_pyop2_kernel_prolong       4 0.0 7.6069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149beb6e5910_wrap_pyop2_kernel_prolong       4 0.0 6.5949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15069ad81090_wrap_pyop2_kernel_prolong       4 0.0 7.5568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15069ad861d0_wrap_pyop2_kernel_prolong       4 0.0 6.6959e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2148a71d0_wrap_pyop2_kernel_prolong       4 0.0 7.5598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2148a7d90_wrap_pyop2_kernel_prolong       4 0.0 6.4683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15085c0fc850_wrap_pyop2_kernel_prolong       4 0.0 7.5911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150857ddb190_wrap_pyop2_kernel_prolong       4 0.0 5.9523e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4addf7310_wrap_pyop2_kernel_prolong       4 0.0 7.5605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4addf4590_wrap_pyop2_kernel_prolong       4 0.0 5.9986e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bdaf13450_wrap_pyop2_kernel_prolong       4 0.0 7.6382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bdaf12250_wrap_pyop2_kernel_prolong       4 0.0 7.1117e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d199083250_wrap_pyop2_kernel_prolong       4 0.0 7.6177e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d198712b10_wrap_pyop2_kernel_prolong       4 0.0 6.1511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e3c86f290_wrap_pyop2_kernel_prolong       4 0.0 7.5620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e3c861b90_wrap_pyop2_kernel_prolong       4 0.0 6.8902e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15190b7bc890_wrap_pyop2_kernel_prolong       4 0.0 7.5704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15190b7bda50_wrap_pyop2_kernel_prolong       4 0.0 6.8925e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485cf0c2a10_wrap_pyop2_kernel_prolong       4 0.0 7.5744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485cf0c2550_wrap_pyop2_kernel_prolong       4 0.0 7.3993e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        183 1.0 2.8785e-02 4.3 0.00e+00 0.0 2.5e+05 4.0e+00 1.8e+02  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph           183 1.0 7.9302e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              183 1.0 4.3820e-02 2.7 0.00e+00 0.0 4.9e+05 2.0e+02 1.8e+02  0  0  1  0  0   0  0  1  0  1    -0
SFPack           14677290 1.1 1.5803e+01 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         14677290 1.1 7.6809e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            16218 1.0 2.1359e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet            129743 1.0 6.7748e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY            32436 1.0 5.8762e+01 1.8 2.62e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 90487
VecAYPX            32436 1.0 5.3948e+01 3.7 1.31e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 49281
VecScatterBegin  14677290 1.1 1.9693e+02 1.2 0.00e+00 0.0 5.7e+07 7.2e+04 0.0e+00  4  0 70 54  0   7  0 98 100  0    -0
VecScatterEnd    14677290 1.1 1.5486e+02 12.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult            32436 1.0 1.3171e+03 1.1 9.28e+11 1.1 3.5e+07 1.2e+05 0.0e+00 27 22 43 54  0  45 60 61 100  0 142842
MatMultAdd         16218 1.0 7.9264e+01 1.1 3.92e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  3  0  0  0 100623
MatMultTranspose   16218 1.0 6.8522e+01 2.5 3.92e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  3  0  0  0 116398
MatSolve         7281882 1.1 9.8653e+02 1.2 4.76e+11 1.1 2.3e+07 7.8e+02 9.2e+02 20 11 28  0  2  33 30 39  0  5 94703
MatLUFactorNum    108864 1.1 2.6917e+01 1.3 3.12e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 235368
MatResidual        16218 1.0 7.2394e+02 1.2 4.70e+11 1.1 1.8e+07 1.2e+05 0.0e+00 14 11 22 27  0  24 31 30 50  0 131777
MatAssemblyBegin  108864 1.1 2.1846e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd    108864 1.1 2.5436e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     486 1.0 6.0966e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
PCSetUp           109350 1.1 8.7461e+01 1.2 3.12e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  2  0  0  0 72436
PCApply            48654 1.0 1.3194e+03 1.2 5.07e+11 1.1 2.3e+07 7.8e+02 9.2e+02 27 12 28  0  2  45 32 39  0  5 75610
PCApplyOnBlocks  7265664 1.1 8.6994e+02 1.3 4.88e+11 1.1 0.0e+00 0.0e+00 0.0e+00 17 12  0  0  0  29 32  0  0  0 114001
KSPSetUp          108864 1.1 8.0262e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           48654 1.0 2.0162e+03 1.1 1.00e+12 1.1 4.1e+07 5.1e+04 1.7e+04 43 23 50 27 29  71 64 70 50 100 99435
MGSmooth Level 0   16218 1.0 2.6494e+02 2.0 1.89e+10 35.3 2.3e+07 7.8e+02 1.7e+04  3  0 28  0 29   6  0 39  0 100  2219
MGSmooth Level 1   32436 1.0 1.8717e+03 1.1 9.84e+11 1.1 1.8e+07 1.2e+05 0.0e+00 39 23 22 27  0  65 64 30 50  0 106796
MGResid Level 1    16218 1.0 7.2405e+02 1.2 4.70e+11 1.1 1.8e+07 1.2e+05 0.0e+00 14 11 22 27  0  24 31 30 50  0 131757
MGInterp Level 1   32436 1.0 1.4688e+02 1.5 7.85e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   5  5  0  0  0 108604
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   327            327
              Viewer     3              3
         PetscRandom    62             62
           Index Set  3833           3833
   IS L to G Mapping   431            431
             Section   472            472
   Star Forest Graph   718            901
              Vector  3230           3230
              Matrix  1251           1251
      Preconditioner   230            230
       Krylov Solver   290            290
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   172            172
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   227            227
           Weak Form   227            227
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   366            366
   Star Forest Graph   183              0
              Vector   183            183
========================================================================================================================
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 7.207e-06
Average time for zero size MPI_Send(): 2.38527e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal_saturated/vlumping_linesmooth/h2.profile # (source: code)
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

