****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0563.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 23:58:42 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.758e+03     1.000   1.758e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.943e+11     2.138   3.690e+11  3.070e+14
Flops/sec:            3.379e+08     2.138   2.099e+08  1.746e+11
MPI Msg Count:        4.028e+06    10.549   1.923e+06  1.600e+09
MPI Msg Len (bytes):  8.750e+10    15.445   1.396e+04  2.233e+13
MPI Reductions:       6.196e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.7585e+03 100.0%  3.0702e+14 100.0%  1.600e+09 100.0%  1.396e+04      100.0%  6.194e+04 100.0%

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

BuildTwoSided        505 1.0 1.1040e+03 18.1 0.00e+00 0.0 7.6e+06 4.0e+00 5.0e+02 30  0  0  0  1  30  0  0  0  1    -0
BuildTwoSidedF       398 1.0 1.1134e+03 15.8 0.00e+00 0.0 1.1e+07 1.1e+06 4.0e+02 31  0  1 54  1  31  0  1 54  1    -0
SFSetGraph           110 1.0 1.3445e-02 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              107 1.0 5.6593e-01 3.1 0.00e+00 0.0 4.0e+06 7.8e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         312 1.0 9.5492e-02 3.0 0.00e+00 0.0 1.7e+06 4.4e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastEnd           312 1.0 4.5441e+00 64.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         89 1.0 6.8536e-01 397.3 0.00e+00 0.0 7.1e+05 5.1e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceEnd           89 1.0 2.0728e+00 98.7 7.30e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2151
SFFetchOpBegin         2 1.0 2.1097e-05 7.0 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.0710e-03 70.1 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.9334e-03 3.9 0.00e+00 0.0 5.7e+03 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 2.2383e-02 1.4 0.00e+00 0.0 1.9e+05 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 1.0099e-02 5.7 0.00e+00 0.0 8.2e+04 9.4e+01 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             62085 1.0 2.2279e+00 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           62087 1.0 8.2861e-02 5.0 5.76e+07 7.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 205871
VecDot                35 1.0 1.2958e-01 10.7 1.26e+07 1.1 0.0e+00 0.0e+00 3.5e+01  0  0  0  0  0   0  0  0  0  0 77666
VecMDot            29653 1.0 5.6823e+01 4.0 5.15e+09 1.2 0.0e+00 0.0e+00 3.0e+04  3  1  0  0 48   3  1  0  0 48 65392
VecNorm            30892 1.0 5.7045e+01 15.9 5.31e+08 1.2 0.0e+00 0.0e+00 3.1e+04  3  0  0  0 50   3  0  0  0 50  7049
VecScale           30792 1.0 6.3615e-02 1.3 2.48e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 2934463
VecCopy            17388 1.0 1.2672e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             18250 1.0 4.0631e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             1139 1.0 3.2624e-02 1.6 2.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 637258
VecAYPX            31968 1.0 2.8630e+00 1.9 1.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 369611
VecAXPBYCZ         10656 1.0 1.3957e+00 1.5 1.66e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 947681
VecWAXPY              35 1.0 2.6373e-02 1.2 6.29e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 190798
VecMAXPY           30792 1.0 4.7981e+00 1.1 5.62e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 847894
VecAssemblyBegin      19 1.0 2.8402e-02 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.6e+01  0  0  0  0  0   0  0  0  0  0    -0
VecAssemblyEnd        19 1.0 3.3491e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecPointwiseMult      66 1.0 9.5684e-03 1.6 2.06e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 171241
VecReciprocal         18 1.0 2.4518e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin    61682 1.0 4.9854e+00 3.5 0.00e+00 0.0 1.6e+09 2.7e+03 0.0e+00  0  0 98 19  0   0  0 98 19  0    -0
VecScatterEnd      61682 1.0 5.1734e+01 2.6 5.32e+07 9.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0   244
VecReduceArith        70 1.0 1.2313e-02 2.1 2.52e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1634667
VecReduceComm         35 1.0 3.5366e-02 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 3.5e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       30792 1.0 5.5231e+01 24.9 7.44e+08 1.2 0.0e+00 0.0e+00 3.1e+04  3  0  0  0 50   3  0  0  0 50 10140
MatMult            51000 1.0 1.6865e+02 1.2 1.32e+11 1.5 1.3e+09 3.1e+03 0.0e+00  9 28 82 18  0   9 28 82 18  0 513718
MatMultAdd          5328 1.0 1.8101e+01 2.2 4.35e+09 1.3 1.3e+08 7.8e+02 0.0e+00  1  1  8  0  0   1  1  8  0  0 175876
MatMultTranspose    5328 1.0 1.3999e+01 2.6 4.40e+09 1.3 1.3e+08 7.8e+02 0.0e+00  0  1  8  0  0   0  1  8  0  0 228313
MatSolve           51150 3.2 1.1299e+02 1.4 1.06e+11 1.6 0.0e+00 0.0e+00 0.0e+00  5 20  0  0  0   5 20  0  0  0 537079
MatLUFactorNum       245 1.0 6.3603e+00 1.9 1.84e+10 2.8 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 990748
MatILUFactorSym        7 1.0 9.6347e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             6 1.0 1.2568e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatScale              18 1.0 1.1195e-01 1.3 3.13e+07 1.4 3.3e+05 2.7e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 198857
MatResidual         5328 1.0 3.3806e+01 1.3 2.34e+10 1.4 3.0e+08 2.7e+03 0.0e+00  2  5 19  4  0   2  5 19  4  0 490626
MatAssemblyBegin     879 1.0 1.1285e+03 6.0 0.00e+00 0.0 1.1e+07 1.1e+06 3.8e+02 34  0  1 54  1  34  0  1 54  1    -0
MatAssemblyEnd       879 1.0 7.5075e+02 12.4 6.06e+09 113.2 3.1e+06 7.5e+02 2.8e+02 24  0  0  0  0  24  0  0  0  0  1007
MatGetRowIJ            7 1.8 1.1558e-05 22.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMat        3 1.0 3.9295e-02 1.0 0.00e+00 0.0 2.0e+05 7.3e+01 4.5e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         7 1.8 1.8432e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCoarsen             6 1.0 8.4843e-02 1.1 0.00e+00 0.0 9.9e+05 4.4e+03 2.2e+02  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       245 1.0 9.5631e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAXPY               12 1.0 5.5457e-01 1.0 1.34e+07 1.4 6.7e+05 6.8e+02 3.0e+01  0  0  0  0  0   0  0  0  0  0 17108
MatTranspose          23 1.0 2.9114e+00 1.0 0.00e+00 0.0 2.4e+06 1.1e+04 9.9e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym         18 1.0 3.6068e+00 3.3 0.00e+00 0.0 1.7e+06 1.1e+03 5.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        426 1.0 6.8207e+01 9.9 1.14e+11 12.7 3.3e+05 2.7e+03 0.0e+00  1 10  0  0  0   1 10  0  0  0 453419
MatPtAPSymbolic        6 1.0 1.8756e+01 1.0 0.00e+00 0.0 1.4e+06 2.3e+05 4.2e+01  1  0  0  1  0   1  0  0  1  0    -0
MatPtAPNumeric       210 1.0 1.2512e+03 1.0 2.82e+11 12.9 2.2e+07 7.9e+05 2.4e+02 69 24  1 78  0  69 24  1 78  0 58210
MatTrnMatMultSym       1 1.0 1.1667e+00 1.0 0.00e+00 0.0 2.4e+04 3.6e+05 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetLocalMat       223 1.0 4.5273e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        222 1.0 5.9194e+02 59.6 0.00e+00 0.0 1.4e+07 4.2e+05 0.0e+00  8  0  1 26  0   8  0  1 26  0    -0
MatGetSymTransR        2 1.0 1.9276e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateGraph         6 1.0 3.6498e+00 1.0 3.96e+07 1.4 3.3e+06 8.3e+03 8.4e+01  0  0  0  0  0   0  0  0  0  0  7676
PCSetUp_GAMG+         35 1.0 1.3056e+03 1.0 3.09e+11 6.9 1.5e+08 1.2e+05 5.4e+03 74 30  9 82  9  74 30  9 82  9 71421
 PCGAMGCreateG         6 1.0 3.8507e+00 1.0 3.96e+07 1.4 3.4e+06 8.2e+03 1.3e+02  0  0  0  0  0   0  0  0  0  0  7276
 GAMG Coarsen         12 1.0 1.3734e+00 1.0 0.00e+00 0.0 1.0e+06 1.7e+04 2.4e+02  0  0  0  0  0   0  0  0  0  0    -0
  GAMG MIS/Agg         6 1.0 1.2730e+00 1.0 0.00e+00 0.0 1.0e+06 1.3e+04 2.3e+02  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGProl            6 1.0 1.5761e-01 1.2 0.00e+00 0.0 1.1e+05 2.4e+04 7.2e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-col        6 1.0 1.7127e-02 1.1 0.00e+00 0.0 3.6e+04 6.5e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
  GAMG Prol-lift       6 1.0 1.1506e-01 1.0 0.00e+00 0.0 7.2e+04 4.4e+03 3.6e+01  0  0  0  0  0   0  0  0  0  0    -0
 PCGAMGOptProl         6 1.0 1.3768e+00 1.0 3.47e+08 1.3 5.4e+06 2.2e+03 1.8e+02  0  0  0  0  0   0  0  0  0  0 181795
  GAMG smooth          6 1.0 9.1456e-01 1.1 3.15e+07 1.3 2.0e+06 1.4e+03 5.6e+01  0  0  0  0  0   0  0  0  0  0 24505
 PCGAMGCreateL         6 1.0 5.0432e+01 1.0 8.05e+09 12.9 2.6e+06 2.6e+05 1.8e+02  3  1  0  3  0   3  1  0  3  0 41236
  GAMG PtAP            6 1.0 5.0369e+01 1.0 8.05e+09 12.9 2.4e+06 2.8e+05 8.0e+01  3  1  0  3  0   3  1  0  3  0 41288
  GAMG Reduce          3 1.0 4.6024e+01 1.0 7.17e+09 52.0 1.9e+06 2.9e+05 1.4e+02  3  0  0  3  0   3  0  0  3  0 32749
