****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0037.gadi.nci.org.au with 832 processes, by sg8812 on Tue Aug 25 22:36:29 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.906e+03     1.000   1.906e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.028e+12     1.253   9.732e+11  8.097e+14
Flops/sec:            5.396e+08     1.253   5.107e+08  4.249e+11
MPI Msg Count:        8.548e+05     5.518   4.033e+05  3.356e+08
MPI Msg Len (bytes):  2.722e+10     3.126   4.803e+04  1.612e+13
MPI Reductions:       3.855e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.6375e+02  29.6%  3.7448e+14  46.2%  4.894e+07  14.6%  1.200e+05       36.4%  2.057e+04  53.4%
 1:        MG Apply: 1.3419e+03  70.4%  4.3525e+14  53.8%  2.866e+08  85.4%  3.574e+04       63.6%  1.796e+04  46.6%

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

BuildTwoSided        594 1.0 2.8222e+01 8.3 0.00e+00 0.0 4.4e+05 4.0e+00 5.2e+02  1  0  0  0  1   2  0  1  0  3    -0
BuildTwoSidedF       440 1.0 2.8029e+01 8.2 0.00e+00 0.0 4.4e+05 5.9e+05 4.4e+02  1  0  0  2  1   2  0  1  4  2    -0
SFSetGraph           160 1.1 1.0589e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              154 1.1 3.6765e-01 4.9 0.00e+00 0.0 4.4e+05 1.5e+03 8.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         449 1.0 1.8772e-01 3.5 0.00e+00 0.0 1.9e+06 7.5e+04 0.0e+00  0  0  1  1  0   0  0  4  2  0    -0
SFBcastEnd           449 1.0 1.1812e+01 213.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 3.2789e-02 17.5 0.00e+00 0.0 6.9e+05 1.0e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
SFReduceEnd          154 1.0 4.3577e+00 199.2 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1990
SFFetchOpBegin         4 1.0 2.9026e-05 6.3 0.00e+00 0.0 1.5e+04 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 8.5388e-04 36.3 0.00e+00 0.0 1.5e+04 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 2.5543e-03 4.0 0.00e+00 0.0 8.2e+03 2.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 1.6641e-02 1.3 0.00e+00 0.0 3.8e+05 8.8e+01 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 9.7512e-03 3.8 0.00e+00 0.0 1.7e+05 4.1e+01 3.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            1 1.0 5.9043e-05 4.5 0.00e+00 0.0 4.8e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             17961 1.1 4.1245e+00 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           17965 1.1 8.3976e-02 9.8 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 103254
VecDot                91 1.0 3.5201e-01 12.4 3.27e+07 1.2 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 74333
VecMDot             9273 1.0 1.0576e+02 2.4 4.68e+10 1.2 0.0e+00 0.0e+00 9.3e+03  3  5  0  0 24  11 10  0  0 45 354164
VecNorm             9895 1.0 1.4241e+01 3.9 3.43e+09 1.2 0.0e+00 0.0e+00 9.9e+03  0  0  0  0 26   1  1  0  0 48 192690
VecScale            9651 1.0 3.8064e-01 1.3 1.67e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3512520
VecCopy              672 1.0 3.3575e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               608 1.0 1.8069e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              378 1.0 1.5150e-01 1.4 1.24e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 656802
VecWAXPY             343 1.0 2.8179e-01 2.1 6.16e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 174999
VecMAXPY            9651 1.0 4.9152e+01 1.2 5.00e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   8 11  0  0  0 814429
VecScatterBegin    17354 1.1 4.4552e+00 3.3 0.00e+00 0.0 4.5e+07 1.2e+05 0.0e+00  0  0 13 33  0   1  0 92 91  0    -0
VecScatterEnd      17354 1.1 6.0131e+01 40.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
VecSetRandom           2 1.0 4.3321e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.2614e-02 2.0 6.54e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1604566
VecReduceComm         91 1.0 1.1085e-01 25.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize         405 1.0 1.3575e-01 4.2 2.89e+07 1.2 0.0e+00 0.0e+00 4.0e+02  0  0  0  0  1   0  0  0  0  2 170177
MatMult             9616 1.0 2.6836e+02 1.2 1.85e+11 1.2 4.5e+07 1.2e+05 0.0e+00 13 18 13 33  0  43 39 92 91  0 550977
MatSolve            4168 1.2 7.8008e-01 1.6 4.50e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 461703
MatLUFactorSym        73 1.2 1.0306e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       177 1.2 5.4307e-01 1.0 8.50e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 124423
MatILUFactorSym        1 1.0 7.6888e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               30 1.0 1.0862e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             1 1.0 1.0735e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     750 1.0 2.8214e+01 6.5 0.00e+00 0.0 4.4e+05 5.9e+05 4.4e+02  1  0  0  2  1   2  0  1  4  2    -0
MatAssemblyEnd       750 1.0 4.5153e+00 7.0 5.02e+07 0.0 2.8e+04 1.0e+04 4.4e+01  0  0  0  0  0   0  0  0  0  0  3318
MatGetRowIJ           73 1.2 2.5226e-05 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 2.8970e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 7.3e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering        73 1.2 1.7789e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       155 1.0 2.8433e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatTranspose           5 1.0 1.0284e-02 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.4866e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        129 1.0 4.8354e-01 1.2 9.21e+08 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1519094
MatPtAPSymbolic        2 1.0 2.0987e-01 1.1 0.00e+00 0.0 2.8e+04 1.3e+05 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        64 1.0 2.6931e+00 1.0 3.50e+09 1.3 3.1e+05 2.3e+05 7.4e+01  0  0  0  0  0   0  1  1  1  0 1036030
MatGetLocalMat        66 1.0 1.3334e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         66 1.0 2.0004e-01 2.5 0.00e+00 0.0 3.2e+05 2.3e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
MatSetPreallCOO       16 1.0 5.1745e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 2.5919e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 2.4245e+01 1.0 5.44e+09 1.2 2.2e+06 4.8e+04 1.1e+03  1  1  1  1  3   4  1  4  2  6 178998
PCApply             8903 1.0 1.3639e+03 1.0 5.54e+11 1.3 2.9e+08 3.6e+04 1.8e+04 70 54 85 64 47 Multiple stages 319131
PCApplyOnBlocks     4168 1.2 8.9633e-01 1.5 5.33e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 475796
KSPSetUp              91 1.0 1.3540e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.6985e+03 1.0 8.38e+11 1.2 3.3e+08 4.7e+04 3.6e+04 89 82 98 96 94 Multiple stages 389854
KSPGMRESOrthog      9273 1.0 1.4699e+02 1.7 9.36e+10 1.2 0.0e+00 0.0e+00 9.3e+03  6  9  0  0 24  19 20  0  0 45 509630
DMRefine               1 1.0 2.3759e-01 1.0 2.40e+03 1.0 2.9e+04 3.6e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     8
Mesh Partition         3 1.0 3.3997e-01 1.0 0.00e+00 0.0 1.1e+05 7.1e+01 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 4.5726e-02 1.0 0.00e+00 0.0 3.7e+05 8.9e+01 1.8e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 9.0952e-03 1770.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 5.9229e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 9.9157e-03 3.1 0.00e+00 0.0 2.1e+04 5.9e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 2.0712e-03 3.8 0.00e+00 0.0 1.1e+04 2.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 4.6661e-03 1.6 0.00e+00 0.0 1.2e+04 2.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 3.1002e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.4758e-01 1.0 0.00e+00 0.0 3.2e+04 3.2e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        3 1.0 5.9722e-03 1.1 0.00e+00 0.0 6.3e+04 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 2.2554e-02 1.0 0.00e+00 0.0 1.8e+05 9.1e+01 1.1e+02  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        2 1.0 4.5132e-02 1.0 0.00e+00 0.0 4.6e+05 7.4e+01 1.6e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        5 1.0 9.3695e-03 1.2 0.00e+00 0.0 9.4e+04 6.1e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 8.4441e-04 2.2 0.00e+00 0.0 7.2e+04 4.1e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 4.9380e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 1.3074e-03 47.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 9.8740e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 1.1788e-04 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 2.7166e-03 1.6 0.00e+00 0.0 1.4e+04 2.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 5.7582e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 3.9485e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 5.0964e-04 5.0 0.00e+00 0.0 1.4e+04 2.8e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 4.3785e-05 7.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 8.2249e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 2.9721e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.8721e+03 1.0 1.03e+12 1.3 3.3e+08 4.8e+04 3.8e+04 98 100 100 100 99 Multiple stages 432518
SNESSetUp              1 1.0 4.0787e-05 6.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4587e+01 1.1 7.87e+10 1.4 1.3e+06 1.2e+05 1.0e+00  2  7  0  1  0   8 16  3  3  0 1303638
SNESJacobianEval      91 1.0 1.0111e+02 1.0 1.13e+11 1.4 8.5e+05 3.4e+05 3.6e+02  5 10  0  2  1  18 22  2  5  2 825609
SNESLineSearch        91 1.0 2.3984e+01 1.0 6.12e+10 1.4 1.3e+06 1.2e+05 3.6e+02  1  6  0  1  1   4 12  3  3  2 1889033
DualSpaceSetUp         4 1.0 3.5571e-03 1.3 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    17
FESetUp                4 1.0 2.0659e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.9025e+03 1.0 1.03e+12 1.3 3.4e+08 4.8e+04 3.9e+04 100 100 100 100 100 Multiple stages 425624
firedrake.__init__       1 1.0 1.5841e+01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.4727e+00 12.5 0.00e+00 0.0 5.2e+05 6.7e+01 1.9e+02  0  0  0  0  0   1  0  1  0  1    -0
CreateMesh             2 1.0 4.5759e-01 1.0 0.00e+00 0.0 9.8e+05 8.3e+01 3.2e+02  0  0  0  0  1   0  0  2  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.1579e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.6560e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.9089e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 7.3740e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 4.6602e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.5243e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 4.4447e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 4.2347e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 4.2235e-02 1.1 0.00e+00 0.0 8.6e+04 7.8e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.6325e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 1.3979e-02 1.1 0.00e+00 0.0 6.8e+04 6.0e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 6.2296e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8230e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 1.5091e-02 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 2.5383e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.9162e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.0138e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0869e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 2.5324e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.2674e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.3766e+02 1.2 1.92e+11 1.4 1.2e+06 1.2e+05 1.2e+01  7 17  0  1  0  23 38  2  2  0 1028528
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 2.4915e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 3.4821e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.9698e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.6092e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.6470e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 2.1141e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      16 1.0 2.1140e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.0670e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.0531e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 3.1747e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.8851e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 7.7864e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.7189e-01 1.0 2.70e+06 1.2 1.9e+04 2.2e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  2219
firedrake.interpolation.interpolate       6 1.0 1.4556e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.6351e+01 1.0 4.24e+06 1.2 1.1e+05 3.9e+03 9.7e+01  1  0  0  0  0   3  0  0  0  0   207
firedrake.formmanipulation.split_form       4 1.0 4.1371e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.3834e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 1.0688e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.3 6.3645e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.4138e-01 3.6 0.00e+00 0.0 1.2e+06 1.2e+05 2.0e+00  0  0  0  1  0   0  0  2  2  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 3.4608e+00 1.0 4.23e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   979
firedrake.halo.Halo.global_to_local_end     243 1.0 1.1591e+01 601.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.5346e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.2708e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.4155e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 6.8986e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.9554e-05 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6749e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.4656e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0719e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.6115e+00 1.0 0.00e+00 0.0 2.8e+04 6.7e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.3508e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.9876e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1548e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1548e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         3 1.0 2.7465e+00 1.3 0.00e+00 0.0 4.3e+04 2.2e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 4.7613e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.8722e+03 1.0 1.03e+12 1.3 3.3e+08 4.8e+04 3.8e+04 98 100 100 100 99 Multiple stages 432504
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.2846e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.5618e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.1724e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.6525e+00 1.3 1.68e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   1  4  0  0  0 1552641
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9589e+00 1.0 2.89e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11798
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.7741e+00 1.0 2.89e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13027
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.9315e+00 1.2 1.73e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   2  4  0  0  0 1390909
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7722e+01 1.4 4.46e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   3  8  0  0  0 1739294
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.6116e-02 8.0 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 4.3586e+00 188.3 1.48e+07 3.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1989
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.7383e+01 1.3 2.30e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   3  5  0  0  0 1058946
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.2834e+00 1.0 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9246
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.2322e+00 1.0 2.64e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9458
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8060e+01 1.2 2.43e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   5  5  0  0  0 691904
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5382e+01 1.5 6.60e+10 1.5 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   7 12  0  0  0 1004803
firedrake.dmhooks.get_function_space       2 1.0 2.2794e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.6045e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 1.2471e+01 1.0 0.00e+00 0.0 6.2e+04 9.8e+01 1.1e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 1.2461e+01 1.0 0.00e+00 0.0 4.3e+04 8.0e+01 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 7.1187e+00 1.0 0.00e+00 0.0 2.4e+04 3.1e+01 4.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 6.5245e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 6.4957e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 6.0456e+00 19.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 6.0375e+00 23.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.8837e+00 53.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 5.2055e+00 780.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 5.2054e+00 791.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 5.0573e-02 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 4.1804e-02 29.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 1.2995e-03 18.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.7610e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 2.4416e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.5670e-03 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.1484e-02 34.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 5.3439e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 2.6205e-02 4.4 0.00e+00 0.0 1.9e+04 1.4e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.3311e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.3334e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       32 1.0 1.5269e+00 1.0 1.41e+07 1.3 1.7e+06 2.5e+02 7.5e+02  0  0  0  0  2   0  0  3  0  4  7153
MGSetup Level 1       32 1.0 8.6678e-01 1.0 3.83e+08 1.2 4.7e+04 1.2e+05 9.8e+01  0  0  0  0  0   0  0  0  0  0 352929

