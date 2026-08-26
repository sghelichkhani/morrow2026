****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0181.gadi.nci.org.au with 832 processes, by sg8812 on Tue Aug 25 23:16:46 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.323e+03     1.000   4.323e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.489e+12     2.200   9.087e+11  7.561e+14
Flops/sec:            3.444e+08     2.200   2.102e+08  1.749e+11
MPI Msg Count:        9.987e+06    10.558   4.768e+06  3.967e+09
MPI Msg Len (bytes):  2.254e+11    15.770   1.440e+04  5.713e+13
MPI Reductions:       1.526e+05     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.3233e+03 100.0%  7.5606e+14 100.0%  3.967e+09 100.0%  1.440e+04      100.0%  1.526e+05 100.0%

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

BuildTwoSided       1065 1.0 2.8417e+03 17.9 0.00e+00 0.0 1.6e+07 4.0e+00 1.1e+03 31  0  0  0  1  31  0  0  0  1    -0
BuildTwoSidedF       958 1.0 2.8676e+03 15.5 0.00e+00 0.0 2.8e+07 1.1e+06 9.6e+02 32  0  1 55  1  32  0  1 55  1    -0
SFSetGraph           110 1.0 1.3976e-02 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              107 1.0 6.3379e-01 2.8 0.00e+00 0.0 4.0e+06 7.8e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         424 1.0 1.9015e-01 3.2 0.00e+00 0.0 2.3e+06 6.1e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastEnd           424 1.0 1.0089e+01 122.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        145 1.0 7.3837e-01 291.1 0.00e+00 0.0 9.7e+05 6.9e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceEnd          145 1.0 4.3755e+00 96.5 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1897
SFFetchOpBegin         2 1.0 2.0233e-05 7.2 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.0301e-03 72.2 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.9170e-03 3.8 0.00e+00 0.0 5.7e+03 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 2.2667e-02 1.4 0.00e+00 0.0 1.9e+05 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 1.0163e-02 5.9 0.00e+00 0.0 8.2e+04 9.4e+01 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack            153718 1.0 5.6681e+00 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          153720 1.0 1.8535e-01 4.4 1.40e+08 7.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 213421
VecDot                91 1.0 3.3934e-01 12.2 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 77108
VecMDot            73722 1.0 1.3978e+02 3.7 1.24e+10 1.2 0.0e+00 0.0e+00 7.4e+04  3  1  0  0 48   3  1  0  0 48 63545
VecNorm            76780 1.0 1.5410e+02 21.7 1.31e+09 1.2 0.0e+00 0.0e+00 7.7e+04  3  0  0  0 50   3  0  0  0 50  6463
VecScale           76568 1.0 1.5227e-01 1.2 6.20e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3070288
VecCopy            43227 1.0 2.7403e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             45334 1.0 9.6625e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             2846 1.0 7.5454e-02 1.6 6.84e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 710065
VecAYPX            79308 1.0 7.2985e+00 2.0 3.30e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 359689
VecAXPBYCZ         26436 1.0 3.3325e+00 1.4 4.12e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 984694
VecWAXPY              91 1.0 6.8037e-02 1.2 1.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 192294
VecMAXPY           76568 1.0 1.2397e+01 1.2 1.35e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 787611
VecAssemblyBegin      19 1.0 3.3581e-02 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.6e+01  0  0  0  0  0   0  0  0  0  0    -0
VecAssemblyEnd        19 1.0 4.8498e-05 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecPointwiseMult      66 1.0 9.1807e-03 2.0 2.06e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 178472
VecReciprocal         18 1.0 2.3739e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin   153147 1.0 1.2423e+01 3.4 0.00e+00 0.0 3.9e+09 2.7e+03 0.0e+00  0  0 98 18  0   0  0 98 18  0    -0
VecScatterEnd     153147 1.0 1.2491e+02 2.9 1.32e+08 9.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0   250
VecReduceArith       182 1.0 3.7924e-02 3.1 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1379928
VecReduceComm         91 1.0 1.0364e+00 26.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       76568 1.0 1.5080e+02 35.6 1.86e+09 1.2 0.0e+00 0.0e+00 7.7e+04  3  0  0  0 50   3  0  0  0 50  9300
MatMult           126685 1.0 4.1674e+02 1.2 3.29e+11 1.5 3.3e+09 3.1e+03 0.0e+00  9 28 82 17  0   9 28 82 17  0 516971
MatMultAdd         13218 1.0 4.3289e+01 2.1 1.08e+10 1.3 3.2e+08 7.8e+02 0.0e+00  1  1  8  0  0   1  1  8  0  0 182450
MatMultTranspose   13218 1.0 3.1786e+01 2.6 1.09e+10 1.3 3.2e+08 7.8e+02 0.0e+00  0  1  8  0  0   0  1  8  0  0 249460
MatSolve          127171 3.2 2.8195e+02 1.4 2.65e+11 1.6 0.0e+00 0.0e+00 0.0e+00  5 20  0  0  0   5 20  0  0  0 536472
MatLUFactorNum       637 1.0 1.6562e+01 1.9 4.78e+10 2.8 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 989254
MatILUFactorSym        7 1.0 8.8141e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             6 1.0 1.4678e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatScale              18 1.0 1.1439e-01 1.4 3.13e+07 1.4 3.3e+05 2.7e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 194631
MatResidual        13218 1.0 8.3548e+01 1.3 5.82e+10 1.4 7.4e+08 2.7e+03 0.0e+00  2  5 19  3  0   2  5 19  3  0 492494
MatAssemblyBegin    2111 1.0 2.9077e+03 6.0 0.00e+00 0.0 2.8e+07 1.1e+06 9.4e+02 36  0  1 55  1  36  0  1 55  1    -0
MatAssemblyEnd      2111 1.0 1.9543e+03 13.3 1.58e+10 113.1 3.1e+06 7.5e+02 2.8e+02 25  0  0  0  0  25  0  0  0  0  1006
MatGetRowIJ            7 1.8 2.3140e-05 47.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMat        3 1.0 3.7789e-02 1.0 0.00e+00 0.0 2.0e+05 7.3e+01 4.5e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         7 1.8 4.4242e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCoarsen             6 1.0 8.3592e-02 1.1 0.00e+00 0.0 9.9e+05 4.4e+03 2.2e+02  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       637 1.0 3.5650e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAXPY               12 1.0 5.6139e-01 1.0 1.34e+07 1.4 6.7e+05 6.8e+02 3.0e+01  0  0  0  0  0   0  0  0  0  0 16901
MatTranspose          23 1.0 3.0371e+00 1.0 0.00e+00 0.0 2.4e+06 1.1e+04 9.9e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym         18 1.0 3.7013e+00 3.3 0.00e+00 0.0 1.7e+06 1.1e+03 5.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1098 1.0 1.7520e+02 10.2 2.97e+11 12.7 3.3e+05 2.7e+03 0.0e+00  1 11  0  0  0   1 11  0  0  0 458783
MatPtAPSymbolic        6 1.0 1.8996e+01 1.0 0.00e+00 0.0 1.4e+06 2.3e+05 4.2e+01  0  0  0  1  0   0  0  0  1  0    -0
MatPtAPNumeric       546 1.0 3.2254e+03 1.0 7.33e+11 12.9 5.7e+07 8.0e+05 5.8e+02 72 25  1 80  0  72 25  1 80  0 58710
MatTrnMatMultSym       1 1.0 1.1802e+00 1.0 0.00e+00 0.0 2.4e+04 3.6e+05 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetLocalMat       559 1.0 1.1028e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        558 1.0 1.6250e+03 72.4 0.00e+00 0.0 3.2e+07 4.6e+05 0.0e+00  8  0  1 26  0   8  0  1 26  0    -0
MatGetSymTransR        2 1.0 1.9325e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateGraph         6 1.0 3.7869e+00 1.0 3.96e+07 1.4 3.3e+06 8.3e+03 8.4e+01  0  0  0  0  0   0  0  0  0  0  7398
PCSetUp_GAMG+         91 1.0 3.3258e+03 1.0 8.03e+11 6.9 3.7e+08 1.3e+05 1.3e+04 77 32  9 82  8  77 32  9 82  8 72767
 PCGAMGCreateG         6 1.0 3.9872e+00 1.0 3.96e+07 1.4 3.4e+06 8.2e+03 1.3e+02  0  0  0  0  0   0  0  0  0  0  7027
 GAMG Coarsen         12 1.0 1.3858e+00 1.0 0.00e+00 0.0 1.0e+06 1.7e+04 2.4e+02  0  0  0  0  0   0  0  0  0  0    -0
  GAMG MIS/Agg         6 1.0 1.2843e+00 1.0 0.00e+00 0.0 1.0e+06 1.3e+04 2.3e+02  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGProl            6 1.0 1.5671e-01 1.2 0.00e+00 0.0 1.1e+05 2.4e+04 7.2e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-col        6 1.0 1.8751e-02 1.1 0.00e+00 0.0 3.6e+04 6.5e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-lift       6 1.0 1.1179e-01 1.0 0.00e+00 0.0 7.2e+04 4.4e+03 3.6e+01  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGOptProl         6 1.0 1.4059e+00 1.0 3.47e+08 1.3 5.4e+06 2.2e+03 1.8e+02  0  0  0  0  0   0  0  0  0  0 178033
  GAMG smooth          6 1.0 9.3250e-01 1.1 3.15e+07 1.3 2.0e+06 1.4e+03 5.6e+01  0  0  0  0  0   0  0  0  0  0 24034
 PCGAMGCreateL         6 1.0 4.9712e+01 1.0 8.05e+09 12.9 2.6e+06 2.6e+05 1.8e+02  1  0  0  1  0   1  0  0  1  0 41833
  GAMG PtAP            6 1.0 4.9654e+01 1.0 8.05e+09 12.9 2.4e+06 2.8e+05 8.0e+01  1  0  0  1  0   1  0  0  1  0 41882
  GAMG Reduce          3 1.0 4.5247e+01 1.0 7.17e+09 52.0 1.9e+06 2.9e+05 1.4e+02  1  0  0  1  0   1  0  0  1  0 33311
