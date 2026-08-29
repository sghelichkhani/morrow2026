****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0065.gadi.nci.org.au with 416 processes, by sg8812 on Sat Aug 29 17:12:25 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.277e+03     1.000   1.277e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                8.617e+11     1.152   8.161e+11  3.395e+14
Flops/sec:            6.749e+08     1.152   6.392e+08  2.659e+11
MPI Msg Count:        4.604e+05     3.598   3.173e+05  1.320e+08
MPI Msg Len (bytes):  1.949e+10     2.887   4.341e+04  5.730e+12
MPI Reductions:       3.259e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.9143e+02  38.5%  1.6658e+14  49.1%  2.077e+07  15.7%  1.044e+05       37.8%  1.818e+04  55.8%
 1:        MG Apply: 7.8529e+02  61.5%  1.7291e+14  50.9%  1.112e+08  84.3%  3.202e+04       62.2%  1.439e+04  44.2%

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

BuildTwoSided        732 1.0 1.9165e+01 4.4 0.00e+00 0.0 2.1e+05 4.0e+00 6.4e+02  1  0  0  0  2   2  0  1  0  4    -0
BuildTwoSidedF       558 1.0 1.8934e+01 4.4 0.00e+00 0.0 2.1e+05 6.0e+05 5.6e+02  1  0  0  2  2   2  0  1  6  3    -0
SFSetGraph           180 1.1 9.6152e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              174 1.1 2.8620e-01 4.4 0.00e+00 0.0 2.2e+05 1.4e+03 8.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         449 1.0 1.7707e-01 4.4 0.00e+00 0.0 9.1e+05 6.8e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
SFBcastEnd           449 1.0 9.3211e+00 150.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 3.5116e-02 15.6 0.00e+00 0.0 3.3e+05 9.2e+04 0.0e+00  0  0  0  1  0   0  0  2  1  0    -0
SFReduceEnd          154 1.0 3.6272e+00 124.1 1.32e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1061
SFFetchOpBegin         4 1.0 2.7411e-05 4.7 0.00e+00 0.0 7.1e+03 8.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 7.4700e-04 24.7 0.00e+00 0.0 7.1e+03 8.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 2.4351e-03 3.9 0.00e+00 0.0 4.0e+03 2.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 1.1711e-02 1.5 0.00e+00 0.0 1.9e+05 1.0e+02 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 6.5630e-03 3.7 0.00e+00 0.0 8.6e+04 4.7e+01 3.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 4.9905e-05 3.9 0.00e+00 0.0 2.3e+03 1.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             18663 1.1 2.5155e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           18667 1.1 7.2935e-02 11.1 1.32e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 52753
VecDot                91 1.0 3.3319e-01 15.4 3.31e+07 1.2 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 39789
VecMDot             7929 1.0 7.2783e+01 2.4 3.64e+10 1.2 0.0e+00 0.0e+00 7.9e+03  4  4  0  0 24   9  9  0  0 44 200389
VecNorm             8597 1.0 7.6405e+00 3.7 2.76e+09 1.2 0.0e+00 0.0e+00 8.6e+03  0  0  0  0 26   1  1  0  0 47 144875
VecScale            8292 1.0 3.1862e-01 1.3 1.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1667345
VecCopy              731 1.0 4.1621e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               652 1.0 1.5725e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              363 1.0 1.2187e-01 1.4 9.90e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 325384
VecWAXPY             269 1.0 2.1652e-01 1.9 4.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 90498
VecMAXPY            8292 1.0 3.8616e+01 1.1 3.90e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   7  9  0  0  0 404173
VecScatterBegin    18056 1.1 2.7533e+00 2.4 0.00e+00 0.0 1.9e+07 9.9e+04 0.0e+00  0  0 14 32  0   0  0 90 86  0    -0
VecScatterEnd      18056 1.1 3.9107e+01 42.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
VecSetRandom           2 1.0 4.1312e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.1278e-02 1.8 6.62e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 847718
VecReduceComm         91 1.0 1.0137e-01 12.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize        1054 1.0 1.0410e-01 2.7 3.00e+07 1.2 0.0e+00 0.0e+00 1.1e+03  0  0  0  0  3   0  0  0  0  6 115513
MatMult             8198 1.0 2.0829e+02 1.2 1.47e+11 1.1 1.9e+07 9.9e+04 0.0e+00 15 17 14 32  0  39 35 90 86  0 281760
MatSolve            5877 1.1 8.0021e-01 1.5 4.65e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 232621
MatLUFactorSym        93 1.1 2.9493e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       276 1.1 4.8780e-01 1.0 9.00e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 73569
MatILUFactorSym        1 1.0 8.9746e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1144 1.0 1.9243e+01 3.7 0.00e+00 0.0 2.1e+05 6.0e+05 5.6e+02  1  0  0  2  2   2  0  1  6  3    -0
MatAssemblyEnd      1144 1.0 4.1643e+00 8.2 5.65e+07 0.0 1.4e+04 9.3e+03 4.4e+01  0  0  0  0  0   0  0  0  0  0  1785
MatGetRowIJ           93 1.1 2.2780e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 2.6391e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.3e+01  0  0  0  0  0   0  0  0  0  1    -0
MatGetOrdering        93 1.1 1.7974e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 3.2062e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 9.6153e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.4192e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.3552e+00 1.2 2.65e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 780541
MatPtAPSymbolic        2 1.0 1.9691e-01 1.1 0.00e+00 0.0 1.4e+04 1.2e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 7.9406e+00 1.0 1.01e+10 1.1 4.2e+05 2.2e+05 1.9e+02  1  1  0  2  1   2  2  2  4  1 505963
MatGetLocalMat       184 1.0 4.2770e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 4.0289e-01 2.3 0.00e+00 0.0 4.2e+05 2.2e+05 0.0e+00  0  0  0  2  0   0  0  2  4  0    -0
MatSetPreallCOO       16 1.0 7.5810e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 3.7536e-05 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 2.5403e+01 1.0 1.21e+10 1.2 2.7e+06 4.0e+04 2.7e+03  2  1  2  2  8   5  3 13  5 15 189864
PCApply             6969 1.0 8.0662e+02 1.1 4.35e+11 1.2 1.1e+08 3.2e+04 1.4e+04 62 51 84 62 44 Multiple stages 214361
PCApplyOnBlocks     5877 1.1 9.2170e-01 1.4 5.48e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 238385
KSPSetUp              91 1.0 1.5909e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.0594e+03 1.0 6.58e+11 1.2 1.3e+08 4.2e+04 2.9e+04 83 77 97 94 88 Multiple stages 247440
KSPGMRESOrthog      7929 1.0 1.0673e+02 1.6 7.28e+10 1.2 0.0e+00 0.0e+00 7.9e+03  6  9  0  0 24  16 18  0  0 44 273294
DMRefine               1 1.0 2.1739e-01 1.0 2.40e+03 1.0 1.4e+04 4.1e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     5
Mesh Partition         3 1.0 1.9805e-01 1.0 0.00e+00 0.0 5.4e+04 8.3e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 2.9107e-02 1.0 0.00e+00 0.0 1.8e+05 1.0e+02 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 5.6594e-03 1679.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 2.8573e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 6.0633e-03 1.3 0.00e+00 0.0 1.0e+04 6.9e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 2.3618e-03 2.0 0.00e+00 0.0 5.2e+03 2.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 3.3879e-03 1.8 0.00e+00 0.0 5.6e+03 3.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 3.7314e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.0511e-01 1.0 0.00e+00 0.0 1.6e+04 3.9e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 3.4941e-03 1.2 0.00e+00 0.0 3.1e+04 1.6e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 1.3643e-02 1.0 0.00e+00 0.0 8.7e+04 1.0e+02 1.1e+02  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        2 1.0 2.6405e-02 1.1 0.00e+00 0.0 2.3e+05 8.4e+01 1.6e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        5 1.0 6.7127e-03 1.2 0.00e+00 0.0 4.6e+04 7.0e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 4.6077e-04 1.3 0.00e+00 0.0 3.5e+04 4.7e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 6.4670e-03 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 7.8215e-04 22.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 8.9262e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 7.4808e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.1664e-03 1.7 0.00e+00 0.0 7.0e+03 3.2e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 6.0772e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.0973e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.8815e-04 3.2 0.00e+00 0.0 7.0e+03 3.2e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.6270e-05 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 5.3631e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 3.0159e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.2331e+03 1.0 8.62e+11 1.2 1.3e+08 4.4e+04 3.2e+04 97 100 100 100 98 Multiple stages 275305
SNESSetUp              1 1.0 5.5387e-05 8.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4743e+01 1.1 7.88e+10 1.3 6.3e+05 1.1e+05 1.0e+00  3  9  0  1  0   9 18  3  3  0 657840
SNESJacobianEval      91 1.0 1.0072e+02 1.0 1.13e+11 1.3 4.1e+05 3.4e+05 3.6e+02  8 12  0  2  1  20 25  2  7  2 419858
SNESLineSearch        91 1.0 2.3728e+01 1.0 6.13e+10 1.2 6.2e+05 1.1e+05 3.6e+02  2  7  0  1  1   5 14  3  3  2 966853
DualSpaceSetUp         4 1.0 7.6344e-03 2.9 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                4 1.0 1.8960e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.2705e+03 1.0 8.62e+11 1.2 1.3e+08 4.3e+04 3.3e+04 99 100 100 100 100 Multiple stages 267211
firedrake.__init__       1 1.0 1.7408e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 4.1758e+00 14.8 0.00e+00 0.0 2.5e+05 7.8e+01 1.9e+02  0  0  0  0  1   0  0  1  0  1    -0
CreateMesh             2 1.0 2.8981e-01 1.0 0.00e+00 0.0 4.8e+05 9.6e+01 3.2e+02  0  0  0  0  1   0  0  2  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.3182e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 5.5160e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 6.2886e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 1.0688e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 4.2162e-02 1.1 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.8827e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 4.0108e-02 1.1 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 3.8017e-02 1.1 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 3.7913e-02 1.1 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.3930e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 1.5870e-02 1.5 0.00e+00 0.0 3.3e+04 6.8e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 5.8551e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8217e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 1.8351e-01 48.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 5.4972e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.5744e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.5227e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0385e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 5.4914e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.0409e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.4372e+02 1.1 1.92e+11 1.3 5.7e+05 1.1e+05 1.2e+01 11 21  0  1  0  28 43  3  3  0 498971
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 5.4525e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 4.1035e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.9679e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.7483e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.7269e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 2.5784e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      16 1.0 2.5783e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.3443e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.3268e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 3.0621e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.4375e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.7981e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 3.2634e+00 1.1 2.73e+06 1.1 9.4e+03 2.0e+04 2.0e+00  0  0  0  0  0   1  0  0  0  0   335
firedrake.interpolation.interpolate       6 1.0 2.0193e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.6185e+01 1.0 4.29e+06 1.1 5.3e+04 3.5e+03 9.7e+01  1  0  0  0  0   3  0  0  0  1   106
firedrake.formmanipulation.split_form       4 1.0 2.3869e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.4498e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.0259e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.3898e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.7757e-01 3.1 0.00e+00 0.0 5.7e+05 1.1e+05 2.0e+00  0  0  0  1  0   0  0  3  3  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 6.0391e+00 1.1 4.29e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   284
firedrake.halo.Halo.global_to_local_end     243 1.0 9.0126e+00 230.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 4.8410e-01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 4.5777e-01 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8091e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.3601e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.1489e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6675e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2746e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0857e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.5678e+00 1.0 0.00e+00 0.0 1.4e+04 6.1e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9253e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4067e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1457e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1457e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         3 1.0 2.8055e+00 1.3 0.00e+00 0.0 2.1e+04 2.0e+05 3.2e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         3 1.0 4.4290e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.2332e+03 1.0 8.62e+11 1.2 1.3e+08 4.4e+04 3.2e+04 97 100 100 100 99 Multiple stages 275289
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.5871e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.9604e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 4.0680e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.2653e+00 1.1 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 823524
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0375e+00 1.0 3.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7259
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0024e+00 1.0 3.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7387
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.9748e+00 1.1 1.75e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 701075
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7335e+01 1.3 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   3  9  0  0  0 899929
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.8332e-02 7.4 0.00e+00 0.0 2.8e+05 1.1e+05 0.0e+00  0  0  0  1  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.6275e+00 118.6 1.32e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1061
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5776e+01 1.1 2.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  6  0  0  0 591278
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3253e+00 1.0 3.37e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5811
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.2763e+00 1.0 3.37e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5936
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7567e+01 1.2 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   5  6  0  0  0 356533
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.4835e+01 1.4 6.55e+10 1.4 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   8 14  0  0  0 515189
firedrake.dmhooks.get_function_space       2 1.0 2.6050e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 9.0341e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 9.9586e+00 1.0 0.00e+00 0.0 3.0e+04 1.1e+02 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 9.9535e+00 1.0 0.00e+00 0.0 2.1e+04 9.1e+01 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 6.3145e+00 1.0 0.00e+00 0.0 1.2e+04 3.5e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 6.0002e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.9889e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.5145e+00 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.3997e+00 20.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.2543e+00 49.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 5.1253e+00 767.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 5.1252e+00 777.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 5.0612e-02 7.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 4.4816e-02 36.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.3506e-03 19.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.9133e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.4405e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.7187e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.0257e-02 31.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 3.6356e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.2970e-02 2.8 0.00e+00 0.0 9.1e+03 1.6e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.1640e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.2949e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 7.9883e-01 1.0 5.04e+07 1.2 2.3e+06 2.9e+02 2.1e+03  0  0  2  0  6   0  0 11  0 12 24981
MGSetup Level 1       91 1.0 8.6698e-01 1.0 3.87e+08 1.2 2.3e+04 1.1e+05 1.2e+02  0  0  0  0  0   0  0  0  0  1 178658

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 1.8886e-02 3.6 0.00e+00 0.0 2.0e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            91 1.0 6.2041e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 2.3388e-02 3.3 0.00e+00 0.0 3.9e+05 3.6e+01 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFPack           2669127 1.1 5.6395e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2669127 1.1 1.5696e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            27876 1.0 2.8943e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             76657 1.0 1.2271e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAXPY            13938 1.0 6.3377e+00 1.5 5.07e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 320398
VecAYPX            55752 1.0 8.2376e+00 3.0 2.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 124249
VecAXPBYCZ         13938 1.0 9.7801e-03 3.2 2.56e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1050727
VecScatterBegin  2669127 1.1 3.7365e+01 1.2 0.00e+00 0.0 1.1e+08 3.2e+04 0.0e+00  3  0 84 62  0   4  0 99 100  0    -0
VecScatterEnd    2669127 1.1 6.7609e+01 12.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            41814 1.0 3.9247e+02 1.2 2.81e+11 1.1 9.5e+07 3.7e+04 0.0e+00 29 33 72 62  0  47 65 86 100  0 286355
MatMultAdd         13938 1.0 1.9204e+01 1.2 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 211905
MatMultTranspose   13938 1.0 1.5245e+01 2.3 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 266932
MatSolve         1317141 1.1 3.3317e+02 1.2 1.22e+11 1.2 1.6e+07 1.3e+02 4.6e+02 24 14 12  0  1  39 28 14  0  3 143540
MatLUFactorNum      8278 1.1 7.4748e+00 1.2 3.75e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 199965
MatResidual        13938 1.0 2.0511e+02 1.2 1.42e+11 1.1 3.2e+07 5.6e+04 0.0e+00 15 17 24 31  0  24 33 29 50  0 276256
MatAssemblyBegin    8188 1.1 2.7521e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd      8188 1.1 2.4235e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 7.2386e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp             8367 1.1 1.4543e+01 1.2 3.75e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 102779
PCSetUpOnBlocks    13938 1.0 6.7601e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            20907 1.0 4.1310e+02 1.2 1.26e+11 1.2 8.0e+07 2.1e+02 7.4e+03 29 15 60  0 23  48 29 71  0 52 119856
PCApplyOnBlocks  1310172 1.1 2.1114e+02 1.3 1.23e+11 1.2 0.0e+00 0.0e+00 0.0e+00 14 14  0  0  0  23 28  0  0  0 233142
KSPSetUp            8189 1.1 2.6502e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           20907 1.0 5.9525e+02 1.1 2.73e+11 1.2 9.5e+07 1.9e+04 1.4e+04 44 32 72 31 44  72 63 86 50 100 181711
MGSmooth Level 0    6969 1.0 1.7098e+02 1.3 4.82e+09 5.8 8.0e+07 2.1e+02 1.4e+04 11  0 60  0 44  18  0 71  0 100  2521
MGSmooth Level 1   13938 1.0 4.5976e+02 1.2 2.69e+11 1.2 1.6e+07 1.1e+05 0.0e+00 33 32 12 31  0  54 62 14 50  0 234324
MGResid Level 1     6969 1.0 2.0374e+02 1.3 1.42e+11 1.1 1.6e+07 1.1e+05 0.0e+00 15 17 12 31  0  24 33 14 50  0 277914
MGInterp Level 1   13938 1.0 3.3766e+01 1.4 2.03e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 240550
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
         PetscRandom     2              2
           Index Set  2831           2831
   IS L to G Mapping   201            197
             Section   303            303
   Star Forest Graph   371            370
              Vector   904            899
              Matrix   565            551
      Preconditioner   102            102
       Krylov Solver   102            102
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

           Index Set   182            182
   Star Forest Graph    93             90
              Vector   183            184
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.62e-08
Average time for MPI_Barrier(): 1.18866e-05
Average time for zero size MPI_Send(): 2.39529e-06
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

