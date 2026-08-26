****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0572.gadi.nci.org.au with 208 processes, by sg8812 on Tue Aug 25 22:20:31 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.467e+02     1.000   9.467e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                7.075e+11     1.151   6.669e+11  1.387e+14
Flops/sec:            7.473e+08     1.151   7.044e+08  1.465e+11
MPI Msg Count:        3.554e+05     3.427   2.427e+05  5.049e+07
MPI Msg Len (bytes):  1.177e+10     2.544   3.779e+04  1.908e+12
MPI Reductions:       2.451e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.0323e+02  42.6%  7.1756e+13  51.7%  7.653e+06  15.2%  9.452e+04       37.9%  1.351e+04  55.1%
 1:        MG Apply: 5.4352e+02  57.4%  6.6950e+13  48.3%  4.284e+07  84.8%  2.766e+04       62.1%  1.098e+04  44.8%

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

BuildTwoSided        638 1.0 1.5207e+01 7.6 0.00e+00 0.0 1.0e+05 4.0e+00 5.2e+02  1  0  0  0  2   2  0  1  0  4    -0
BuildTwoSidedF       440 1.0 1.5104e+01 7.8 0.00e+00 0.0 1.0e+05 4.9e+05 4.4e+02  1  0  0  3  2   2  0  1  7  3    -0
SFSetGraph           204 1.1 8.9579e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              198 1.1 2.7555e-01 5.2 0.00e+00 0.0 1.1e+05 1.2e+03 8.2e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         449 1.0 1.5118e-01 3.4 0.00e+00 0.0 4.5e+05 5.9e+04 0.0e+00  0  0  1  1  0   0  0  6  4  0    -0
SFBcastEnd           449 1.0 7.7371e+00 158.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 2.6638e-02 8.4 0.00e+00 0.0 1.6e+05 8.0e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
SFReduceEnd          154 1.0 2.9842e+00 159.1 1.02e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   551
SFFetchOpBegin         4 1.0 2.1458e-05 3.9 0.00e+00 0.0 3.5e+03 9.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 8.9743e-04 33.8 0.00e+00 0.0 3.5e+03 9.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 1.3601e-03 2.7 0.00e+00 0.0 1.9e+03 2.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 7.6638e-03 1.4 0.00e+00 0.0 9.0e+04 1.2e+02 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 4.4081e-03 2.6 0.00e+00 0.0 4.3e+04 5.2e+01 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            1 1.0 3.5259e-05 2.7 0.00e+00 0.0 1.1e+03 2.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             19014 1.1 1.6037e+00 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           19018 1.1 5.0508e-02 8.1 1.02e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 32572
VecDot                91 1.0 2.7311e-01 11.6 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 24142
VecMDot             5784 1.0 4.9066e+01 2.1 2.88e+10 1.1 0.0e+00 0.0e+00 5.8e+03  3  4  0  0 24   8  8  0  0 43 117101
VecNorm             6284 1.0 6.7762e+00 4.3 2.16e+09 1.1 0.0e+00 0.0e+00 6.3e+03  0  0  0  0 26   1  1  0  0 47 63437
VecScale            6040 1.0 2.4163e-01 1.2 1.03e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 852924
VecCopy              672 1.0 4.1991e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               486 1.0 1.3867e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              256 1.0 9.9143e-02 1.5 8.15e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 163760
VecWAXPY             221 1.0 1.7350e-01 1.7 4.02e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 46144
VecMAXPY            6040 1.0 3.0394e+01 1.1 3.08e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   7  9  0  0  0 202070
VecScatterBegin    18407 1.1 1.8234e+00 2.1 0.00e+00 0.0 6.7e+06 9.2e+04 0.0e+00  0  0 13 32  0   0  0 88 85  0    -0
VecScatterEnd      18407 1.1 2.1031e+01 41.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 3.4890e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.1265e-02 1.9 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 421764
VecReduceComm         91 1.0 7.0142e-02 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize         405 1.0 9.3449e-02 3.2 2.94e+07 1.1 0.0e+00 0.0e+00 4.0e+02  0  0  0  0  2   0  0  0  0  3 62683
MatMult             6005 1.0 1.5605e+02 1.2 1.15e+11 1.2 6.7e+06 9.2e+04 0.0e+00 15 16 13 32  0  36 32 88 85  0 145732
MatSolve            6500 1.1 7.6501e-01 1.4 4.57e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 119070
MatLUFactorSym       117 1.1 1.4218e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       265 1.1 1.3065e-01 1.1 8.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 131674
MatILUFactorSym        1 1.0 8.6349e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               30 1.0 1.0675e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             1 1.0 1.0494e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     838 1.0 1.5474e+01 5.5 0.00e+00 0.0 1.0e+05 4.9e+05 4.4e+02  1  0  0  3  2   2  0  1  7  3    -0
MatAssemblyEnd       838 1.0 2.5876e+00 7.1 3.20e+07 0.0 6.7e+03 8.1e+03 4.4e+01  0  0  0  0  0   0  0  0  0  0  1146
MatGetRowIJ          117 1.1 2.6792e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 3.3638e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+02  0  0  0  0  0   0  0  0  0  1    -0
MatGetOrdering       117 1.1 1.6574e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       155 1.0 3.1923e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 8.9707e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.3596e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        129 1.0 4.3877e-01 1.1 9.33e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 421316
MatPtAPSymbolic        2 1.0 1.7390e-01 1.0 0.00e+00 0.0 6.7e+03 1.1e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        64 1.0 2.3859e+00 1.0 3.54e+09 1.2 7.4e+04 1.8e+05 7.4e+01  0  1  0  1  0   1  1  1  2  1 294248
MatGetLocalMat        66 1.0 1.3785e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         66 1.0 1.2202e-01 1.8 0.00e+00 0.0 7.6e+04 1.9e+05 0.0e+00  0  0  0  1  0   0  0  1  2  0    -0
MatSetPreallCOO       16 1.0 3.5299e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 1.9185e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 1.7803e+01 1.0 5.51e+09 1.1 5.2e+05 3.8e+04 1.2e+03  2  1  1  1  5   4  2  7  3  9 61415
PCApply             5414 1.0 5.5291e+02 1.0 3.37e+11 1.1 4.3e+07 2.8e+04 1.1e+04 57 48 85 62 45 Multiple stages 121086
PCApplyOnBlocks     6500 1.1 8.8662e-01 1.4 5.41e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 121552
KSPSetUp              91 1.0 1.6074e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 7.4971e+02 1.0 5.12e+11 1.1 4.9e+07 3.6e+04 2.2e+04 79 73 97 94 90 Multiple stages 135484
KSPGMRESOrthog      5784 1.0 7.4483e+01 1.5 5.77e+10 1.1 0.0e+00 0.0e+00 5.8e+03  6  8  0  0 24  15 16  0  0 43 154283
DMRefine               1 1.0 2.1783e-01 1.0 2.40e+03 1.0 6.8e+03 4.4e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     2
Mesh Partition         3 1.0 1.1319e-01 1.0 0.00e+00 0.0 2.6e+04 9.3e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 1.9959e-02 1.1 0.00e+00 0.0 9.0e+04 1.2e+02 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 3.2429e-03 1218.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 1.7919e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 6.7450e-03 1.1 0.00e+00 0.0 5.0e+03 7.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 3.0889e-03 2.9 0.00e+00 0.0 2.5e+03 3.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 2.6304e-03 2.1 0.00e+00 0.0 2.7e+03 4.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 1.8706e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.1651e-01 1.0 0.00e+00 0.0 8.1e+03 4.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 2.1458e-03 1.1 0.00e+00 0.0 1.5e+04 1.9e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 8.6188e-03 1.0 0.00e+00 0.0 4.3e+04 1.2e+02 1.1e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistOvrlp        2 1.0 1.9492e-02 1.2 0.00e+00 0.0 1.1e+05 9.2e+01 1.6e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 4.7975e-03 1.4 0.00e+00 0.0 2.2e+04 7.9e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 3.5286e-04 1.2 0.00e+00 0.0 1.7e+04 5.2e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 2.5650e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 4.9500e-04 12.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 7.6261e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 1.3509e-04 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 1.7787e-03 1.3 0.00e+00 0.0 3.4e+03 3.4e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 6.0873e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 3.6401e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.3242e-04 3.1 0.00e+00 0.0 3.4e+03 3.4e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.4868e-05 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 7.0641e-04 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 3.4364e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 9.1355e+02 1.0 7.07e+11 1.2 5.0e+07 3.8e+04 2.4e+04 96 100 99 100 98 Multiple stages 151831
SNESSetUp              1 1.0 3.0334e-05 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.3784e+01 1.1 7.74e+10 1.2 3.1e+05 9.6e+04 1.0e+00  5 11  1  2  0  11 20  4  4  0 334080
SNESJacobianEval      91 1.0 9.9396e+01 1.0 1.11e+11 1.3 2.0e+05 2.8e+05 3.6e+02 10 15  0  3  1  25 29  3  8  3 211363
SNESLineSearch        91 1.0 2.3359e+01 1.0 6.02e+10 1.2 3.1e+05 9.7e+04 3.6e+02  2  8  1  2  1   6 16  4  4  3 488075
DualSpaceSetUp         4 1.0 3.5494e-03 1.3 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                4 1.0 1.8848e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 9.4337e+02 1.0 7.07e+11 1.2 5.0e+07 3.8e+04 2.4e+04 100 100 100 100 100 Multiple stages 147033
firedrake.__init__       1 1.0 1.5801e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 3.9361e+00 21.7 0.00e+00 0.0 1.2e+05 9.0e+01 1.9e+02  0  0  0  0  1   0  0  2  0  1    -0
CreateMesh             2 1.0 1.8735e-01 1.0 0.00e+00 0.0 2.3e+05 1.1e+02 3.2e+02  0  0  0  0  1   0  0  3  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.1109e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.2200e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.8608e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 6.6419e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 4.0210e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.5170e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.8047e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 3.5902e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 3.5788e-02 1.1 0.00e+00 0.0 2.0e+04 9.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.4322e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 8.2520e-03 1.0 0.00e+00 0.0 1.6e+04 7.5e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.7937e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8750e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 2.4499e-02 6.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 2.5316e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.5687e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.2879e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0039e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 2.5257e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.4160e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.3759e+02 1.1 1.89e+11 1.3 2.8e+05 9.4e+04 1.2e+01 14 26  1  1  0  32 50  4  4  0 258971
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 2.4870e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 3.5803e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.0836e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.9265e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.8491e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.9648e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.9647e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.0564e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.0439e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 3.0061e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.6170e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.1778e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.4981e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   572
firedrake.interpolation.interpolate       6 1.0 1.4091e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.1548e+01 1.0 4.29e+06 1.1 2.6e+04 3.1e+03 9.7e+01  1  0  0  0  0   3  0  0  0  1    74
firedrake.formmanipulation.split_form       4 1.0 2.4951e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.4816e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.0186e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.1601e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.1435e-01 3.4 0.00e+00 0.0 2.8e+05 9.4e+04 2.0e+00  0  0  1  1  0   0  0  4  4  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.3792e+00 1.0 4.29e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   253
firedrake.halo.Halo.global_to_local_end     243 1.0 7.5413e+00 233.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.6086e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.3792e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6139e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.8527e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.3590e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.4526e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.6898e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.7648e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.4541e+00 1.0 0.00e+00 0.0 6.8e+03 5.3e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0524e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2542e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1445e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1445e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         3 1.0 2.6050e+00 1.2 0.00e+00 0.0 1.0e+04 1.7e+05 3.2e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         3 1.0 4.2850e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 9.1362e+02 1.0 7.07e+11 1.2 5.0e+07 3.8e+04 2.4e+04 96 100 99 100 98 Multiple stages 151820
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 8.9343e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2517e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 2.9423e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1695e+00 1.1 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 414364
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9721e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4701
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.7618e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5262
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.9594e+00 1.1 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 348833
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6796e+01 1.3 4.29e+10 1.4 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   4 11  0  0  0 461296
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.0921e-02 5.4 0.00e+00 0.0 1.4e+05 9.7e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.9850e+00 151.4 1.02e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   551
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5966e+01 1.1 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   4  6  0  0  0 290535
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3776e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3562
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3347e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3627
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8007e+01 1.1 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   7  7  0  0  0 174342
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5073e+01 1.4 6.34e+10 1.4 0.0e+00 0.0e+00 0.0e+00  4  8  0  0  0  10 16  0  0  0 254413
firedrake.dmhooks.get_function_space       2 1.0 2.1728e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 9.0609e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 7.9428e+00 1.0 0.00e+00 0.0 1.5e+04 1.3e+02 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 7.9367e+00 1.0 0.00e+00 0.0 1.0e+04 1.0e+02 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 6.0219e+00 1.0 0.00e+00 0.0 5.7e+03 3.9e+01 4.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.7823e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.7748e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.3376e+00 14.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.3293e+00 20.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.1718e+00 48.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 4.1710e+00 629.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 4.1709e+00 636.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 3.6422e-02 7.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 3.2172e-02 24.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.5861e-03 22.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.6621e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.3369e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.4692e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 9.5319e-03 27.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 1.9134e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.1977e-02 2.5 0.00e+00 0.0 4.5e+03 1.8e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.1958e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.5385e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       32 1.0 2.0777e-01 1.0 2.24e+07 1.2 4.0e+05 3.1e+02 7.5e+02  0  0  1  0  3   0  0  5  0  6 21292
MGSetup Level 1       32 1.0 9.1290e-01 1.0 3.87e+08 1.1 1.1e+04 9.7e+04 1.4e+02  0  0  0  0  1   0  0  0  0  1 84311

