****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0032.gadi.nci.org.au with 416 processes, by sg8812 on Tue Aug 25 23:03:15 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           3.511e+03     1.000   3.511e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.277e+12     1.999   8.821e+11  3.670e+14
Flops/sec:            3.636e+08     1.999   2.512e+08  1.045e+11
MPI Msg Count:        5.064e+06     7.514   2.857e+06  1.188e+09
MPI Msg Len (bytes):  1.647e+11    14.465   1.968e+04  2.339e+13
MPI Reductions:       1.321e+05     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.5112e+03 100.0%  3.6697e+14 100.0%  1.188e+09 100.0%  1.968e+04      100.0%  1.320e+05 100.0%

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

BuildTwoSided       1065 1.0 2.3406e+03 6.4 0.00e+00 0.0 6.1e+06 4.0e+00 1.1e+03 31  0  1  0  1  31  0  1  0  1    -0
BuildTwoSidedF       958 1.0 2.3542e+03 5.8 0.00e+00 0.0 1.1e+07 1.2e+06 9.6e+02 32  0  1 57  1  32  0  1 57  1    -0
SFSetGraph           110 1.0 1.2612e-02 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              107 1.0 4.6176e-01 2.8 0.00e+00 0.0 1.4e+06 9.8e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         427 1.0 1.5841e-01 3.2 0.00e+00 0.0 1.1e+06 5.7e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastEnd           427 1.0 8.3918e+00 131.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        145 1.0 5.1852e-01 35.9 0.00e+00 0.0 4.3e+05 6.9e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceEnd          145 1.0 3.2133e+00 88.6 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1140
SFFetchOpBegin         2 1.0 1.8478e-05 6.0 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.0064e-03 78.9 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.7636e-03 2.7 0.00e+00 0.0 2.8e+03 8.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.4727e-02 1.3 0.00e+00 0.0 9.4e+04 2.0e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 5.5313e-03 4.6 0.00e+00 0.0 4.1e+04 1.1e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack            131879 1.0 4.7345e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          131881 1.0 1.4699e-01 3.6 7.63e+07 5.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110227
VecDot                91 1.0 3.1050e-01 10.4 3.34e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 42697
VecMDot            63616 1.0 7.2400e+01 4.7 9.07e+09 1.2 0.0e+00 0.0e+00 6.4e+04  2  1  0  0 48   2  1  0  0 48 47752
VecNorm            66348 1.0 4.9948e+01 8.9 1.16e+09 1.1 0.0e+00 0.0e+00 6.6e+04  1  0  0  0 50   1  0  0  0 50  9163
VecScale           66136 1.0 1.4410e-01 1.2 5.39e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1480906
VecCopy            37033 1.0 2.4161e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             38814 1.0 8.5775e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             2520 1.0 7.4571e-02 1.5 6.88e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 364673
VecAYPX            67572 1.0 5.9697e+00 1.9 2.88e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 190490
VecAXPBYCZ         22524 1.0 2.7539e+00 1.4 3.60e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 516172
VecWAXPY              91 1.0 7.0520e-02 1.2 1.67e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 93998
VecMAXPY           66136 1.0 9.8822e+00 1.2 1.01e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 390282
VecAssemblyBegin      19 1.0 2.1884e-02 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.6e+01  0  0  0  0  0   0  0  0  0  0    -0
VecAssemblyEnd        19 1.0 3.0105e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecPointwiseMult      66 1.0 9.3528e-03 2.2 2.11e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 89068
VecReciprocal         18 1.0 2.1847e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin   131305 1.0 8.8638e+00 3.2 0.00e+00 0.0 1.2e+09 3.5e+03 0.0e+00  0  0 98 17  0   0  0 98 17  0    -0
VecScatterEnd     131305 1.0 9.2564e+01 4.0 6.70e+07 6.5 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0   135
VecReduceArith       182 1.0 3.8222e-02 2.9 6.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 693701
VecReduceComm         91 1.0 8.9029e-01 62.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       66136 1.0 4.8019e+01 10.0 1.62e+09 1.1 0.0e+00 0.0e+00 6.6e+04  1  0  0  0 50   1  0  0  0 50 13332
MatMult           108755 1.0 3.5501e+02 1.2 2.63e+11 1.3 9.5e+08 4.0e+03 0.0e+00  9 26 80 16  0   9 26 80 16  0 271258
MatMultAdd         11262 1.0 2.9720e+01 1.9 1.00e+10 1.4 1.1e+08 9.5e+02 0.0e+00  1  1  9  0  0   1  1  9  0  0 125091
MatMultTranspose   11262 1.0 3.1971e+01 2.6 1.01e+10 1.4 1.1e+08 9.5e+02 0.0e+00  1  1  9  0  0   1  1  9  0  0 116675
MatSolve          109241 3.2 2.2139e+02 1.2 1.89e+11 1.3 0.0e+00 0.0e+00 0.0e+00  6 19  0  0  0   6 19  0  0  0 306845
MatLUFactorNum       637 1.0 1.2100e+01 1.3 2.89e+10 1.5 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 726374
MatILUFactorSym        7 1.0 8.7904e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             6 1.0 1.2752e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatScale              18 1.0 1.1458e-01 1.3 3.22e+07 1.4 1.1e+05 3.6e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 101981
MatResidual        11262 1.0 7.1057e+01 1.3 5.05e+10 1.3 2.1e+08 3.6e+03 0.0e+00  2  5 18  3  0   2  5 18  3  0 256357
MatAssemblyBegin    2111 1.0 2.3858e+03 3.7 0.00e+00 0.0 1.1e+07 1.2e+06 9.4e+02 36  0  1 57  1  36  0  1 57  1    -0
MatAssemblyEnd      2111 1.0 1.3875e+03 18.5 1.17e+10 98.1 1.1e+06 9.6e+02 2.8e+02 22  0  0  0  0  22  0  0  0  0   602
MatGetRowIJ            7 1.8 4.9930e-06 9.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMat        3 1.0 3.4076e-02 1.0 0.00e+00 0.0 7.6e+04 8.4e+01 4.5e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         7 1.8 2.6687e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCoarsen             6 1.0 6.8810e-02 1.2 0.00e+00 0.0 4.4e+05 4.4e+03 2.2e+02  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       637 1.0 3.5603e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAXPY               12 1.0 5.6843e-01 1.0 1.36e+07 1.3 2.2e+05 8.9e+02 3.0e+01  0  0  0  0  0   0  0  0  0  0  8670
MatTranspose          23 1.0 2.7224e+00 1.0 0.00e+00 0.0 8.3e+05 1.7e+04 9.9e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym         18 1.0 3.3448e+00 3.3 0.00e+00 0.0 5.7e+05 1.4e+03 5.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1098 1.0 1.7158e+02 10.7 3.03e+11 10.8 1.1e+05 3.6e+03 0.0e+00  2 13  0  0  0   2 13  0  0  0 270429
MatPtAPSymbolic        6 1.0 1.5508e+01 1.0 0.00e+00 0.0 5.1e+05 2.6e+05 4.2e+01  0  0  0  1  0   0  0  0  1  0    -0
MatPtAPNumeric       546 1.0 2.6008e+03 1.0 6.02e+11 9.0 2.1e+07 9.2e+05 5.8e+02 73 28  2 81  0  73 28  2 81  0 40055
MatTrnMatMultSym       1 1.0 1.0371e+00 1.0 0.00e+00 0.0 1.2e+04 3.0e+05 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetLocalMat       559 1.0 1.1683e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        558 1.0 1.2313e+03 80.7 0.00e+00 0.0 1.1e+07 5.3e+05 0.0e+00 10  0  1 25  0  10  0  1 25  0    -0
MatGetSymTransR        2 1.0 1.8158e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateGraph         6 1.0 3.4773e+00 1.0 4.03e+07 1.3 1.1e+06 1.3e+04 8.4e+01  0  0  0  0  0   0  0  0  0  0  4186
PCSetUp_GAMG+         91 1.0 2.6963e+03 1.0 6.67e+11 5.2 1.3e+08 1.5e+05 1.3e+04 77 36 11 84 10  77 36 11 84 10 48862
 PCGAMGCreateG         6 1.0 3.6790e+00 1.0 4.03e+07 1.3 1.2e+06 1.3e+04 1.3e+02  0  0  0  0  0   0  0  0  0  0  3957
 GAMG Coarsen         12 1.0 1.2211e+00 1.0 0.00e+00 0.0 4.7e+05 1.7e+04 2.4e+02  0  0  0  0  0   0  0  0  0  0    -0
  GAMG MIS/Agg         6 1.0 1.1295e+00 1.0 0.00e+00 0.0 4.5e+05 1.2e+04 2.4e+02  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGProl            6 1.0 1.5593e-01 1.2 0.00e+00 0.0 5.1e+04 2.3e+04 7.2e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-col        6 1.0 1.5086e-02 1.1 0.00e+00 0.0 1.7e+04 6.0e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-lift       6 1.0 1.1418e-01 1.0 0.00e+00 0.0 3.4e+04 4.3e+03 3.6e+01  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGOptProl         6 1.0 1.2919e+00 1.0 3.54e+08 1.3 1.8e+06 2.9e+03 1.8e+02  0  0  0  0  0   0  0  0  0  0 100404
  GAMG smooth          6 1.0 8.2886e-01 1.1 3.24e+07 1.3 6.8e+05 1.8e+03 5.6e+01  0  0  0  0  0   0  0  0  0  0 14189
 PCGAMGCreateL         6 1.0 3.9964e+01 1.0 6.61e+09 9.0 9.2e+05 3.0e+05 1.8e+02  1  0  0  1  0   1  0  0  1  0 28626
  GAMG PtAP            6 1.0 3.9912e+01 1.0 6.61e+09 9.0 8.4e+05 3.3e+05 8.0e+01  1  0  0  1  0   1  0  0  1  0 28663
  GAMG Reduce          3 1.0 3.4574e+01 1.0 5.64e+09 24.5 6.4e+05 3.4e+05 1.4e+02  1  0  0  1  0   1  0  0  1  0 22465
