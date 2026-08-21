****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0185.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 23:56:12 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.323e+03     1.000   1.323e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                8.451e+11     1.822   6.320e+11  6.573e+13
Flops/sec:            6.387e+08     1.822   4.777e+08  4.968e+10
MPI Msg Count:        1.565e+06     1.788   1.251e+06  1.301e+08
MPI Msg Len (bytes):  4.403e+10     4.210   2.036e+04  2.648e+12
MPI Reductions:       7.789e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.3231e+03 100.0%  6.5729e+13 100.0%  1.301e+08 100.0%  2.036e+04      100.0%  7.787e+04 100.0%

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

BuildTwoSided        672 1.0 3.5486e+02 27.3 0.00e+00 0.0 8.0e+05 4.0e+00 6.7e+02 13  0  1  0  1  13  0  1  0  1    -0
BuildTwoSidedF       580 1.0 3.6739e+02 6.6 0.00e+00 0.0 1.3e+06 1.1e+06 5.8e+02 15  0  1 55  1  15  0  1 55  1    -0
SFSetGraph            95 1.0 9.3972e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               92 1.0 4.3339e-01 2.7 0.00e+00 0.0 2.5e+05 1.1e+03 9.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         318 1.0 7.6267e-02 3.2 0.00e+00 0.0 1.8e+05 4.9e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastEnd           318 1.0 4.3023e+00 94.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        112 1.0 2.9330e-02 4.7 0.00e+00 0.0 7.6e+04 5.5e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceEnd          112 1.0 2.4889e+00 119.7 6.40e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   207
SFFetchOpBegin         2 1.0 1.7613e-05 6.1 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.1726e-04 9.4 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 9.9414e-04 1.6 0.00e+00 0.0 6.5e+02 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 9.3855e-03 1.3 0.00e+00 0.0 2.2e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 3.9561e-03 3.4 0.00e+00 0.0 1.0e+04 1.5e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             71213 1.0 1.8919e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           71215 1.0 7.8283e-02 3.2 7.73e+07 7.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 26653
VecDot                60 1.0 1.7153e-01 11.2 2.17e+07 1.1 0.0e+00 0.0e+00 6.0e+01  0  0  0  0  0   0  0  0  0  0 12573
VecMDot            37400 1.0 3.8284e+01 4.1 5.06e+09 1.2 0.0e+00 0.0e+00 3.7e+04  2  1  0  0 48   2  1  0  0 48 12451
VecNorm            39025 1.0 8.5151e+01 20.3 7.11e+08 1.1 0.0e+00 0.0e+00 3.9e+04  4  0  0  0 50   4  0  0  0 50   829
VecScale           38875 1.0 9.3091e-02 1.2 3.29e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 350260
VecCopy            18515 1.0 1.5220e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             19590 1.0 5.1148e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             1475 1.0 5.5342e-02 1.3 4.49e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 80517
VecAYPX            33300 1.0 3.2644e+00 1.9 1.69e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 51243
VecAXPBYCZ         11100 1.0 1.5442e+00 1.4 2.11e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 135410
VecWAXPY              60 1.0 4.5751e-02 1.2 1.09e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23568
VecMAXPY           38875 1.0 5.1515e+00 1.1 5.67e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 104329
VecAssemblyBegin      15 1.0 1.5168e-02 10.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
VecAssemblyEnd        15 1.0 3.0007e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecPointwiseMult      55 1.0 9.8933e-03 2.9 2.09e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 20945
VecReciprocal         15 1.0 2.1211e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin    70781 1.0 4.1108e+00 2.1 0.00e+00 0.0 1.3e+08 3.7e+03 0.0e+00  0  0 98 18  0   0  0 98 18  0    -0
VecScatterEnd      70781 1.0 4.6693e+01 4.9 7.20e+07 9.9 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    34
VecReduceArith       120 1.0 2.1966e-02 1.9 4.34e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 196348
VecReduceComm         60 1.0 4.4150e-02 6.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       38875 1.0 8.4028e+01 23.7 9.86e+08 1.1 0.0e+00 0.0e+00 3.9e+04  3  0  0  0 50   3  0  0  0 50  1164
MatMult            59660 1.0 2.0535e+02 1.1 1.59e+11 1.2 1.0e+08 4.3e+03 0.0e+00 14 23 80 17  0  14 23 80 17  0 73336
MatMultAdd          5550 1.0 1.3330e+01 1.3 6.97e+09 1.3 1.2e+07 1.1e+03 0.0e+00  1  1  9  0  0   1  1  9  0  0 49489
MatMultTranspose    5550 1.0 1.7000e+01 1.9 6.99e+09 1.3 1.2e+07 1.1e+03 0.0e+00  1  1  9  0  0   1  1  9  0  0 38899
MatSolve           59910 2.3 1.3813e+02 1.2 1.18e+11 1.2 0.0e+00 0.0e+00 0.0e+00 10 16  0  0  0  10 16  0  0  0 76800
MatLUFactorNum       360 1.0 9.2080e+00 1.3 2.15e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 193004
MatILUFactorSym        6 1.0 9.3146e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             5 1.0 1.3284e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatScale              15 1.0 1.2881e-01 1.2 3.37e+07 1.3 2.0e+04 3.8e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 24503
MatResidual         5550 1.0 4.0562e+01 1.1 3.05e+10 1.3 2.3e+07 3.8e+03 0.0e+00  3  4 17  3  0   3  4 17  3  0 70105
MatAssemblyBegin    1230 1.0 3.9198e+02 2.8 0.00e+00 0.0 1.3e+06 1.1e+06 5.7e+02 20  0  1 55  1  20  0  1 55  1    -0
MatAssemblyEnd      1230 1.0 2.9266e+02 6.9 2.28e+09 7.8 1.9e+05 1.1e+03 2.3e+02 13  0  0  0  0  13  0  0  0  0   310
MatGetRowIJ            6 1.2 8.1560e-06 9.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMat        1 1.0 6.5203e-03 1.0 0.00e+00 0.0 2.1e+02 1.0e+03 1.5e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         6 1.2 3.0844e-03 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCoarsen             5 1.0 4.9963e-02 1.3 0.00e+00 0.0 6.3e+04 4.9e+03 1.5e+02  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       360 1.0 2.1410e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAXPY               10 1.0 5.2633e-01 1.0 1.39e+07 1.3 4.1e+04 9.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0  2469
MatTranspose          21 1.0 2.0955e+00 1.0 0.00e+00 0.0 1.5e+05 2.5e+04 8.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym         15 1.0 2.3845e+00 2.2 0.00e+00 0.0 1.0e+05 1.6e+03 4.5e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        605 1.0 1.0864e+02 5.0 1.99e+11 5.5 2.0e+04 3.8e+03 0.0e+00  5 17  0  0  0   5 17  0  0  0 101392
MatPtAPSymbolic        5 1.0 7.5571e+00 1.0 0.00e+00 0.0 9.3e+04 2.5e+05 3.5e+01  1  0  0  1  0   1  0  0  1  0    -0
MatPtAPNumeric       300 1.0 7.8241e+02 1.1 4.11e+11 4.7 2.5e+06 8.5e+05 3.2e+02 56 35  2 80  0  56 35  2 80  0 29649
MatTrnMatMultSym       1 1.0 1.0269e+00 1.0 0.00e+00 0.0 3.8e+03 5.9e+05 1.3e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetLocalMat       311 1.0 9.2132e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        310 1.0 2.2060e+02 17.4 0.00e+00 0.0 1.3e+06 5.2e+05 0.0e+00  8  0  1 26  0   8  0  1 26  0    -0
MatCreateGraph         5 1.0 2.7771e+00 1.0 4.12e+07 1.3 2.0e+05 1.9e+04 7.0e+01  0  0  0  0  0   0  0  0  0  0  1384
PCSetUp_GAMG+         60 1.0 8.4438e+02 1.0 4.62e+11 3.5 1.5e+07 1.4e+05 7.2e+03 64 43 12 83  9  64 43 12 83  9 33414
 PCGAMGCreateG         5 1.0 2.9640e+00 1.0 4.12e+07 1.3 2.1e+05 1.9e+04 1.0e+02  0  0  0  0  0   0  0  0  0  0  1296
 GAMG Coarsen         10 1.0 1.1693e+00 1.0 0.00e+00 0.0 7.0e+04 4.2e+04 1.7e+02  0  0  0  0  0   0  0  0  0  0    -0
  GAMG MIS/Agg         5 1.0 1.0877e+00 1.0 0.00e+00 0.0 6.7e+04 3.8e+04 1.6e+02  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGProl            5 1.0 1.4052e-01 1.2 0.00e+00 0.0 1.1e+04 1.9e+04 6.0e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-col        5 1.0 1.2214e-02 1.1 0.00e+00 0.0 3.8e+03 5.0e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-lift       5 1.0 1.0582e-01 1.0 0.00e+00 0.0 7.6e+03 3.3e+03 3.0e+01  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGOptProl         5 1.0 1.1919e+00 1.0 3.60e+08 1.2 3.3e+05 3.1e+03 1.5e+02  0  0  0  0  0   0  0  0  0  0 28519
  GAMG smooth          5 1.0 7.3718e-01 1.0 3.39e+07 1.3 1.2e+05 2.0e+03 4.7e+01  0  0  0  0  0   0  0  0  0  0  4307
 PCGAMGCreateL         5 1.0 1.9953e+01 1.0 6.85e+09 4.7 1.5e+05 3.1e+05 1.0e+02  2  1  0  2  0   2  1  0  2  0 19363
  GAMG PtAP            5 1.0 1.9945e+01 1.0 6.85e+09 4.7 1.5e+05 3.1e+05 6.7e+01  2  1  0  2  0   2  1  0  2  0 19371
  GAMG Reduce          2 1.0 2.6314e+00 1.0 3.80e+08 4.2 3.3e+04 9.6e+04 4.7e+01  0  0  0  0  0   0  0  0  0  0  7583