--- Event Stage 1: MG Apply

BuildTwoSided         31 1.0 1.3259e-02 5.5 0.00e+00 0.0 1.2e+05 4.0e+00 3.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            31 1.0 2.7203e-04 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               31 1.0 1.5484e-02 3.2 0.00e+00 0.0 2.4e+05 3.1e+01 3.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack           2697609 1.2 7.3847e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2697609 1.2 1.6877e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            35612 1.0 3.6022e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             97931 1.0 1.5848e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAXPY            17806 1.0 8.7763e+00 1.7 6.40e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 583382
VecAYPX            71224 1.0 1.0671e+01 2.1 3.22e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 241429
VecAXPBYCZ         17806 1.0 1.1993e-02 3.3 2.56e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1710309
VecScatterBegin  2697609 1.2 4.7368e+01 1.4 0.00e+00 0.0 2.9e+08 3.6e+04 0.0e+00  2  0 85 64  0   3  0 100 100  0    -0
VecScatterEnd    2697609 1.2 1.0709e+02 14.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
MatMult            53418 1.0 5.0922e+02 1.1 3.55e+11 1.2 2.5e+08 4.1e+04 0.0e+00 25 35 75 64  0  35 65 88 100  0 556789
MatMultAdd         17806 1.0 2.4611e+01 1.2 1.28e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 416731
MatMultTranspose   17806 1.0 2.0519e+01 2.2 1.28e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 499850
MatSolve         1326547 1.2 7.5743e+02 1.1 1.59e+11 1.3 3.6e+07 1.2e+02 1.6e+02 38 15 11  0  0  55 28 12  0  1 159140
MatLUFactorNum      6439 1.2 6.7207e+00 1.1 3.71e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 439112
MatResidual        17806 1.0 2.6131e+02 1.2 1.79e+11 1.2 8.4e+07 6.1e+04 0.0e+00 13 18 25 32  0  18 33 29 50  0 547127
MatAssemblyBegin    6408 1.2 2.5340e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd      6408 1.2 2.1787e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 7.5573e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
PCSetUp             6528 1.2 1.4178e+01 1.2 3.71e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 208147
PCSetUpOnBlocks    17806 1.0 1.0066e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            26709 1.0 8.4383e+02 1.1 1.64e+11 1.3 2.0e+08 1.8e+02 9.1e+03 43 15 60  0 23  61 28 71  0 50 146804
PCApplyOnBlocks  1317644 1.2 2.4566e+02 1.2 1.54e+11 1.2 0.0e+00 0.0e+00 0.0e+00 12 15  0  0  0  17 28  0  0  0 501886
KSPSetUp            6408 1.2 1.0025e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           26709 1.0 1.0901e+03 1.1 3.49e+11 1.3 2.4e+08 2.1e+04 1.8e+04 56 34 73 32 47  79 62 85 50 100 249404
MGSmooth Level 0    8903 1.0 5.5923e+02 1.1 9.88e+09 13.7 2.0e+08 1.8e+02 1.8e+04 28  0 60  0 47  39  0 71  0 100  1557
MGSmooth Level 1   17806 1.0 5.6402e+02 1.2 3.39e+11 1.2 4.2e+07 1.2e+05 0.0e+00 28 33 12 32  0  40 62 15 50  0 480503
MGResid Level 1     8903 1.0 2.6019e+02 1.2 1.79e+11 1.2 4.2e+07 1.2e+05 0.0e+00 13 18 12 32  0  18 33 15 50  0 549149
MGInterp Level 1   17806 1.0 4.4367e+01 1.4 2.56e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   3  5  0  0  0 461597
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   111            110
              Viewer     1              1
         PetscRandom     2              2
           Index Set  3871           3871
   IS L to G Mapping   181            177
             Section   303            303
   Star Forest Graph   351            350
              Vector   611            607
              Matrix   468            454
      Preconditioner    82             82
       Krylov Solver    82             82
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
Average time for MPI_Barrier(): 6.9652e-06
Average time for zero size MPI_Send(): 2.48075e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg_rich_lag3/huge.profile # (source: environment)
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