PCGAMG Squ l00         1 1.0 1.0371e+00 1.0 0.00e+00 0.0 1.2e+04 3.0e+05 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
PCGAMG Gal l00        91 1.0 5.2224e+01 1.7 3.12e+10 1.3 6.7e+05 6.5e+05 1.0e+02  1  3  0  2  0   1  3  0  2  0 227146
PCGAMG Opt l00         1 1.0 1.9928e-01 1.3 2.06e+07 1.1 1.4e+04 5.2e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0 40770
PCGAMG Gal l01        91 1.0 6.5337e+01 1.6 1.47e+10 2.3 1.0e+06 9.1e+05 1.0e+02  1  1  0  4  0   1  1  0  4  0 72779
PCGAMG Opt l01         1 1.0 2.7850e-02 1.0 1.46e+06 1.5 2.0e+04 7.5e+03 1.0e+01  0  0  0  0  0   0  0  0  0  0 18199
PCGAMG Gal l02        91 1.0 2.2762e+02 1.6 7.09e+10 6.7 3.4e+06 7.9e+05 1.0e+02  5  5  0 11  0   5  5  0 11  0 74098
PCGAMG Opt l02         1 1.0 5.6318e-02 1.1 2.27e+06 3.2 6.7e+04 2.3e+03 9.0e+00  0  0  0  0  0   0  0  0  0  0 10611
PCGAMG Gal l03        91 1.0 1.9410e+03 2.3 3.98e+11 23.8 1.1e+07 1.2e+06 1.0e+02 39 13  1 53  0  39 13  1 53  0 24139
PCGAMG Opt l03         1 1.0 2.4539e-01 1.0 1.92e+06 10.8 3.2e+05 4.2e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0  1204
PCGAMG Gal l04        91 1.0 1.4061e+03 5.4 2.85e+11 0.0 5.2e+06 5.2e+05 1.0e+02 23  6  0 11  0  23  6  0 11  0 16724
PCGAMG Opt l04         1 1.0 2.5842e-01 1.0 2.15e+06 0.0 2.5e+05 2.1e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   678
PCGAMG Gal l05        91 1.0 1.8345e+02 24.3 1.47e+10 0.0 9.8e+04 3.2e+05 1.0e+02  3  0  0  0  0   3  0  0  0  0  1745
PCGAMG Opt l05         1 1.0 2.1808e-02 1.0 2.24e+05 0.0 6.0e+03 2.0e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   222
PCSetUp               91 1.0 2.6963e+03 1.0 6.67e+11 5.2 1.3e+08 1.5e+05 1.3e+04 77 36 11 84 10  77 36 11 84 10 48862
PCSetUpOnBlocks    24401 1.0 2.0238e+00 31.5 8.82e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4356
PCApply             1877 1.0 5.3555e+02 1.0 4.01e+11 1.3 1.1e+09 3.0e+03 1.1e+05 15 39 89 14 87  15 39 89 14 87 265687
PCApplyOnBlocks   109241 1.0 2.2169e+02 1.2 1.89e+11 1.3 0.0e+00 0.0e+00 0.0e+00  6 19  0  0  0   6 19  0  0  0 306418
KSPSetUp              91 1.0 7.8659e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.9463e+02 1.0 4.50e+11 1.3 1.1e+09 3.4e+03 1.2e+05 17 44 89 16 89  17 44 89 16 89 273668
KSPGMRESOrthog     63616 1.0 8.0491e+01 3.4 1.81e+10 1.2 0.0e+00 0.0e+00 6.4e+04  2  2  0  0 48   2  2  0  0 48 85904
Mesh Partition         2 1.0 2.4543e-01 1.0 0.00e+00 0.0 2.9e+04 1.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.5330e-02 1.0 0.00e+00 0.0 9.7e+04 2.5e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 1.5594e-02 4169.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 3.1714e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.2494e-03 1.5 0.00e+00 0.0 5.6e+03 1.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.7594e-03 1.9 0.00e+00 0.0 2.8e+03 7.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 7.4546e-03 1.3 0.00e+00 0.0 3.2e+03 1.2e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.8552e-01 1.0 0.00e+00 0.0 1.6e+04 1.4e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 4.4240e-03 1.1 0.00e+00 0.0 1.7e+04 4.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.0339e-02 1.0 0.00e+00 0.0 4.6e+04 2.8e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 1.3171e-02 1.1 0.00e+00 0.0 1.1e+05 1.0e+02 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 6.1560e-03 1.2 0.00e+00 0.0 2.5e+04 1.2e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.2513e-04 1.2 0.00e+00 0.0 1.2e+04 6.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 9.4115e-03 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 3.3830e-03 192.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.4992e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 3.4780e+03 1.0 1.28e+12 2.0 1.2e+09 2.0e+04 1.3e+05 99 100 100 100 100  99 100 100 100 100 105513
SNESSetUp              1 1.0 4.0306e-05 7.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.5881e+01 1.1 7.91e+10 1.3 6.4e+05 1.0e+05 1.0e+00  1  8  0  0  0   1  8  0  0  0 641518
SNESJacobianEval      91 1.0 1.3790e+02 1.0 1.14e+11 1.3 4.2e+05 2.7e+05 3.6e+02  4 12  0  0  0   4 12  0  0  0 306388
SNESLineSearch        91 1.0 2.4384e+01 1.0 6.16e+10 1.2 6.4e+05 1.0e+05 3.6e+02  1  6  0  0  0   1  6  0  0  0 940856
firedrake              1 1.0 3.5076e+03 1.0 1.28e+12 2.0 1.2e+09 2.0e+04 1.3e+05 100 100 100 100 100 100 100 100 100 100 104622
firedrake.__init__       1 1.0 1.5517e+01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.4001e+00 13.9 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 3.7157e-01 1.0 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2652e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7320e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.7377e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.0935e-04 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.7071e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 5.0180e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.6470e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.5863e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.5835e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.2368e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 7.7008e-03 1.2 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.3142e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0582e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 4.2451e-02 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.5023e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.5732e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.6067e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.7161e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.4982e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 3.7710e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3806e+02 1.1 1.93e+11 1.3 5.8e+05 1.0e+05 6.0e+00  4 20  0  0  0   4 20  0  0  0 519175
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.4658e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.5375e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.2400e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 1.9968e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.9922e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.2962e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.2961e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.9513e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.8299e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 3.4069e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.6158e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.3908e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.5752e-01 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1141
firedrake.interpolation.interpolate       1 1.0 3.9067e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.5715e-01 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1142
firedrake.formmanipulation.split_form       3 1.0 2.7760e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.3398e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.0742e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.0230e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.2040e-01 4.2 0.00e+00 0.0 5.8e+05 1.0e+05 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.9486e-01 1.0 2.76e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1221
firedrake.halo.Halo.global_to_local_end     243 1.0 7.9946e+00 261.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.9410e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.5828e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1400e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 9.3469e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.3682e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.6078e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.6117e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.9505e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.5185e+00 1.0 0.00e+00 0.0 1.4e+04 5.7e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0712e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6926e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1506e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1506e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 2.6509e+00 1.3 0.00e+00 0.0 7.1e+03 5.6e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.5427e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 3.4780e+03 1.0 1.28e+12 2.0 1.2e+09 2.0e+04 1.3e+05 99 100 100 100 100  99 100 100 100 100 105511
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.8619e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2111e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.7155e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.4828e+00 1.1 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 802404
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1539e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6867
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.1435e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6901
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0323e+01 1.1 1.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 677406
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7537e+01 1.3 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 889602
firedrake.halo.Halo.local_to_global_begin     121 1.0 5.1649e-01 30.1 0.00e+00 0.0 2.8e+05 1.0e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.2088e+00 95.6 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1142
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5911e+01 1.1 2.35e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 586065
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.5040e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5396
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.4702e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5470
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 3.3403e+01 1.3 2.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 294240
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5362e+01 1.4 6.54e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 508439
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   106            106
              Viewer     1              1
         PetscRandom     6              6
           Index Set  1575           1575
   IS L to G Mapping     4              4
             Section    72             72
   Star Forest Graph   176            176
              Vector  2139           2139
              Matrix   273            273
      Matrix Coarsen     6              6
      Preconditioner    27             27
       Krylov Solver    27             27
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    30             30
            DM Label    50             50
    GraphPartitioner     3              3
     Discrete System    37             37
           Weak Form    37             37
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 1.1677e-05
Average time for zero size MPI_Send(): 2.11158e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/gamg/large.profile # (source: environment)
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

