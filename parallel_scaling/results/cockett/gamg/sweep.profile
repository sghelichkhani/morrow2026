****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0036.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:42:03 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.953e+03     1.000   1.953e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.221e+12     1.874   9.015e+11  9.376e+13
Flops/sec:            6.251e+08     1.874   4.617e+08  4.801e+10
MPI Msg Count:        2.103e+06     1.786   1.681e+06  1.748e+08
MPI Msg Len (bytes):  6.563e+10     4.269   2.243e+04  3.922e+12
MPI Reductions:       1.042e+05     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.9528e+03 100.0%  9.3761e+13 100.0%  1.748e+08 100.0%  2.243e+04      100.0%  1.042e+05 100.0%

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

BuildTwoSided        951 1.0 5.4476e+02 39.4 0.00e+00 0.0 1.1e+06 4.0e+00 9.5e+02 14  0  1  0  1  14  0  1  0  1    -0
BuildTwoSidedF       859 1.0 5.6569e+02 7.2 0.00e+00 0.0 2.0e+06 1.1e+06 8.6e+02 16  0  1 56  1  16  0  1 56  1    -0
SFSetGraph            95 1.0 9.0749e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               92 1.0 4.6995e-01 1.8 0.00e+00 0.0 2.5e+05 1.1e+03 9.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         380 1.0 1.0173e-01 3.0 0.00e+00 0.0 2.1e+05 5.5e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastEnd           380 1.0 6.3383e+00 63.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        143 1.0 4.0504e-02 4.7 0.00e+00 0.0 9.2e+04 6.1e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceEnd          143 1.0 3.4491e+00 101.0 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   201
SFFetchOpBegin         2 1.0 1.8059e-05 5.2 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.2337e-04 9.1 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 9.6142e-04 1.5 0.00e+00 0.0 6.5e+02 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 8.9356e-03 1.3 0.00e+00 0.0 2.2e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 3.7641e-03 3.2 0.00e+00 0.0 1.0e+04 1.5e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             94816 1.0 2.6053e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           94818 1.0 1.1837e-01 3.2 1.02e+08 7.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23432
VecDot                91 1.0 2.5884e-01 11.3 3.29e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 12636
VecMDot            50079 1.0 5.1260e+01 5.3 6.33e+09 1.2 0.0e+00 0.0e+00 5.0e+04  2  1  0  0 48   2  1  0  0 48 11565
VecNorm            52312 1.0 1.3274e+02 24.9 9.94e+08 1.1 0.0e+00 0.0e+00 5.2e+04  4  0  0  0 50   4  0  0  0 50   743
VecScale           52100 1.0 1.2712e-01 1.1 4.59e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 357960
VecCopy            24798 1.0 1.9748e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             26082 1.0 6.6998e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             2021 1.0 7.3426e-02 1.4 6.80e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 91772
VecAYPX            44100 1.0 4.4028e+00 1.9 2.24e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 50317
VecAXPBYCZ         14700 1.0 2.1365e+00 1.4 2.80e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 129616
VecWAXPY              91 1.0 6.9254e-02 1.1 1.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23614
VecMAXPY           52100 1.0 6.9390e+00 1.1 7.18e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 97578
VecAssemblyBegin      15 1.0 2.3367e-02 6.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
VecAssemblyEnd        15 1.0 2.5435e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecPointwiseMult      55 1.0 8.7902e-03 2.4 2.09e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23574
VecReciprocal         15 1.0 2.5037e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin    94291 1.0 5.6570e+00 2.1 0.00e+00 0.0 1.7e+08 3.7e+03 0.0e+00  0  0 97 16  0   0  0 97 16  0    -0
VecScatterEnd      94291 1.0 7.5729e+01 4.1 9.54e+07 9.9 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    27
VecReduceArith       182 1.0 3.1388e-02 2.4 6.59e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 208409
VecReduceComm         91 1.0 1.0111e+00 9.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       52100 1.0 1.3176e+02 26.9 1.38e+09 1.1 0.0e+00 0.0e+00 5.2e+04  4  0  0  0 50   4  0  0  0 50  1036
MatMult            79570 1.0 2.8146e+02 1.1 2.14e+11 1.2 1.4e+08 4.3e+03 0.0e+00 13 22 80 15  0  13 22 80 15  0 71871
MatMultAdd          7350 1.0 1.7720e+01 1.3 9.23e+09 1.3 1.5e+07 1.1e+03 0.0e+00  1  1  9  0  0   1  1  9  0  0 49305
MatMultTranspose    7350 1.0 2.3613e+01 1.9 9.26e+09 1.3 1.5e+07 1.1e+03 0.0e+00  1  1  9  0  0   1  1  9  0  0 37087
MatSolve           79975 2.3 1.8423e+02 1.2 1.58e+11 1.2 0.0e+00 0.0e+00 0.0e+00  9 15  0  0  0   9 15  0  0  0 77691
MatLUFactorNum       546 1.0 1.3653e+01 1.4 3.25e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 197423
MatILUFactorSym        6 1.0 9.4078e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             5 1.0 1.6086e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatScale              15 1.0 1.2928e-01 1.5 3.37e+07 1.3 2.0e+04 3.8e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 24413
MatResidual         7350 1.0 5.4944e+01 1.2 4.04e+10 1.3 3.0e+07 3.8e+03 0.0e+00  3  4 17  3  0   3  4 17  3  0 68540
MatAssemblyBegin    1819 1.0 6.0276e+02 3.0 0.00e+00 0.0 2.0e+06 1.1e+06 8.4e+02 21  0  1 56  1  21  0  1 56  1    -0
MatAssemblyEnd      1819 1.0 4.6554e+02 6.2 3.46e+09 7.8 1.9e+05 1.1e+03 2.3e+02 14  0  0  0  0  14  0  0  0  0   296
MatGetRowIJ            6 1.2 2.4220e-06 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMat        1 1.0 7.8636e-03 1.0 0.00e+00 0.0 2.1e+02 1.0e+03 1.5e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         6 1.2 2.6887e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCoarsen             5 1.0 5.3810e-02 1.4 0.00e+00 0.0 6.3e+04 4.9e+03 1.5e+02  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       546 1.0 3.4761e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAXPY               10 1.0 7.9548e-01 1.0 1.39e+07 1.3 4.1e+04 9.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0  1634
MatTranspose          21 1.0 2.8691e+00 1.0 0.00e+00 0.0 1.5e+05 2.5e+04 8.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym         15 1.0 3.2247e+00 2.7 0.00e+00 0.0 1.0e+05 1.6e+03 4.5e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        915 1.0 1.6653e+02 5.7 3.01e+11 5.5 2.0e+04 3.8e+03 0.0e+00  5 18  0  0  0   5 18  0  0  0 100317
MatPtAPSymbolic        5 1.0 8.9460e+00 1.0 0.00e+00 0.0 9.3e+04 2.5e+05 3.5e+01  0  0  0  1  0   0  0  0  1  0    -0
MatPtAPNumeric       455 1.0 1.2228e+03 1.1 6.24e+11 4.7 3.8e+06 8.5e+05 4.8e+02 59 38  2 82  0  59 38  2 82  0 28772
MatTrnMatMultSym       1 1.0 1.5760e+00 1.0 0.00e+00 0.0 3.8e+03 5.9e+05 1.3e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetLocalMat       466 1.0 1.3974e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        465 1.0 3.4139e+02 21.2 0.00e+00 0.0 2.0e+06 5.3e+05 0.0e+00  9  0  1 27  0   9  0  1 27  0    -0
MatCreateGraph         5 1.0 3.8162e+00 1.0 4.12e+07 1.3 2.0e+05 1.9e+04 7.0e+01  0  0  0  0  0   0  0  0  0  0  1007
PCSetUp_GAMG+         91 1.0 1.3141e+03 1.0 7.00e+11 3.5 2.3e+07 1.4e+05 1.1e+04 67 46 13 85 10  67 46 13 85 10 32549
 PCGAMGCreateG         5 1.0 4.0200e+00 1.0 4.12e+07 1.3 2.1e+05 1.9e+04 1.0e+02  0  0  0  0  0   0  0  0  0  0   956
 GAMG Coarsen         10 1.0 1.7391e+00 1.0 0.00e+00 0.0 7.0e+04 4.2e+04 1.7e+02  0  0  0  0  0   0  0  0  0  0    -0
  GAMG MIS/Agg         5 1.0 1.6489e+00 1.0 0.00e+00 0.0 6.7e+04 3.8e+04 1.6e+02  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGProl            5 1.0 1.3385e-01 1.1 0.00e+00 0.0 1.1e+04 1.9e+04 6.0e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-col        5 1.0 1.2422e-02 1.1 0.00e+00 0.0 3.8e+03 5.0e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-lift       5 1.0 1.0790e-01 1.0 0.00e+00 0.0 7.6e+03 3.3e+03 3.0e+01  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGOptProl         5 1.0 1.5004e+00 1.0 3.60e+08 1.2 3.3e+05 3.1e+03 1.5e+02  0  0  0  0  0   0  0  0  0  0 22656
  GAMG smooth          5 1.0 8.5134e-01 1.0 3.39e+07 1.3 1.2e+05 2.0e+03 4.7e+01  0  0  0  0  0   0  0  0  0  0  3729
 PCGAMGCreateL         5 1.0 2.1900e+01 1.0 6.85e+09 4.7 1.5e+05 3.1e+05 1.0e+02  1  0  0  1  0   1  0  0  1  0 17642
  GAMG PtAP            5 1.0 2.1883e+01 1.0 6.85e+09 4.7 1.5e+05 3.1e+05 6.7e+01  1  0  0  1  0   1  0  0  1  0 17655
  GAMG Reduce          2 1.0 3.1022e+00 1.0 3.80e+08 4.2 3.3e+04 9.6e+04 4.7e+01  0  0  0  0  0   0  0  0  0  0  6432
