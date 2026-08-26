****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0473.gadi.nci.org.au with 104 processes, by sg8812 on Tue Aug 25 22:13:09 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.006e+02     1.000   5.006e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.013e+11     1.196   5.672e+11  5.899e+13
Flops/sec:            1.201e+09     1.196   1.133e+09  1.178e+11
MPI Msg Count:        7.696e+04     2.957   5.610e+04  5.835e+06
MPI Msg Len (bytes):  4.866e+09     2.990   6.119e+04  3.571e+11
MPI Reductions:       8.128e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.4518e+02  49.0%  4.0492e+13  68.6%  1.784e+06  30.6%  1.003e+05       50.1%  6.335e+03  77.9%
 1:        MG Apply: 2.5542e+02  51.0%  1.8498e+13  31.4%  4.051e+06  69.4%  4.398e+04       49.9%  1.774e+03  21.8%

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

BuildTwoSided       1075 1.0 2.2687e+01 6.4 0.00e+00 0.0 9.4e+04 4.0e+00 1.1e+03  3  0  2  0 13   6  0  5  0 17    -0
BuildTwoSidedF       978 1.0 2.2172e+01 6.6 0.00e+00 0.0 1.2e+05 7.3e+05 9.8e+02  3  0  2 24 12   6  0  7 48 15    -0
SFSetGraph           104 1.0 3.6349e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 1.1871e+00 75.4 0.00e+00 0.0 6.9e+04 5.9e+02 9.7e+01  0  0  1  0  1   0  0  4  0  2    -0
SFBcastBegin         886 1.0 2.0845e-01 3.6 0.00e+00 0.0 4.4e+05 4.4e+04 0.0e+00  0  0  7  5  0   0  0 24 11  0    -0
SFBcastEnd           886 1.0 7.3173e+00 142.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        340 1.0 3.3529e-02 8.1 0.00e+00 0.0 1.7e+05 5.4e+04 0.0e+00  0  0  3  3  0   0  0 10  5  0    -0
SFReduceEnd          340 1.0 1.7116e+00 66.3 1.61e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   692
SFFetchOpBegin         6 1.0 2.2644e-05 3.7 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.9006e-04 8.1 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.2632e-04 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.2463e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  1   0  0  3  0  1    -0
SFSectionSF           51 1.0 2.8529e-03 2.0 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  1   0  0  2  0  1    -0
SFRemoteOff            2 1.0 7.9423e-05 2.1 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              3025 1.0 4.9695e-01 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3031 1.0 7.2568e-02 12.7 1.61e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16316
VecDot               224 1.0 3.9625e-01 4.0 9.68e+07 1.2 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  3   0  0  0  0  4 24486
VecMDot             1569 1.0 8.6994e+00 2.8 3.17e+09 1.2 0.0e+00 0.0e+00 1.6e+03  1  1  0  0 19   2  1  0  0 25 36566
VecNorm             2407 1.0 3.4346e+00 5.1 1.04e+09 1.2 0.0e+00 0.0e+00 2.4e+03  0  0  0  0 30   1  0  0  0 38 30355
VecScale            1802 1.0 1.0987e-01 1.3 3.89e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 355222
VecCopy             1580 1.0 9.3600e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               458 1.0 1.9803e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              233 1.0 1.4536e-01 1.2 1.01e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 69429
VecWAXPY             224 1.0 2.0977e-01 1.2 4.84e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23126
VecMAXPY            1802 1.0 4.3091e+00 1.2 3.85e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 89594
VecScatterBegin     1793 1.0 3.6002e-01 2.6 0.00e+00 0.0 9.4e+05 6.0e+04 0.0e+00  0  0 16 16  0   0  0 53 32  0    -0
VecScatterEnd       1793 1.0 8.4247e+00 32.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom           8 1.0 1.5589e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       448 1.0 9.5043e-02 1.3 1.94e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 204172
VecReduceComm        224 1.0 1.6236e-01 18.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  3   0  0  0  0  4    -0
VecNormalize         179 1.0 3.7855e-01 4.2 1.16e+08 1.2 0.0e+00 0.0e+00 1.8e+02  0  0  0  0  2   0  0  0  0  3 30723
MatMult             1793 1.0 4.0884e+01 1.2 2.74e+10 1.2 9.4e+05 6.0e+04 0.0e+00  7  5 16 16  0  15  7 53 32  0 67083
MatSolve             179 1.0 3.8261e+00 1.2 2.67e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 69335
MatLUFactorSym         1 1.0 3.9125e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum        85 1.0 3.4308e+00 1.0 1.24e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 35163
MatILUFactorSym        2 1.0 1.5514e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               74 1.0 2.2606e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 8.1393e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1179 1.0 2.2189e+01 2.9 0.00e+00 0.0 1.2e+05 7.3e+05 9.8e+02  3  0  2 24 12   6  0  7 48 15    -0
MatAssemblyEnd      1179 1.0 5.3316e+00 14.7 1.26e+08 0.0 2.1e+03 7.6e+03 1.7e+01  1  0  0  0  0   1  0  0  0  0   999
MatGetRowIJ            2 1.0 7.9400e-06 17.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 3.8940e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       300 1.0 3.9574e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 6.4578e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 6.2854e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        152 1.0 6.7292e-01 1.1 1.18e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 175436
MatPtAPSymbolic        1 1.0 9.4083e-02 1.0 0.00e+00 0.0 1.6e+03 1.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        76 1.0 4.1559e+00 1.0 4.72e+09 1.2 4.0e+04 1.8e+05 8.1e+01  1  1  1  2  1   2  1  2  4  1 113529
MatGetLocalMat        76 1.0 2.9101e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         76 1.0 1.4865e-01 1.8 0.00e+00 0.0 4.1e+04 1.8e+05 0.0e+00  0  0  1  2  0   0  0  2  4  0    -0
MatSetPreallCOO       32 1.0 6.1373e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.1367e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              224 1.0 2.0959e+01 1.0 1.30e+10 1.2 1.3e+05 9.6e+04 6.2e+02  4  2  2  4  8   9  3  7  7 10 61603
PCApply             1399 1.0 2.5957e+02 1.0 1.86e+11 1.2 4.1e+06 4.4e+04 1.8e+03 51 31 69 50 22 Multiple stages 71262
PCApplyOnBlocks      179 1.0 3.8284e+00 1.2 2.67e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 69294
KSPSetUp             224 1.0 7.9835e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             224 1.0 2.9410e+02 1.0 2.14e+11 1.2 4.8e+06 4.7e+04 4.8e+03 59 36 82 62 59 Multiple stages 72422
KSPGMRESOrthog      1569 1.0 1.1776e+01 1.8 6.35e+09 1.2 0.0e+00 0.0e+00 1.6e+03  2  1  0  0 19   4  2  0  0 25 54025
DMRefine               2 1.0 2.2600e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     1
DMPlexCreateGmsh       1 1.0 1.2309e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.1420e+00 236.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 4.3707e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.0712e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  3   0  0  4  0  4    -0
DMPlexPartSelf         1 1.0 1.1850e-03 560.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 5.6209e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.2698e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.1769e-03 1.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 8.0396e-04 2.3 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.4843e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.7247e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.3787e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 4.4397e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 8.4426e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  3   0  0  5  0  4    -0
DMPlexDistField        7 1.0 2.0077e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 4.4287e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9600e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1179e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.9591e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.2444e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.2158e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.2447e-04 2.1 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.2633e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.5261e-04 2.0 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.3771e+02 1.0 6.01e+11 1.2 5.6e+06 6.3e+04 7.3e+03 87 100 96 100 90 Multiple stages 134761
SNESSetUp              1 1.0 4.5773e-05 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     299 1.0 2.1450e+01 1.1 1.45e+11 1.2 3.5e+05 6.0e+04 0.0e+00  4 24  6  6  0   8 35 20 12  0 652556
SNESJacobianEval     224 1.0 9.5599e+01 1.0 2.27e+11 1.2 2.3e+05 3.9e+05 9.0e+02 19 37  4 26 11  39 54 13 52 14 230114
SNESLineSearch       224 1.0 1.4082e+01 1.0 1.12e+11 1.2 3.5e+05 6.0e+04 9.0e+02  3 18  6  6 11   6 27 20 12 14 772755
DualSpaceSetUp         8 1.0 5.0280e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.9264e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.9834e+02 1.0 6.01e+11 1.2 5.8e+06 6.1e+04 8.1e+03 100 100 100 100 100 Multiple stages 118374
firedrake.__init__       1 1.0 1.4197e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
CreateMesh             3 1.0 3.2361e+00 30.3 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  3  0  5   1  0  9  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 3.1429e+00 235.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 8.9589e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.3760e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.5417e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.4610e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.1903e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.6287e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.0207e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.7910e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.7796e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.3536e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.0932e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.2808e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.2032e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.1802e-02 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.7558e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.4062e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9824e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2758e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.7495e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 9.0261e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2411 1.0 1.0712e+02 1.2 3.72e+11 1.2 3.3e+05 5.9e+04 3.2e+01 20 61  6  5  0  40 89 18 11  1 336023
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.7082e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4822 1.0 2.5184e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0  10  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0576e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.2371e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.8024e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.4455e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.4454e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.1405e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.9361e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
ParLoopRednBegin    2411 1.0 6.3758e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2411 1.0 6.0491e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 8.7549e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 4.6821e+00 1.0 7.29e+06 1.2 8.9e+03 6.7e+03 1.3e+01  1  0  0  0  0   2  0  0  0  0   156
firedrake.interpolation.interpolate      13 1.0 4.7824e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.7361e+00 1.0 4.51e+07 1.2 1.4e+04 2.1e+04 3.7e+01  1  0  0  0  0   2  0  1  0  1   788
firedrake.formmanipulation.split_form      14 1.0 4.7090e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.5958e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5106e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0296e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     619 1.0 1.6078e+00 10.3 0.00e+00 0.0 3.3e+05 5.8e+04 4.0e+00  0  0  6  5  0   0  0 19 11  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4114e+00 1.0 4.51e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0   835
firedrake.halo.Halo.global_to_local_end     619 1.0 7.0529e+00 126.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 1.7418e+00 27.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f3ff0b3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f3ff6d010_wrap_pyop2_kernel_prolong       4 0.0 2.9280e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8710e+00 1.0 3.65e+07 1.2 8.1e+03 3.0e+04 1.1e+01  1  0  0  0  0   2  0  0  0  0   946
firedrake.function.Function.assign     314 1.0 8.7863e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.8864e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8167e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.5566e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.0231e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4867e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.4372e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1786e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.7773e+00 1.0 0.00e+00 0.0 3.2e+03 2.4e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.1651e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4836e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9801e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9801e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         2 1.0 1.6957e+00 1.1 0.00e+00 0.0 2.7e+03 1.4e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 2.7843e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.3786e+02 1.0 6.01e+11 1.2 5.6e+06 6.3e+04 7.4e+03 87 100 96 100 91 Multiple stages 134715
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0140e-01 1023.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0908e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0134e-01 1218.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0131e-01 1382.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     598 1.0 4.9670e+00 1.3 3.67e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   2  9  0  0  0 741169
Parloop_Cells_wrap_form0_exterior_facet_top_integral     598 1.0 9.9213e-01 1.0 9.54e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   965
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     598 1.0 1.2068e+00 1.0 3.53e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5169
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     598 1.0 3.6321e+00 1.1 3.51e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  9  0  0  0 970206
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     598 1.0 7.1518e+00 1.2 7.30e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   3 17  0  0  0 948519
firedrake.halo.Halo.local_to_global_begin     299 1.0 4.0956e-02 4.0 0.00e+00 0.0 1.6e+05 6.0e+04 0.0e+00  0  0  3  3  0   0  0  9  5  0    -0
firedrake.halo.Halo.local_to_global_end     299 1.0 1.7131e+00 62.9 1.61e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   691
Parloop_Cells_wrap_form00_cell_integral     448 1.0 1.7005e+01 1.4 5.13e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   6 13  0  0  0 302644
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     448 1.0 1.5142e+00 1.4 2.69e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3142
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     448 1.0 2.0516e+01 1.2 6.77e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   8 17  0  0  0 330763
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     448 1.0 4.3832e+01 1.3 1.08e+11 1.3 0.0e+00 0.0e+00 0.0e+00  7 17  0  0  0  15 25  0  0  0 229429
firedrake.dmhooks.get_function_space       1 1.0 1.1213e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 4.9555e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       76 1.0 3.1354e+00 1.0 2.79e+07 15.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   241
MGSetup Level 1       76 1.0 6.7960e-01 1.0 5.13e+08 1.2 5.2e+03 6.0e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0 74860
firedrake.constant.Constant.assign      75 1.0 3.8646e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e7476e90_wrap_pyop2_kernel_prolong       4 0.0 7.4505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e5ba5490_wrap_pyop2_kernel_prolong       4 0.0 2.7617e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15151b7f7250_wrap_pyop2_kernel_prolong       4 0.0 7.4521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15151ba78a10_wrap_pyop2_kernel_prolong       4 0.0 3.4647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc806be1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc806bf1d0_wrap_pyop2_kernel_prolong       4 0.0 3.2823e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bba478990_wrap_pyop2_kernel_prolong       4 0.0 7.4598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb9a51ad0_wrap_pyop2_kernel_prolong       4 0.0 3.4137e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e08607910_wrap_pyop2_kernel_prolong       4 0.0 7.4663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e08605710_wrap_pyop2_kernel_prolong       4 0.0 3.8798e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f2ad2f50_wrap_pyop2_kernel_prolong       4 0.0 7.4072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f296d9d0_wrap_pyop2_kernel_prolong       4 0.0 3.2414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1d7c8e690_wrap_pyop2_kernel_prolong       4 0.0 7.4791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1d701bbd0_wrap_pyop2_kernel_prolong       4 0.0 2.7317e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddf04e8c10_wrap_pyop2_kernel_prolong       4 0.0 7.4512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddf04d3090_wrap_pyop2_kernel_prolong       4 0.0 3.5864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f73e20050_wrap_pyop2_kernel_prolong       4 0.0 7.4845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f780b4110_wrap_pyop2_kernel_prolong       4 0.0 2.7120e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d8e75f810_wrap_pyop2_kernel_prolong       4 0.0 7.4514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d8e9d9d10_wrap_pyop2_kernel_prolong       4 0.0 3.8470e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de8297ba50_wrap_pyop2_kernel_prolong       4 0.0 7.4849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de828af490_wrap_pyop2_kernel_prolong       4 0.0 3.4184e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b255fd2410_wrap_pyop2_kernel_prolong       4 0.0 7.4339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b255f45b10_wrap_pyop2_kernel_prolong       4 0.0 3.5195e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6c2f138d0_wrap_pyop2_kernel_prolong       4 0.0 7.4434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6c2f8fd50_wrap_pyop2_kernel_prolong       4 0.0 2.8769e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15240693bf10_wrap_pyop2_kernel_prolong       4 0.0 7.3636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15240692dcd0_wrap_pyop2_kernel_prolong       4 0.0 3.1895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477bfb10c10_wrap_pyop2_kernel_prolong       4 0.0 7.3848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477bf971ad0_wrap_pyop2_kernel_prolong       4 0.0 3.3427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494c62eaf10_wrap_pyop2_kernel_prolong       4 0.0 7.3639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494c633c5d0_wrap_pyop2_kernel_prolong       4 0.0 2.7696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ce0d23790_wrap_pyop2_kernel_prolong       4 0.0 7.4299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ce0cf9c90_wrap_pyop2_kernel_prolong       4 0.0 3.6221e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e31ff00d0_wrap_pyop2_kernel_prolong       4 0.0 7.3620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e320256d0_wrap_pyop2_kernel_prolong       4 0.0 3.1749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea476dfbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4042e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea476de190_wrap_pyop2_kernel_prolong       4 0.0 3.1778e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14755cad9310_wrap_pyop2_kernel_prolong       4 0.0 7.3647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14755ca9a950_wrap_pyop2_kernel_prolong       4 0.0 3.0333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153479887490_wrap_pyop2_kernel_prolong       4 0.0 7.4256e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153479885650_wrap_pyop2_kernel_prolong       4 0.0 4.0145e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac30e55f10_wrap_pyop2_kernel_prolong       4 0.0 7.3698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac30e55690_wrap_pyop2_kernel_prolong       4 0.0 3.5739e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b2f4b5810_wrap_pyop2_kernel_prolong       4 0.0 7.4090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b2f4d77d0_wrap_pyop2_kernel_prolong       4 0.0 3.3535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aae7b25b90_wrap_pyop2_kernel_prolong       4 0.0 7.4211e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aae7715250_wrap_pyop2_kernel_prolong       4 0.0 3.5703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdfb6e4e90_wrap_pyop2_kernel_prolong       4 0.0 7.4061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdfb6e67d0_wrap_pyop2_kernel_prolong       4 0.0 3.9932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4a116e290_wrap_pyop2_kernel_prolong       4 0.0 7.4283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4a116ef50_wrap_pyop2_kernel_prolong       4 0.0 2.6088e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a88d54810_wrap_pyop2_kernel_prolong       4 0.0 7.4224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a836b72d0_wrap_pyop2_kernel_prolong       4 0.0 2.8929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15370e64d990_wrap_pyop2_kernel_prolong       4 0.0 7.3912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15370e8c3e90_wrap_pyop2_kernel_prolong       4 0.0 3.4169e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af97b59690_wrap_pyop2_kernel_prolong       4 0.0 7.4153e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af97279f50_wrap_pyop2_kernel_prolong       4 0.0 3.1294e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab63f3add0_wrap_pyop2_kernel_prolong       4 0.0 7.3669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab63f611d0_wrap_pyop2_kernel_prolong       4 0.0 3.7171e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550263cb410_wrap_pyop2_kernel_prolong       4 0.0 7.3954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15502587be50_wrap_pyop2_kernel_prolong       4 0.0 3.1784e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482e392da10_wrap_pyop2_kernel_prolong       4 0.0 7.3621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482e398ab90_wrap_pyop2_kernel_prolong       4 0.0 2.9793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f446d497d0_wrap_pyop2_kernel_prolong       4 0.0 7.3663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f446d2ff90_wrap_pyop2_kernel_prolong       4 0.0 3.1904e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153da5f2ac50_wrap_pyop2_kernel_prolong       4 0.0 7.3659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153da5f29ad0_wrap_pyop2_kernel_prolong       4 0.0 3.0598e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e33a29950_wrap_pyop2_kernel_prolong       4 0.0 7.3935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e33a2ad50_wrap_pyop2_kernel_prolong       4 0.0 3.4501e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c839060f10_wrap_pyop2_kernel_prolong       4 0.0 7.3635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c838de9a90_wrap_pyop2_kernel_prolong       4 0.0 3.7307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d201162610_wrap_pyop2_kernel_prolong       4 0.0 7.4164e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d201160b10_wrap_pyop2_kernel_prolong       4 0.0 3.7283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459d29fdad0_wrap_pyop2_kernel_prolong       4 0.0 7.3656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459d299e010_wrap_pyop2_kernel_prolong       4 0.0 4.0620e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2a48c7490_wrap_pyop2_kernel_prolong       4 0.0 7.3918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2a48c6890_wrap_pyop2_kernel_prolong       4 0.0 2.7174e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15287919fa50_wrap_pyop2_kernel_prolong       4 0.0 7.4013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152879221bd0_wrap_pyop2_kernel_prolong       4 0.0 2.9410e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5e9fb4d10_wrap_pyop2_kernel_prolong       4 0.0 7.4299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5e957a950_wrap_pyop2_kernel_prolong       4 0.0 3.3883e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c9df8df10_wrap_pyop2_kernel_prolong       4 0.0 7.3627e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c9df5fa10_wrap_pyop2_kernel_prolong       4 0.0 2.7798e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e912297cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e912151910_wrap_pyop2_kernel_prolong       4 0.0 3.3663e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbcad3d790_wrap_pyop2_kernel_prolong       4 0.0 7.3674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbcad63610_wrap_pyop2_kernel_prolong       4 0.0 3.4962e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518e1388e90_wrap_pyop2_kernel_prolong       4 0.0 7.3985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518e1113090_wrap_pyop2_kernel_prolong       4 0.0 3.6916e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474768b8a10_wrap_pyop2_kernel_prolong       4 0.0 7.3739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147475ee92d0_wrap_pyop2_kernel_prolong       4 0.0 3.4896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15317e161750_wrap_pyop2_kernel_prolong       4 0.0 7.3760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15317e161710_wrap_pyop2_kernel_prolong       4 0.0 3.4329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546e91fb790_wrap_pyop2_kernel_prolong       4 0.0 7.3796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546e9aecf90_wrap_pyop2_kernel_prolong       4 0.0 3.3882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153694a0e8d0_wrap_pyop2_kernel_prolong       4 0.0 7.3906e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15368fe0e1d0_wrap_pyop2_kernel_prolong       4 0.0 3.5036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b9420c550_wrap_pyop2_kernel_prolong       4 0.0 7.4123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b940795d0_wrap_pyop2_kernel_prolong       4 0.0 3.7261e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4b64da8d0_wrap_pyop2_kernel_prolong       4 0.0 7.3650e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4b64edfd0_wrap_pyop2_kernel_prolong       4 0.0 3.5929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e978b2df50_wrap_pyop2_kernel_prolong       4 0.0 7.4842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e97331bf90_wrap_pyop2_kernel_prolong       4 0.0 2.7679e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe5a996010_wrap_pyop2_kernel_prolong       4 0.0 7.3972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe5a980dd0_wrap_pyop2_kernel_prolong       4 0.0 3.2490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490b12ffcd0_wrap_pyop2_kernel_prolong       4 0.0 7.3889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490b0bb9850_wrap_pyop2_kernel_prolong       4 0.0 4.0221e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147602498910_wrap_pyop2_kernel_prolong       4 0.0 7.4773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476022cda10_wrap_pyop2_kernel_prolong       4 0.0 3.5057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d46619b50_wrap_pyop2_kernel_prolong       4 0.0 7.4366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d46619810_wrap_pyop2_kernel_prolong       4 0.0 3.3336e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7de3060d0_wrap_pyop2_kernel_prolong       4 0.0 7.4338e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7de305ad0_wrap_pyop2_kernel_prolong       4 0.0 2.8811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14721e4a9cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14721e4a9950_wrap_pyop2_kernel_prolong       4 0.0 2.8148e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553e13275d0_wrap_pyop2_kernel_prolong       4 0.0 7.4931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553e1326c50_wrap_pyop2_kernel_prolong       4 0.0 2.8867e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3abc96bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3ab0ca510_wrap_pyop2_kernel_prolong       4 0.0 3.1665e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4c8a07650_wrap_pyop2_kernel_prolong       4 0.0 7.4444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4c87e59d0_wrap_pyop2_kernel_prolong       4 0.0 3.6802e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaea067490_wrap_pyop2_kernel_prolong       4 0.0 7.4755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaea0676d0_wrap_pyop2_kernel_prolong       4 0.0 3.3598e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a9f8dd890_wrap_pyop2_kernel_prolong       4 0.0 7.4689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a9f8dda10_wrap_pyop2_kernel_prolong       4 0.0 3.7252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15092d5f7390_wrap_pyop2_kernel_prolong       4 0.0 7.4882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15092dfd9650_wrap_pyop2_kernel_prolong       4 0.0 4.1678e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba3ac1250_wrap_pyop2_kernel_prolong       4 0.0 7.3632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba3a57150_wrap_pyop2_kernel_prolong       4 0.0 2.7676e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dca5277110_wrap_pyop2_kernel_prolong       4 0.0 7.3624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dca5225290_wrap_pyop2_kernel_prolong       4 0.0 3.1976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c883e93710_wrap_pyop2_kernel_prolong       4 0.0 7.4691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c883e91890_wrap_pyop2_kernel_prolong       4 0.0 2.8084e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153532b6d710_wrap_pyop2_kernel_prolong       4 0.0 7.4682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153532befdd0_wrap_pyop2_kernel_prolong       4 0.0 3.1850e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463b811e8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463b81aac10_wrap_pyop2_kernel_prolong       4 0.0 3.0802e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f1596b990_wrap_pyop2_kernel_prolong       4 0.0 7.5016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f15969650_wrap_pyop2_kernel_prolong       4 0.0 4.0310e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd6cbc54d0_wrap_pyop2_kernel_prolong       4 0.0 7.3761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd6cbc6fd0_wrap_pyop2_kernel_prolong       4 0.0 2.9517e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499e73a1f50_wrap_pyop2_kernel_prolong       4 0.0 7.4655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499e739d510_wrap_pyop2_kernel_prolong       4 0.0 3.5140e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8f3646790_wrap_pyop2_kernel_prolong       4 0.0 7.4369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8f3645f50_wrap_pyop2_kernel_prolong       4 0.0 4.0368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152032bca690_wrap_pyop2_kernel_prolong       4 0.0 7.4681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152032bc98d0_wrap_pyop2_kernel_prolong       4 0.0 3.1037e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a379de650_wrap_pyop2_kernel_prolong       4 0.0 7.4933e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a378dba90_wrap_pyop2_kernel_prolong       4 0.0 3.5771e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee56dde890_wrap_pyop2_kernel_prolong       4 0.0 7.3841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee5643bc10_wrap_pyop2_kernel_prolong       4 0.0 3.7115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153943819990_wrap_pyop2_kernel_prolong       4 0.0 7.4393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539438121d0_wrap_pyop2_kernel_prolong       4 0.0 3.3015e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f55f5af210_wrap_pyop2_kernel_prolong       4 0.0 7.4386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f55f5b70d0_wrap_pyop2_kernel_prolong       4 0.0 2.6284e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488bfe76450_wrap_pyop2_kernel_prolong       4 0.0 7.3790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488bfe8f2d0_wrap_pyop2_kernel_prolong       4 0.0 3.5857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464af3ba050_wrap_pyop2_kernel_prolong       4 0.0 7.3664e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464af181810_wrap_pyop2_kernel_prolong       4 0.0 3.6206e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffd0b77ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffd0b626d0_wrap_pyop2_kernel_prolong       4 0.0 3.3450e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15458d89c290_wrap_pyop2_kernel_prolong       4 0.0 7.3823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15458d89d110_wrap_pyop2_kernel_prolong       4 0.0 3.4131e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b4f1a3310_wrap_pyop2_kernel_prolong       4 0.0 7.3655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b4f0a3d90_wrap_pyop2_kernel_prolong       4 0.0 3.5994e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150faabfc790_wrap_pyop2_kernel_prolong       4 0.0 7.3628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150faac13b50_wrap_pyop2_kernel_prolong       4 0.0 3.1977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf64bacc90_wrap_pyop2_kernel_prolong       4 0.0 7.3640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf64baf390_wrap_pyop2_kernel_prolong       4 0.0 3.3712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149aa2503f10_wrap_pyop2_kernel_prolong       4 0.0 7.4732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149aa23dff90_wrap_pyop2_kernel_prolong       4 0.0 3.2937e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149856c57710_wrap_pyop2_kernel_prolong       4 0.0 7.4243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149856cdeb10_wrap_pyop2_kernel_prolong       4 0.0 3.2961e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155096627c10_wrap_pyop2_kernel_prolong       4 0.0 7.3664e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155096643550_wrap_pyop2_kernel_prolong       4 0.0 3.7650e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b3cfce210_wrap_pyop2_kernel_prolong       4 0.0 7.4167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b3cfa8c50_wrap_pyop2_kernel_prolong       4 0.0 3.2377e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a07e297bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3630e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a07e3b7ed0_wrap_pyop2_kernel_prolong       4 0.0 3.2651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b30fe4b2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b30fecba10_wrap_pyop2_kernel_prolong       4 0.0 2.7917e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146592f7f690_wrap_pyop2_kernel_prolong       4 0.0 7.3912e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146592f7d7d0_wrap_pyop2_kernel_prolong       4 0.0 3.8226e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e491da5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e491dac90_wrap_pyop2_kernel_prolong       4 0.0 3.2081e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6f6529f90_wrap_pyop2_kernel_prolong       4 0.0 7.4547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6f652bb10_wrap_pyop2_kernel_prolong       4 0.0 3.6404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b3a921ad0_wrap_pyop2_kernel_prolong       4 0.0 7.3699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b3a923c50_wrap_pyop2_kernel_prolong       4 0.0 3.5087e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b42c804d10_wrap_pyop2_kernel_prolong       4 0.0 7.4413e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b42c8355d0_wrap_pyop2_kernel_prolong       4 0.0 3.6827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fc36221d0_wrap_pyop2_kernel_prolong       4 0.0 7.3718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fc3623910_wrap_pyop2_kernel_prolong       4 0.0 3.2653e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484b13040d0_wrap_pyop2_kernel_prolong       4 0.0 7.3610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484b1331d90_wrap_pyop2_kernel_prolong       4 0.0 2.8941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b570f9a10_wrap_pyop2_kernel_prolong       4 0.0 7.4672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b570f8950_wrap_pyop2_kernel_prolong       4 0.0 3.9236e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c98cbfa010_wrap_pyop2_kernel_prolong       4 0.0 7.3673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c98cbf82d0_wrap_pyop2_kernel_prolong       4 0.0 3.2569e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ea6ed04d0_wrap_pyop2_kernel_prolong       4 0.0 7.4946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ea7262350_wrap_pyop2_kernel_prolong       4 0.0 4.1527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaaf042150_wrap_pyop2_kernel_prolong       4 0.0 7.4963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaaf040f10_wrap_pyop2_kernel_prolong       4 0.0 3.8116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509fd228910_wrap_pyop2_kernel_prolong       4 0.0 7.4033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509fd229810_wrap_pyop2_kernel_prolong       4 0.0 3.9078e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         75 1.0 5.9682e-03 4.8 0.00e+00 0.0 4.7e+04 4.0e+00 7.5e+01  0  0  1  0  1   0  0  1  0  4    -0
SFSetGraph            75 1.0 3.2629e-03 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               75 1.0 8.0608e-03 2.2 0.00e+00 0.0 9.4e+04 2.3e+02 7.5e+01  0  0  2  0  1   0  0  2  0  4    -0
SFPack              9793 1.0 1.0284e+00 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            9793 1.0 8.1138e-03 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1399 1.0 8.2759e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              5595 1.0 5.9891e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             5596 1.0 3.6472e+00 1.5 2.42e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 66459
VecAYPX             5596 1.0 3.9028e+00 2.1 1.21e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 31054
VecScatterBegin     9793 1.0 1.2552e+00 2.7 0.00e+00 0.0 3.8e+06 4.7e+04 0.0e+00  0  0 65 50  0   0  0 94 100  0    -0
VecScatterEnd       9793 1.0 2.3782e+01 40.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult             5596 1.0 1.2618e+02 1.2 8.56e+10 1.2 2.9e+06 6.0e+04 0.0e+00 23 15 50 50  0  45 46 72 100  0 67840
MatMultAdd          1399 1.0 4.0929e+00 1.3 1.81e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 44417
MatMultTranspose    1399 1.0 3.0216e+00 2.2 1.81e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 60165
MatSolve            6995 1.0 1.3091e+02 1.2 8.38e+10 1.2 1.1e+06 7.7e+02 3.8e+02 24 14 19  0  5  48 45 28  0 21 63544
MatLUFactorNum        67 1.0 5.4002e+00 1.3 9.13e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 165260
MatResidual         1399 1.0 3.3936e+01 1.2 2.17e+10 1.2 7.3e+05 6.0e+04 0.0e+00  6  4 13 12  0  12 12 18 25  0 63953
PCSetUpOnBlocks     2798 1.0 5.4219e+00 1.3 9.13e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 164599
PCApply             6995 1.0 1.3102e+02 1.2 8.38e+10 1.2 1.1e+06 7.7e+02 3.8e+02 24 14 19  0  5  48 45 28  0 21 63489
PCApplyOnBlocks     5596 1.0 1.2483e+02 1.2 8.35e+10 1.2 0.0e+00 0.0e+00 0.0e+00 23 14  0  0  0  45 45  0  0  0 66438
KSPSolve            4197 1.0 2.2016e+02 1.1 1.51e+11 1.2 3.3e+06 4.0e+04 1.8e+03 43 26 57 37 22  84 81 82 75 100 68457
MGSmooth Level 0    1399 1.0 1.0839e+01 1.9 9.93e+08 18.6 1.1e+06 7.7e+02 1.8e+03  2  0 19  0 22   3  0 28  0 100  2282
MGSmooth Level 1    2798 1.0 2.1935e+02 1.1 1.60e+11 1.2 2.2e+06 6.0e+04 0.0e+00 42 27 38 37  0  83 86 54 75  0 72667
MGResid Level 1     1399 1.0 3.3942e+01 1.2 2.17e+10 1.2 7.3e+05 6.0e+04 0.0e+00  6  4 13 12  0  12 12 18 25  0 63941
MGInterp Level 1    2798 1.0 6.5920e+00 1.4 3.63e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 55156
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
         PetscRandom     8              8
           Index Set  1520           1520
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   384            459
              Vector   583            583
              Matrix   136            136
      Preconditioner     6              6
       Krylov Solver    13             13
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   118            118
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   173            173
           Weak Form   173            173
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   150            150
   Star Forest Graph    75              0
              Vector    75             75
========================================================================================================================
Average time to get PetscTime(): 2.54e-08
Average time for MPI_Barrier(): 4.375e-06
Average time for zero size MPI_Send(): 2.19833e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_inexact_rich_lag3/smoke.profile # (source: code)
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

