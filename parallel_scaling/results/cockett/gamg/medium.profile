****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0665.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 23:52:18 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.363e+03     1.000   1.363e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.418e+11     1.593   4.432e+11  9.219e+13
Flops/sec:            3.976e+08     1.593   3.253e+08  6.766e+10
MPI Msg Count:        1.689e+06     5.557   1.004e+06  2.088e+08
MPI Msg Len (bytes):  4.708e+10     9.325   1.934e+04  4.039e+12
MPI Reductions:       6.866e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.3626e+03 100.0%  9.2189e+13 100.0%  2.088e+08 100.0%  1.934e+04      100.0%  6.864e+04 100.0%

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

BuildTwoSided        566 1.0 4.6950e+02 8.3 0.00e+00 0.0 1.3e+06 4.0e+00 5.7e+02 16  0  1  0  1  16  0  1  0  1    -0
BuildTwoSidedF       472 1.0 4.7400e+02 5.8 0.00e+00 0.0 2.0e+06 1.1e+06 4.7e+02 17  0  1 53  1  17  0  1 53  1    -0
SFSetGraph            97 1.0 1.0307e-02 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               94 1.0 3.4332e-01 3.0 0.00e+00 0.0 4.9e+05 1.2e+03 9.4e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         313 1.0 8.1940e-02 2.6 0.00e+00 0.0 3.6e+05 4.8e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastEnd           313 1.0 4.5162e+00 84.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        100 1.0 2.6449e-01 54.9 0.00e+00 0.0 1.4e+05 5.9e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceEnd          100 1.0 2.3680e+00 153.9 6.60e+06 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   436
SFFetchOpBegin         2 1.0 1.8047e-05 6.9 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 6.9187e-04 43.6 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.5200e-03 2.8 0.00e+00 0.0 1.4e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.0537e-02 1.4 0.00e+00 0.0 4.6e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 4.5532e-03 5.6 0.00e+00 0.0 2.1e+04 1.3e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             62972 1.0 1.9203e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           62974 1.0 1.0772e-01 4.3 1.09e+08 14.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 34745
VecDot                48 1.0 1.1747e-01 12.3 1.75e+07 1.1 0.0e+00 0.0e+00 4.8e+01  0  0  0  0  0   0  0  0  0  0 29606
VecMDot            32937 1.0 7.7201e+01 6.9 5.20e+09 1.3 0.0e+00 0.0e+00 3.3e+04  5  1  0  0 48   5  1  0  0 48 11698
VecNorm            34341 1.0 2.5531e+02 69.8 6.39e+08 1.2 0.0e+00 0.0e+00 3.4e+04 14  0  0  0 50  14  0  0  0 50   475
VecScale           34215 1.0 7.6001e-02 1.2 2.98e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 737029
VecCopy            16383 1.0 1.4800e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             17321 1.0 4.4624e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             1278 1.0 4.3228e-02 1.3 3.63e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 165889
VecAYPX            29550 1.0 3.1473e+00 2.1 1.50e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 94308
VecAXPBYCZ          9850 1.0 1.5346e+00 1.5 1.87e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 241766
VecWAXPY              48 1.0 3.6382e-02 1.1 8.73e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47796
VecMAXPY           34215 1.0 4.7526e+00 1.1 5.76e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 212081
VecAssemblyBegin      16 1.0 1.7055e-02 6.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
VecAssemblyEnd        16 1.0 3.1694e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecPointwiseMult      55 1.0 9.4148e-03 1.5 2.09e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 44009
VecReciprocal         15 1.0 1.9530e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin    62557 1.0 3.6797e+00 2.8 0.00e+00 0.0 2.0e+08 4.4e+03 0.0e+00  0  0 98 22  0   0  0 98 22  0    -0
VecScatterEnd      62557 1.0 3.6429e+01 4.6 1.04e+08 21.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    74
VecReduceArith        96 1.0 2.5277e-02 3.0 3.49e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 275179
VecReduceComm         48 1.0 2.9343e-02 16.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.8e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       34215 1.0 2.5374e+02 125.4 8.93e+08 1.2 0.0e+00 0.0e+00 3.4e+04 14  0  0  0 50  14  0  0  0 50   662
MatMult            52685 1.0 1.8932e+02 1.2 1.68e+11 1.6 1.7e+08 5.1e+03 0.0e+00 12 27 79 21  0  12 27 79 21  0 132170
MatMultAdd          4925 1.0 1.1864e+01 1.6 5.03e+09 1.3 1.9e+07 1.1e+03 0.0e+00  1  1  9  1  0   1  1  9  1  0 81231
MatMultTranspose    4925 1.0 1.3048e+01 2.2 5.05e+09 1.3 1.9e+07 1.1e+03 0.0e+00  1  1  9  1  0   1  1  9  1  0 74068
MatSolve           52875 3.0 1.3948e+02 1.4 1.41e+11 1.8 0.0e+00 0.0e+00 0.0e+00  8 20  0  0  0   8 20  0  0  0 129024
MatLUFactorNum       288 1.0 1.1964e+01 2.5 3.89e+10 3.8 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 201736
MatILUFactorSym        6 1.0 8.9764e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             5 1.0 1.1989e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatScale              15 1.0 1.1306e-01 1.3 3.03e+07 1.3 3.7e+04 4.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 50974
MatResidual         4925 1.0 3.3826e+01 1.2 2.48e+10 1.3 3.7e+07 4.5e+03 0.0e+00  2  5 18  4  0   2  5 18  4  0 139326
MatAssemblyBegin    1002 1.0 4.8547e+02 3.4 0.00e+00 0.0 2.0e+06 1.1e+06 4.6e+02 20  0  1 53  1  20  0  1 53  1    -0
MatAssemblyEnd      1002 1.0 4.5694e+02 10.4 4.77e+09 85.3 3.7e+05 1.2e+03 2.3e+02 17  0  0  0  0  17  0  0  0  0   293
MatGetRowIJ            6 1.5 3.9400e-06 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMat        2 1.0 2.1757e-02 1.0 0.00e+00 0.0 2.3e+04 9.8e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         6 1.5 2.7668e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCoarsen             5 1.0 5.1577e-02 1.2 0.00e+00 0.0 1.5e+05 4.9e+03 1.7e+02  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       288 1.0 1.4965e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAXPY               10 1.0 4.9018e-01 1.0 1.28e+07 1.3 7.4e+04 1.1e+03 2.5e+01  0  0  0  0  0   0  0  0  0  0  4957
MatTranspose          19 1.0 2.0687e+00 1.0 0.00e+00 0.0 2.8e+05 2.2e+04 8.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym         15 1.0 1.8917e+00 2.6 0.00e+00 0.0 1.9e+05 1.8e+03 4.5e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        485 1.0 5.7830e+01 7.1 1.01e+11 7.4 3.7e+04 4.5e+03 0.0e+00  2 11  0  0  0   2 11  0  0  0 169381
MatPtAPSymbolic        5 1.0 8.0532e+00 1.0 0.00e+00 0.0 1.7e+05 2.4e+05 3.5e+01  1  0  0  1  0   1  0  0  1  0    -0
MatPtAPNumeric       240 1.0 8.2555e+02 1.4 1.97e+11 6.0 3.7e+06 8.3e+05 2.6e+02 47 23  2 75  0  47 23  2 75  0 26085
MatTrnMatMultSym       1 1.0 9.8789e-01 1.0 0.00e+00 0.0 5.7e+03 2.7e+05 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetLocalMat       251 1.0 6.3035e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        250 1.0 2.4504e+02 42.0 0.00e+00 0.0 2.0e+06 4.8e+05 0.0e+00  5  0  1 24  0   5  0  1 24  0    -0
MatGetSymTransR        2 1.0 1.6359e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateGraph         5 1.0 2.7466e+00 1.0 3.77e+07 1.3 3.7e+05 1.7e+04 7.0e+01  0  0  0  0  0   0  0  0  0  0  2613
PCSetUp_GAMG+         48 1.0 8.7673e+02 1.0 2.32e+11 3.6 2.3e+07 1.4e+05 5.9e+03 64 31 11 79  9  64 31 11 79  9 32949
 PCGAMGCreateG         5 1.0 2.9409e+00 1.0 3.77e+07 1.3 3.9e+05 1.7e+04 1.0e+02  0  0  0  0  0   0  0  0  0  0  2440
 GAMG Coarsen         10 1.0 1.1376e+00 1.0 0.00e+00 0.0 1.6e+05 2.0e+04 1.8e+02  0  0  0  0  0   0  0  0  0  0    -0
  GAMG MIS/Agg         5 1.0 1.0531e+00 1.0 0.00e+00 0.0 1.5e+05 1.5e+04 1.8e+02  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGProl            5 1.0 1.3615e-01 1.2 0.00e+00 0.0 2.3e+04 2.2e+04 6.0e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-col        5 1.0 1.3242e-02 1.1 0.00e+00 0.0 7.8e+03 5.7e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-lift       5 1.0 9.8586e-02 1.0 0.00e+00 0.0 1.6e+04 4.1e+03 3.0e+01  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGOptProl         5 1.0 9.5524e-01 1.0 3.34e+08 1.2 6.0e+05 3.7e+03 1.5e+02  0  0  0  0  0   0  0  0  0  0 67043
  GAMG smooth          5 1.0 5.4258e-01 1.1 3.05e+07 1.3 2.3e+05 2.3e+03 4.7e+01  0  0  0  0  0   0  0  0  0  0 10691
 PCGAMGCreateL         5 1.0 2.4100e+01 1.0 4.10e+09 6.0 3.0e+05 2.8e+05 1.4e+02  2  0  0  2  0   2  0  0  2  0 18601
  GAMG PtAP            5 1.0 2.4072e+01 1.0 4.10e+09 6.0 2.8e+05 3.0e+05 6.7e+01  2  0  0  2  0   2  0  0  2  0 18622
  GAMG Reduce          2 1.0 1.9563e+01 1.0 3.04e+09 15.0 1.9e+05 3.1e+05 9.4e+01  1  0  0  1  0   1  0  0  1  0 13562
