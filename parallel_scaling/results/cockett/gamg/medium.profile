****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0001.gadi.nci.org.au with 208 processes, by sg8812 on Fri Aug 21 23:59:28 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           2.458e+03     1.000   2.458e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                9.663e+11     1.632   7.819e+11  1.626e+14
Flops/sec:            3.932e+08     1.632   3.181e+08  6.617e+10
MPI Msg Count:        2.890e+06     5.559   1.717e+06  3.572e+08
MPI Msg Len (bytes):  8.821e+10     9.681   2.086e+04  7.453e+12
MPI Reductions:       1.168e+05     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.4576e+03 100.0%  1.6263e+14 100.0%  3.572e+08 100.0%  2.086e+04      100.0%  1.168e+05 100.0%

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

BuildTwoSided        953 1.0 9.3204e+02 9.6 0.00e+00 0.0 2.1e+06 4.0e+00 9.5e+02 17  0  1  0  1  17  0  1  0  1    -0
BuildTwoSidedF       859 1.0 9.4178e+02 6.3 0.00e+00 0.0 3.7e+06 1.1e+06 8.6e+02 18  0  1 55  1  18  0  1 55  1    -0
SFSetGraph            97 1.0 1.0389e-02 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               94 1.0 3.4376e-01 2.8 0.00e+00 0.0 4.9e+05 1.2e+03 9.4e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         399 1.0 1.4213e-01 2.9 0.00e+00 0.0 4.6e+05 5.8e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastEnd           399 1.0 6.7302e+00 92.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        143 1.0 3.6632e-01 29.0 0.00e+00 0.0 1.9e+05 6.8e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceEnd          143 1.0 3.7989e+00 135.1 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   421
SFFetchOpBegin         2 1.0 1.6506e-05 8.2 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 5.8071e-04 31.1 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.4729e-03 2.4 0.00e+00 0.0 1.4e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.3288e-02 1.4 0.00e+00 0.0 4.6e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 4.8948e-03 5.7 0.00e+00 0.0 2.1e+04 1.3e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack            107036 1.0 3.3656e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          107038 1.0 1.8512e-01 4.6 1.83e+08 14.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 33475
VecDot                91 1.0 2.3216e-01 10.8 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 28400
VecMDot            56279 1.0 1.2965e+02 7.2 8.36e+09 1.3 0.0e+00 0.0e+00 5.6e+04  5  1  0  0 48   5  1  0  0 48 11068
VecNorm            58712 1.0 4.9142e+02 91.9 1.12e+09 1.2 0.0e+00 0.0e+00 5.9e+04 15  0  0  0 50  15  0  0  0 50   433
VecScale           58500 1.0 1.3635e-01 1.2 5.23e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 723640
VecCopy            27998 1.0 2.2825e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             29482 1.0 7.5940e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             2221 1.0 7.8079e-02 1.6 6.81e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 173249
VecAYPX            50100 1.0 5.3488e+00 1.9 2.54e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 94082
VecAXPBYCZ         16700 1.0 2.4968e+00 1.4 3.17e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 251934
VecWAXPY              91 1.0 6.9498e-02 1.2 1.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47436
VecMAXPY           58500 1.0 8.3023e+00 1.1 9.34e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 194982
VecAssemblyBegin      16 1.0 2.9262e-02 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
VecAssemblyEnd        16 1.0 3.5682e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecPointwiseMult      55 1.0 9.0676e-03 1.5 2.09e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 45694
VecReciprocal         15 1.0 2.4141e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin   106492 1.0 6.3499e+00 2.9 0.00e+00 0.0 3.5e+08 4.4e+03 0.0e+00  0  0 98 20  0   0  0 98 20  0    -0
VecScatterEnd     106492 1.0 6.3159e+01 4.9 1.77e+08 21.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    73
VecReduceArith       182 1.0 3.8215e-02 3.0 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 345063
VecReduceComm         91 1.0 7.0467e-01 118.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       58500 1.0 4.8945e+02 144.6 1.57e+09 1.2 0.0e+00 0.0e+00 5.8e+04 15  0  0  0 50  15  0  0  0 50   605
MatMult            89770 1.0 3.2406e+02 1.2 2.86e+11 1.6 2.8e+08 5.1e+03 0.0e+00 11 26 79 19  0  11 26 79 19  0 132219
MatMultAdd          8350 1.0 2.0150e+01 1.6 8.54e+09 1.3 3.2e+07 1.1e+03 0.0e+00  1  1  9  0  0   1  1  9  0  0 81089
MatMultTranspose    8350 1.0 2.2138e+01 2.2 8.57e+09 1.3 3.2e+07 1.1e+03 0.0e+00  1  1  9  0  0   1  1  9  0  0 74015
MatSolve           90175 2.9 2.3871e+02 1.4 2.41e+11 1.7 0.0e+00 0.0e+00 0.0e+00  8 19  0  0  0   8 19  0  0  0 129595
MatLUFactorNum       546 1.0 2.2866e+01 2.5 7.38e+10 3.8 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 200112
MatILUFactorSym        6 1.0 9.0370e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             5 1.0 1.1967e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatScale              15 1.0 1.1296e-01 1.3 3.03e+07 1.3 3.7e+04 4.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 51016
MatResidual         8350 1.0 5.7229e+01 1.2 4.20e+10 1.3 6.2e+07 4.5e+03 0.0e+00  2  5 17  4  0   2  5 17  4  0 139619
MatAssemblyBegin    1819 1.0 9.6326e+02 3.6 0.00e+00 0.0 3.7e+06 1.1e+06 8.4e+02 21  0  1 55  1  21  0  1 55  1    -0
MatAssemblyEnd      1819 1.0 8.5982e+02 13.3 9.04e+09 85.2 3.7e+05 1.2e+03 2.3e+02 18  0  0  0  0  18  0  0  0  0   296
MatGetRowIJ            6 1.5 3.9070e-06 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMat        2 1.0 2.1681e-02 1.0 0.00e+00 0.0 2.3e+04 9.8e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         6 1.5 2.2608e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCoarsen             5 1.0 5.8568e-02 1.1 0.00e+00 0.0 1.5e+05 4.9e+03 1.7e+02  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       546 1.0 3.4375e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAXPY               10 1.0 4.9985e-01 1.0 1.28e+07 1.3 7.4e+04 1.1e+03 2.5e+01  0  0  0  0  0   0  0  0  0  0  4861
MatTranspose          19 1.0 2.0923e+00 1.0 0.00e+00 0.0 2.8e+05 2.2e+04 8.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym         15 1.0 1.9502e+00 2.6 0.00e+00 0.0 1.9e+05 1.8e+03 4.5e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        915 1.0 1.0975e+02 6.8 1.91e+11 7.4 3.7e+04 4.5e+03 0.0e+00  2 11  0  0  0   2 11  0  0  0 169170
MatPtAPSymbolic        5 1.0 8.1866e+00 1.0 0.00e+00 0.0 1.7e+05 2.4e+05 3.5e+01  0  0  0  1  0   0  0  0  1  0    -0
MatPtAPNumeric       455 1.0 1.5905e+03 1.4 3.74e+11 6.0 6.9e+06 8.4e+05 4.8e+02 51 25  2 78  0  51 25  2 78  0 25668
MatTrnMatMultSym       1 1.0 9.8626e-01 1.0 0.00e+00 0.0 5.7e+03 2.7e+05 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetLocalMat       466 1.0 1.1505e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        465 1.0 4.8140e+02 42.5 0.00e+00 0.0 3.6e+06 5.0e+05 0.0e+00  6  0  1 24  0   6  0  1 24  0    -0
MatGetSymTransR        2 1.0 1.6490e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateGraph         5 1.0 2.7784e+00 1.0 3.77e+07 1.3 3.7e+05 1.7e+04 7.0e+01  0  0  0  0  0   0  0  0  0  0  2583
PCSetUp_GAMG+         91 1.0 1.6761e+03 1.0 4.40e+11 3.6 4.2e+07 1.4e+05 1.1e+04 68 34 12 81  9  68 34 12 81  9 32636
 PCGAMGCreateG         5 1.0 2.9709e+00 1.0 3.77e+07 1.3 3.9e+05 1.7e+04 1.0e+02  0  0  0  0  0   0  0  0  0  0  2416
 GAMG Coarsen         10 1.0 1.1584e+00 1.0 0.00e+00 0.0 1.6e+05 2.0e+04 1.8e+02  0  0  0  0  0   0  0  0  0  0    -0
  GAMG MIS/Agg         5 1.0 1.0571e+00 1.0 0.00e+00 0.0 1.5e+05 1.5e+04 1.8e+02  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGProl            5 1.0 1.3901e-01 1.2 0.00e+00 0.0 2.3e+04 2.2e+04 6.0e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-col        5 1.0 1.3241e-02 1.1 0.00e+00 0.0 7.8e+03 5.7e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-lift       5 1.0 1.0235e-01 1.0 0.00e+00 0.0 1.6e+04 4.1e+03 3.0e+01  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGOptProl         5 1.0 1.0184e+00 1.0 3.34e+08 1.2 6.0e+05 3.7e+03 1.5e+02  0  0  0  0  0   0  0  0  0  0 62885
  GAMG smooth          5 1.0 5.7433e-01 1.1 3.05e+07 1.3 2.3e+05 2.3e+03 4.7e+01  0  0  0  0  0   0  0  0  0  0 10100
 PCGAMGCreateL         5 1.0 2.4176e+01 1.0 4.10e+09 6.0 3.0e+05 2.8e+05 1.4e+02  1  0  0  1  0   1  0  0  1  0 18542
  GAMG PtAP            5 1.0 2.4148e+01 1.0 4.10e+09 6.0 2.8e+05 3.0e+05 6.7e+01  1  0  0  1  0   1  0  0  1  0 18563
  GAMG Reduce          2 1.0 1.9619e+01 1.0 3.04e+09 15.0 1.9e+05 3.1e+05 9.4e+01  1  0  0  1  0   1  0  0  1  0 13524
