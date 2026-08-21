****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0187.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 23:46:16 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.264e+02     1.000   7.264e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.073e+11   84349525.434   4.269e+11  4.440e+13
Flops/sec:            8.361e+08   84349552.778   5.877e+08  6.112e+10
MPI Msg Count:        3.798e+05     0.000   2.266e+05  2.357e+07
MPI Msg Len (bytes):  1.265e+10   1265212462.300   3.305e+04  7.790e+11
MPI Reductions:       6.763e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.2637e+02 100.0%  4.4397e+13 100.0%  2.357e+07 100.0%  3.305e+04      100.0%  6.761e+04 100.0%

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

BuildTwoSided       1101 1.0 9.6108e+01 40.0 0.00e+00 0.0 1.0e+05 4.0e+00 1.1e+03  4  0  0  0  2   4  0  0  0  2    -0
BuildTwoSidedF       968 1.0 9.5412e+01 46.1 0.00e+00 0.0 1.1e+05 2.8e+05 9.7e+02  4  0  0  4  1   4  0  0  4  1    -0
SFSetGraph           142 1.0 8.6935e-03 863.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              133 1.0 7.0762e-01 13.2 0.00e+00 0.0 9.8e+04 1.0e+03 1.3e+02  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin        6089 1.0 4.4477e-01 81.7 0.00e+00 0.0 2.6e+06 3.3e+04 0.0e+00  0  0 11 11  0   0  0 11 11  0    -0
SFBcastEnd          6089 1.0 1.8672e+01 10282.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin       5716 1.0 4.6844e-01 48.4 0.00e+00 0.0 2.5e+06 3.3e+04 0.0e+00  0  0 11 10  0   0  0 11 10  0    -0
SFReduceEnd         5716 1.0 3.8973e+01 10840.2 1.71e+08 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0   260
SFFetchOpBegin         8 1.0 3.5465e-05 12.7 0.00e+00 0.0 3.4e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           8 1.0 4.2890e-04 112.7 0.00e+00 0.0 3.4e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          5 1.0 6.2818e-04 26.5 0.00e+00 0.0 1.6e+03 6.1e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         67 1.0 3.1951e-03 2.0 0.00e+00 0.0 8.7e+04 7.3e+01 7.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           70 1.0 3.4220e-03 1.9 0.00e+00 0.0 4.0e+04 3.2e+01 7.0e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            3 1.0 8.5504e-05 3.1 0.00e+00 0.0 1.6e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             53813 1.0 3.1289e+00 737.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           53821 1.0 4.4132e-01 104.8 1.71e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 22934
VecDot                60 1.0 1.7521e+00 136.3 2.88e+07 0.0 0.0e+00 0.0e+00 6.0e+01  0  0  0  0  0   0  0  0  0  0  1231
VecMDot            31704 1.0 2.8030e+02 32.1 1.60e+10 0.0 0.0e+00 0.0e+00 3.2e+04  6  3  0  0 47   6  3  0  0 47  4272
VecNorm            33800 1.0 2.2484e+02 125.8 1.56e+09 0.0 0.0e+00 0.0e+00 3.4e+04  3  0  0  0 50   3  0  0  0 50   519
VecScale           33650 1.0 1.7388e-01 23.8 7.43e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 320351
VecCopy            33503 1.0 3.8416e+00 240.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              9025 1.0 1.0360e+00 239.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             7064 1.0 1.3933e+00 263.6 1.15e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 62027
VecAYPX            20472 1.0 4.7614e+00 764.0 3.22e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 50707
VecWAXPY              60 1.0 5.4666e-02 1098.1 1.44e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 19725
VecMAXPY           33650 1.0 1.2397e+01 1481.9 1.74e+10 0.0 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 105100
VecReciprocal          3 1.0 1.5382e-04 70.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin    42000 1.0 3.0505e+00 101.7 0.00e+00 0.0 1.8e+07 3.2e+04 0.0e+00  0  0 77 75  0   0  0 77 75  0    -0
VecScatterEnd      42000 1.0 1.2961e+02 8085.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  8  0  0  0  0   8  0  0  0  0    -0
VecReduceArith       120 1.0 2.8468e-02 1049.8 5.75e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 151505
VecReduceComm         60 1.0 7.3215e-01 175.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       31884 1.0 1.8876e+02 206.5 9.59e+08 0.0 0.0e+00 0.0e+00 3.2e+04  3  0  0  0 47   3  0  0  0 47   381
MatMult            42180 1.0 2.5365e+02 310.0 1.98e+11 0.0 1.8e+07 3.2e+04 6.0e+00 28 33 78 75  0  28 33 78 75  0 58192
MatMultAdd          5118 1.0 6.4788e+01 7.5 1.07e+09 0.0 2.2e+06 3.2e+04 6.0e+00  6  0  9  9  0   6  0  9  9  0  1242
MatMultTranspose    5121 1.0 7.8462e+01 5.9 1.59e+08 0.0 2.2e+06 3.2e+04 1.5e+01  8  0  9  9  0   8  0  9  9  0   121
MatSolve           42120 0.0 1.6289e+02 0.0 1.40e+11 0.0 0.0e+00 0.0e+00 0.0e+00 15 23  0  0  0  15 23  0  0  0 63947
MatLUFactorNum       240 1.0 1.0249e+01 9164.9 2.39e+10 0.0 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 166605
MatILUFactorSym        4 1.0 1.5860e-01 2453.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatResidual         5118 1.0 8.6971e+01 2532.9 6.00e+10 0.0 2.2e+06 6.4e+04 0.0e+00  9 10  9 18  0   9 10  9 18  0 51396
MatAssemblyBegin    1040 1.0 9.5418e+01 25.4 0.00e+00 0.0 1.1e+05 2.8e+05 9.7e+02  4  0  0  4  1   4  0  0  4  1    -0
MatAssemblyEnd      1040 1.0 3.6734e+00 4.1 4.58e+07 0.0 3.5e+03 1.3e+04 2.4e+01  0  0  0  0  0   0  0  0  0  0   458
MatGetRowIJ            4 0.0 5.6290e-06 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         4 0.0 3.6816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       240 1.0 2.4604e+00 10818.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO       48 1.0 8.1770e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       48 1.0 3.4165e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               60 1.0 1.2665e+02 1.0 1.04e+11 0.0 1.3e+06 6.2e+04 4.6e+03 17 17  5 10  7  17 17  5 10  7 59110
PCSetUpOnBlocks    11942 1.0 1.1870e-01 3.4 1.20e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 63903
PCApply             1706 1.0 3.7719e+02 1.9 2.58e+11 0.0 2.1e+07 2.8e+04 5.8e+04 47 43 90 75 86  47 43 90 75 86 50837
PCApplyOnBlocks    42120 1.0 1.6308e+02 2481.0 1.40e+11 0.0 0.0e+00 0.0e+00 0.0e+00 15 23  0  0  0  15 23  0  0  0 63872
KSPSetUp              60 1.0 1.5848e-02 229.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              60 1.0 4.3594e+02 1.0 3.30e+11 0.0 2.2e+07 3.1e+04 6.2e+04 60 55 93 86 91  60 55 93 86 91 56246
KSPGMRESOrthog     31704 1.0 2.8034e+02 14.1 3.19e+10 0.0 0.0e+00 0.0e+00 3.2e+04  7  5  0  0 47   7  5  0  0 47  8543
DMCoarsen              3 1.0 5.0038e+00 1.0 1.75e+05 0.0 1.6e+04 1.3e+04 3.9e+01  1  0  0  0  0   1  0  0  0  0     2
DMRefine               3 1.0 2.3594e-01 1.0 7.20e+03 1.0 1.1e+04 3.1e+01 9.6e+01  0  0  0  0  0   0  0  0  0  0     3
DMCreateInterp         3 1.0 1.0761e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMCreateInject         3 1.0 4.6615e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         5 1.0 3.5305e-02 1.0 0.00e+00 0.0 2.3e+04 5.7e+01 6.4e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         5 1.0 9.4655e-03 1.0 0.00e+00 0.0 8.6e+04 6.7e+01 3.0e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 8.5808e-04 364.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       5 1.0 1.1230e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.5e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        5 1.0 3.5338e-03 1.3 0.00e+00 0.0 4.9e+03 4.2e+01 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       5 1.0 1.4364e-03 2.4 0.00e+00 0.0 2.5e+03 1.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          5 1.0 9.1449e-04 31.4 0.00e+00 0.0 2.6e+03 1.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          48 1.0 4.4655e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.5313e-02 1.0 0.00e+00 0.0 3.8e+03 6.0e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        5 1.0 1.2458e-03 1.5 0.00e+00 0.0 1.5e+04 9.9e+01 1.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       5 1.0 2.7638e-03 1.0 0.00e+00 0.0 4.2e+04 6.2e+01 1.9e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        4 1.0 1.0833e-02 1.0 0.00e+00 0.0 1.1e+05 6.7e+01 3.2e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        9 1.0 2.1351e-03 1.7 0.00e+00 0.0 2.0e+04 5.7e+01 2.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         4 1.0 2.7327e-04 1.3 0.00e+00 0.0 1.0e+04 4.7e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        64 1.0 2.9468e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      64 1.0 1.0096e-04 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 8.1515e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          3 1.0 2.5586e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          3 1.0 2.4948e-03 1.3 0.00e+00 0.0 6.2e+03 2.6e+01 3.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          3 1.0 1.2050e-04 36.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          3 1.0 4.8510e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             3 1.0 3.9352e-04 3.1 0.00e+00 0.0 4.7e+03 2.4e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         3 1.0 6.7932e-05 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         3 1.0 8.2201e-04 1.6 0.00e+00 0.0 1.6e+03 3.2e+01 1.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 6.9078e+02 1.0 6.07e+11 0.0 2.3e+07 3.3e+04 6.7e+04 95 100 99 100 99  95 100 99 100 99 64270
SNESSetUp              1 1.0 4.5545e-05 6.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      90 1.0 4.3315e+01 2.5 7.54e+10 0.0 9.3e+04 1.1e+05 1.0e+00  6 12  0  1  0   6 12  0  1  0 124486
SNESJacobianEval      60 1.0 8.2803e+01 1.0 9.62e+10 0.0 5.2e+04 3.4e+05 2.4e+02 11 15  0  2  0  11 15  0  2  0 82922
SNESLineSearch        60 1.0 1.9938e+01 1.0 5.20e+10 0.0 7.8e+04 1.1e+05 2.4e+02  3  8  0  1  0   3  8  0  1  0 186856
DualSpaceSetUp        12 1.0 7.6663e-03 1.1 2.16e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     3
FESetUp               12 1.0 1.9956e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 7.2287e+02 1.0 6.07e+11 84349525.4 2.4e+07 3.3e+04 6.8e+04 100 100 100 100 100 100 100 100 100 100 61417
firedrake.__init__       1 1.0 1.8285e+01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.1469e+01 136.2 0.00e+00 0.0 7.3e+04 1.9e+01 1.9e+02  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             4 1.0 9.7543e-02 1.0 0.00e+00 0.0 2.3e+05 6.7e+01 5.7e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       4 1.0 1.6161e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       4 1.0 7.7660e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        4 1.0 5.4085e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.6e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          4 1.0 1.8404e-03 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      13 1.0 3.8239e-02 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      17 1.0 1.2984e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      28 1.0 4.0807e-02 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      24 1.0 3.7974e-02 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      24 1.0 3.7849e-02 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      48 1.0 1.3644e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       8 1.0 9.8776e-03 1.0 0.00e+00 0.0 1.5e+04 5.8e+01 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      16 1.0 9.6137e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      30 1.0 2.8801e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      59 1.0 1.5112e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          4 1.0 1.6131e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       4 1.0 2.5533e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 8.4798e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       8 1.0 2.2251e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       4 1.0 1.6047e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map    1384 1.0 1.4612e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute     12347 1.0 2.7130e+02 4.3 2.06e+11 0.0 2.5e+06 3.4e+04 3.0e+01 30 33 11 11  0  30 33 11 11  0 53454
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       8 1.0 1.5570e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   24694 1.0 6.5716e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  8  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      21 1.0 4.4428e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      21 0.0 3.0382e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      21 0.0 3.0607e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.0751e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      21 1.0 2.0749e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      21 1.0 1.4432e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      21 1.0 1.4255e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin   12347 1.0 1.7509e-01 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd     12347 1.0 3.6738e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       4 1.0 1.1345e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.2584e-01 1.0 3.59e+06 0.0 2.2e+03 1.6e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   291
firedrake.interpolation.interpolate       4 1.0 1.1635e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       4 1.0 1.9185e+00 1.0 1.30e+07 0.0 2.2e+03 1.6e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0   509
firedrake.formmanipulation.split_form       7 1.0 4.0393e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       7 1.0 1.0308e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       5 1.0 7.7614e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 4.5124e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    5722 1.0 1.1700e+00 2.8 0.00e+00 0.0 2.5e+06 3.5e+04 5.0e+00  0  0 11 11  0   0  0 11 11  0    -0
Parloop_Cells_wrap_expression_kernel       8 1.0 1.8187e+00 1.0 1.30e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   537
firedrake.halo.Halo.global_to_local_end    5722 1.0 1.7352e+01 1035.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     545 1.0 2.8732e-01 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.2313e-01 7.9 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       4 1.0 2.1293e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.1111e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       7 1.0 8.5028e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       4 1.0 5.2671e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       5 1.0 1.1551e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       4 1.0 5.0363e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 1.0399e+01 1.0 0.00e+00 0.0 2.8e+03 5.6e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       4 1.0 7.1901e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       7 1.0 4.2600e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       6 1.0 1.7859e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       6 1.0 1.7859e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         4 1.0 5.3917e+00 1.2 0.00e+00 0.0 6.5e+03 2.2e+05 3.2e+01  1  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         4 1.0 7.0177e-01 13686.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 6.9082e+02 1.0 6.07e+11 0.0 2.3e+07 3.3e+04 6.7e+04 95 100 99 100 99  95 100 99 100 99 64266
firedrake.mesh.AbstractMeshTopology.measure_set      25 1.0 1.2916e-03 8.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset      20 1.0 2.7029e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set      20 1.0 1.1852e-03 23.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     180 1.0 7.9095e+00 3.5 1.67e+10 0.0 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 157918
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     180 1.0 2.0558e+00 1.0 5.73e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2090
Parloop_Cells_wrap_form0_exterior_facet_top_integral     180 1.0 2.0006e+00 1.0 5.73e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2148
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     180 1.0 9.7713e+00 3.2 1.71e+10 0.0 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 131017
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     180 1.0 1.6616e+01 5.0 4.16e+10 0.0 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   2  6  0  0  0 171754
firedrake.halo.Halo.local_to_global_begin    5661 1.0 6.6780e-01 4.4 0.00e+00 0.0 2.5e+06 3.3e+04 3.0e+00  0  0 10 10  0   0  0 10 10  0    -0
firedrake.halo.Halo.local_to_global_end    5661 1.0 3.9008e+01 1203.3 1.71e+08 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0   259
Parloop_Cells_wrap_form00_cell_integral     480 1.0 2.0827e+01 3.1 2.69e+10 0.0 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   2  5  0  0  0 96756
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     480 1.0 4.7908e+00 1.0 6.16e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   965
Parloop_Cells_wrap_form00_exterior_facet_top_integral     480 1.0 4.6275e+00 1.0 6.16e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   999
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     480 1.0 3.6314e+01 3.9 2.82e+10 0.0 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   4  5  0  0  0 58334
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     480 1.0 5.1473e+01 5.3 7.48e+10 0.0 0.0e+00 0.0e+00 0.0e+00  5 11  0  0  0   5 11  0  0  0 96309
firedrake.dmhooks.coarsen       3 1.0 5.0029e+00 1.0 1.75e+05 0.0 1.6e+04 1.3e+04 3.9e+01  1  0  0  0  0   1  0  0  0  0     2
firedrake.dmhooks.get_function_space       3 1.0 2.1785e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.embedded.TransferManager.op    5847 1.0 7.1657e+01 4.7 1.31e+07 0.0 2.6e+06 3.3e+04 2.7e+01  7  0 11 11  0   7  0 11 11  0    11
firedrake.mg.interface.inject     540 1.0 8.2399e+00 1.3 1.31e+07 0.0 3.6e+05 4.0e+04 6.0e+00  1  0  2  2  0   1  0  2  2  0    94
firedrake.ufl_expr.TrialFunction       1 1.0 1.0046e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.slate.slac.compiler.compile_expression       1 1.0 5.8757e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_pyop2_kernel_injection_dg     900 1.0 6.6626e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
Log_Event_slate_wrapper 1474200 0.0 1.9654e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Log_Event_inits_slate_wrapper 1474200 0.0 6.7404e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_memcpy     1474200 0.0 7.2035e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_getrf      1474200 0.0 6.3054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_getrs      1474200 0.0 5.2084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.restrict    5121 1.0 7.7128e+01 6.2 1.59e+08 0.0 2.2e+06 3.2e+04 9.0e+00  8  0  9  9  0   8  0  9  9  0   123
firedrake.cofunction.Cofunction.assign    5121 1.0 8.1906e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       2 1.0 3.3966e+00 24.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149153c14710_wrap_pyop2_kernel_restrict    3414 0.0 3.6029e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149143485250_wrap_pyop2_kernel_restrict    3414 0.0 8.5386e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491439426d0_wrap_pyop2_kernel_restrict    3414 0.0 2.2391e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong    5118 1.0 6.2447e+01 7.7 0.00e+00 0.0 2.2e+06 3.2e+04 0.0e+00  6  0  9  9  0   6  0  9  9  0    -0
Parloop_set_#x1491439426d0_wrap_pyop2_kernel_prolong    3412 0.0 3.2537e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149143485250_wrap_pyop2_kernel_prolong    3412 0.0 8.7830e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149153c14710_wrap_pyop2_kernel_prolong    3412 0.0 3.4854e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15247c361e90_wrap_pyop2_kernel_restrict    3414 0.0 2.6003e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15246ffce8d0_wrap_pyop2_kernel_restrict    3414 0.0 5.7495e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524686a2590_wrap_pyop2_kernel_restrict    3414 0.0 1.5151e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524686a2590_wrap_pyop2_kernel_prolong    3412 0.0 2.5177e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15246ffce8d0_wrap_pyop2_kernel_prolong    3412 0.0 5.8538e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15247c361e90_wrap_pyop2_kernel_prolong    3412 0.0 2.2901e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a368246d90_wrap_pyop2_kernel_restrict    3414 0.0 2.3449e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a35a9f2750_wrap_pyop2_kernel_restrict    3414 0.0 5.6951e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a353f43d50_wrap_pyop2_kernel_restrict    3414 0.0 1.5200e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a353f43d50_wrap_pyop2_kernel_prolong    3412 0.0 2.9328e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a35a9f2750_wrap_pyop2_kernel_prolong    3412 0.0 5.8508e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a368246d90_wrap_pyop2_kernel_prolong    3412 0.0 2.2859e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b39b23790_wrap_pyop2_kernel_restrict    3414 0.0 3.5802e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b2e45ced0_wrap_pyop2_kernel_restrict    3414 0.0 8.4881e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b22059650_wrap_pyop2_kernel_restrict    3414 0.0 2.2121e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b22059650_wrap_pyop2_kernel_prolong    3412 0.0 3.1945e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b2e45ced0_wrap_pyop2_kernel_prolong    3412 0.0 8.7928e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b39b23790_wrap_pyop2_kernel_prolong    3412 0.0 3.4322e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15066d3be9d0_wrap_pyop2_kernel_restrict    3414 0.0 3.3654e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15066019d110_wrap_pyop2_kernel_restrict    3414 0.0 8.5088e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15065f112090_wrap_pyop2_kernel_restrict    3414 0.0 2.2088e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15065f112090_wrap_pyop2_kernel_prolong    3412 0.0 3.1628e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15066019d110_wrap_pyop2_kernel_prolong    3412 0.0 8.7078e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15066d3be9d0_wrap_pyop2_kernel_prolong    3412 0.0 3.4256e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d06f611d0_wrap_pyop2_kernel_restrict    3414 0.0 3.5818e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d0444b450_wrap_pyop2_kernel_restrict    3414 0.0 8.5122e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d042ddd10_wrap_pyop2_kernel_restrict    3414 0.0 2.2303e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d042ddd10_wrap_pyop2_kernel_prolong    3412 0.0 4.3350e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d0444b450_wrap_pyop2_kernel_prolong    3412 0.0 8.7588e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d06f611d0_wrap_pyop2_kernel_prolong    3412 0.0 3.4263e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a9d91f710_wrap_pyop2_kernel_restrict    3414 0.0 3.5954e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a9c889490_wrap_pyop2_kernel_restrict    3414 0.0 8.5011e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a8f546750_wrap_pyop2_kernel_restrict    3414 0.0 2.2187e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a8f546750_wrap_pyop2_kernel_prolong    3412 0.0 4.3297e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a9c889490_wrap_pyop2_kernel_prolong    3412 0.0 8.7115e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a9d91f710_wrap_pyop2_kernel_prolong    3412 0.0 3.4295e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3d44e2910_wrap_pyop2_kernel_restrict    3414 0.0 3.5647e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3caad3e90_wrap_pyop2_kernel_restrict    3414 0.0 8.4992e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3c8873850_wrap_pyop2_kernel_restrict    3414 0.0 2.2137e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3c8873850_wrap_pyop2_kernel_prolong    3412 0.0 4.8644e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3caad3e90_wrap_pyop2_kernel_prolong    3412 0.0 1.1142e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3d44e2910_wrap_pyop2_kernel_prolong    3412 0.0 3.8793e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14602552b050_wrap_pyop2_kernel_restrict    3414 0.0 2.5642e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460228588d0_wrap_pyop2_kernel_restrict    3414 0.0 5.7248e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146022d94f10_wrap_pyop2_kernel_restrict    3414 0.0 1.5215e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146022d94f10_wrap_pyop2_kernel_prolong    3412 0.0 3.6223e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460228588d0_wrap_pyop2_kernel_prolong    3412 0.0 5.8875e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14602552b050_wrap_pyop2_kernel_prolong    3412 0.0 2.2812e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2f4805c10_wrap_pyop2_kernel_restrict    3414 0.0 2.5703e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2e9501910_wrap_pyop2_kernel_restrict    3414 0.0 5.7476e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2e16087d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5205e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2e16087d0_wrap_pyop2_kernel_prolong    3412 0.0 3.1127e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2e9501910_wrap_pyop2_kernel_prolong    3412 0.0 5.8807e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2f4805c10_wrap_pyop2_kernel_prolong    3412 0.0 2.2854e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bbdc767d0_wrap_pyop2_kernel_restrict    3414 0.0 3.5898e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bb0fb89d0_wrap_pyop2_kernel_restrict    3414 0.0 8.5359e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ba6cadb50_wrap_pyop2_kernel_restrict    3414 0.0 2.2226e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ba6cadb50_wrap_pyop2_kernel_prolong    3412 0.0 3.2190e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bb0fb89d0_wrap_pyop2_kernel_prolong    3412 0.0 8.7634e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bbdc767d0_wrap_pyop2_kernel_prolong    3412 0.0 3.4243e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5bf2b1850_wrap_pyop2_kernel_restrict    3414 0.0 3.4436e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5bd382d50_wrap_pyop2_kernel_restrict    3414 0.0 1.1742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5bc2a1f50_wrap_pyop2_kernel_restrict    3414 0.0 1.1253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5bc2a1f50_wrap_pyop2_kernel_prolong    3412 0.0 6.1566e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5bd382d50_wrap_pyop2_kernel_prolong    3412 0.0 7.3886e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5bf2b1850_wrap_pyop2_kernel_prolong    3412 0.0 7.1588e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e626932d0_wrap_pyop2_kernel_restrict    3414 0.0 2.3821e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e50510890_wrap_pyop2_kernel_restrict    3414 0.0 5.7370e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e5067ec90_wrap_pyop2_kernel_restrict    3414 0.0 1.5311e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e5067ec90_wrap_pyop2_kernel_prolong    3412 0.0 3.5139e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e50510890_wrap_pyop2_kernel_prolong    3412 0.0 5.8739e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e626932d0_wrap_pyop2_kernel_prolong    3412 0.0 2.2908e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504bc07a850_wrap_pyop2_kernel_restrict    3414 0.0 2.3833e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504b12d1bd0_wrap_pyop2_kernel_restrict    3414 0.0 5.7280e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504a7a99950_wrap_pyop2_kernel_restrict    3414 0.0 1.5188e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504a7a99950_wrap_pyop2_kernel_prolong    3412 0.0 2.4838e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504b12d1bd0_wrap_pyop2_kernel_prolong    3412 0.0 5.8529e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504bc07a850_wrap_pyop2_kernel_prolong    3412 0.0 2.2854e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535cf606e10_wrap_pyop2_kernel_restrict    3414 0.0 3.3242e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535ba5ba6d0_wrap_pyop2_kernel_restrict    3414 0.0 8.5082e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535b9c715d0_wrap_pyop2_kernel_restrict    3414 0.0 2.2144e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535b9c715d0_wrap_pyop2_kernel_prolong    3412 0.0 3.2491e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535ba5ba6d0_wrap_pyop2_kernel_prolong    3412 0.0 1.1182e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535cf606e10_wrap_pyop2_kernel_prolong    3412 0.0 3.4348e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464737f6590_wrap_pyop2_kernel_restrict    3414 0.0 2.4902e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146469648b50_wrap_pyop2_kernel_restrict    3414 0.0 5.7378e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146469739e90_wrap_pyop2_kernel_restrict    3414 0.0 1.5339e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146469739e90_wrap_pyop2_kernel_prolong    3412 0.0 2.3889e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146469648b50_wrap_pyop2_kernel_prolong    3412 0.0 5.8609e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464737f6590_wrap_pyop2_kernel_prolong    3412 0.0 2.2846e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b643362590_wrap_pyop2_kernel_restrict    3414 0.0 2.6101e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6331b7810_wrap_pyop2_kernel_restrict    3414 0.0 5.7241e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6338aea50_wrap_pyop2_kernel_restrict    3414 0.0 1.5183e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6338aea50_wrap_pyop2_kernel_prolong    3412 0.0 2.5163e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6331b7810_wrap_pyop2_kernel_prolong    3412 0.0 7.5253e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b643362590_wrap_pyop2_kernel_prolong    3412 0.0 2.9164e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c1aabf450_wrap_pyop2_kernel_restrict    3414 0.0 2.4610e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c0bb99e10_wrap_pyop2_kernel_restrict    3414 0.0 5.7384e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c0b01e850_wrap_pyop2_kernel_restrict    3414 0.0 1.5142e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c0b01e850_wrap_pyop2_kernel_prolong    3412 0.0 2.5174e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c0bb99e10_wrap_pyop2_kernel_prolong    3412 0.0 5.8906e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c1aabf450_wrap_pyop2_kernel_prolong    3412 0.0 2.2881e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d920f27150_wrap_pyop2_kernel_restrict    3414 0.0 2.4005e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d90fc2af50_wrap_pyop2_kernel_restrict    3414 0.0 5.7637e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d91055d5d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5276e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d91055d5d0_wrap_pyop2_kernel_prolong    3412 0.0 2.5268e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d90fc2af50_wrap_pyop2_kernel_prolong    3412 0.0 5.8826e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d920f27150_wrap_pyop2_kernel_prolong    3412 0.0 2.2853e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a3419f250_wrap_pyop2_kernel_restrict    3414 0.0 2.4472e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a29098b90_wrap_pyop2_kernel_restrict    3414 0.0 5.7231e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a28d3f750_wrap_pyop2_kernel_restrict    3414 0.0 1.5201e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a28d3f750_wrap_pyop2_kernel_prolong    3412 0.0 2.3907e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a29098b90_wrap_pyop2_kernel_prolong    3412 0.0 5.8812e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a3419f250_wrap_pyop2_kernel_prolong    3412 0.0 2.3311e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531cfe02550_wrap_pyop2_kernel_restrict    3414 0.0 2.5605e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531cdd0aa10_wrap_pyop2_kernel_restrict    3414 0.0 5.7259e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531c5d8eb10_wrap_pyop2_kernel_restrict    3414 0.0 1.5126e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531c5d8eb10_wrap_pyop2_kernel_prolong    3412 0.0 2.5104e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531cdd0aa10_wrap_pyop2_kernel_prolong    3412 0.0 5.8705e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531cfe02550_wrap_pyop2_kernel_prolong    3412 0.0 2.2882e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153774fe62d0_wrap_pyop2_kernel_restrict    3414 0.0 2.5837e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15376a0edc50_wrap_pyop2_kernel_restrict    3414 0.0 5.7390e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153762fd1950_wrap_pyop2_kernel_restrict    3414 0.0 1.5208e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153762fd1950_wrap_pyop2_kernel_prolong    3412 0.0 2.5373e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15376a0edc50_wrap_pyop2_kernel_prolong    3412 0.0 5.8758e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153774fe62d0_wrap_pyop2_kernel_prolong    3412 0.0 2.3004e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470ca8c59d0_wrap_pyop2_kernel_restrict    3414 0.0 2.4594e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470bf45afd0_wrap_pyop2_kernel_restrict    3414 0.0 5.7091e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470bd2a1490_wrap_pyop2_kernel_restrict    3414 0.0 1.5228e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470bd2a1490_wrap_pyop2_kernel_prolong    3412 0.0 2.3869e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470bf45afd0_wrap_pyop2_kernel_prolong    3412 0.0 5.8592e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470ca8c59d0_wrap_pyop2_kernel_prolong    3412 0.0 2.2870e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67de86c10_wrap_pyop2_kernel_restrict    3414 0.0 2.5704e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67a871d50_wrap_pyop2_kernel_restrict    3414 0.0 5.7648e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67a8de610_wrap_pyop2_kernel_restrict    3414 0.0 1.5260e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67a8de610_wrap_pyop2_kernel_prolong    3412 0.0 2.5210e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67a871d50_wrap_pyop2_kernel_prolong    3412 0.0 5.8814e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b67de86c10_wrap_pyop2_kernel_prolong    3412 0.0 2.2891e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510511f3010_wrap_pyop2_kernel_restrict    3414 0.0 2.3450e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151048275e10_wrap_pyop2_kernel_restrict    3414 0.0 5.7609e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15104788b510_wrap_pyop2_kernel_restrict    3414 0.0 1.5135e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15104788b510_wrap_pyop2_kernel_prolong    3412 0.0 2.5038e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151048275e10_wrap_pyop2_kernel_prolong    3412 0.0 5.8980e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510511f3010_wrap_pyop2_kernel_prolong    3412 0.0 2.2896e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ad6a96c50_wrap_pyop2_kernel_restrict    3414 0.0 2.5868e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153acb5df510_wrap_pyop2_kernel_restrict    3414 0.0 5.7428e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ac39b2590_wrap_pyop2_kernel_restrict    3414 0.0 1.5314e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ac39b2590_wrap_pyop2_kernel_prolong    3412 0.0 2.3974e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153acb5df510_wrap_pyop2_kernel_prolong    3412 0.0 5.8806e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ad6a96c50_wrap_pyop2_kernel_prolong    3412 0.0 2.2948e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488a984ae90_wrap_pyop2_kernel_restrict    3414 0.0 3.5851e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14889c0cd650_wrap_pyop2_kernel_restrict    3414 0.0 8.5154e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14889bade7d0_wrap_pyop2_kernel_restrict    3414 0.0 2.3382e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14889bade7d0_wrap_pyop2_kernel_prolong    3412 0.0 3.0654e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14889c0cd650_wrap_pyop2_kernel_prolong    3412 0.0 8.7263e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488a984ae90_wrap_pyop2_kernel_prolong    3412 0.0 3.4278e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdce4e2bd0_wrap_pyop2_kernel_restrict    3414 0.0 2.5688e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdc1ec96d0_wrap_pyop2_kernel_restrict    3414 0.0 5.7068e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdc1fd6010_wrap_pyop2_kernel_restrict    3414 0.0 1.5192e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdc1fd6010_wrap_pyop2_kernel_prolong    3412 0.0 2.3382e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdc1ec96d0_wrap_pyop2_kernel_prolong    3412 0.0 5.8484e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdce4e2bd0_wrap_pyop2_kernel_prolong    3412 0.0 2.2880e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef9dada9d0_wrap_pyop2_kernel_restrict    3414 0.0 2.5749e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef93c18190_wrap_pyop2_kernel_restrict    3414 0.0 5.7612e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef933068d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5138e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef933068d0_wrap_pyop2_kernel_prolong    3412 0.0 2.3407e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef93c18190_wrap_pyop2_kernel_prolong    3412 0.0 5.8481e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef9dada9d0_wrap_pyop2_kernel_prolong    3412 0.0 2.2827e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14581370e110_wrap_pyop2_kernel_restrict    3414 0.0 4.7226e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14580a2814d0_wrap_pyop2_kernel_restrict    3414 0.0 8.4936e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145809ea99d0_wrap_pyop2_kernel_restrict    3414 0.0 2.2115e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145809ea99d0_wrap_pyop2_kernel_prolong    3412 0.0 3.5170e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14580a2814d0_wrap_pyop2_kernel_prolong    3412 0.0 8.7364e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14581370e110_wrap_pyop2_kernel_prolong    3412 0.0 3.4357e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d712e2050_wrap_pyop2_kernel_restrict    3414 0.0 2.3666e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d65631d90_wrap_pyop2_kernel_restrict    3414 0.0 5.7180e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d65fc55d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5139e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d65fc55d0_wrap_pyop2_kernel_prolong    3412 0.0 2.3427e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d65631d90_wrap_pyop2_kernel_prolong    3412 0.0 5.8709e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d712e2050_wrap_pyop2_kernel_prolong    3412 0.0 2.9556e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15288356e410_wrap_pyop2_kernel_restrict    3414 0.0 3.4737e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15287b826fd0_wrap_pyop2_kernel_restrict    3414 0.0 8.5179e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15287ae9cf10_wrap_pyop2_kernel_restrict    3414 0.0 2.2021e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15287ae9cf10_wrap_pyop2_kernel_prolong    3412 0.0 3.0424e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15287b826fd0_wrap_pyop2_kernel_prolong    3412 0.0 8.7128e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15288356e410_wrap_pyop2_kernel_prolong    3412 0.0 3.4333e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e5d9e32d0_wrap_pyop2_kernel_restrict    3414 0.0 2.5850e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e5006c410_wrap_pyop2_kernel_restrict    3414 0.0 5.7128e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e50be0cd0_wrap_pyop2_kernel_restrict    3414 0.0 1.5134e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e50be0cd0_wrap_pyop2_kernel_prolong    3412 0.0 2.5055e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e5006c410_wrap_pyop2_kernel_prolong    3412 0.0 5.8653e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e5d9e32d0_wrap_pyop2_kernel_prolong    3412 0.0 2.2848e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a7237e9d0_wrap_pyop2_kernel_restrict    3414 0.0 2.4567e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a66671310_wrap_pyop2_kernel_restrict    3414 0.0 5.7608e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a5e11b5d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5378e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a5e11b5d0_wrap_pyop2_kernel_prolong    3412 0.0 2.4181e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a66671310_wrap_pyop2_kernel_prolong    3412 0.0 5.8835e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a7237e9d0_wrap_pyop2_kernel_prolong    3412 0.0 2.2915e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14748739a350_wrap_pyop2_kernel_restrict    3414 0.0 2.4032e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14747889d410_wrap_pyop2_kernel_restrict    3414 0.0 5.7363e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474787c3f50_wrap_pyop2_kernel_restrict    3414 0.0 1.5419e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474787c3f50_wrap_pyop2_kernel_prolong    3412 0.0 2.3461e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14747889d410_wrap_pyop2_kernel_prolong    3412 0.0 5.8776e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14748739a350_wrap_pyop2_kernel_prolong    3412 0.0 2.2846e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508f817a690_wrap_pyop2_kernel_restrict    3414 0.0 2.5479e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508e6268150_wrap_pyop2_kernel_restrict    3414 0.0 5.7140e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508eef78f90_wrap_pyop2_kernel_restrict    3414 0.0 1.5470e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508eef78f90_wrap_pyop2_kernel_prolong    3412 0.0 2.5030e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508e6268150_wrap_pyop2_kernel_prolong    3412 0.0 5.8563e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508f817a690_wrap_pyop2_kernel_prolong    3412 0.0 2.2892e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154936c4e290_wrap_pyop2_kernel_restrict    3414 0.0 2.6874e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549244a3dd0_wrap_pyop2_kernel_restrict    3414 0.0 5.7636e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154923d29e50_wrap_pyop2_kernel_restrict    3414 0.0 1.5162e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154923d29e50_wrap_pyop2_kernel_prolong    3412 0.0 2.4259e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549244a3dd0_wrap_pyop2_kernel_prolong    3412 0.0 5.8854e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154936c4e290_wrap_pyop2_kernel_prolong    3412 0.0 2.2879e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d0904f790_wrap_pyop2_kernel_restrict    3414 0.0 2.4218e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d07e33590_wrap_pyop2_kernel_restrict    3414 0.0 5.7408e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d06de0fd0_wrap_pyop2_kernel_restrict    3414 0.0 1.5450e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d06de0fd0_wrap_pyop2_kernel_prolong    3412 0.0 2.5115e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d07e33590_wrap_pyop2_kernel_prolong    3412 0.0 5.8662e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d0904f790_wrap_pyop2_kernel_prolong    3412 0.0 2.2880e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15098bac3350_wrap_pyop2_kernel_restrict    3414 0.0 2.6132e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15097be0bf50_wrap_pyop2_kernel_restrict    3414 0.0 5.7201e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509835259d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5569e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509835259d0_wrap_pyop2_kernel_prolong    3412 0.0 2.5151e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15097be0bf50_wrap_pyop2_kernel_prolong    3412 0.0 5.8642e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15098bac3350_wrap_pyop2_kernel_prolong    3412 0.0 2.2900e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b64c0aa390_wrap_pyop2_kernel_restrict    3414 0.0 3.4467e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b64104ad50_wrap_pyop2_kernel_restrict    3414 0.0 8.5027e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b63ebd3f50_wrap_pyop2_kernel_restrict    3414 0.0 2.2227e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b63ebd3f50_wrap_pyop2_kernel_prolong    3412 0.0 3.1731e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b64104ad50_wrap_pyop2_kernel_prolong    3412 0.0 8.7413e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b64c0aa390_wrap_pyop2_kernel_prolong    3412 0.0 3.4425e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b1f316910_wrap_pyop2_kernel_restrict    3414 0.0 2.3132e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b14af1d50_wrap_pyop2_kernel_restrict    3414 0.0 5.7076e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b14138650_wrap_pyop2_kernel_restrict    3414 0.0 1.5085e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b14138650_wrap_pyop2_kernel_prolong    3412 0.0 2.6916e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b14af1d50_wrap_pyop2_kernel_prolong    3412 0.0 5.8611e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b1f316910_wrap_pyop2_kernel_prolong    3412 0.0 2.3284e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f565e910_wrap_pyop2_kernel_restrict    3414 0.0 2.3981e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f2dbbb50_wrap_pyop2_kernel_restrict    3414 0.0 5.7258e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537eb38d250_wrap_pyop2_kernel_restrict    3414 0.0 1.5117e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537eb38d250_wrap_pyop2_kernel_prolong    3412 0.0 2.7027e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f2dbbb50_wrap_pyop2_kernel_prolong    3412 0.0 5.9255e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f565e910_wrap_pyop2_kernel_prolong    3412 0.0 2.2870e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d3e2c70d0_wrap_pyop2_kernel_restrict    3414 0.0 5.6814e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d3bc7dc50_wrap_pyop2_kernel_restrict    3414 0.0 1.0833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d3bbf6350_wrap_pyop2_kernel_restrict    3414 0.0 1.2166e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d3bbf6350_wrap_pyop2_kernel_prolong    3412 0.0 6.1526e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d3bc7dc50_wrap_pyop2_kernel_prolong    3412 0.0 7.4323e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d3e2c70d0_wrap_pyop2_kernel_prolong    3412 0.0 7.2174e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e004d72c10_wrap_pyop2_kernel_restrict    3414 0.0 2.3353e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dffb06ab50_wrap_pyop2_kernel_restrict    3414 0.0 5.7378e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dffa124850_wrap_pyop2_kernel_restrict    3414 0.0 1.5221e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dffa124850_wrap_pyop2_kernel_prolong    3412 0.0 2.7102e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dffb06ab50_wrap_pyop2_kernel_prolong    3412 0.0 5.8670e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e004d72c10_wrap_pyop2_kernel_prolong    3412 0.0 2.2836e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0f5fb65d0_wrap_pyop2_kernel_restrict    3414 0.0 3.4618e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0e82549d0_wrap_pyop2_kernel_restrict    3414 0.0 8.5094e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0e7c80c90_wrap_pyop2_kernel_restrict    3414 0.0 2.2108e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0e7c80c90_wrap_pyop2_kernel_prolong    3412 0.0 3.8612e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0e82549d0_wrap_pyop2_kernel_prolong    3412 0.0 1.1089e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0f5fb65d0_wrap_pyop2_kernel_prolong    3412 0.0 3.8769e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550954e20d0_wrap_pyop2_kernel_restrict    3414 0.0 3.6325e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15508a366450_wrap_pyop2_kernel_restrict    3414 0.0 1.0977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15508982b190_wrap_pyop2_kernel_restrict    3414 0.0 1.2183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15508982b190_wrap_pyop2_kernel_prolong    3412 0.0 5.7965e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15508a366450_wrap_pyop2_kernel_prolong    3412 0.0 7.5272e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550954e20d0_wrap_pyop2_kernel_prolong    3412 0.0 7.2544e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef10213450_wrap_pyop2_kernel_restrict    3414 0.0 2.5747e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef03ff7290_wrap_pyop2_kernel_restrict    3414 0.0 5.7449e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eefc0d8450_wrap_pyop2_kernel_restrict    3414 0.0 1.5223e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eefc0d8450_wrap_pyop2_kernel_prolong    3412 0.0 2.4553e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef03ff7290_wrap_pyop2_kernel_prolong    3412 0.0 5.8625e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef10213450_wrap_pyop2_kernel_prolong    3412 0.0 2.2842e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14759d277a50_wrap_pyop2_kernel_restrict    3414 0.0 2.5698e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14759280a550_wrap_pyop2_kernel_restrict    3414 0.0 5.7411e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14758b569610_wrap_pyop2_kernel_restrict    3414 0.0 1.5246e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14758b569610_wrap_pyop2_kernel_prolong    3412 0.0 2.5130e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14759280a550_wrap_pyop2_kernel_prolong    3412 0.0 5.8793e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14759d277a50_wrap_pyop2_kernel_prolong    3412 0.0 2.2850e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146271e8aed0_wrap_pyop2_kernel_restrict    3414 0.0 2.3255e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146270058e50_wrap_pyop2_kernel_restrict    3414 0.0 5.7587e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14626f190990_wrap_pyop2_kernel_restrict    3414 0.0 1.5216e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14626f190990_wrap_pyop2_kernel_prolong    3412 0.0 2.4584e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146270058e50_wrap_pyop2_kernel_prolong    3412 0.0 5.8818e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146271e8aed0_wrap_pyop2_kernel_prolong    3412 0.0 2.2851e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15224edd3110_wrap_pyop2_kernel_restrict    3414 0.0 5.6762e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15224c911690_wrap_pyop2_kernel_restrict    3414 0.0 1.0986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15224bf4c390_wrap_pyop2_kernel_restrict    3414 0.0 1.2179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15224bf4c390_wrap_pyop2_kernel_prolong    3412 0.0 6.0278e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15224c911690_wrap_pyop2_kernel_prolong    3412 0.0 7.4665e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15224edd3110_wrap_pyop2_kernel_prolong    3412 0.0 7.1861e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525204bee50_wrap_pyop2_kernel_restrict    3414 0.0 3.5228e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152513d6cd50_wrap_pyop2_kernel_restrict    3414 0.0 8.4990e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152512e87690_wrap_pyop2_kernel_restrict    3414 0.0 2.2160e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152512e87690_wrap_pyop2_kernel_prolong    3412 0.0 3.2324e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152513d6cd50_wrap_pyop2_kernel_prolong    3412 0.0 8.7423e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525204bee50_wrap_pyop2_kernel_prolong    3412 0.0 3.4309e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e380d63bd0_wrap_pyop2_kernel_restrict    3414 0.0 2.5176e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e377da7b90_wrap_pyop2_kernel_restrict    3414 0.0 5.7691e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e376facf50_wrap_pyop2_kernel_restrict    3414 0.0 1.5280e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e376facf50_wrap_pyop2_kernel_prolong    3412 0.0 2.4548e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e377da7b90_wrap_pyop2_kernel_prolong    3412 0.0 5.9100e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e380d63bd0_wrap_pyop2_kernel_prolong    3412 0.0 2.2862e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14957980e210_wrap_pyop2_kernel_restrict    3414 0.0 5.2943e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14956eb8cf50_wrap_pyop2_kernel_restrict    3414 0.0 1.0833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14956e8dff10_wrap_pyop2_kernel_restrict    3414 0.0 1.1093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14956e8dff10_wrap_pyop2_kernel_prolong    3412 0.0 3.7985e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14956eb8cf50_wrap_pyop2_kernel_prolong    3412 0.0 7.6797e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14957980e210_wrap_pyop2_kernel_prolong    3412 0.0 7.3683e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5071025d0_wrap_pyop2_kernel_restrict    3414 0.0 2.3868e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4fdab8f50_wrap_pyop2_kernel_restrict    3414 0.0 5.7084e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4fd50dcd0_wrap_pyop2_kernel_restrict    3414 0.0 1.5309e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4fd50dcd0_wrap_pyop2_kernel_prolong    3412 0.0 2.4266e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4fdab8f50_wrap_pyop2_kernel_prolong    3412 0.0 6.0070e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5071025d0_wrap_pyop2_kernel_prolong    3412 0.0 2.2993e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a608367410_wrap_pyop2_kernel_restrict    3414 0.0 3.7987e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5eed03790_wrap_pyop2_kernel_restrict    3414 0.0 8.4965e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5f982fe90_wrap_pyop2_kernel_restrict    3414 0.0 2.2393e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5f982fe90_wrap_pyop2_kernel_prolong    3412 0.0 3.2498e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5eed03790_wrap_pyop2_kernel_prolong    3412 0.0 8.9841e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a608367410_wrap_pyop2_kernel_prolong    3412 0.0 3.4355e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e40032e910_wrap_pyop2_kernel_restrict    3414 0.0 3.7799e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3f2a03c90_wrap_pyop2_kernel_restrict    3414 0.0 8.4947e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3f2e2f7d0_wrap_pyop2_kernel_restrict    3414 0.0 2.2271e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3f2e2f7d0_wrap_pyop2_kernel_prolong    3412 0.0 3.1662e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3f2a03c90_wrap_pyop2_kernel_prolong    3412 0.0 8.9780e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e40032e910_wrap_pyop2_kernel_prolong    3412 0.0 3.4409e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491380a27d0_wrap_pyop2_kernel_restrict    3414 0.0 3.6946e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14912124eb50_wrap_pyop2_kernel_restrict    3414 0.0 8.5076e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14912c101cd0_wrap_pyop2_kernel_restrict    3414 0.0 2.2352e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14912c101cd0_wrap_pyop2_kernel_prolong    3412 0.0 3.2543e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14912124eb50_wrap_pyop2_kernel_prolong    3412 0.0 8.9794e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491380a27d0_wrap_pyop2_kernel_prolong    3412 0.0 3.4486e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4b08db090_wrap_pyop2_kernel_restrict    3414 0.0 3.6363e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4a4a3c3d0_wrap_pyop2_kernel_restrict    3414 0.0 8.5089e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c49abaeed0_wrap_pyop2_kernel_restrict    3414 0.0 2.2325e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c49abaeed0_wrap_pyop2_kernel_prolong    3412 0.0 3.1724e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4a4a3c3d0_wrap_pyop2_kernel_prolong    3412 0.0 9.0035e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4b08db090_wrap_pyop2_kernel_prolong    3412 0.0 3.4480e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f8377ac50_wrap_pyop2_kernel_restrict    3414 0.0 2.5591e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f79a03a50_wrap_pyop2_kernel_restrict    3414 0.0 5.6972e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f7266e190_wrap_pyop2_kernel_restrict    3414 0.0 1.5325e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f7266e190_wrap_pyop2_kernel_prolong    3412 0.0 2.5389e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f79a03a50_wrap_pyop2_kernel_prolong    3412 0.0 6.0115e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f8377ac50_wrap_pyop2_kernel_prolong    3412 0.0 2.2994e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492f4147050_wrap_pyop2_kernel_restrict    3414 0.0 3.4577e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492dd0556d0_wrap_pyop2_kernel_restrict    3414 0.0 8.5351e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492e763da10_wrap_pyop2_kernel_restrict    3414 0.0 2.2326e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492e763da10_wrap_pyop2_kernel_prolong    3412 0.0 3.1270e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492dd0556d0_wrap_pyop2_kernel_prolong    3412 0.0 9.0822e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492f4147050_wrap_pyop2_kernel_prolong    3412 0.0 3.4451e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496cc597050_wrap_pyop2_kernel_restrict    3414 0.0 2.4471e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496bfeeb590_wrap_pyop2_kernel_restrict    3414 0.0 5.7463e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496bfe43d10_wrap_pyop2_kernel_restrict    3414 0.0 1.5455e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496bfe43d10_wrap_pyop2_kernel_prolong    3412 0.0 2.4836e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496bfeeb590_wrap_pyop2_kernel_prolong    3412 0.0 6.0642e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496cc597050_wrap_pyop2_kernel_prolong    3412 0.0 2.2985e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487405d7110_wrap_pyop2_kernel_restrict    3414 0.0 2.6846e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14872df18a90_wrap_pyop2_kernel_restrict    3414 0.0 5.7446e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14872d5f8190_wrap_pyop2_kernel_restrict    3414 0.0 1.5364e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14872d5f8190_wrap_pyop2_kernel_prolong    3412 0.0 2.4658e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14872df18a90_wrap_pyop2_kernel_prolong    3412 0.0 6.0694e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487405d7110_wrap_pyop2_kernel_prolong    3412 0.0 2.2973e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485737cad90_wrap_pyop2_kernel_restrict    3414 0.0 3.6838e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14856c317110_wrap_pyop2_kernel_restrict    3414 0.0 8.4981e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148560ed3d10_wrap_pyop2_kernel_restrict    3414 0.0 2.2334e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148560ed3d10_wrap_pyop2_kernel_prolong    3412 0.0 3.1920e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14856c317110_wrap_pyop2_kernel_prolong    3412 0.0 9.0165e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485737cad90_wrap_pyop2_kernel_prolong    3412 0.0 3.4385e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3b35e6790_wrap_pyop2_kernel_restrict    3414 0.0 2.6795e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3a9a275d0_wrap_pyop2_kernel_restrict    3414 0.0 5.7471e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3a6a62510_wrap_pyop2_kernel_restrict    3414 0.0 1.5487e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3a6a62510_wrap_pyop2_kernel_prolong    3412 0.0 2.4764e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3a9a275d0_wrap_pyop2_kernel_prolong    3412 0.0 6.0614e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3b35e6790_wrap_pyop2_kernel_prolong    3412 0.0 2.3043e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150af47f1e90_wrap_pyop2_kernel_restrict    3414 0.0 2.4197e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150aea0b1d50_wrap_pyop2_kernel_restrict    3414 0.0 5.7516e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ae3b57b90_wrap_pyop2_kernel_restrict    3414 0.0 1.5398e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ae3b57b90_wrap_pyop2_kernel_prolong    3412 0.0 2.4612e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150aea0b1d50_wrap_pyop2_kernel_prolong    3412 0.0 6.0434e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150af47f1e90_wrap_pyop2_kernel_prolong    3412 0.0 2.2962e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fc2f56510_wrap_pyop2_kernel_restrict    3414 0.0 3.5207e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fb33248d0_wrap_pyop2_kernel_restrict    3414 0.0 8.5005e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fbe0dbed0_wrap_pyop2_kernel_restrict    3414 0.0 2.2317e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fbe0dbed0_wrap_pyop2_kernel_prolong    3412 0.0 3.1601e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fb33248d0_wrap_pyop2_kernel_prolong    3412 0.0 8.9693e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fc2f56510_wrap_pyop2_kernel_prolong    3412 0.0 3.4381e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150203566910_wrap_pyop2_kernel_restrict    3414 0.0 3.5387e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501f1029450_wrap_pyop2_kernel_restrict    3414 0.0 8.5968e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501ee7b8390_wrap_pyop2_kernel_restrict    3414 0.0 2.2586e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501ee7b8390_wrap_pyop2_kernel_prolong    3412 0.0 3.1604e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501f1029450_wrap_pyop2_kernel_prolong    3412 0.0 9.0485e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150203566910_wrap_pyop2_kernel_prolong    3412 0.0 3.4408e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ded605edd0_wrap_pyop2_kernel_restrict    3414 0.0 2.7246e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14deca200750_wrap_pyop2_kernel_restrict    3414 0.0 7.2830e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dec91f1790_wrap_pyop2_kernel_restrict    3414 0.0 1.9582e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dec91f1790_wrap_pyop2_kernel_prolong    3412 0.0 2.4513e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14deca200750_wrap_pyop2_kernel_prolong    3412 0.0 6.0452e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ded605edd0_wrap_pyop2_kernel_prolong    3412 0.0 2.2956e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e737ad10_wrap_pyop2_kernel_restrict    3414 0.0 3.6370e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e42f0a10_wrap_pyop2_kernel_restrict    3414 0.0 1.0939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e5312ed0_wrap_pyop2_kernel_restrict    3414 0.0 1.1409e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e5312ed0_wrap_pyop2_kernel_prolong    3412 0.0 2.7951e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e42f0a10_wrap_pyop2_kernel_prolong    3412 0.0 7.8665e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e737ad10_wrap_pyop2_kernel_prolong    3412 0.0 7.5287e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d4109e110_wrap_pyop2_kernel_restrict    3414 0.0 2.4126e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d2dd9cb10_wrap_pyop2_kernel_restrict    3414 0.0 5.7494e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d2b3c38d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5352e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d2b3c38d0_wrap_pyop2_kernel_prolong    3412 0.0 2.3959e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d2dd9cb10_wrap_pyop2_kernel_prolong    3412 0.0 6.0618e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d4109e110_wrap_pyop2_kernel_prolong    3412 0.0 2.2971e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b33412ed10_wrap_pyop2_kernel_restrict    3414 0.0 2.6768e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3301a0b50_wrap_pyop2_kernel_restrict    3414 0.0 5.7479e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3277cd4d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5406e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3277cd4d0_wrap_pyop2_kernel_prolong    3412 0.0 2.3924e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3301a0b50_wrap_pyop2_kernel_prolong    3412 0.0 6.0581e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b33412ed10_wrap_pyop2_kernel_prolong    3412 0.0 2.3064e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbae0d6450_wrap_pyop2_kernel_restrict    3414 0.0 2.6815e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb9d2e0f50_wrap_pyop2_kernel_restrict    3414 0.0 5.7533e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb9dcefe10_wrap_pyop2_kernel_restrict    3414 0.0 1.5479e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb9dcefe10_wrap_pyop2_kernel_prolong    3412 0.0 2.7513e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb9d2e0f50_wrap_pyop2_kernel_prolong    3412 0.0 6.0626e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbae0d6450_wrap_pyop2_kernel_prolong    3412 0.0 2.2998e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c65031dc90_wrap_pyop2_kernel_restrict    3414 0.0 3.6641e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c638ac3f10_wrap_pyop2_kernel_restrict    3414 0.0 8.5032e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c638a745d0_wrap_pyop2_kernel_restrict    3414 0.0 2.2281e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c638a745d0_wrap_pyop2_kernel_prolong    3412 0.0 3.1636e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c638ac3f10_wrap_pyop2_kernel_prolong    3412 0.0 8.9711e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c65031dc90_wrap_pyop2_kernel_prolong    3412 0.0 3.4587e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146114422690_wrap_pyop2_kernel_restrict    3414 0.0 2.5532e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461080c05d0_wrap_pyop2_kernel_restrict    3414 0.0 5.7742e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14610812eb90_wrap_pyop2_kernel_restrict    3414 0.0 1.5495e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14610812eb90_wrap_pyop2_kernel_prolong    3412 0.0 2.4526e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461080c05d0_wrap_pyop2_kernel_prolong    3412 0.0 6.0594e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146114422690_wrap_pyop2_kernel_prolong    3412 0.0 2.2976e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc431f3010_wrap_pyop2_kernel_restrict    3414 0.0 2.3867e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc32a6db10_wrap_pyop2_kernel_restrict    3414 0.0 5.7708e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc329698d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5501e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc329698d0_wrap_pyop2_kernel_prolong    3412 0.0 2.4583e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc32a6db10_wrap_pyop2_kernel_prolong    3412 0.0 6.0620e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc431f3010_wrap_pyop2_kernel_prolong    3412 0.0 2.3050e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2a5a6f210_wrap_pyop2_kernel_restrict    3414 0.0 3.6723e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a29d02d950_wrap_pyop2_kernel_restrict    3414 0.0 8.5083e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a29afe0e90_wrap_pyop2_kernel_restrict    3414 0.0 2.2366e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a29afe0e90_wrap_pyop2_kernel_prolong    3412 0.0 3.1869e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a29d02d950_wrap_pyop2_kernel_prolong    3412 0.0 9.0293e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2a5a6f210_wrap_pyop2_kernel_prolong    3412 0.0 3.4390e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e3cbbad50_wrap_pyop2_kernel_restrict    3414 0.0 3.5615e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e2fabd4d0_wrap_pyop2_kernel_restrict    3414 0.0 8.5165e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e2ef72850_wrap_pyop2_kernel_restrict    3414 0.0 2.2453e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e2ef72850_wrap_pyop2_kernel_prolong    3412 0.0 3.1798e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e2fabd4d0_wrap_pyop2_kernel_prolong    3412 0.0 9.0251e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e3cbbad50_wrap_pyop2_kernel_prolong    3412 0.0 3.4622e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ee90cf210_wrap_pyop2_kernel_restrict    3414 0.0 2.4310e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151edf4b8b50_wrap_pyop2_kernel_restrict    3414 0.0 5.7784e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ede7e9610_wrap_pyop2_kernel_restrict    3414 0.0 1.5306e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ede7e9610_wrap_pyop2_kernel_prolong    3412 0.0 2.8587e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151edf4b8b50_wrap_pyop2_kernel_prolong    3412 0.0 6.0594e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ee90cf210_wrap_pyop2_kernel_prolong    3412 0.0 2.3007e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4b8ea3410_wrap_pyop2_kernel_restrict    3414 0.0 2.4963e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4af1e7890_wrap_pyop2_kernel_restrict    3414 0.0 5.7291e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4a5136010_wrap_pyop2_kernel_restrict    3414 0.0 1.5368e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4a5136010_wrap_pyop2_kernel_prolong    3412 0.0 2.4436e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4af1e7890_wrap_pyop2_kernel_prolong    3412 0.0 6.0669e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4b8ea3410_wrap_pyop2_kernel_prolong    3412 0.0 2.2967e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bca8372950_wrap_pyop2_kernel_restrict    3414 0.0 3.7294e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc9e27c5d0_wrap_pyop2_kernel_restrict    3414 0.0 8.5013e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc918db310_wrap_pyop2_kernel_restrict    3414 0.0 2.2318e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc918db310_wrap_pyop2_kernel_prolong    3412 0.0 3.2967e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc9e27c5d0_wrap_pyop2_kernel_prolong    3412 0.0 8.9821e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bca8372950_wrap_pyop2_kernel_prolong    3412 0.0 3.4520e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d798193610_wrap_pyop2_kernel_restrict    3414 0.0 3.7469e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d78c64e210_wrap_pyop2_kernel_restrict    3414 0.0 8.5033e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d78c8bbdd0_wrap_pyop2_kernel_restrict    3414 0.0 2.2394e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d78c8bbdd0_wrap_pyop2_kernel_prolong    3412 0.0 3.2985e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d78c64e210_wrap_pyop2_kernel_prolong    3412 0.0 8.9881e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d798193610_wrap_pyop2_kernel_prolong    3412 0.0 3.4434e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f73fe2e550_wrap_pyop2_kernel_restrict    3414 0.0 2.6379e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f73bd9cb50_wrap_pyop2_kernel_restrict    3414 0.0 5.7503e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7349801d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5442e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7349801d0_wrap_pyop2_kernel_prolong    3412 0.0 2.5760e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f73bd9cb50_wrap_pyop2_kernel_prolong    3412 0.0 6.0734e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f73fe2e550_wrap_pyop2_kernel_prolong    3412 0.0 2.2992e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518f9eaead0_wrap_pyop2_kernel_restrict    3414 0.0 2.4638e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518f78887d0_wrap_pyop2_kernel_restrict    3414 0.0 5.7239e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518f6174990_wrap_pyop2_kernel_restrict    3414 0.0 1.5356e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518f6174990_wrap_pyop2_kernel_prolong    3412 0.0 2.5637e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518f78887d0_wrap_pyop2_kernel_prolong    3412 0.0 6.0541e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518f9eaead0_wrap_pyop2_kernel_prolong    3412 0.0 2.2978e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152509886d50_wrap_pyop2_kernel_restrict    3414 0.0 2.4112e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524fcb4af90_wrap_pyop2_kernel_restrict    3414 0.0 5.7491e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524fc8062d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5409e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524fc8062d0_wrap_pyop2_kernel_prolong    3412 0.0 2.5749e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524fcb4af90_wrap_pyop2_kernel_prolong    3412 0.0 6.0509e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152509886d50_wrap_pyop2_kernel_prolong    3412 0.0 2.3007e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8ded63910_wrap_pyop2_kernel_restrict    3414 0.0 2.4370e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8d5125190_wrap_pyop2_kernel_restrict    3414 0.0 5.7303e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8d4874990_wrap_pyop2_kernel_restrict    3414 0.0 1.5477e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8d4874990_wrap_pyop2_kernel_prolong    3412 0.0 2.5157e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8d5125190_wrap_pyop2_kernel_prolong    3412 0.0 6.0350e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8ded63910_wrap_pyop2_kernel_prolong    3412 0.0 2.2957e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470f8b4fad0_wrap_pyop2_kernel_restrict    3414 0.0 2.4511e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470f6402b50_wrap_pyop2_kernel_restrict    3414 0.0 5.7219e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470f5e01050_wrap_pyop2_kernel_restrict    3414 0.0 1.5359e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470f5e01050_wrap_pyop2_kernel_prolong    3412 0.0 2.9568e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470f6402b50_wrap_pyop2_kernel_prolong    3412 0.0 6.0460e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470f8b4fad0_wrap_pyop2_kernel_prolong    3412 0.0 2.2996e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faba977210_wrap_pyop2_kernel_restrict    3414 0.0 3.6685e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faabadc750_wrap_pyop2_kernel_restrict    3414 0.0 8.5032e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faa1cd17d0_wrap_pyop2_kernel_restrict    3414 0.0 2.2370e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faa1cd17d0_wrap_pyop2_kernel_prolong    3412 0.0 3.6950e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faabadc750_wrap_pyop2_kernel_prolong    3412 0.0 9.0231e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faba977210_wrap_pyop2_kernel_prolong    3412 0.0 3.4528e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff0808a210_wrap_pyop2_kernel_restrict    3414 0.0 2.6385e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fefcd71610_wrap_pyop2_kernel_restrict    3414 0.0 5.7457e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fef430e8d0_wrap_pyop2_kernel_restrict    3414 0.0 1.5545e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fef430e8d0_wrap_pyop2_kernel_prolong    3412 0.0 2.4408e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fefcd71610_wrap_pyop2_kernel_prolong    3412 0.0 6.0561e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff0808a210_wrap_pyop2_kernel_prolong    3412 0.0 2.2997e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14670ddc3610_wrap_pyop2_kernel_restrict    3414 0.0 2.7773e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466f8ce7bd0_wrap_pyop2_kernel_restrict    3414 0.0 5.8020e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466f8ca6f10_wrap_pyop2_kernel_restrict    3414 0.0 1.5531e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466f8ca6f10_wrap_pyop2_kernel_prolong    3412 0.0 2.4438e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466f8ce7bd0_wrap_pyop2_kernel_prolong    3412 0.0 6.0633e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14670ddc3610_wrap_pyop2_kernel_prolong    3412 0.0 2.3066e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462c724a8d0_wrap_pyop2_kernel_restrict    3414 0.0 2.5654e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462bd5b7110_wrap_pyop2_kernel_restrict    3414 0.0 5.7388e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462be535790_wrap_pyop2_kernel_restrict    3414 0.0 1.5407e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462be535790_wrap_pyop2_kernel_prolong    3412 0.0 2.4417e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462bd5b7110_wrap_pyop2_kernel_prolong    3412 0.0 6.0556e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462c724a8d0_wrap_pyop2_kernel_prolong    3412 0.0 2.2978e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147777452d10_wrap_pyop2_kernel_restrict    3414 0.0 3.6846e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14776fedd550_wrap_pyop2_kernel_restrict    3414 0.0 8.5180e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147764ec0150_wrap_pyop2_kernel_restrict    3414 0.0 2.2577e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147764ec0150_wrap_pyop2_kernel_prolong    3412 0.0 3.7260e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14776fedd550_wrap_pyop2_kernel_prolong    3412 0.0 9.0619e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147777452d10_wrap_pyop2_kernel_prolong    3412 0.0 3.4464e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff88d46590_wrap_pyop2_kernel_restrict    3414 0.0 2.4675e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff82514e10_wrap_pyop2_kernel_restrict    3414 0.0 5.7349e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff79c83dd0_wrap_pyop2_kernel_restrict    3414 0.0 1.5343e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff79c83dd0_wrap_pyop2_kernel_prolong    3412 0.0 2.4516e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff82514e10_wrap_pyop2_kernel_prolong    3412 0.0 6.0480e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff88d46590_wrap_pyop2_kernel_prolong    3412 0.0 2.3036e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15021d8b2850_wrap_pyop2_kernel_restrict    3414 0.0 4.9631e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502113f1890_wrap_pyop2_kernel_restrict    3414 0.0 1.1010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15020f04c1d0_wrap_pyop2_kernel_restrict    3414 0.0 1.1263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15020f04c1d0_wrap_pyop2_kernel_prolong    3412 0.0 1.9883e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502113f1890_wrap_pyop2_kernel_prolong    3412 0.0 7.7438e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15021d8b2850_wrap_pyop2_kernel_prolong    3412 0.0 7.5054e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e8a19a210_wrap_pyop2_kernel_restrict    3414 0.0 2.6343e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e80ec6650_wrap_pyop2_kernel_restrict    3414 0.0 5.7388e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e8197f950_wrap_pyop2_kernel_restrict    3414 0.0 1.5331e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e8197f950_wrap_pyop2_kernel_prolong    3412 0.0 2.4578e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e80ec6650_wrap_pyop2_kernel_prolong    3412 0.0 6.0536e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e8a19a210_wrap_pyop2_kernel_prolong    3412 0.0 2.3039e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff27756810_wrap_pyop2_kernel_restrict    3414 0.0 3.7641e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff22a32750_wrap_pyop2_kernel_restrict    3414 0.0 1.0849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff204fecd0_wrap_pyop2_kernel_restrict    3414 0.0 1.1366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff204fecd0_wrap_pyop2_kernel_prolong    3412 0.0 5.8066e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff22a32750_wrap_pyop2_kernel_prolong    3412 0.0 7.6065e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff27756810_wrap_pyop2_kernel_prolong    3412 0.0 7.4459e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479c8292410_wrap_pyop2_kernel_restrict    3414 0.0 2.3974e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479bbe34550_wrap_pyop2_kernel_restrict    3414 0.0 5.7528e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479b518d2d0_wrap_pyop2_kernel_restrict    3414 0.0 1.9204e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479b518d2d0_wrap_pyop2_kernel_prolong    3412 0.0 2.9507e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479bbe34550_wrap_pyop2_kernel_prolong    3412 0.0 6.0395e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479c8292410_wrap_pyop2_kernel_prolong    3412 0.0 2.3027e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15534c762f90_wrap_pyop2_kernel_restrict    3414 0.0 3.7918e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15533fe07110_wrap_pyop2_kernel_restrict    3414 0.0 8.4965e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15533fa050d0_wrap_pyop2_kernel_restrict    3414 0.0 2.2493e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15533fa050d0_wrap_pyop2_kernel_prolong    3412 0.0 3.1913e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15533fe07110_wrap_pyop2_kernel_prolong    3412 0.0 9.0101e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15534c762f90_wrap_pyop2_kernel_prolong    3412 0.0 3.4438e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153098a5e210_wrap_pyop2_kernel_restrict    3414 0.0 2.6306e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15308b8b8d90_wrap_pyop2_kernel_restrict    3414 0.0 5.7163e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15308b8a1c10_wrap_pyop2_kernel_restrict    3414 0.0 1.5253e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15308b8a1c10_wrap_pyop2_kernel_prolong    3412 0.0 2.4474e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15308b8b8d90_wrap_pyop2_kernel_prolong    3412 0.0 6.0567e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153098a5e210_wrap_pyop2_kernel_prolong    3412 0.0 2.2939e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e40f613310_wrap_pyop2_kernel_restrict    3414 0.0 2.7164e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e409220d10_wrap_pyop2_kernel_restrict    3414 0.0 5.7528e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3ff988d10_wrap_pyop2_kernel_restrict    3414 0.0 1.5359e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3ff988d10_wrap_pyop2_kernel_prolong    3412 0.0 2.4412e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e409220d10_wrap_pyop2_kernel_prolong    3412 0.0 6.0511e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e40f613310_wrap_pyop2_kernel_prolong    3412 0.0 2.2997e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550f410a5d0_wrap_pyop2_kernel_restrict    3414 0.0 2.5439e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e7bb9750_wrap_pyop2_kernel_restrict    3414 0.0 5.7456e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e1b99d50_wrap_pyop2_kernel_restrict    3414 0.0 1.5310e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e1b99d50_wrap_pyop2_kernel_prolong    3412 0.0 2.4349e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550e7bb9750_wrap_pyop2_kernel_prolong    3412 0.0 6.0541e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550f410a5d0_wrap_pyop2_kernel_prolong    3412 0.0 2.2964e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad1c161dd0_wrap_pyop2_kernel_restrict    3414 0.0 3.7907e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad0ee23810_wrap_pyop2_kernel_restrict    3414 0.0 8.5133e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad04a3bd90_wrap_pyop2_kernel_restrict    3414 0.0 2.2377e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad04a3bd90_wrap_pyop2_kernel_prolong    3412 0.0 3.2648e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad0ee23810_wrap_pyop2_kernel_prolong    3412 0.0 9.0214e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad1c161dd0_wrap_pyop2_kernel_prolong    3412 0.0 3.4661e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de9c2b6010_wrap_pyop2_kernel_restrict    3414 0.0 3.6812e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de85443d50_wrap_pyop2_kernel_restrict    3414 0.0 8.5038e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de845afa50_wrap_pyop2_kernel_restrict    3414 0.0 2.2527e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de845afa50_wrap_pyop2_kernel_prolong    3412 0.0 3.1899e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de85443d50_wrap_pyop2_kernel_prolong    3412 0.0 9.0113e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de9c2b6010_wrap_pyop2_kernel_prolong    3412 0.0 3.4446e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fa828a650_wrap_pyop2_kernel_restrict    3414 0.0 2.6225e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f9bf74890_wrap_pyop2_kernel_restrict    3414 0.0 5.7410e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f92b3dbd0_wrap_pyop2_kernel_restrict    3414 0.0 1.5354e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f92b3dbd0_wrap_pyop2_kernel_prolong    3412 0.0 2.5259e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f9bf74890_wrap_pyop2_kernel_prolong    3412 0.0 6.0510e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fa828a650_wrap_pyop2_kernel_prolong    3412 0.0 2.2962e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15256a6b6850_wrap_pyop2_kernel_restrict    3414 0.0 3.5109e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15255d9ba250_wrap_pyop2_kernel_restrict    3414 0.0 8.5397e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15255b120650_wrap_pyop2_kernel_restrict    3414 0.0 2.2559e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15255b120650_wrap_pyop2_kernel_prolong    3412 0.0 3.2809e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15255d9ba250_wrap_pyop2_kernel_prolong    3412 0.0 9.0312e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15256a6b6850_wrap_pyop2_kernel_prolong    3412 0.0 3.4413e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   174            174
              Viewer     1              1
           Index Set  2039           2039
   IS L to G Mapping   309            309
             Section   700            700
   Star Forest Graph   581            581
              Vector   884            866
              Matrix   206            206
      Preconditioner    12             12
       Krylov Solver    12             12
     DMKSP interface     6              6
                SNES     1              1
              DMSNES     4              4
      SNESLineSearch     1              1
    Distributed Mesh   182            182
            DM Label   489            489
          Quadrature   252            252
      Mesh Transform     3              3
    GraphPartitioner    64             64
     Discrete System   265            265
           Weak Form   265            265
        Linear Space    24             24
          Dual Space    84             84
            FE Space    12             12
========================================================================================================================
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 4.6616e-06
Average time for zero size MPI_Send(): 2.64131e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/gmg/sweep.profile # (source: environment)
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