PCGAMG Squ l00         1 1.0 9.8790e-01 1.0 0.00e+00 0.0 5.7e+03 2.7e+05 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
PCGAMG Gal l00        48 1.0 2.2214e+01 1.5 1.62e+10 1.2 1.8e+05 5.7e+05 6.1e+01  1  3  0  2  0   1  3  0  2  0 139479
PCGAMG Opt l00         1 1.0 1.4808e-01 1.2 2.03e+07 1.1 6.9e+03 4.7e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0 27258
PCGAMG Gal l01        48 1.0 2.6307e+01 1.4 7.35e+09 2.1 2.4e+05 8.6e+05 6.1e+01  2  1  0  5  0   2  1  0  5  0 47133
PCGAMG Opt l01         1 1.0 2.4960e-02 1.1 1.39e+06 1.5 9.0e+03 7.1e+03 1.0e+01  0  0  0  0  0   0  0  0  0  0 10025
PCGAMG Gal l02        48 1.0 9.6004e+01 1.5 3.35e+10 5.7 7.7e+05 7.7e+05 6.0e+01  6  5  0 15  0   6  5  0 15  0 46450
PCGAMG Opt l02         1 1.0 4.9378e-02 1.1 2.08e+06 3.0 2.8e+04 2.3e+03 9.0e+00  0  0  0  0  0   0  0  0  0  0  6014
PCGAMG Gal l03        48 1.0 4.2606e+02 1.8 1.36e+11 14.0 2.1e+06 9.1e+05 6.0e+01 25 11  1 48  0  25 11  1 48  0 23332
PCGAMG Opt l03         1 1.0 1.9961e-01 1.0 1.67e+06 8.2 1.2e+05 4.3e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   729
PCGAMG Gal l04        48 1.0 4.5436e+02 5.3 5.33e+10 0.0 5.5e+05 4.9e+05 6.0e+01 15  3  0  7  0  15  3  0  7  0  6154
PCGAMG Opt l04         1 1.0 9.7623e-02 1.0 1.06e+06 0.0 6.4e+04 2.2e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   569
PCSetUp               48 1.0 8.7673e+02 1.0 2.32e+11 3.6 2.3e+07 1.4e+05 5.9e+03 64 31 11 79  9  64 31 11 79  9 32949
PCSetUpOnBlocks    10835 1.0 6.3566e+00 187.6 2.75e+10 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4326
PCApply              985 1.0 3.1801e+02 1.0 3.11e+11 1.9 1.8e+08 3.8e+03 6.0e+04 23 40 88 17 88  23 40 88 17 88 117165
PCApplyOnBlocks    52875 1.0 1.3967e+02 1.4 1.41e+11 1.8 0.0e+00 0.0e+00 0.0e+00  8 20  0  0  0   8 20  0  0  0 128848
KSPSetUp              48 1.0 7.4918e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              48 1.0 3.4759e+02 1.0 3.36e+11 1.8 1.9e+08 4.3e+03 6.2e+04 26 46 89 20 90  26 46 89 20 90 122515
KSPGMRESOrthog     32937 1.0 8.1408e+01 5.3 1.04e+10 1.3 0.0e+00 0.0e+00 3.3e+04  6  2  0  0 48   6  2  0  0 48 22187
Mesh Partition         2 1.0 1.4586e-01 1.0 0.00e+00 0.0 1.4e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.0823e-02 1.0 0.00e+00 0.0 4.8e+04 3.1e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 9.6471e-03 3227.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.8960e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.6197e-03 1.3 0.00e+00 0.0 2.7e+03 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.3048e-03 2.2 0.00e+00 0.0 1.4e+03 8.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.1340e-03 1.4 0.00e+00 0.0 1.6e+03 1.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.7245e-01 1.0 0.00e+00 0.0 8.1e+03 1.7e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 3.0678e-03 1.0 0.00e+00 0.0 8.1e+03 5.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.9276e-02 1.0 0.00e+00 0.0 2.3e+04 3.3e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 9.0341e-03 1.1 0.00e+00 0.0 5.5e+04 1.1e+02 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 4.7457e-03 1.3 0.00e+00 0.0 1.2e+04 1.5e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.0308e-04 1.2 0.00e+00 0.0 5.7e+03 7.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 5.8086e-03 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 2.0252e-03 93.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 8.9017e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.3289e+03 1.0 5.42e+11 1.6 2.1e+08 1.9e+04 6.8e+04 98 100 100 100 100  98 100 100 100 100 69371
SNESSetUp              1 1.0 4.0105e-05 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      78 1.0 3.4322e+01 1.1 4.99e+10 1.2 2.1e+05 9.2e+04 1.0e+00  2 10  0  0  0   2 10  0  0  0 274727
SNESJacobianEval      48 1.0 6.8700e+01 1.0 5.87e+10 1.2 1.1e+05 2.4e+05 1.9e+02  5 12  0  1  0   5 12  0  1  0 161197
SNESLineSearch        48 1.0 1.2459e+01 1.0 3.18e+10 1.2 1.6e+05 9.3e+04 1.9e+02  1  7  0  0  0   1  7  0  0  0 482682
firedrake              1 1.0 1.3572e+03 1.0 5.42e+11 1.6 2.1e+08 1.9e+04 6.9e+04 100 100 100 100 100 100 100 100 100 100 67928
firedrake.__init__       1 1.0 1.5786e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 7.8597e+00 32.7 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 2.3021e-01 1.0 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2252e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.5210e-06 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.1923e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.8941e-04 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 1.9729e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 3.9727e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 1.9082e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 1.8453e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 1.8420e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 7.3602e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 5.1357e-03 1.2 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.3320e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0379e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 3.2800e-02 9.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.6677e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.2494e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5928e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 6.7033e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.6267e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.2379e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       632 1.0 8.7172e+01 1.1 1.09e+11 1.2 1.8e+05 9.0e+04 6.0e+00  6 22  0  0  0   6 22  0  0  0 235186
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.3074e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    1264 1.0 3.1587e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0190e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.4998e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.7275e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.1425e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.1424e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.0589e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 7.9291e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin     632 1.0 2.0832e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       632 1.0 1.3408e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.9130e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.6105e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   565
firedrake.interpolation.interpolate       1 1.0 3.5487e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.6068e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   566
firedrake.formmanipulation.split_form       3 1.0 2.3220e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.9162e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.1101e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.0599e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     157 1.0 4.0055e-01 5.3 0.00e+00 0.0 1.8e+05 9.0e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.9444e-01 1.0 2.73e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   608
firedrake.halo.Halo.global_to_local_end     157 1.0 3.9543e+00 207.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.7004e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.4275e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5131e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 8.5854e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.5606e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.3193e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3296e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.7026e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.2626e+00 1.0 0.00e+00 0.0 6.8e+03 5.2e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0125e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5779e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1345e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1345e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.5157e+00 1.3 0.00e+00 0.0 3.4e+03 5.1e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.2085e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.3290e+03 1.0 5.42e+11 1.6 2.1e+08 1.9e+04 6.8e+04 98 100 100 100 100  98 100 100 100 100 69368
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.4834e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2358e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 4.1523e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     156 1.0 6.9308e+00 1.3 1.10e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 314851
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     156 1.0 1.9630e+00 1.0 3.00e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3044
Parloop_Cells_wrap_form0_exterior_facet_top_integral     156 1.0 1.9362e+00 1.0 3.00e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3086
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     156 1.0 7.5157e+00 1.1 1.12e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 297982
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     156 1.0 1.1890e+01 1.2 2.76e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 420049
firedrake.halo.Halo.local_to_global_begin      78 1.0 2.6559e-01 42.6 0.00e+00 0.0 8.8e+04 9.3e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end      78 1.0 2.3671e+00 163.5 6.60e+06 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   436
Parloop_Cells_wrap_form00_cell_integral      96 1.0 9.9805e+00 1.1 1.23e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 245096
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral      96 1.0 2.3352e+00 1.0 2.24e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1913
Parloop_Cells_wrap_form00_exterior_facet_top_integral      96 1.0 2.3469e+00 1.0 2.24e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1903
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      96 1.0 1.9363e+01 1.3 1.29e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 133014
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      96 1.0 2.5383e+01 1.3 3.34e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 238036
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    99             99
              Viewer     1              1
         PetscRandom     5              5
           Index Set   928            928
   IS L to G Mapping     4              4
             Section    72             72
   Star Forest Graph   157            157
              Vector  1150           1150
              Matrix   226            226
      Matrix Coarsen     5              5
      Preconditioner    23             23
       Krylov Solver    23             23
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    27             27
            DM Label    50             50
    GraphPartitioner     3              3
     Discrete System    34             34
           Weak Form    34             34
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 8.2596e-06
Average time for zero size MPI_Send(): 2.04185e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/gamg/medium.profile # (source: environment)
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

