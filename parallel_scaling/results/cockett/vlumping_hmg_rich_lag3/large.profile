****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0560.gadi.nci.org.au with 416 processes, by sg8812 on Tue Aug 25 22:25:39 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.253e+03     1.000   1.253e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                8.568e+11     1.153   8.109e+11  3.373e+14
Flops/sec:            6.836e+08     1.153   6.470e+08  2.691e+11
MPI Msg Count:        5.019e+05     3.883   3.123e+05  1.299e+08
MPI Msg Len (bytes):  1.933e+10     2.888   4.372e+04  5.680e+12
MPI Reductions:       3.081e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.7838e+02  38.2%  1.6411e+14  48.6%  1.919e+07  14.8%  1.100e+05       37.2%  1.667e+04  54.1%
 1:        MG Apply: 7.7497e+02  61.8%  1.7323e+14  51.4%  1.107e+08  85.2%  3.223e+04       62.8%  1.412e+04  45.8%

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

BuildTwoSided        614 1.0 1.7953e+01 6.2 0.00e+00 0.0 2.1e+05 4.0e+00 5.2e+02  1  0  0  0  2   2  0  1  0  3    -0
BuildTwoSidedF       440 1.0 1.7804e+01 6.6 0.00e+00 0.0 2.1e+05 6.0e+05 4.4e+02  1  0  0  2  1   2  0  1  6  3    -0
SFSetGraph           180 1.1 9.6938e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              174 1.1 3.2194e-01 4.7 0.00e+00 0.0 2.2e+05 1.4e+03 8.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         449 1.0 1.7029e-01 3.9 0.00e+00 0.0 9.1e+05 6.8e+04 0.0e+00  0  0  1  1  0   0  0  5  3  0    -0
SFBcastEnd           449 1.0 8.7491e+00 124.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 3.1951e-02 16.8 0.00e+00 0.0 3.3e+05 9.2e+04 0.0e+00  0  0  0  1  0   0  0  2  1  0    -0
SFReduceEnd          154 1.0 3.6179e+00 177.3 1.32e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1063
SFFetchOpBegin         4 1.0 2.4619e-05 4.6 0.00e+00 0.0 7.1e+03 8.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 9.8163e-04 41.7 0.00e+00 0.0 7.1e+03 8.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 1.5007e-03 2.5 0.00e+00 0.0 4.0e+03 2.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 1.0743e-02 1.3 0.00e+00 0.0 1.9e+05 1.0e+02 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 5.4979e-03 3.1 0.00e+00 0.0 8.6e+04 4.7e+01 3.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 4.5965e-05 3.8 0.00e+00 0.0 2.3e+03 1.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             18087 1.1 2.4882e+00 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           18091 1.1 7.0337e-02 11.0 1.32e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 54701
VecDot                91 1.0 3.2496e-01 15.5 3.31e+07 1.2 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 40797
VecMDot             7352 1.0 6.9325e+01 2.3 3.64e+10 1.2 0.0e+00 0.0e+00 7.4e+03  4  4  0  0 24  10  9  0  0 44 210595
VecNorm             7901 1.0 8.2779e+00 4.7 2.74e+09 1.2 0.0e+00 0.0e+00 7.9e+03  0  0  0  0 26   1  1  0  0 47 132870
VecScale            7657 1.0 3.1384e-01 1.2 1.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1695677
VecCopy              672 1.0 4.2147e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               535 1.0 1.5670e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              305 1.0 1.2393e-01 1.4 9.93e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 321011
VecWAXPY             270 1.0 2.2029e-01 1.9 4.91e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 89280
VecMAXPY            7657 1.0 3.9033e+01 1.2 3.90e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   8 10  0  0  0 400277
VecScatterBegin    17480 1.1 2.8625e+00 2.4 0.00e+00 0.0 1.7e+07 1.1e+05 0.0e+00  0  0 13 33  0   0  0 90 88  0    -0
VecScatterEnd      17480 1.1 3.6368e+01 32.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 4.2994e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.2268e-02 2.0 6.62e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 821706
VecReduceComm         91 1.0 9.7583e-02 31.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize         405 1.0 1.5581e-01 2.9 2.93e+07 1.2 0.0e+00 0.0e+00 4.0e+02  0  0  0  0  1   0  0  0  0  2 75335
MatMult             7622 1.0 2.0707e+02 1.2 1.47e+11 1.1 1.7e+07 1.1e+05 0.0e+00 15 17 13 33  0  40 36 90 88  0 283943
MatSolve            5228 1.1 7.8153e-01 1.5 4.56e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 233872
MatLUFactorSym        93 1.1 2.9002e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       217 1.1 4.5605e-01 1.0 8.60e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 75412
MatILUFactorSym        1 1.0 9.7542e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               30 1.0 1.0869e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             1 1.0 1.3192e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     790 1.0 1.7930e+01 4.6 0.00e+00 0.0 2.1e+05 6.0e+05 4.4e+02  1  0  0  2  1   2  0  1  6  3    -0
MatAssemblyEnd       790 1.0 3.8050e+00 7.4 5.65e+07 0.0 1.4e+04 9.3e+03 4.4e+01  0  0  0  0  0   0  0  0  0  0  1954
MatGetRowIJ           93 1.1 2.2380e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 2.6240e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.3e+01  0  0  0  0  0   0  0  0  0  1    -0
MatGetOrdering        93 1.1 1.9210e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       155 1.0 3.2103e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 9.7863e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.3900e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        129 1.0 4.6283e-01 1.1 9.32e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 803692
MatPtAPSymbolic        2 1.0 1.7145e-01 1.0 0.00e+00 0.0 1.4e+04 1.2e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        64 1.0 2.5479e+00 1.0 3.54e+09 1.1 1.5e+05 2.1e+05 7.4e+01  0  0  0  1  0   1  1  1  1  0 554487
MatGetLocalMat        66 1.0 1.3738e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         66 1.0 1.8884e-01 2.7 0.00e+00 0.0 1.5e+05 2.1e+05 0.0e+00  0  0  0  1  0   0  0  1  2  0    -0
MatSetPreallCOO       16 1.0 4.1875e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 2.1202e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 2.0581e+01 1.0 5.50e+09 1.2 1.1e+06 4.4e+04 1.2e+03  2  1  1  1  4   4  1  5  2  7 106832
PCApply             6982 1.0 7.9451e+02 1.1 4.35e+11 1.2 1.1e+08 3.2e+04 1.4e+04 62 51 85 63 46 Multiple stages 218028
PCApplyOnBlocks     5228 1.1 9.0173e-01 1.4 5.40e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 239928
KSPSetUp              91 1.0 1.4911e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.0489e+03 1.0 6.58e+11 1.2 1.3e+08 4.2e+04 2.8e+04 84 78 98 95 92 Multiple stages 250363
KSPGMRESOrthog      7352 1.0 1.0349e+02 1.6 7.29e+10 1.2 0.0e+00 0.0e+00 7.4e+03  6  9  0  0 24  17 18  0  0 44 282153
DMRefine               1 1.0 2.2298e-01 1.0 2.40e+03 1.0 1.4e+04 4.1e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     4
Mesh Partition         3 1.0 1.9504e-01 1.0 0.00e+00 0.0 5.4e+04 8.3e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 2.7770e-02 1.0 0.00e+00 0.0 1.8e+05 1.0e+02 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 5.5741e-03 1584.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 2.6094e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 6.6505e-03 1.2 0.00e+00 0.0 1.0e+04 6.9e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 2.6313e-03 2.2 0.00e+00 0.0 5.2e+03 2.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 3.2910e-03 1.9 0.00e+00 0.0 5.6e+03 3.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 2.0766e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.0398e-01 1.0 0.00e+00 0.0 1.6e+04 3.9e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 3.2717e-03 1.1 0.00e+00 0.0 3.1e+04 1.6e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 1.3824e-02 1.0 0.00e+00 0.0 8.7e+04 1.0e+02 1.1e+02  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        2 1.0 2.3139e-02 1.1 0.00e+00 0.0 2.3e+05 8.4e+01 1.6e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        5 1.0 5.4092e-03 1.2 0.00e+00 0.0 4.6e+04 7.0e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 9.0939e-04 2.3 0.00e+00 0.0 3.5e+04 4.7e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 3.9657e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 7.5349e-04 22.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 9.2024e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 9.7072e-05 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.4101e-03 1.4 0.00e+00 0.0 7.0e+03 3.2e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 2.0072e-04 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 3.4825e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 5.4773e-04 6.4 0.00e+00 0.0 7.0e+03 3.2e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.4580e-05 6.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 9.6591e-04 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 2.7080e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.2209e+03 1.0 8.57e+11 1.2 1.3e+08 4.4e+04 3.0e+04 97 100 100 100 98 Multiple stages 276302
SNESSetUp              1 1.0 3.8268e-05 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.5619e+01 1.1 7.88e+10 1.3 6.3e+05 1.1e+05 1.0e+00  4  9  0  1  0   9 18  3  3  0 645203
SNESJacobianEval      91 1.0 1.0290e+02 1.0 1.13e+11 1.3 4.1e+05 3.4e+05 3.6e+02  8 13  0  3  1  22 26  2  7  2 410970
SNESLineSearch        91 1.0 2.3786e+01 1.0 6.13e+10 1.2 6.2e+05 1.1e+05 3.6e+02  2  7  0  1  1   5 14  3  3  2 964503
DualSpaceSetUp         4 1.0 3.3364e-03 1.2 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     9
FESetUp                4 1.0 1.9143e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.2502e+03 1.0 8.57e+11 1.2 1.3e+08 4.4e+04 3.1e+04 100 100 100 100 100 Multiple stages 269817
firedrake.__init__       1 1.0 1.5023e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 4.2432e+00 15.3 0.00e+00 0.0 2.5e+05 7.8e+01 1.9e+02  0  0  0  0  1   0  0  1  0  1    -0
CreateMesh             2 1.0 2.8397e-01 1.0 0.00e+00 0.0 4.8e+05 9.6e+01 3.2e+02  0  0  0  0  1   0  0  3  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.2933e-03 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.6330e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 6.2388e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 8.4682e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 4.1439e-02 1.1 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.6229e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.9239e-02 1.1 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 3.7075e-02 1.1 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 3.6957e-02 1.1 0.00e+00 0.0 4.2e+04 8.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.5246e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 1.0724e-02 1.3 0.00e+00 0.0 3.3e+04 6.8e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 6.1648e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8173e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 6.8168e-02 13.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 2.5880e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.7482e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.0893e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0593e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 2.5822e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 5.8380e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.4121e+02 1.1 1.92e+11 1.3 5.7e+05 1.1e+05 1.2e+01 11 21  0  1  0  28 44  3  3  0 507837
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 2.5444e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 3.7845e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 2.2809e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.5133e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.9653e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 2.0405e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 2.0404e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.0864e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.0723e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 3.1374e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.5749e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 9.6711e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.6515e-01 1.0 2.73e+06 1.1 9.4e+03 2.0e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1132
firedrake.interpolation.interpolate       6 1.0 1.3645e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.3434e+01 1.0 4.29e+06 1.1 5.3e+04 3.5e+03 9.7e+01  1  0  0  0  0   3  0  0  0  1   128
firedrake.formmanipulation.split_form       4 1.0 2.9351e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.4558e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.0768e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.5891e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.9449e-01 3.1 0.00e+00 0.0 5.7e+05 1.1e+05 2.0e+00  0  0  0  1  0   0  0  3  3  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.4501e+00 1.0 4.29e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   498
firedrake.halo.Halo.global_to_local_end     243 1.0 8.5602e+00 224.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.3675e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.9729e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5938e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 6.4898e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.2400e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6118e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2500e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 7.9897e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.5022e+00 1.0 0.00e+00 0.0 1.4e+04 6.1e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.8986e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2118e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1393e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1393e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         3 1.0 2.7019e+00 1.2 0.00e+00 0.0 2.1e+04 2.0e+05 3.2e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         3 1.0 4.4715e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.2210e+03 1.0 8.57e+11 1.2 1.3e+08 4.4e+04 3.0e+04 97 100 100 100 98 Multiple stages 276286
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.2137e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2590e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.6561e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.4210e+00 1.3 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 722495
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.2183e+00 1.0 3.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6668
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.1451e+00 1.0 3.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6895
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0266e+01 1.1 1.75e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 681185
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7606e+01 1.3 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   3 10  0  0  0 886109
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.7068e-02 7.8 0.00e+00 0.0 2.8e+05 1.1e+05 0.0e+00  0  0  0  1  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.6185e+00 166.3 1.32e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1063
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.6247e+01 1.1 2.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  6  0  0  0 574139
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4907e+00 1.0 3.37e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  5425
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.4486e+00 1.0 3.37e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  5518
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.9048e+01 1.2 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   6  6  0  0  0 338357
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.6455e+01 1.4 6.55e+10 1.4 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   8 14  0  0  0 497221
firedrake.dmhooks.get_function_space       2 1.0 2.5788e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.8316e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 9.7598e+00 1.0 0.00e+00 0.0 3.0e+04 1.1e+02 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 9.7543e+00 1.0 0.00e+00 0.0 2.1e+04 9.1e+01 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 6.1248e+00 1.0 0.00e+00 0.0 1.2e+04 3.5e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 5.8264e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 5.8150e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 5.3883e+00 14.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 5.3650e+00 20.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.2205e+00 47.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 4.3973e+00 658.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 4.3972e+00 667.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 2.9687e-02 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 2.3553e-02 23.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.3757e-03 19.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.8659e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.6735e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.6573e-03 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 9.2851e-03 28.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 3.6275e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 1.4810e-02 3.0 0.00e+00 0.0 9.1e+03 1.6e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.1644e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.2882e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       32 1.0 6.8388e-01 1.0 1.78e+07 1.2 8.1e+05 2.9e+02 7.5e+02  0  0  1  0  2   0  0  4  0  5 10268
MGSetup Level 1       32 1.0 8.7381e-01 1.0 3.87e+08 1.2 2.3e+04 1.1e+05 1.2e+02  0  0  0  0  0   0  0  0  0  1 177262

