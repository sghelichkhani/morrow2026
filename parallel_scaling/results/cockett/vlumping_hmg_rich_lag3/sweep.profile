****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0472.gadi.nci.org.au with 104 processes, by sg8812 on Tue Aug 25 22:17:02 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.332e+02     1.000   7.332e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.811e+11     1.158   5.479e+11  5.698e+13
Flops/sec:            7.927e+08     1.158   7.473e+08  7.772e+10
MPI Msg Count:        2.754e+05     3.600   1.794e+05  1.866e+07
MPI Msg Len (bytes):  7.921e+09     2.406   3.466e+04  6.466e+11
MPI Reductions:       1.957e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.3818e+02  46.1%  3.1256e+13  54.9%  2.939e+06  15.8%  8.568e+04       38.9%  1.103e+04  56.4%
 1:        MG Apply: 3.9500e+02  53.9%  2.5728e+13  45.1%  1.572e+07  84.2%  2.512e+04       61.1%  8.519e+03  43.5%

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

BuildTwoSided        666 1.0 1.2877e+01 9.5 0.00e+00 0.0 5.0e+04 4.0e+00 5.2e+02  1  0  0  0  3   2  0  2  0  5    -0
BuildTwoSidedF       440 1.0 1.2776e+01 10.1 0.00e+00 0.0 4.9e+04 4.4e+05 4.4e+02  1  0  0  3  2   2  0  2  9  4    -0
SFSetGraph           232 1.1 7.9244e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.1 2.5673e-01 5.8 0.00e+00 0.0 5.1e+04 1.1e+03 8.2e+01  0  0  0  0  0   0  0  2  0  1    -0
SFBcastBegin         449 1.0 1.0934e-01 3.0 0.00e+00 0.0 2.1e+05 5.4e+04 0.0e+00  0  0  1  2  0   0  0  7  5  0    -0
SFBcastEnd           449 1.0 6.8441e+00 105.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 2.4399e-02 3.0 0.00e+00 0.0 7.8e+04 7.3e+04 0.0e+00  0  0  0  1  0   0  0  3  2  0    -0
SFReduceEnd          154 1.0 2.6946e+00 101.1 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   263
SFFetchOpBegin         4 1.0 2.3879e-05 4.4 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 2.7086e-04 8.5 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 8.0813e-04 1.4 0.00e+00 0.0 9.4e+02 3.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 6.0282e-03 1.3 0.00e+00 0.0 4.4e+04 1.3e+02 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 2.9690e-03 2.2 0.00e+00 0.0 2.1e+04 5.7e+01 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            1 1.0 4.6066e-05 3.5 0.00e+00 0.0 5.4e+02 2.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             20711 1.1 1.1909e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           20715 1.1 4.2205e-02 3.1 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16788
VecDot                91 1.0 2.4716e-01 7.2 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 13233
VecMDot             4552 1.0 3.1867e+01 1.8 2.01e+10 1.1 0.0e+00 0.0e+00 4.6e+03  3  4  0  0 23   7  6  0  0 41 63201
VecNorm             5013 1.0 5.1942e+00 6.1 1.68e+09 1.1 0.0e+00 0.0e+00 5.0e+03  0  0  0  0 26   1  1  0  0 45 32260
VecScale            4769 1.0 1.8136e-01 1.2 7.94e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 437809
VecCopy              672 1.0 4.0599e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               447 1.0 1.2622e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              217 1.0 8.2073e-02 1.4 6.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 81062
VecWAXPY             182 1.0 1.3975e-01 1.5 3.27e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23404
VecMAXPY            4769 1.0 2.1362e+01 1.1 2.17e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   6  7  0  0  0 101405
VecScatterBegin    20104 1.1 1.4232e+00 2.1 0.00e+00 0.0 2.5e+06 8.2e+04 0.0e+00  0  0 13 32  0   0  0 85 82  0    -0
VecScatterEnd      20104 1.1 1.7139e+01 34.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 4.4534e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 2.8930e-02 1.6 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 226118
VecReduceComm         91 1.0 7.8065e-02 15.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize         405 1.0 9.2496e-02 4.3 2.92e+07 1.1 0.0e+00 0.0e+00 4.0e+02  0  0  0  0  2   0  0  0  0  4 31550
MatMult             4734 1.0 1.1800e+02 1.1 8.79e+10 1.1 2.5e+06 8.2e+04 0.0e+00 15 15 13 32  0  33 28 85 82  0 74131
MatSolve            7984 1.1 7.6313e-01 1.4 4.53e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 59363
MatLUFactorSym       145 1.1 9.9237e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       321 1.1 1.2054e-01 1.1 8.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 71300
MatILUFactorSym        1 1.0 1.0483e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               30 1.0 1.0645e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             1 1.0 1.0650e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     894 1.0 1.3210e+01 6.3 0.00e+00 0.0 4.9e+04 4.4e+05 4.4e+02  1  0  0  3  2   2  0  2  9  4    -0
MatAssemblyEnd       894 1.0 2.2931e+00 6.6 2.71e+07 0.0 3.2e+03 7.4e+03 4.4e+01  0  0  0  0  0   0  0  0  0  0   552
MatGetRowIJ          145 1.1 2.8785e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 2.8350e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.4e+02  0  0  0  0  1   0  0  0  0  1    -0
MatGetOrdering       145 1.1 1.7443e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       155 1.0 3.1024e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 9.0822e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.3237e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        129 1.0 4.1311e-01 1.1 9.22e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 221783
MatPtAPSymbolic        2 1.0 1.5834e-01 1.0 0.00e+00 0.0 3.2e+03 9.6e+04 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        64 1.0 2.2851e+00 1.0 3.50e+09 1.1 3.5e+04 1.7e+05 7.4e+01  0  1  0  1  0   1  1  1  2  1 152243
MatGetLocalMat        66 1.0 1.3553e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         66 1.0 1.0874e-01 1.9 0.00e+00 0.0 3.6e+04 1.7e+05 0.0e+00  0  0  0  1  0   0  0  1  2  0    -0
MatSetPreallCOO       16 1.0 3.6189e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 1.7120e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 1.5743e+01 1.0 5.45e+09 1.1 2.4e+05 3.5e+04 1.2e+03  2  1  1  1  6   5  2  8  3 11 34446
PCApply             4182 1.0 4.0071e+02 1.1 2.58e+11 1.1 1.6e+07 2.5e+04 8.5e+03 54 45 84 61 44 Multiple stages 64207
PCApplyOnBlocks     7984 1.1 8.8644e-01 1.4 5.36e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 60430
KSPSetUp              91 1.0 1.3669e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.4779e+02 1.0 3.87e+11 1.1 1.8e+07 3.3e+04 1.7e+04 75 68 96 92 87 Multiple stages 70433
KSPGMRESOrthog      4552 1.0 5.0326e+01 1.4 4.03e+10 1.1 0.0e+00 0.0e+00 4.6e+03  6  7  0  0 23  12 13  0  0 41 80039
DMRefine               1 1.0 2.3169e-01 1.0 2.40e+03 1.0 3.3e+03 5.0e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     1
Mesh Partition         3 1.0 6.1720e-02 1.0 0.00e+00 0.0 1.3e+04 1.1e+02 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 1.4584e-02 1.1 0.00e+00 0.0 4.4e+04 1.3e+02 1.8e+02  0  0  0  0  1   0  0  1  0  2    -0
DMPlexPartSelf         1 1.0 2.0416e-03 956.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 7.3743e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 2.8398e-03 1.1 0.00e+00 0.0 2.4e+03 9.0e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 1.2977e-03 1.5 0.00e+00 0.0 1.2e+03 3.5e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 1.6759e-03 2.6 0.00e+00 0.0 1.3e+03 4.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 2.0476e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.0639e-02 1.0 0.00e+00 0.0 4.1e+03 5.7e+02 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        3 1.0 1.7067e-03 1.0 0.00e+00 0.0 7.3e+03 2.2e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 6.5080e-03 1.0 0.00e+00 0.0 2.1e+04 1.3e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        2 1.0 7.1923e-03 1.0 0.00e+00 0.0 5.4e+04 1.0e+02 1.6e+02  0  0  0  0  1   0  0  2  0  1    -0
DMPlexDistField        5 1.0 2.8465e-03 1.2 0.00e+00 0.0 1.1e+04 8.9e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 2.7797e-04 1.1 0.00e+00 0.0 8.1e+03 5.8e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 1.8598e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 3.5865e-04 8.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 7.9085e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 1.2315e-04 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 1.2984e-03 1.4 0.00e+00 0.0 1.6e+03 3.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 7.6510e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.0539e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 1.9482e-04 2.6 0.00e+00 0.0 1.6e+03 3.9e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.0002e-05 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 4.4716e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 3.2683e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.0505e+02 1.0 5.81e+11 1.2 1.9e+07 3.5e+04 1.9e+04 96 100 99 100 97 Multiple stages 80823
SNESSetUp              1 1.0 3.6852e-05 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.3763e+01 1.0 7.66e+10 1.2 1.5e+05 8.8e+04 1.0e+00  6 13  1  2  0  13 23  5  5  0 165651
SNESJacobianEval      91 1.0 9.5034e+01 1.0 1.10e+11 1.2 9.6e+04 2.5e+05 3.6e+02 13 18  1  4  2  28 33  3 10  3 109542
SNESLineSearch        91 1.0 2.2709e+01 1.0 5.96e+10 1.2 1.4e+05 8.8e+04 3.6e+02  3 10  1  2  2   7 18  5  5  3 248814
DualSpaceSetUp         4 1.0 3.5286e-03 1.1 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                4 1.0 1.9145e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 7.3027e+02 1.0 5.81e+11 1.2 1.9e+07 3.5e+04 2.0e+04 100 100 100 100 100 Multiple stages 78032
firedrake.__init__       1 1.0 1.2060e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.9838e+00 17.0 0.00e+00 0.0 6.0e+04 1.0e+02 1.9e+02  0  0  0  0  1   0  0  2  0  2    -0
CreateMesh             2 1.0 1.1845e-01 1.0 0.00e+00 0.0 1.1e+05 1.2e+02 3.2e+02  0  0  1  0  2   0  0  4  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 9.5905e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 3.8410e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.5743e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 8.2859e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 3.6641e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.4298e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.4510e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 3.2192e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 3.2081e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.4811e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 6.1363e-03 1.1 0.00e+00 0.0 7.7e+03 8.5e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.5632e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8650e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 1.4411e-02 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 1.9081e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.5094e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.2977e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 9.9598e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 1.9023e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.7292e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.3274e+02 1.1 1.87e+11 1.2 1.3e+05 8.6e+04 1.2e+01 17 31  1  2  0  38 56  4  5  0 133026
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 1.8666e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 3.4624e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0  10  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.0378e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.8689e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.8167e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.8135e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.8134e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 9.7396e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 9.5903e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 2.6965e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.2775e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 6.7494e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.4057e-01 1.0 2.70e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   287
firedrake.interpolation.interpolate       6 1.0 1.8636e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 9.7151e+00 1.0 4.25e+06 1.1 1.2e+04 2.8e+03 9.7e+01  1  0  0  0  0   3  0  0  0  1    44
firedrake.formmanipulation.split_form       4 1.0 2.4530e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.4584e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.0314e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.3070e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.4931e-01 4.5 0.00e+00 0.0 1.3e+05 8.6e+04 2.0e+00  0  0  1  2  0   0  0  4  5  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.3401e+00 1.0 4.24e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   127
firedrake.halo.Halo.global_to_local_end     243 1.0 6.7388e+00 186.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.5088e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.2634e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.4791e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.5393e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.8394e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.2622e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.5657e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.6457e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.2252e+00 1.0 0.00e+00 0.0 3.2e+03 4.8e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0936e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4120e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1414e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1414e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         3 1.0 2.3865e+00 1.2 0.00e+00 0.0 4.9e+03 1.5e+05 3.2e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         3 1.0 4.1403e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.0512e+02 1.0 5.81e+11 1.2 1.9e+07 3.5e+04 1.9e+04 96 100 99 100 98 Multiple stages 80814
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 8.9576e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2598e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.1275e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1310e+00 1.1 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 206527
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0238e+00 1.0 5.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2855
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9978e+00 1.0 5.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2892
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.9041e+00 1.1 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  6  0  0  0 173783
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6642e+01 1.2 4.25e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   4 12  0  0  0 230546
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.8342e-02 2.6 0.00e+00 0.0 6.4e+04 8.8e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.6954e+00 97.4 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   263
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5504e+01 1.1 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   4  7  0  0  0 148414
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.2460e+00 1.0 5.28e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2350
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.2314e+00 1.0 5.28e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2366
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7689e+01 1.2 2.42e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   8  8  0  0  0 87366
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.3075e+01 1.3 6.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5 10  0  0  0  11 18  0  0  0 131823
firedrake.dmhooks.get_function_space       2 1.0 2.0550e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.9468e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 6.1590e+00 1.0 0.00e+00 0.0 7.0e+03 1.4e+02 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 6.1538e+00 1.0 0.00e+00 0.0 4.8e+03 1.2e+02 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 5.9197e+00 1.0 0.00e+00 0.0 2.7e+03 4.4e+01 4.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.0331e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.0284e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 4.6279e+00 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 4.6198e+00 18.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.4787e+00 41.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 3.8206e+00 568.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 3.8205e+00 576.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 6.5731e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 4.2467e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 7.5536e-04 10.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.4245e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.3576e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.2163e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 3.0424e-03 9.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 2.3289e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 8.3085e-03 1.7 0.00e+00 0.0 2.1e+03 2.1e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.5146e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.3155e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       32 1.0 1.5330e-01 1.0 2.80e+07 1.2 1.9e+05 3.6e+02 7.5e+02  0  0  1  0  4   0  0  6  0  7 18047
MGSetup Level 1       32 1.0 8.7517e-01 1.0 3.82e+08 1.1 5.3e+03 8.8e+04 1.7e+02  0  0  0  0  1   0  0  0  0  2 43581