PCGAMG Squ l00         1 1.0 1.1802e+00 1.0 0.00e+00 0.0 2.4e+04 3.6e+05 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
PCGAMG Gal l00        91 1.0 6.0478e+01 2.0 2.82e+10 1.3 1.4e+06 6.5e+05 1.0e+02  1  3  0  2  0   1  3  0  2  0 355745
PCGAMG Opt l00         1 1.0 2.1953e-01 1.2 2.01e+07 1.1 2.9e+04 5.8e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0 73107
PCGAMG Gal l01        91 1.0 6.6077e+01 2.1 1.10e+10 2.5 2.3e+06 7.4e+05 1.0e+02  1  1  0  3  0   1  1  0  3  0 110349
PCGAMG Opt l01         1 1.0 2.6102e-02 1.1 1.23e+06 1.6 4.5e+04 7.1e+03 1.0e+01  0  0  0  0  0   0  0  0  0  0 32992
PCGAMG Gal l02        91 1.0 1.8130e+02 1.8 4.69e+10 7.5 8.2e+06 5.9e+05 1.0e+02  3  3  0  8  0   3  3  0  8  0 128976
PCGAMG Opt l02         1 1.0 4.1815e-02 1.2 1.74e+06 3.6 1.6e+05 2.0e+03 9.0e+00  0  0  0  0  0   0  0  0  0  0 22637
PCGAMG Gal l03        91 1.0 1.9598e+03 2.7 2.96e+11 24.9 2.8e+07 1.0e+06 1.0e+02 32 10  1 49  0  32 10  1 49  0 37571
PCGAMG Opt l03         1 1.0 1.7856e-01 1.0 1.39e+06 11.0 8.4e+05 3.4e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0  2504
PCGAMG Gal l04        91 1.0 1.9835e+03 5.4 4.15e+11 0.0 1.8e+07 5.7e+05 1.0e+02 25  8  0 18  0  25  8  0 18  0 31430
PCGAMG Opt l04         1 1.0 3.9978e-01 1.0 2.44e+06 0.0 9.4e+05 1.7e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   902
PCGAMG Gal l05        91 1.0 6.2091e+02 20.7 3.74e+10 0.0 2.6e+05 4.6e+05 1.0e+02 10  0  0  0  0  10  0  0  0  0  1934
PCGAMG Opt l05         1 1.0 5.2825e-02 1.0 4.01e+05 0.0 1.6e+04 2.0e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   243
PCSetUp               91 1.0 3.3258e+03 1.0 8.03e+11 6.9 3.7e+08 1.3e+05 1.3e+04 77 32  9 82  8  77 32  9 82  8 72767
PCSetUpOnBlocks    28639 1.0 6.4349e+00 90.8 2.77e+10 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4300
PCApply             2203 1.0 6.8854e+02 1.0 5.70e+11 1.7 3.6e+09 2.4e+03 1.3e+05 16 42 90 15 88  16 42 90 15 88 466146
PCApplyOnBlocks   127171 1.0 2.8238e+02 1.4 2.65e+11 1.6 0.0e+00 0.0e+00 0.0e+00  5 20  0  0  0   5 20  0  0  0 535668
KSPSetUp              91 1.0 7.8997e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 7.6039e+02 1.0 6.30e+11 1.6 3.6e+09 2.7e+03 1.4e+05 18 49 91 17 91  18 49 91 17 91 487752
KSPGMRESOrthog     73722 1.0 1.5034e+02 3.1 2.47e+10 1.2 0.0e+00 0.0e+00 7.4e+04  3  2  0  0 48   3  2  0  0 48 118168
Mesh Partition         2 1.0 5.4424e-01 1.0 0.00e+00 0.0 5.9e+04 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 7.3903e-02 1.0 0.00e+00 0.0 2.0e+05 2.1e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 2.5363e-02 4998.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 6.4217e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.7777e-03 2.1 0.00e+00 0.0 1.1e+04 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 3.2478e-03 1.6 0.00e+00 0.0 5.7e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1987e-02 1.2 0.00e+00 0.0 6.5e+03 9.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.1254e-01 1.0 0.00e+00 0.0 3.2e+04 1.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 7.9824e-03 1.1 0.00e+00 0.0 3.4e+04 3.6e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 5.0163e-02 1.0 0.00e+00 0.0 9.3e+04 2.3e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 2.5365e-02 1.1 0.00e+00 0.0 2.3e+05 9.1e+01 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 1.0293e-02 1.2 0.00e+00 0.0 5.2e+04 1.0e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.4519e-04 1.3 0.00e+00 0.0 2.4e+04 5.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.5422e-02 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 5.3858e-03 375.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 2.2379e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 4.2886e+03 1.0 1.49e+12 2.2 4.0e+09 1.4e+04 1.5e+05 99 100 100 100 100  99 100 100 100 100 176296
SNESSetUp              1 1.0 4.4088e-05 7.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.5527e+01 1.1 7.85e+10 1.3 1.3e+06 1.1e+05 1.0e+00  1  8  0  0  0   1  8  0  0  0 1276715
SNESJacobianEval      91 1.0 1.5341e+02 1.0 1.13e+11 1.3 8.6e+05 3.0e+05 3.6e+02  4 11  0  0  0   4 11  0  0  0 543928
SNESLineSearch        91 1.0 2.5457e+01 1.0 6.10e+10 1.3 1.3e+06 1.2e+05 3.6e+02  1  6  0  0  0   1  6  0  0  0 1779663
firedrake              1 1.0 4.3194e+03 1.0 1.49e+12 2.2 4.0e+09 1.4e+04 1.5e+05 100 100 100 100 100 100 100 100 100 100 175040
firedrake.__init__       1 1.0 1.5959e+01 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.0153e+01 13.5 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 7.3059e-01 1.0 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.5339e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 3.2200e-06 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.8591e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.3060e-04 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 3.2506e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 4.7421e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 3.1899e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 3.1265e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 3.1234e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.3637e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.5254e-02 1.6 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.4129e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.4458e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 6.8795e-02 10.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.6368e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.2191e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.7566e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 3.2986e-04 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.6327e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 3.9574e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3624e+02 1.2 1.91e+11 1.3 1.2e+06 1.1e+05 6.0e+00  3 19  0  0  0   3 19  0  0  0 1038955
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.5989e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.3161e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0638e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.5209e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.7098e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.2506e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.2505e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 9.0850e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.9601e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 3.2701e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.8134e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.5347e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.7637e-01 1.0 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  2209
firedrake.interpolation.interpolate       1 1.0 4.0004e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.7599e-01 1.0 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  2210
firedrake.formmanipulation.split_form       3 1.0 3.1904e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 9.3853e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 5.5092e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.0415e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.8820e-01 5.5 0.00e+00 0.0 1.2e+06 1.1e+05 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.9447e-01 1.0 2.70e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2411
firedrake.halo.Halo.global_to_local_end     243 1.0 9.7906e+00 266.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.1126e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.8346e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1934e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.8372e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.8398e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.0876e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2971e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.4976e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.6419e+00 1.0 0.00e+00 0.0 2.9e+04 6.4e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9904e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6661e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1611e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1611e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 2.7592e+00 1.3 0.00e+00 0.0 1.4e+04 6.3e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.4774e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 4.2886e+03 1.0 1.49e+12 2.2 4.0e+09 1.4e+04 1.5e+05 99 100 100 100 100  99 100 100 100 100 176294
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.0393e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.5293e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 4.6027e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 7.9148e+00 1.1 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 1697354
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9847e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11645
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9539e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11828
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.9268e+00 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 1391562
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7974e+01 1.4 4.43e+10 1.5 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 1714835
firedrake.halo.Halo.local_to_global_begin     121 1.0 7.3105e-01 146.6 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 4.3762e+00 111.5 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1897
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.6308e+01 1.2 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 1128573
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3706e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8906
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3240e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9085
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 3.0436e+01 1.3 2.43e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 637902
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.9962e+01 1.6 6.55e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 912032
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   106            106
              Viewer     1              1
         PetscRandom     6              6
           Index Set  2834           2834
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
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 9.0092e-06
Average time for zero size MPI_Send(): 2.20924e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/gamg/huge.profile # (source: environment)
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