PCGAMG Squ l00         1 1.0 1.1667e+00 1.0 0.00e+00 0.0 2.4e+04 3.6e+05 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
PCGAMG Gal l00        35 1.0 2.5581e+01 2.2 1.08e+10 1.3 5.5e+05 6.3e+05 4.8e+01  1  3  0  2  0   1  3  0  2  0 323475
PCGAMG Opt l00         1 1.0 1.9563e-01 1.3 2.01e+07 1.1 2.9e+04 5.8e+04 1.0e+01  0  0  0  0  0   0  0  0  0  0 82039
PCGAMG Gal l01        35 1.0 2.7250e+01 2.1 4.25e+09 2.5 9.3e+05 7.0e+05 4.8e+01  1  1  0  3  0   1  1  0  3  0 102905
PCGAMG Opt l01         1 1.0 2.5554e-02 1.1 1.23e+06 1.6 4.5e+04 7.1e+03 1.0e+01  0  0  0  0  0   0  0  0  0  0 33699
PCGAMG Gal l02        35 1.0 6.8737e+01 1.7 1.80e+10 7.5 3.4e+06 5.5e+05 4.7e+01  3  3  0  8  0   3  3  0  8  0 130838
PCGAMG Opt l02         1 1.0 4.1341e-02 1.2 1.74e+06 3.6 1.6e+05 2.0e+03 9.0e+00  0  0  0  0  0   0  0  0  0  0 22897
PCGAMG Gal l03        35 1.0 7.6791e+02 2.7 1.14e+11 24.9 1.1e+07 9.6e+05 4.7e+01 31  9  1 49  0  31  9  1 49  0 36879
PCGAMG Opt l03         1 1.0 1.7825e-01 1.0 1.39e+06 11.0 8.4e+05 3.4e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0  2509
PCGAMG Gal l04        35 1.0 7.4659e+02 4.7 1.60e+11 0.0 7.3e+06 5.5e+05 4.7e+01 25  8  0 18  0  25  8  0 18  0 32116
PCGAMG Opt l04         1 1.0 4.0217e-01 1.0 2.44e+06 0.0 9.4e+05 1.7e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   897
PCGAMG Gal l05        35 1.0 2.3652e+02 19.6 1.44e+10 0.0 1.0e+05 4.5e+05 4.7e+01  9  0  0  0  0   9  0  0  0  0  1953
PCGAMG Opt l05         1 1.0 5.3206e-02 1.0 4.01e+05 0.0 1.6e+04 2.0e+02 9.0e+00  0  0  0  0  0   0  0  0  0  0   241
PCSetUp               35 1.0 1.3056e+03 1.0 3.09e+11 6.9 1.5e+08 1.2e+05 5.4e+03 74 30  9 82  9  74 30  9 82  9 71421
PCSetUpOnBlocks    11544 1.0 2.4849e+00 88.4 1.06e+10 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4283
PCApply              888 1.0 2.7882e+02 1.0 2.29e+11 1.6 1.4e+09 2.4e+03 5.4e+04 16 42 90 15 87  16 42 90 15 87 463997
PCApplyOnBlocks    51150 1.0 1.1315e+02 1.4 1.06e+11 1.6 0.0e+00 0.0e+00 0.0e+00  5 20  0  0  0   5 20  0  0  0 536327
KSPSetUp              35 1.0 7.4597e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              35 1.0 3.0788e+02 1.0 2.54e+11 1.6 1.4e+09 2.7e+03 5.6e+04 18 49 90 17 90  18 49 90 17 90 486655
KSPGMRESOrthog     29653 1.0 6.1121e+01 3.3 1.03e+10 1.2 0.0e+00 0.0e+00 3.0e+04  3  2  0  0 48   3  2  0  0 48 121587
Mesh Partition         2 1.0 5.3767e-01 1.0 0.00e+00 0.0 5.9e+04 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 7.8521e-02 1.0 0.00e+00 0.0 2.0e+05 2.1e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 2.5381e-02 4944.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 5.8266e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 5.6812e-03 1.6 0.00e+00 0.0 1.1e+04 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.7191e-03 1.8 0.00e+00 0.0 5.7e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1616e-02 1.2 0.00e+00 0.0 6.5e+03 9.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.1030e-01 1.0 0.00e+00 0.0 3.2e+04 1.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 7.9092e-03 1.1 0.00e+00 0.0 3.4e+04 3.6e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 5.4851e-02 1.1 0.00e+00 0.0 9.3e+04 2.3e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 2.4639e-02 1.1 0.00e+00 0.0 2.3e+05 9.1e+01 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 1.0130e-02 1.2 0.00e+00 0.0 5.2e+04 1.0e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.5258e-04 1.2 0.00e+00 0.0 2.4e+04 5.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.8914e-02 6.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 5.3574e-03 361.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 2.1522e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.7139e+03 1.0 5.94e+11 2.1 1.6e+09 1.4e+04 6.2e+04 97 100 100 100 99  97 100 100 100 100 179135
SNESSetUp              1 1.0 4.8260e-05 8.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      65 1.0 3.2106e+01 1.1 4.21e+10 1.3 7.7e+05 1.1e+05 1.0e+00  2 10  0  0  0   2 10  0  0  0 972538
SNESJacobianEval      35 1.0 6.6767e+01 1.0 4.34e+10 1.3 3.3e+05 3.0e+05 1.4e+02  4 10  0  0  0   4 10  0  0  0 480674
SNESLineSearch        35 1.0 9.0833e+00 1.0 2.35e+10 1.3 5.0e+05 1.2e+05 1.4e+02  1  6  0  0  0   1  6  0  0  0 1918373
firedrake              1 1.0 1.7514e+03 1.0 5.94e+11 2.1 1.6e+09 1.4e+04 6.2e+04 100 100 100 100 100 100 100 100 100 100 175303
firedrake.__init__       1 1.0 1.8361e+01 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.1606e+01 15.5 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 7.2512e-01 1.0 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.9270e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 3.0830e-06 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.9034e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.9389e-04 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 3.1095e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 4.1208e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 3.0198e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.9572e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.9541e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.2276e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.5372e-02 1.6 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.5178e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0480e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 7.5794e-02 21.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 3.6793e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.2621e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.9077e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.8846e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 3.6752e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 3.8767e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       502 1.0 7.9369e+01 1.1 8.55e+10 1.3 6.5e+05 1.1e+05 6.0e+00  4 21  0  0  0   4 21  0  0  0 797669
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 3.6425e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    1004 1.0 3.6549e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0578e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.2693e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.7548e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.6010e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.6009e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 9.9530e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 9.8416e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin     502 1.0 1.4867e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       502 1.0 1.5502e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 5.1583e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 3.1306e+00 1.0 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   689
firedrake.interpolation.interpolate       1 1.0 4.1381e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 3.1302e+00 1.0 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   689
firedrake.formmanipulation.split_form       3 1.0 2.8829e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 7.5408e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.1410e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.1188e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     131 1.0 5.0518e-01 6.2 0.00e+00 0.0 6.5e+05 1.1e+05 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 3.0612e+00 1.0 2.70e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   704
firedrake.halo.Halo.global_to_local_end     131 1.0 4.4721e+00 220.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.1557e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.8988e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1137e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.9334e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.9808e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.1226e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.5036e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.5273e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.7183e+00 1.0 0.00e+00 0.0 2.9e+04 6.4e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.1050e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8182e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1769e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1769e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.8478e+00 1.4 0.00e+00 0.0 1.4e+04 6.3e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.4629e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.7140e+03 1.0 5.94e+11 2.1 1.6e+09 1.4e+04 6.2e+04 97 100 100 100 100  97 100 100 100 100 179129
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.0841e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 2.2580e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 5.5318e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     130 1.0 5.5857e+00 1.2 9.02e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 1291987
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     130 1.0 1.9749e+00 1.0 1.55e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6286
Parloop_Cells_wrap_form0_exterior_facet_top_integral     130 1.0 1.9407e+00 1.0 1.55e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6397
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     130 1.0 6.6500e+00 1.1 9.28e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 1115876
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     130 1.0 1.0729e+01 1.3 2.38e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 1543219
firedrake.halo.Halo.local_to_global_begin      65 1.0 6.8599e-01 268.5 0.00e+00 0.0 3.1e+05 1.2e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end      65 1.0 2.0698e+00 103.5 7.30e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2155
Parloop_Cells_wrap_form00_cell_integral      70 1.0 9.2267e+00 1.2 8.85e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 767195
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral      70 1.0 2.1720e+00 1.0 1.02e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3739
Parloop_Cells_wrap_form00_exterior_facet_top_integral      70 1.0 2.3297e+00 1.0 1.02e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3486
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      70 1.0 1.5209e+01 1.2 9.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 490976
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      70 1.0 2.0551e+01 1.4 2.52e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 852788
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
              Vector  1136           1136
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
Average time for MPI_Barrier(): 9.1162e-06
Average time for zero size MPI_Send(): 2.30927e-06
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