--- Event Stage 1: MG Apply

BuildTwoSided         31 1.0 1.3723e-03 2.7 0.00e+00 0.0 1.7e+04 4.0e+00 3.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            31 1.0 3.0697e-04 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               31 1.0 1.8582e-03 1.8 0.00e+00 0.0 3.5e+04 5.3e+01 3.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack           2471562 1.1 2.1488e+00 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2471562 1.1 1.2894e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            16728 1.0 1.6571e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             46000 1.0 7.1840e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             8364 1.0 3.6583e+00 1.4 3.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 82175
VecAYPX            33456 1.0 5.0752e+00 3.0 1.52e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 29997
VecAXPBYCZ          8364 1.0 6.4948e-03 3.0 2.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 370884
VecScatterBegin  2471562 1.1 2.2316e+01 1.3 0.00e+00 0.0 1.6e+07 2.5e+04 0.0e+00  3  0 84 61  0   5  0 99 100  0    -0
VecScatterEnd    2471562 1.1 3.2040e+01 13.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            25092 1.0 2.2152e+02 1.1 1.67e+11 1.1 1.3e+07 3.0e+04 0.0e+00 29 29 71 61  0  54 65 85 100  0 74986
MatMultAdd          8364 1.0 1.0920e+01 1.2 6.03e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  2  0  0  0 55237
MatMultTranspose    8364 1.0 9.2974e+00 1.9 6.03e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 64875
MatSolve         1225326 1.1 1.2128e+02 1.2 7.14e+10 1.1 2.4e+06 2.0e+02 1.6e+02 16 12 13  0  1  29 28 15  0  2 58440
MatLUFactorNum     12847 1.1 2.9661e+00 1.2 3.68e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 124036
MatResidual         8364 1.0 1.1618e+02 1.2 8.41e+10 1.1 4.4e+06 4.4e+04 0.0e+00 15 15 24 30  0  27 33 28 50  0 72055
MatAssemblyBegin   12816 1.1 2.1286e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     12816 1.1 2.8677e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 7.3740e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
PCSetUp            12936 1.1 1.0380e+01 1.2 3.68e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 35442
PCSetUpOnBlocks     8364 1.0 3.8533e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            12546 1.0 1.6738e+02 1.2 7.55e+10 1.1 1.1e+07 2.7e+02 4.3e+03 21 13 60  0 22  40 29 72  1 51 44814
PCApplyOnBlocks  1221144 1.1 1.1533e+02 1.2 7.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00 15 13  0  0  0  28 29  0  0  0 64477
KSPSetUp           12816 1.1 6.5008e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           12546 1.0 2.7686e+02 1.1 1.62e+11 1.1 1.4e+07 1.5e+04 8.5e+03 37 28 72 31 44  68 63 86 50 100 58382
MGSmooth Level 0    4182 1.0 2.7245e+01 2.5 1.81e+09 2.3 1.1e+07 2.7e+02 8.5e+03  2  0 60  0 44   4  0 72  1 100  3653
MGSmooth Level 1    8364 1.0 2.6245e+02 1.1 1.61e+11 1.1 2.2e+06 8.8e+04 0.0e+00 35 28 12 30  0  64 62 14 50  0 61209
MGResid Level 1     4182 1.0 1.1533e+02 1.2 8.40e+10 1.1 2.2e+06 8.8e+04 0.0e+00 15 15 12 30  0  27 33 14 50  0 72503
MGInterp Level 1    8364 1.0 1.9661e+01 1.3 1.20e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 61163
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
         PetscRandom     2              2
           Index Set  2293           2293
   IS L to G Mapping   245            241
             Section   303            303
   Star Forest Graph   415            414
              Vector   803            799
              Matrix   796            782
      Preconditioner   146            146
       Krylov Solver   146            146
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
Average time for MPI_Barrier(): 4.5662e-06
Average time for zero size MPI_Send(): 2.28516e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg_rich_lag3/sweep.profile # (source: environment)
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

