****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0358.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 17:03:38 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.500e+02     1.000   7.500e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.871e+11     1.158   5.536e+11  5.757e+13
Flops/sec:            7.828e+08     1.158   7.381e+08  7.676e+10
MPI Msg Count:        2.804e+05     3.556   1.852e+05  1.926e+07
MPI Msg Len (bytes):  8.044e+09     2.405   3.411e+04  6.568e+11
MPI Reductions:       2.138e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.5456e+02  47.3%  3.1884e+13  55.4%  3.311e+06  17.2%  7.934e+04       40.0%  1.256e+04  58.7%
 1:        MG Apply: 3.9540e+02  52.7%  2.5686e+13  44.6%  1.595e+07  82.8%  2.471e+04       60.0%  8.805e+03  41.2%

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

BuildTwoSided        784 1.0 1.4126e+01 15.7 0.00e+00 0.0 5.0e+04 4.0e+00 6.4e+02  1  0  0  0  3   2  0  2  0  5    -0
BuildTwoSidedF       558 1.0 1.4002e+01 16.9 0.00e+00 0.0 4.9e+04 4.4e+05 5.6e+02  1  0  0  3  3   2  0  1  8  4    -0
SFSetGraph           232 1.1 7.3711e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.1 1.8294e-01 4.2 0.00e+00 0.0 5.1e+04 1.1e+03 8.2e+01  0  0  0  0  0   0  0  2  0  1    -0
SFBcastBegin         449 1.0 1.0399e-01 2.9 0.00e+00 0.0 2.1e+05 5.4e+04 0.0e+00  0  0  1  2  0   0  0  6  4  0    -0
SFBcastEnd           449 1.0 7.0502e+00 102.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        154 1.0 2.3809e-02 3.0 0.00e+00 0.0 7.8e+04 7.3e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
SFReduceEnd          154 1.0 2.7125e+00 113.5 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   261
SFFetchOpBegin         4 1.0 2.5727e-05 3.9 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           4 1.0 4.3253e-04 12.5 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          3 1.0 7.6207e-04 1.4 0.00e+00 0.0 9.4e+02 3.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         38 1.0 5.8516e-03 1.3 0.00e+00 0.0 4.4e+04 1.3e+02 4.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           39 1.0 3.1731e-03 2.1 0.00e+00 0.0 2.1e+04 5.7e+01 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            1 1.0 4.7321e-05 3.5 0.00e+00 0.0 5.4e+02 2.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             21294 1.1 1.1971e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           21298 1.1 4.2424e-02 2.9 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16701
VecDot                91 1.0 2.4644e-01 7.0 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 13272
VecMDot             5135 1.0 3.1786e+01 1.8 2.01e+10 1.1 0.0e+00 0.0e+00 5.1e+03  3  3  0  0 24   6  6  0  0 41 63286
VecNorm             5716 1.0 5.5104e+00 6.4 1.70e+09 1.1 0.0e+00 0.0e+00 5.7e+03  0  0  0  0 27   1  1  0  0 46 30775
VecScale            5411 1.0 1.8138e-01 1.2 7.93e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 437256
VecCopy              731 1.0 4.1111e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               565 1.0 1.2737e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              276 1.0 8.2717e-02 1.5 6.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 80514
VecWAXPY             182 1.0 1.3894e-01 1.6 3.27e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23541
VecMAXPY            5411 1.0 2.1400e+01 1.1 2.16e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   6  7  0  0  0 101101
VecScatterBegin    20687 1.1 1.4234e+00 2.1 0.00e+00 0.0 2.8e+06 7.3e+04 0.0e+00  0  0 15 31  0   0  0 85 79  0    -0
VecScatterEnd      20687 1.1 1.7153e+01 26.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 3.9658e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 2.9979e-02 1.7 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 218203
VecReduceComm         91 1.0 8.4133e-02 17.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize        1054 1.0 1.3222e-01 3.4 3.03e+07 1.1 0.0e+00 0.0e+00 1.1e+03  0  0  0  0  5   0  0  0  0  8 22918
MatMult             5317 1.0 1.1790e+02 1.1 8.78e+10 1.1 2.8e+06 7.3e+04 0.0e+00 15 15 15 31  0  31 27 85 79  0 74084
MatSolve            8633 1.1 7.6379e-01 1.4 4.67e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 61077
MatLUFactorSym       145 1.1 9.8636e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       380 1.1 1.0094e-01 1.1 9.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 91115
MatILUFactorSym        1 1.0 1.0045e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1248 1.0 1.4620e+01 9.5 0.00e+00 0.0 4.9e+04 4.4e+05 5.6e+02  1  0  0  3  3   2  0  1  8  4    -0
MatAssemblyEnd      1248 1.0 2.2740e+00 6.5 2.71e+07 0.0 3.2e+03 7.4e+03 4.4e+01  0  0  0  0  0   0  0  0  0  0   557
MatGetRowIJ          145 1.1 3.0144e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 3.3148e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.4e+02  0  0  0  0  1   0  0  0  0  1    -0
MatGetOrdering       145 1.1 1.7342e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       273 1.0 3.1133e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           5 1.0 8.9364e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          5 1.0 1.2904e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        365 1.0 1.1885e+00 1.1 2.62e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 219218
MatPtAPSymbolic        2 1.0 1.6097e-01 1.0 0.00e+00 0.0 3.2e+03 9.6e+04 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       182 1.0 6.5177e+00 1.0 9.95e+09 1.1 9.8e+04 1.7e+05 1.9e+02  1  2  1  3  1   2  3  3  6  2 151790
MatGetLocalMat       184 1.0 3.7487e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        184 1.0 2.9190e-01 1.9 0.00e+00 0.0 9.9e+04 1.7e+05 0.0e+00  0  0  1  3  0   0  0  3  7  0    -0
MatSetPreallCOO       16 1.0 7.1806e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       16 1.0 3.7232e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 1.7779e+01 1.0 1.20e+10 1.1 6.2e+05 3.2e+04 2.7e+03  2  2  3  3 13   5  4 19  8 22 66939
PCApply             4175 1.0 4.0149e+02 1.1 2.58e+11 1.1 1.6e+07 2.5e+04 8.8e+03 53 45 83 60 41 Multiple stages 63976
PCApplyOnBlocks     8633 1.1 8.8451e-01 1.3 5.49e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 62085
KSPSetUp              91 1.0 1.3352e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.4812e+02 1.0 3.87e+11 1.1 1.8e+07 3.3e+04 1.7e+04 73 67 95 90 81 Multiple stages 70276
KSPGMRESOrthog      5135 1.0 5.0191e+01 1.4 4.02e+10 1.1 0.0e+00 0.0e+00 5.1e+03  6  7  0  0 24  12 13  0  0 41 80158
DMRefine               1 1.0 2.5275e-01 1.0 2.40e+03 1.0 3.3e+03 5.0e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0     1
Mesh Partition         3 1.0 6.9868e-02 1.0 0.00e+00 0.0 1.3e+04 1.1e+02 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         3 1.0 1.4540e-02 1.1 0.00e+00 0.0 4.4e+04 1.3e+02 1.8e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.8892e-03 818.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       3 1.0 7.6670e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        3 1.0 3.0538e-03 1.1 0.00e+00 0.0 2.4e+03 9.0e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       3 1.0 1.2959e-03 1.7 0.00e+00 0.0 1.2e+03 3.5e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          3 1.0 1.8151e-03 2.4 0.00e+00 0.0 1.3e+03 4.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          16 1.0 3.5222e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.7075e-02 1.0 0.00e+00 0.0 4.1e+03 5.7e+02 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        3 1.0 1.6647e-03 1.0 0.00e+00 0.0 7.3e+03 2.2e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       3 1.0 6.3642e-03 1.0 0.00e+00 0.0 2.1e+04 1.3e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        2 1.0 9.0252e-03 1.0 0.00e+00 0.0 5.4e+04 1.0e+02 1.6e+02  0  0  0  0  1   0  0  2  0  1    -0
DMPlexDistField        5 1.0 2.7865e-03 1.2 0.00e+00 0.0 1.1e+04 8.9e+01 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         3 1.0 3.1396e-04 1.1 0.00e+00 0.0 8.1e+03 5.8e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        24 1.0 1.9682e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      24 1.0 3.2849e-04 7.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 4.1151e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          1 1.0 1.3586e-04 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          1 1.0 1.3476e-03 1.4 0.00e+00 0.0 1.6e+03 3.9e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          1 1.0 6.1498e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          1 1.0 2.3965e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             1 1.0 2.2613e-04 3.0 0.00e+00 0.0 1.6e+03 3.9e+01 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         1 1.0 3.5978e-05 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         1 1.0 4.2943e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        2 1.0 3.2056e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.0730e+02 1.0 5.87e+11 1.2 1.9e+07 3.4e+04 2.1e+04 94 100 99 100 97 Multiple stages 81393
SNESSetUp              1 1.0 3.1718e-05 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.3571e+01 1.1 7.66e+10 1.2 1.5e+05 8.8e+04 1.0e+00  6 13  1  2  0  12 23  4  5  0 166382
SNESJacobianEval      91 1.0 9.5124e+01 1.0 1.10e+11 1.2 9.6e+04 2.5e+05 3.6e+02 13 18  1  4  2  27 33  3  9  3 109438
SNESLineSearch        91 1.0 2.2850e+01 1.0 5.96e+10 1.2 1.4e+05 8.8e+04 3.6e+02  3 10  1  2  2   6 18  4  5  3 247278
DualSpaceSetUp         4 1.0 7.1897e-03 2.6 7.20e+01 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     1
FESetUp                4 1.0 2.3722e-01 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 7.4342e+02 1.0 5.87e+11 1.2 1.9e+07 3.4e+04 2.1e+04 99 100 100 100 100 Multiple stages 77439
firedrake.__init__       1 1.0 1.4505e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 3.0457e+00 25.9 0.00e+00 0.0 6.0e+04 1.0e+02 1.9e+02  0  0  0  0  1   0  0  2  0  2    -0
CreateMesh             2 1.0 1.2803e-01 1.0 0.00e+00 0.0 1.1e+05 1.2e+02 3.2e+02  0  0  1  0  1   0  0  3  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       2 1.0 1.0099e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       2 1.0 4.5170e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 6.4012e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          2 1.0 1.2047e-03 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      20 1.0 3.3536e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      24 1.0 1.4461e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.1435e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.9263e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.9151e-02 1.1 0.00e+00 0.0 9.8e+03 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 8.7704e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       4 1.0 7.6624e-03 1.0 0.00e+00 0.0 7.7e+03 8.5e+01 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       8 1.0 6.5701e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      16 1.0 1.8183e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      25 1.0 8.6415e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          2 1.0 5.8548e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       2 1.0 1.6683e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.3668e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0407e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       2 1.0 5.8490e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     258 1.0 4.7889e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1066 1.0 1.4176e+02 1.1 1.87e+11 1.2 1.3e+05 8.6e+04 1.2e+01 18 31  1  2  0  38 55  4  4  0 124560
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       4 1.0 5.8095e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2132 1.0 4.3166e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0  12  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.9457e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 2.4344e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 1.6709e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 2.5698e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   7  0  0  0  0    -0
pyop2.compilation.load      16 1.0 2.5697e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 1.3261e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 1.3112e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
ParLoopRednBegin    1066 1.0 2.8045e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1066 1.0 2.2773e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       2 1.0 6.6925e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 5.4530e+00 1.0 2.70e+06 1.1 2.2e+03 1.5e+04 2.0e+00  1  0  0  0  0   2  0  0  0  0    49
firedrake.interpolation.interpolate       6 1.0 1.3030e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       3 1.0 1.2814e+01 1.0 4.25e+06 1.1 1.2e+04 2.8e+03 9.7e+01  2  0  0  0  0   4  0  0  0  1    33
firedrake.formmanipulation.split_form       4 1.0 2.4113e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       4 1.0 1.4183e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       4 1.0 9.7920e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       4 1.0 6.2154e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.6835e-01 4.9 0.00e+00 0.0 1.3e+05 8.6e+04 2.0e+00  0  0  1  2  0   0  0  4  4  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 8.1446e+00 1.0 4.24e+06 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    52
firedrake.halo.Halo.global_to_local_end     243 1.0 6.8400e+00 191.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.4069e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.1813e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.7099e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.2772e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.2287e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.3444e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.5914e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.6925e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.2348e+00 1.0 0.00e+00 0.0 3.2e+03 4.8e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0422e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4650e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1348e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1348e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         3 1.0 2.5088e+00 1.2 0.00e+00 0.0 4.9e+03 1.5e+05 3.2e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         3 1.0 4.1891e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.0737e+02 1.0 5.87e+11 1.2 1.9e+07 3.4e+04 2.1e+04 94 100 99 100 98 Multiple stages 81385
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 8.7982e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2658e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.0933e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.0865e+00 1.1 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 207664
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0007e+00 1.0 5.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2888
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.8310e+00 1.0 5.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3156
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.8113e+00 1.1 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  5  0  0  0 175427
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6739e+01 1.2 4.25e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   4 12  0  0  0 229204
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.7223e-02 2.5 0.00e+00 0.0 6.4e+04 8.8e+04 0.0e+00  0  0  0  1  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.7132e+00 109.5 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   261
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5467e+01 1.1 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   4  7  0  0  0 148775
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.1273e+00 1.0 5.28e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2481
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.2461e+00 1.0 5.28e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2350
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7819e+01 1.2 2.42e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   7  8  0  0  0 86957
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.1553e+01 1.3 6.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5 10  0  0  0  10 18  0  0  0 136652
firedrake.dmhooks.get_function_space       2 1.0 2.0825e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       2 1.0 8.5442e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       1 1.0 4.4406e+00 1.0 0.00e+00 0.0 7.0e+03 1.4e+02 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       1 1.0 4.4351e+00 1.0 0.00e+00 0.0 4.8e+03 1.2e+02 6.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       1 1.0 4.1931e+00 1.0 0.00e+00 0.0 2.7e+03 4.4e+01 4.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       1 1.0 3.2948e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       1 1.0 3.2899e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       1 1.0 2.8244e+00 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       1 1.0 2.8163e+00 11.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 2.6760e+00 25.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       1 1.0 2.4972e+00 369.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       1 1.0 2.4971e+00 374.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          1 1.0 1.5189e-02 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       1 1.0 1.2791e-02 8.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       1 1.0 9.3194e-04 12.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       1 1.0 1.5185e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       1 1.0 1.4851e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            1 1.0 1.3228e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       2 1.0 1.7494e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       1 1.0 2.4092e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       2 1.0 8.2194e-03 1.7 0.00e+00 0.0 2.1e+03 2.1e+02 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       2 1.0 2.3837e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       1 1.0 2.3727e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 1.8914e-01 1.0 7.95e+07 1.2 5.3e+05 3.6e+02 2.1e+03  0  0  3  0 10   0  0 16  0 17 41574
MGSetup Level 1       91 1.0 8.6192e-01 1.0 3.82e+08 1.1 5.3e+03 8.8e+04 1.7e+02  0  0  0  0  1   0  0  0  0  1 44251

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 3.3133e-03 2.6 0.00e+00 0.0 5.3e+04 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            91 1.0 9.0568e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 4.8576e-03 1.6 0.00e+00 0.0 1.1e+05 5.2e+01 9.1e+01  0  0  1  0  0   0  0  1  0  1    -0
SFPack           2467425 1.1 2.1177e+00 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2467425 1.1 1.2838e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            16700 1.0 1.6607e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             45923 1.0 7.1851e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             8350 1.0 3.6471e+00 1.4 3.00e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 82290
VecAYPX            33400 1.0 5.0769e+00 3.1 1.52e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 29936
VecAXPBYCZ          8350 1.0 3.5092e-03 1.7 2.40e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 685287
VecScatterBegin  2467425 1.1 2.2203e+01 1.3 0.00e+00 0.0 1.6e+07 2.5e+04 0.0e+00  3  0 81 60  0   5  0 98 100  0    -0
VecScatterEnd    2467425 1.1 3.2931e+01 12.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            25050 1.0 2.2136e+02 1.1 1.67e+11 1.1 1.3e+07 3.0e+04 0.0e+00 28 29 69 60  0  54 65 83 100  0 74914
MatMultAdd          8350 1.0 1.0718e+01 1.2 6.02e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  2  0  0  0 56184
MatMultTranspose    8350 1.0 9.3269e+00 2.0 6.02e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 64562
MatSolve         1223275 1.1 1.2140e+02 1.2 7.10e+10 1.1 2.7e+06 1.9e+02 4.6e+02 15 12 14  0  2  29 28 17  0  5 58287
MatLUFactorNum     12906 1.1 4.1243e+00 1.4 3.68e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 89239
MatResidual         8350 1.0 1.1569e+02 1.2 8.40e+10 1.1 4.4e+06 4.4e+04 0.0e+00 14 15 23 30  0  27 33 28 50  0 72238
MatAssemblyBegin   12816 1.1 2.1881e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     12816 1.1 2.8562e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 7.8131e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
PCSetUp            12995 1.1 1.1371e+01 1.2 3.68e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  1  0  0  0 32369
PCSetUpOnBlocks     8350 1.0 3.6556e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            12525 1.0 1.6871e+02 1.2 7.51e+10 1.1 1.2e+07 2.6e+02 4.6e+03 21 13 60  0 22  40 29 72  1 53 44393
PCApplyOnBlocks  1219100 1.1 1.1482e+02 1.1 7.42e+10 1.1 0.0e+00 0.0e+00 0.0e+00 15 13  0  0  0  28 29  0  0  0 64660
KSPSetUp           12817 1.1 2.1460e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           12525 1.0 2.7740e+02 1.1 1.62e+11 1.1 1.4e+07 1.4e+04 8.8e+03 36 28 71 30 41  68 63 86 50 100 58175
MGSmooth Level 0    4175 1.0 2.9209e+01 2.5 1.90e+09 2.4 1.2e+07 2.6e+02 8.8e+03  2  0 60  0 41   4  0 72  1 100  3412
MGSmooth Level 1    8350 1.0 2.6274e+02 1.1 1.61e+11 1.1 2.2e+06 8.8e+04 0.0e+00 34 28 11 30  0  64 62 14 50  0 61040
MGResid Level 1     4175 1.0 1.1506e+02 1.2 8.39e+10 1.1 2.2e+06 8.8e+04 0.0e+00 14 15 11 30  0  27 32 14 50  0 72553
MGInterp Level 1    8350 1.0 1.9864e+01 1.4 1.20e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 60436
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
              Vector  1036           1031
              Matrix   793            779
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

           Index Set   182            182
   Star Forest Graph    93             90
              Vector   183            184
    Distributed Mesh     1              0
     Discrete System     1              0
           Weak Form     1              0
========================================================================================================================
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 4.5852e-06
Average time for zero size MPI_Send(): 2.27337e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_hmg/sweep.profile # (source: environment)
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