--- Event Stage 1: MG Apply

BuildTwoSided         31 1.0 4.7354e-03 3.8 0.00e+00 0.0 6.7e+04 4.0e+00 3.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            31 1.0 2.0983e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               31 1.0 5.9930e-03 2.6 0.00e+00 0.0 1.3e+05 3.6e+01 3.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack           2674106 1.1 6.9150e+00 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2674106 1.1 1.5493e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            27928 1.0 2.8887e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             76800 1.0 1.2210e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAXPY            13964 1.0 6.4604e+00 1.5 5.08e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 314897
VecAYPX            55856 1.0 8.6881e+00 2.9 2.56e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 118025
VecAXPBYCZ         13964 1.0 9.0040e-03 3.0 2.57e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1143421
VecScatterBegin  2674106 1.1 3.8694e+01 1.3 0.00e+00 0.0 1.1e+08 3.2e+04 0.0e+00  3  0 85 63  0   5  0 100 100  0    -0
VecScatterEnd    2674106 1.1 6.1162e+01 13.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            41892 1.0 3.8932e+02 1.1 2.82e+11 1.1 9.5e+07 3.7e+04 0.0e+00 30 33 73 63  0  48 65 86 100  0 289213
MatMultAdd         13964 1.0 1.8880e+01 1.2 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 215946
MatMultTranspose   13964 1.0 1.6132e+01 2.1 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 252728
MatSolve         1319598 1.1 3.1660e+02 1.1 1.21e+11 1.2 1.5e+07 1.3e+02 1.6e+02 24 14 12  0  1  39 28 14  0  1 151328
MatLUFactorNum      8219 1.1 4.4322e+00 1.2 3.73e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 337135
MatResidual        13964 1.0 2.0356e+02 1.2 1.42e+11 1.1 3.2e+07 5.6e+04 0.0e+00 15 17 24 31  0  24 33 29 50  0 278870
MatAssemblyBegin    8188 1.1 2.6870e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd      8188 1.1 2.3810e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 6.9014e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp             8308 1.1 1.1271e+01 1.2 3.73e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 132571
PCSetUpOnBlocks    13964 1.0 7.1686e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            20946 1.0 3.8758e+02 1.2 1.25e+11 1.2 7.9e+07 2.1e+02 7.1e+03 29 15 61  0 23  47 29 71  0 51 127973
PCApplyOnBlocks  1312616 1.1 1.9786e+02 1.2 1.23e+11 1.2 0.0e+00 0.0e+00 0.0e+00 15 15  0  0  0  24 28  0  0  0 249242
KSPSetUp            8188 1.1 8.8911e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           20946 1.0 5.7738e+02 1.1 2.72e+11 1.2 9.5e+07 1.9e+04 1.4e+04 44 32 73 32 46  72 63 86 50 100 187677
MGSmooth Level 0    6982 1.0 1.5428e+02 1.3 5.23e+09 6.3 7.9e+07 2.1e+02 1.4e+04 11  0 61  0 46  17  0 71  0 100  2789
MGSmooth Level 1   13964 1.0 4.5022e+02 1.1 2.70e+11 1.2 1.6e+07 1.1e+05 0.0e+00 34 32 12 31  0  55 62 14 50  0 239729
MGResid Level 1     6982 1.0 2.0131e+02 1.2 1.42e+11 1.1 1.6e+07 1.1e+05 0.0e+00 15 17 12 31  0  24 33 14 50  0 281789
MGInterp Level 1   13964 1.0 3.4659e+01 1.4 2.03e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 234788
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
              Vector   671            667
              Matrix   568            554
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

           Index Set    62             62
   Star Forest Graph    33             30
              Vector    62             62
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 1.14566e-05
Average time for zero size MPI_Send(): 2.36682e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg_rich_lag3/large.profile # (source: environment)
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