PCGAMG Squ l00         1 1.0 9.8626e-01 1.0 0.00e+00 0.0 5.7e+03 2.7e+05 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
PCGAMG Gal l00        91 1.0 4.3769e+01 1.5 3.07e+10 1.2 3.3e+05 5.8e+05 1.0e+02  2  4  0  3  0   2  4  0  3  0 134210
PCGAMG Opt l00         1 1.0 1.8311e-01 1.1 2.03e+07 1.1 6.9e+03 4.7e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0 22043
PCGAMG Gal l01        91 1.0 4.9830e+01 1.5 1.39e+10 2.1 4.5e+05 8.8e+05 1.0e+02  2  1  0  5  0   2  1  0  5  0 47177
PCGAMG Opt l01         1 1.0 2.4911e-02 1.0 1.39e+06 1.5 9.0e+03 7.1e+03 1.0e+01  0  0  0  0  0   0  0  0  0  0 10045
PCGAMG Gal l02        91 1.0 1.8103e+02 1.6 6.36e+10 5.7 1.4e+06 8.0e+05 1.0e+02  6  5  0 15  0   6  5  0 15  0 46701
PCGAMG Opt l02         1 1.0 4.8933e-02 1.1 2.08e+06 3.0 2.8e+04 2.3e+03 9.0e+00  0  0  0  0  0   0  0  0  0  0  6069
PCGAMG Gal l03        91 1.0 8.1452e+02 1.8 2.58e+11 14.0 3.9e+06 9.3e+05 1.0e+02 26 12  1 49  0  26 12  1 49  0 23137
PCGAMG Opt l03         1 1.0 1.9965e-01 1.0 1.67e+06 8.2 1.2e+05 4.3e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   729
PCGAMG Gal l04        91 1.0 8.5518e+02 6.1 1.01e+11 0.0 1.0e+06 4.9e+05 1.0e+02 16  3  0  7  0  16  3  0  7  0  6199
PCGAMG Opt l04         1 1.0 9.7197e-02 1.0 1.06e+06 0.0 6.4e+04 2.2e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   571
PCSetUp               91 1.0 1.6761e+03 1.0 4.40e+11 3.6 4.2e+07 1.4e+05 1.1e+04 68 34 12 81  9  68 34 12 81  9 32636
PCSetUpOnBlocks    18370 1.0 1.2195e+01 219.3 5.21e+10 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4275
PCApply             1670 1.0 5.3980e+02 1.0 5.32e+11 2.0 3.1e+08 3.8e+03 1.0e+05 22 39 88 16 87  22 39 88 16 87 117037
PCApplyOnBlocks    90175 1.0 2.3906e+02 1.4 2.41e+11 1.7 0.0e+00 0.0e+00 0.0e+00  8 19  0  0  0   8 19  0  0  0 129409
KSPSetUp              91 1.0 7.5198e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.8972e+02 1.0 5.74e+11 1.8 3.1e+08 4.3e+03 1.1e+05 24 44 88 18 90  24 44 88 18 90 121921
KSPGMRESOrthog     56279 1.0 1.3668e+02 5.4 1.67e+10 1.3 0.0e+00 0.0e+00 5.6e+04  5  2  0  0 48   5  2  0  0 48 20997
Mesh Partition         2 1.0 1.4305e-01 1.0 0.00e+00 0.0 1.4e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.4074e-02 1.0 0.00e+00 0.0 4.8e+04 3.1e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 9.6838e-03 3242.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.9623e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.0745e-03 1.1 0.00e+00 0.0 2.7e+03 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.0489e-03 1.7 0.00e+00 0.0 1.4e+03 8.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.3923e-03 1.4 0.00e+00 0.0 1.6e+03 1.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.7212e-01 1.0 0.00e+00 0.0 8.1e+03 1.7e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 3.4557e-03 1.0 0.00e+00 0.0 8.1e+03 5.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 2.1990e-02 1.0 0.00e+00 0.0 2.3e+04 3.3e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 9.9699e-03 1.3 0.00e+00 0.0 5.5e+04 1.1e+02 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 4.7231e-03 1.3 0.00e+00 0.0 1.2e+04 1.5e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.1049e-04 1.2 0.00e+00 0.0 5.7e+03 7.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 7.1272e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 2.0869e-03 97.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.2147e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 2.4292e+03 1.0 9.66e+11 1.6 3.6e+08 2.1e+04 1.2e+05 99 100 100 100 100  99 100 100 100 100 66947
SNESSetUp              1 1.0 3.5831e-05 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4893e+01 1.1 7.74e+10 1.2 3.1e+05 9.3e+04 1.0e+00  2  9  0  0  0   2  9  0  0  0 325826
SNESJacobianEval      91 1.0 1.1542e+02 1.0 1.11e+11 1.2 2.1e+05 2.4e+05 3.6e+02  5 13  0  1  0   5 13  0  1  0 181892
SNESLineSearch        91 1.0 2.3915e+01 1.0 6.02e+10 1.2 3.1e+05 9.3e+04 3.6e+02  1  7  0  0  0   1  7  0  0  0 476729
firedrake              1 1.0 2.4546e+03 1.0 9.66e+11 1.6 3.6e+08 2.1e+04 1.2e+05 100 100 100 100 100 100 100 100 100 100 66256
firedrake.__init__       1 1.0 1.1981e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.3621e+00 21.3 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 2.3916e-01 1.0 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 2.3460e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5990e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.5216e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.4369e-04 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.7376e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 3.8059e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.6771e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.6141e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.6111e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.2024e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 6.7559e-03 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.3462e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.6197e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 4.2917e-02 13.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.1496e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.3176e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5539e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.6033e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.1455e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.2000e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3309e+02 1.1 1.89e+11 1.2 2.8e+05 9.1e+04 6.0e+00  5 22  0  0  0   5 22  0  0  0 267627
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.1106e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.3459e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.1156e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.2922e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.8414e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.2341e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.2340e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.7365e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.5922e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 2.7930e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.8451e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.8423e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.4168e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   577
firedrake.interpolation.interpolate       1 1.0 3.8792e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.4132e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   577
firedrake.formmanipulation.split_form       3 1.0 2.3189e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 1.1460e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.2690e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.0050e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.3173e-01 4.7 0.00e+00 0.0 2.8e+05 9.1e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.7096e-01 1.0 2.73e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   624
firedrake.halo.Halo.global_to_local_end     243 1.0 6.4907e+00 220.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.8251e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.5222e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.7107e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.5339e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.0004e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.3204e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3871e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.6799e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.3522e+00 1.0 0.00e+00 0.0 6.8e+03 5.2e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.1700e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4985e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1444e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1444e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 2.5059e+00 1.3 0.00e+00 0.0 3.4e+03 5.1e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.1523e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 2.4293e+03 1.0 9.66e+11 1.6 3.6e+08 2.1e+04 1.2e+05 99 100 100 100 100  99 100 100 100 100 66945
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.2960e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2155e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.0439e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1284e+00 1.1 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 416460
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0454e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4532
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0730e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4472
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0118e+01 1.1 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 343378
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6995e+01 1.3 4.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 455901
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.5362e-01 24.0 0.00e+00 0.0 1.4e+05 9.3e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.7947e+00 155.3 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   422
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5472e+01 1.1 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 299735
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3866e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3548
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3429e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3615
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7958e+01 1.1 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 174653
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.3338e+01 1.3 6.34e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 264315
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
              Vector  1795           1795
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
Average time to get PetscTime(): 2.67e-08
Average time for MPI_Barrier(): 8.7696e-06
Average time for zero size MPI_Send(): 2.01474e-06
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