--- Event Stage 1: MG Apply

BuildTwoSided         31 1.0 3.8285e-03 5.2 0.00e+00 0.0 3.5e+04 4.0e+00 3.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            31 1.0 2.4553e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               31 1.0 4.7515e-03 2.9 0.00e+00 0.0 7.0e+04 4.3e+01 3.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack           2593306 1.1 3.0671e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2593306 1.1 1.3640e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            21656 1.0 2.2016e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             59552 1.0 9.3786e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY            10828 1.0 4.7332e+00 1.4 3.94e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 165750
VecAYPX            43312 1.0 6.9969e+00 3.0 1.99e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 56635
VecAXPBYCZ         10828 1.0 8.6251e-03 3.5 2.51e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 580101
VecScatterBegin  2593306 1.1 2.9124e+01 1.2 0.00e+00 0.0 4.3e+07 2.8e+04 0.0e+00  3  0 84 62  0   5  0 100 100  0    -0
VecScatterEnd    2593306 1.1 3.8114e+01 12.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            32484 1.0 2.9476e+02 1.1 2.19e+11 1.2 3.7e+07 3.2e+04 0.0e+00 30 31 72 62  0  52 65 85 100  0 147207
MatMultAdd         10828 1.0 1.4107e+01 1.2 7.90e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 111511
MatMultTranspose   10828 1.0 1.2351e+01 2.1 7.90e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 127359
MatSolve         1283118 1.1 1.8723e+02 1.2 9.33e+10 1.1 6.3e+06 1.6e+02 1.6e+02 19 13 13  0  1  32 28 15  0  1 98732
MatLUFactorNum     10355 1.1 3.3068e+00 1.2 3.73e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 224520
MatResidual        10828 1.0 1.5448e+02 1.2 1.10e+11 1.2 1.2e+07 4.9e+04 0.0e+00 15 16 24 31  0  26 33 28 50  0 141583
MatAssemblyBegin   10324 1.1 1.7554e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     10324 1.1 2.8771e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 9.2629e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
PCSetUp            10444 1.1 1.2479e+01 1.2 3.73e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 59495
PCSetUpOnBlocks    10828 1.0 5.4626e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            16242 1.0 2.4447e+02 1.2 9.75e+10 1.1 3.1e+07 2.3e+02 5.6e+03 24 14 61  0 23  42 29 72  1 51 79036
PCApplyOnBlocks  1277704 1.1 1.4893e+02 1.2 9.63e+10 1.1 0.0e+00 0.0e+00 0.0e+00 15 14  0  0  0  26 29  0  0  0 128825
KSPSetUp           10324 1.1 6.6284e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           16242 1.0 3.8846e+02 1.1 2.11e+11 1.1 3.7e+07 1.6e+04 1.1e+04 40 30 73 31 45  69 63 86 50 100 108015
MGSmooth Level 0    5414 1.0 6.6891e+01 1.6 2.95e+09 3.6 3.1e+07 2.3e+02 1.1e+04  5  0 61  0 45   9  0 72  1 100  3102
MGSmooth Level 1   10828 1.0 3.4384e+02 1.1 2.10e+11 1.1 6.1e+06 9.7e+04 0.0e+00 35 30 12 31  0  61 62 14 50  0 121429
MGResid Level 1     5414 1.0 1.5432e+02 1.2 1.10e+11 1.2 6.1e+06 9.7e+04 0.0e+00 15 16 12 31  0  26 33 14 50  0 141608
MGInterp Level 1   10828 1.0 2.6371e+01 1.4 1.58e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 119000
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
         PetscRandom     2              2
           Index Set  2344           2344
   IS L to G Mapping   213            209
             Section   303            303
   Star Forest Graph   383            382
              Vector   707            703
              Matrix   640            626
      Preconditioner   114            114
       Krylov Solver   114            114
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    79             80
            DM Label   213            213
          Quadrature    84             84
      Mesh Transform     1              1
       Swarm Cell DM     2              2
    GraphPartitioner    24             24
     Discrete System   112            113
           Weak Form   112            113
        Linear Space     8              8
          Dual Space    28             28
            FE Space     4              4

--- Event Stage 1: MG Apply

           Index Set    62             62
   Star Forest Graph    33             30
              Vector    62             62
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 7.9202e-06
Average time for zero size MPI_Send(): 2.39699e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg_rich_lag3/medium.profile # (source: environment)
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