PCGAMG Squ l00         1 1.0 1.5760e+00 1.0 0.00e+00 0.0 3.8e+03 5.9e+05 1.3e+01  0  0  0  0  0   0  0  0  0  0    -0
PCGAMG Gal l00        91 1.0 3.5663e+01 1.1 3.72e+10 1.3 1.5e+05 6.7e+05 1.0e+02  2  4  0  3  0   2  4  0  3  0 99046
PCGAMG Opt l00         1 1.0 1.5742e-01 1.2 2.02e+07 1.1 3.2e+03 4.3e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0 12701
PCGAMG Gal l01        91 1.0 5.9498e+01 1.3 2.29e+10 2.1 2.0e+05 1.3e+06 1.0e+02  3  2  0  7  0   3  2  0  7  0 33076
PCGAMG Opt l01         1 1.0 1.8793e-01 1.0 1.89e+06 1.5 4.0e+03 8.2e+03 1.0e+01  0  0  0  0  0   0  0  0  0  0   915
PCGAMG Gal l02        91 1.0 2.8900e+02 1.4 1.27e+11 5.1 5.5e+05 1.4e+06 1.0e+02 12  9  0 20  0  12  9  0 20  0 29932
PCGAMG Opt l02         1 1.0 8.3871e-02 1.1 3.00e+06 2.6 1.1e+04 2.8e+03 9.0e+00  0  0  0  0  0   0  0  0  0  0  2721
PCGAMG Gal l03        91 1.0 6.9237e+02 1.3 4.13e+11 7.5 2.0e+06 9.8e+05 1.0e+02 32 20  1 49  0  32 20  1 49  0 27755
PCGAMG Opt l03         1 1.0 3.7711e-01 1.0 2.50e+06 5.2 4.1e+04 6.2e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   338
PCGAMG Gal l04        91 1.0 3.1402e+02 4.4 3.46e+10 4.2 1.0e+06 2.0e+05 1.0e+02 11  2  1  5  0  11  2  1  5  0  5783
PCGAMG Opt l04         1 1.0 2.5518e-02 1.1 6.59e+05 4.2 6.4e+04 1.7e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0  1353
PCSetUp               91 1.0 1.3141e+03 1.0 7.00e+11 3.5 2.3e+07 1.4e+05 1.1e+04 67 46 13 85 10  67 46 13 85 10 32549
PCSetUpOnBlocks    16170 1.0 1.9228e+00 35.7 8.37e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4354
PCApply             1470 1.0 4.2232e+02 1.0 3.33e+11 1.3 1.5e+08 3.3e+03 9.0e+04 21 31 86 13 86  21 31 86 13 86 69778
PCApplyOnBlocks    79975 1.0 1.8446e+02 1.2 1.58e+11 1.2 0.0e+00 0.0e+00 0.0e+00  9 15  0  0  0   9 15  0  0  0 77591
KSPSetUp              91 1.0 1.0768e-02 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 4.6510e+02 1.0 3.68e+11 1.3 1.5e+08 3.7e+03 9.3e+04 24 35 87 14 89  24 35 87 14 89 71245
KSPGMRESOrthog     50079 1.0 5.7018e+01 3.6 1.27e+10 1.2 0.0e+00 0.0e+00 5.0e+04  2  1  0  0 48   2  1  0  0 48 20794
Mesh Partition         2 1.0 8.5540e-02 1.0 0.00e+00 0.0 6.8e+03 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.4320e-02 1.0 0.00e+00 0.0 2.3e+04 3.7e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 6.0432e-03 2152.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.0864e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.8717e-03 1.1 0.00e+00 0.0 1.3e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.9264e-03 1.6 0.00e+00 0.0 6.5e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.3428e-03 1.6 0.00e+00 0.0 7.6e+02 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.0770e-01 1.0 0.00e+00 0.0 4.2e+03 2.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 2.9162e-03 1.1 0.00e+00 0.0 3.9e+03 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.4604e-02 1.0 0.00e+00 0.0 1.1e+04 3.9e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 5.3179e-03 1.0 0.00e+00 0.0 2.7e+04 1.3e+02 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 3.2853e-03 1.1 0.00e+00 0.0 5.9e+03 1.8e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 9.5068e-05 1.1 0.00e+00 0.0 2.7e+03 8.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 3.8324e-03 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 1.3288e-03 52.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.0123e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.9247e+03 1.0 1.22e+12 1.9 1.7e+08 2.2e+04 1.0e+05 99 100 100 100 100  99 100 100 100 100 48714
SNESSetUp              1 1.0 3.2176e-05 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4296e+01 1.1 7.57e+10 1.2 1.5e+05 8.5e+04 1.0e+00  2  8  0  0  0   2  8  0  0  0 163659
SNESJacobianEval      91 1.0 9.7953e+01 1.0 1.09e+11 1.2 9.7e+04 2.2e+05 3.6e+02  5 11  0  1  0   5 11  0  1  0 106213
SNESLineSearch        91 1.0 2.3851e+01 1.0 5.89e+10 1.2 1.5e+05 8.6e+04 3.6e+02  1  6  0  0  0   1  6  0  0  0 236905
firedrake              1 1.0 1.9498e+03 1.0 1.22e+12 1.9 1.7e+08 2.2e+04 1.0e+05 100 100 100 100 100 100 100 100 100 100 48089
firedrake.__init__       1 1.0 1.2153e+01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.2595e+00 30.5 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 1.6131e-01 1.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 8.0208e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.6500e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.1403e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.1931e-04 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.6244e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 4.1676e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.5644e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.5001e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.4972e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.2630e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 5.1128e-03 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.2326e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.8020e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.1912e-02 7.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.6045e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.6509e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.7022e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.5203e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.6004e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.5745e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3268e+02 1.1 1.84e+11 1.2 1.3e+05 8.4e+04 6.0e+00  6 19  0  0  0   6 19  0  0  0 133039
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.5672e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.4062e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.1933e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 1.9786e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.9639e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.2077e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.2076e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.2279e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.1153e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 3.2613e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.9006e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.8483e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.5194e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   283
firedrake.interpolation.interpolate       1 1.0 3.6964e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.5157e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   283
firedrake.formmanipulation.split_form       3 1.0 3.0444e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.0817e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.0415e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 2.9914e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.4180e-01 3.5 0.00e+00 0.0 1.3e+05 8.4e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.8896e-01 1.0 2.71e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   303
firedrake.halo.Halo.global_to_local_end     243 1.0 5.9616e+00 149.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.7760e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.3368e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5632e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 7.6624e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.5121e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6003e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2675e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0027e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.4068e+00 1.0 0.00e+00 0.0 3.2e+03 4.7e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9458e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6091e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1455e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1455e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.4847e+00 1.3 0.00e+00 0.0 1.6e+03 4.6e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.3034e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.9248e+03 1.0 1.22e+12 1.9 1.7e+08 2.2e+04 1.0e+05 99 100 100 100 100  99 100 100 100 100 48713
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.1493e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.3392e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.9862e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1348e+00 1.1 1.69e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 206430
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0568e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2809
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0406e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2831
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0230e+01 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 168249
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6525e+01 1.2 4.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 232183
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.9818e-02 3.6 0.00e+00 0.0 6.5e+04 8.6e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.4400e+00 114.0 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   202
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5480e+01 1.1 2.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 148613
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3927e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2206
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3650e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2232
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7827e+01 1.1 2.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 86934
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.2827e+01 1.2 6.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   2  6  0  0  0 132456
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
              Vector  1780           1780
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
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 5.36108e-05
Average time for zero size MPI_Send(): 2.34207e-06
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