PCGAMG Squ l00         1 1.0 1.0269e+00 1.0 0.00e+00 0.0 3.8e+03 5.9e+05 1.3e+01  0  0  0  0  0   0  0  0  0  0    -0
PCGAMG Gal l00        60 1.0 2.3216e+01 1.1 2.45e+10 1.3 1.0e+05 6.6e+05 7.3e+01  2  4  0  3  0   2  4  0  3  0 100317
PCGAMG Opt l00         1 1.0 1.9869e-01 1.2 2.02e+07 1.1 3.2e+03 4.3e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0 10064
PCGAMG Gal l01        60 1.0 3.8779e+01 1.3 1.51e+10 2.1 1.3e+05 1.3e+06 7.3e+01  3  2  0  6  0   3  2  0  6  0 33460
PCGAMG Opt l01         1 1.0 3.4558e-02 1.1 1.89e+06 1.5 4.0e+03 8.2e+03 1.0e+01  0  0  0  0  0   0  0  0  0  0  4975
PCGAMG Gal l02        60 1.0 1.8795e+02 1.4 8.39e+10 5.1 3.7e+05 1.4e+06 7.2e+01 12  9  0 19  0  12  9  0 19  0 30345
PCGAMG Opt l02         1 1.0 8.2253e-02 1.1 3.00e+06 2.6 1.1e+04 2.8e+03 9.0e+00  0  0  0  0  0   0  0  0  0  0  2775
PCGAMG Gal l03        60 1.0 4.5084e+02 1.3 2.73e+11 7.5 1.3e+06 9.6e+05 7.2e+01 30 19  1 48  0  30 19  1 48  0 28104
PCGAMG Opt l03         1 1.0 3.7709e-01 1.0 2.50e+06 5.2 4.1e+04 6.2e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   338
PCGAMG Gal l04        60 1.0 1.9706e+02 4.0 2.28e+10 4.2 6.8e+05 2.0e+05 7.2e+01 10  2  1  5  0  10  2  1  5  0  6076
PCGAMG Opt l04         1 1.0 2.5184e-02 1.0 6.59e+05 4.2 6.4e+04 1.7e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0  1371
PCSetUp               60 1.0 8.4438e+02 1.0 4.62e+11 3.5 1.5e+07 1.4e+05 7.2e+03 64 43 12 83  9  64 43 12 83  9 33414
PCSetUpOnBlocks    12210 1.0 1.2167e+00 30.6 5.52e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4536
PCApply             1110 1.0 3.1412e+02 1.0 2.50e+11 1.3 1.1e+08 3.3e+03 6.8e+04 24 34 87 14 87  24 34 87 14 87 70836
PCApplyOnBlocks    59910 1.0 1.3830e+02 1.2 1.18e+11 1.2 0.0e+00 0.0e+00 0.0e+00 10 16  0  0  0  10 16  0  0  0 76708
KSPSetUp              60 1.0 7.5229e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              60 1.0 3.4653e+02 1.0 2.78e+11 1.3 1.1e+08 3.7e+03 7.0e+04 26 38 88 16 90  26 38 88 16 90 72521
KSPGMRESOrthog     37400 1.0 4.2709e+01 3.1 1.01e+10 1.2 0.0e+00 0.0e+00 3.7e+04  3  1  0  0 48   3  1  0  0 48 22323
Mesh Partition         2 1.0 8.1472e-02 1.0 0.00e+00 0.0 6.8e+03 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.5273e-02 1.0 0.00e+00 0.0 2.3e+04 3.7e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 6.0458e-03 2072.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.0787e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.8082e-03 1.1 0.00e+00 0.0 1.3e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.2778e-03 2.2 0.00e+00 0.0 6.5e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.3836e-03 1.6 0.00e+00 0.0 7.6e+02 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.0512e-01 1.0 0.00e+00 0.0 4.2e+03 2.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 3.0973e-03 1.1 0.00e+00 0.0 3.9e+03 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.5024e-02 1.0 0.00e+00 0.0 1.1e+04 3.9e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 4.9587e-03 1.1 0.00e+00 0.0 2.7e+04 1.3e+02 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 3.4787e-03 1.1 0.00e+00 0.0 5.9e+03 1.8e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 9.0438e-05 1.1 0.00e+00 0.0 2.7e+03 8.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 4.0662e-03 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 1.2311e-03 48.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.2085e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.2985e+03 1.0 8.45e+11 1.8 1.3e+08 2.0e+04 7.8e+04 98 100 100 100 100  98 100 100 100 100 50619
SNESSetUp              1 1.0 2.8172e-05 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      90 1.0 3.6815e+01 1.1 5.63e+10 1.2 1.1e+05 8.5e+04 1.0e+00  3  8  0  0  0   3  8  0  0  0 146466
SNESJacobianEval      60 1.0 6.8870e+01 1.0 7.17e+10 1.2 6.4e+04 2.2e+05 2.4e+02  5 10  0  1  0   5 10  0  1  0 99604
SNESLineSearch        60 1.0 1.4941e+01 1.0 3.88e+10 1.2 9.6e+04 8.6e+04 2.4e+02  1  6  0  0  0   1  6  0  0  0 249345
firedrake              1 1.0 1.3202e+03 1.0 8.45e+11 1.8 1.3e+08 2.0e+04 7.8e+04 100 100 100 100 100 100 100 100 100 100 49788
firedrake.__init__       1 1.0 9.0213e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 2.4158e+00 14.1 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 1.5830e-01 1.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.3107e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7340e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.9564e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 3.6043e-04 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.5610e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 4.1546e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.4978e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.4348e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.4316e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.2959e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 5.0545e-03 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.4491e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 8.9521e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 1.0907e-02 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.6498e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.9464e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.6922e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.5157e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.6457e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.5140e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       752 1.0 9.8913e+01 1.1 1.28e+11 1.2 1.0e+05 8.3e+04 6.0e+00  7 19  0  0  0   7 19  0  0  0 123855
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.6141e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    1504 1.0 3.2295e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0223e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 1.8386e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.8059e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.2060e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.2059e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.1846e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.0737e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin     752 1.0 2.0722e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       752 1.0 1.9100e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.0004e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.3980e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   287
firedrake.interpolation.interpolate       1 1.0 3.5127e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.3943e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   287
firedrake.formmanipulation.split_form       3 1.0 2.1865e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.5861e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.3370e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.0130e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     181 1.0 4.2990e-01 5.1 0.00e+00 0.0 1.0e+05 8.3e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.7514e-01 1.0 2.71e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   308
firedrake.halo.Halo.global_to_local_end     181 1.0 4.1481e+00 153.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.4159e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.1639e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6442e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.7424e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.2620e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.5946e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 5.3946e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 7.9155e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.1694e+00 1.0 0.00e+00 0.0 3.2e+03 4.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.8777e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.8871e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1458e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1458e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.2923e+00 1.2 0.00e+00 0.0 1.6e+03 4.6e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.1930e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.2986e+03 1.0 8.45e+11 1.8 1.3e+08 2.0e+04 7.8e+04 98 100 100 100 100  98 100 100 100 100 50616
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.0910e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2204e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 2.9964e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     180 1.0 6.5075e+00 1.1 1.26e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 191939
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     180 1.0 1.9467e+00 1.0 4.33e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2208
Parloop_Cells_wrap_form0_exterior_facet_top_integral     180 1.0 1.7559e+00 1.0 4.33e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2447
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     180 1.0 7.9967e+00 1.1 1.29e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 160092
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     180 1.0 1.3083e+01 1.2 3.11e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 218134
firedrake.halo.Halo.local_to_global_begin      90 1.0 3.0733e-02 3.8 0.00e+00 0.0 4.8e+04 8.6e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end      90 1.0 2.4873e+00 120.0 6.40e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   208
Parloop_Cells_wrap_form00_cell_integral     120 1.0 1.1521e+01 1.1 1.53e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 131660
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     120 1.0 2.3551e+00 1.0 3.50e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1478
Parloop_Cells_wrap_form00_exterior_facet_top_integral     120 1.0 2.3213e+00 1.0 3.50e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1499
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     120 1.0 1.9950e+01 1.1 1.61e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 79949
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     120 1.0 2.8979e+01 1.2 4.07e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   2  6  0  0  0 129065
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   101            101
              Viewer     1              1
         PetscRandom     5              5
           Index Set   597            597
   IS L to G Mapping     4              4
             Section    72             72
   Star Forest Graph   155            155
              Vector  1325           1325
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
Average time to get PetscTime(): 3.59e-08
Average time for MPI_Barrier(): 4.4368e-06
Average time for zero size MPI_Send(): 1.92896e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/gamg/sweep.profile # (source: environment)
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

