****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0213.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 17:07:21 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.665e+02     1.000   9.665e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.595e+12     1.200   1.501e+12  1.561e+14
Flops/sec:            1.650e+09     1.200   1.553e+09  1.615e+11
MPI Msg Count:        8.814e+04     3.255   6.037e+04  6.278e+06
MPI Msg Len (bytes):  1.056e+10     2.994   1.234e+05  7.747e+11
MPI Reductions:       1.013e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.1228e+02  53.0%  1.1940e+14  76.5%  2.187e+06  34.8%  2.182e+05       61.6%  7.508e+03  74.1%
 1:        MG Apply: 4.5424e+02  47.0%  3.6692e+13  23.5%  4.091e+06  65.2%  7.271e+04       38.4%  2.605e+03  25.7%

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

BuildTwoSided       1538 1.0 6.0952e+01 6.9 0.00e+00 0.0 1.1e+05 4.0e+00 1.5e+03  4  0  2  0 15   7  0  5  0 20    -0
BuildTwoSidedF      1441 1.0 6.0828e+01 8.1 0.00e+00 0.0 1.5e+05 1.5e+06 1.4e+03  4  0  2 28 14   7  0  7 46 19    -0
SFSetGraph           104 1.0 7.0912e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 2.8422e+00 115.7 0.00e+00 0.0 6.9e+04 1.1e+03 9.7e+01  0  0  1  0  1   0  0  3  0  1    -0
SFBcastBegin        1147 1.0 5.5870e-01 3.2 0.00e+00 0.0 5.7e+05 9.6e+04 0.0e+00  0  0  9  7  0   0  0 26 12  0    -0
SFBcastEnd          1147 1.0 1.7945e+01 75.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        580 1.0 1.3305e-01 18.7 0.00e+00 0.0 3.0e+05 1.1e+05 0.0e+00  0  0  5  4  0   0  0 14  7  0    -0
SFReduceEnd          580 1.0 6.1188e+00 59.7 5.82e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   698
SFFetchOpBegin         6 1.0 2.9096e-05 4.7 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.5260e-04 7.8 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.3661e-04 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.2491e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  1   0  0  3  0  1    -0
SFSectionSF           51 1.0 2.7546e-03 1.9 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
SFRemoteOff            2 1.0 8.0338e-05 2.4 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              3520 1.0 1.2427e+00 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3526 1.0 2.8039e-01 7.1 5.82e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15225
VecDot               287 1.0 1.1011e+00 5.4 2.48e+08 1.2 0.0e+00 0.0e+00 2.9e+02  0  0  0  0  3   0  0  0  0  4 22580
VecMDot             1500 1.0 1.5495e+01 3.6 5.70e+09 1.2 0.0e+00 0.0e+00 1.5e+03  1  0  0  0 15   2  0  0  0 20 36893
VecNorm             2933 1.0 1.1354e+01 5.8 2.53e+09 1.2 0.0e+00 0.0e+00 2.9e+03  1  0  0  0 29   1  0  0  0 39 22379
VecScale            1804 1.0 7.0941e-01 1.4 7.79e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110149
VecCopy             2278 1.0 3.2812e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet               592 1.0 5.4376e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              304 1.0 6.0892e-01 1.2 2.63e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 43250
VecWAXPY             506 1.0 1.1177e+00 1.2 3.13e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 28096
VecMAXPY            1804 1.0 9.0593e+00 1.2 7.00e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 77447
VecScatterBegin     1787 1.0 7.6946e-01 3.4 0.00e+00 0.0 9.4e+05 1.2e+05 0.0e+00  0  0 15 15  0   0  0 43 24  0    -0
VecScatterEnd       1787 1.0 1.4737e+01 26.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          16 1.0 6.3354e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       574 1.0 4.5369e-01 1.4 4.96e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 109602
VecReduceComm        287 1.0 3.0550e-01 47.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.9e+02  0  0  0  0  3   0  0  0  0  4    -0
VecNormalize         347 1.0 1.2875e+00 3.5 4.50e+08 1.2 0.0e+00 0.0e+00 3.5e+02  0  0  0  0  3   0  0  0  0  5 35022
MatMult             1787 1.0 7.7968e+01 1.1 5.47e+10 1.2 9.4e+05 1.2e+05 0.0e+00  7  4 15 15  0  14  5 43 24  0 70198
MatSolve             347 1.0 1.4800e+01 1.2 1.04e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  1  0  0  0 69576
MatLUFactorSym         1 1.0 3.3516e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       303 1.0 1.0221e+01 1.0 4.40e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0 42060
MatILUFactorSym        1 1.0 1.6748e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    2064 1.0 6.0855e+01 3.6 0.00e+00 0.0 1.5e+05 1.5e+06 1.4e+03  4  0  2 28 14   8  0  7 46 19    -0
MatAssemblyEnd      2064 1.0 1.4230e+01 8.6 3.22e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0   959
MatGetRowIJ            1 1.0 5.9070e-06 48.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.6359e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       574 1.0 1.1530e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 1.5082e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.6148e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        574 1.0 4.9355e+00 1.1 8.93e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 180605
MatPtAPSymbolic        1 1.0 2.1255e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       287 1.0 3.1714e+01 1.0 3.57e+10 1.2 1.5e+05 3.6e+05 2.9e+02  3  2  2  7  3   6  3  7 11  4 112441
MatGetLocalMat       287 1.0 2.2166e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        287 1.0 1.0819e+00 1.9 0.00e+00 0.0 1.5e+05 3.6e+05 0.0e+00  0  0  2  7  0   0  0  7 11  0    -0
MatSetPreallCOO       32 1.0 1.1198e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 5.6535e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              287 1.0 8.3173e+01 1.0 6.75e+10 1.2 3.3e+05 2.3e+05 1.6e+03  9  4  5 10 16  16  6 15 16 21 80911
PCApply             1170 1.0 4.5855e+02 1.0 3.69e+11 1.2 4.1e+06 7.3e+04 2.6e+03 47 24 65 38 26 Multiple stages 80017
PCApplyOnBlocks      347 1.0 1.4804e+01 1.2 1.04e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  1  0  0  0 69556
KSPSetUp             287 1.0 2.1089e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             287 1.0 5.1554e+02 1.0 4.14e+11 1.2 4.7e+06 7.9e+04 5.2e+03 53 26 75 48 52 Multiple stages 79803
KSPGMRESOrthog      1500 1.0 2.1785e+01 1.9 1.14e+10 1.2 0.0e+00 0.0e+00 1.5e+03  2  1  0  0 15   3  1  0  0 20 52482
DMRefine               2 1.0 1.8580e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     1
DMPlexCreateGmsh       1 1.0 1.2160e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.0561e+00 83.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 4.3285e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.0588e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexPartSelf         1 1.0 1.2058e-03 600.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 5.5540e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.5621e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.8316e-03 1.3 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 8.4008e-04 2.0 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.4186e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.6696e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.3524e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.4034e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistOvrlp        3 1.0 8.4320e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  2   0  0  4  0  3    -0
DMPlexDistField        7 1.0 1.9651e-03 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 4.4774e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9625e-04 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.4970e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.5893e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.7928e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 4.7807e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.2896e-04 2.0 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 1.4963e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.9383e-04 1.5 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             33 1.0 8.9110e+02 1.0 1.59e+12 1.2 6.1e+06 1.3e+05 9.4e+03 92 100 97 100 92 Multiple stages 175153
SNESSetUp              1 1.0 7.0614e-05 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     539 1.0 5.1165e+01 1.2 5.24e+11 1.2 5.8e+05 1.2e+05 0.0e+00  5 32  9  9  0   9 42 27 15  0 989872
SNESJacobianEval     287 1.0 2.2630e+02 1.0 5.83e+11 1.2 3.0e+05 7.9e+05 1.1e+03 23 36  5 31 11  44 47 14 50 15 249689
SNESLineSearch       287 1.0 5.3307e+01 1.0 5.03e+11 1.2 6.8e+05 1.2e+05 1.4e+03  5 31 11 11 13  10 41 31 17 18 911687
DualSpaceSetUp         8 1.0 1.0851e-02 2.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     1
FESetUp                8 1.0 1.4622e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 9.6168e+02 1.0 1.59e+12 1.2 6.3e+06 1.2e+05 1.0e+04 99 100 100 100 100 Multiple stages 162308
firedrake.__init__       1 1.0 1.5002e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateMesh             3 1.0 1.1529e+00 10.6 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  3  0  4   0  0  8  0  6    -0
firedrake.mesh._from_gmsh       1 1.0 1.0568e+00 83.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 8.8653e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 7.7370e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.4753e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.2090e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.2449e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.6265e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.0425e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.7680e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.7559e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.3383e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.2224e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5262e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.2728e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 1.7767e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 6.1529e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2462e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.1829e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.3331e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 6.1464e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     394 1.0 6.4251e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      3863 1.0 2.4575e+02 1.2 1.11e+12 1.2 4.6e+05 1.2e+05 3.2e+01 23 69  7  7  0  44 90 21 12  0 435974
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 6.1042e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    7726 1.0 3.1032e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0466e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.5519e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.3796e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 2.0297e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      17 1.0 2.0296e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 1.0889e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 1.0704e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    3863 1.0 1.0670e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      3863 1.0 1.0545e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.3541e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 7.3339e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   199
firedrake.interpolation.interpolate      13 1.0 4.9715e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.5488e+00 1.0 9.06e+07 1.2 1.4e+04 4.2e+04 3.7e+01  1  0  0  0  0   1  0  1  0  0  1387
firedrake.formmanipulation.split_form      14 1.0 4.5296e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.9146e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.4288e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 9.9455e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     880 1.0 3.6727e+00 13.2 0.00e+00 0.0 4.7e+05 1.2e+05 4.0e+00  0  0  7  7  0   0  0 21 12  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 6.0772e+00 1.0 9.06e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1495
firedrake.halo.Halo.global_to_local_end     880 1.0 1.7481e+01 99.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 2.2874e+00 36.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4bf61bbd0_wrap_pyop2_kernel_prolong       4 0.0 8.1696e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4bf6124d0_wrap_pyop2_kernel_prolong       4 0.0 5.9831e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.4084e+00 1.0 7.34e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  1670
firedrake.function.Function.assign     146 1.0 8.6909e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     145 1.0 8.2944e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1241e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      70 1.0 8.8327e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.3381e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.6871e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9368e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.4331e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.1574e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.5395e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6468e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1184e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1184e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 3.7446e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.9908e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      33 1.0 8.9122e+02 1.0 1.59e+12 1.2 6.1e+06 1.3e+05 9.4e+03 92 100 97 100 93 Multiple stages 175129
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.7644e-01 1106.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.3260e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.7639e-01 1352.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.7636e-01 1560.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1078 1.0 1.3271e+01 1.4 1.34e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   2 11  0  0  0 1010660
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1078 1.0 1.1037e+00 1.0 1.72e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1563
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1078 1.0 1.5349e+00 1.1 1.29e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14830
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1078 1.0 8.9128e+00 1.3 1.27e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   2 11  0  0  0 1430255
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1078 1.0 1.9791e+01 1.4 2.63e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 16  0  0  0   3 20  0  0  0 1235809
firedrake.halo.Halo.local_to_global_begin     539 1.0 1.4764e-01 7.6 0.00e+00 0.0 2.8e+05 1.2e+05 0.0e+00  0  0  4  4  0   0  0 13  7  0    -0
firedrake.halo.Halo.local_to_global_end     539 1.0 6.1239e+00 56.3 5.82e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   697
Parloop_Cells_wrap_form00_cell_integral     574 1.0 3.7229e+01 1.4 1.32e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   6 11  0  0  0 356238
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     574 1.0 2.2614e+00 1.9 6.90e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5392
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     574 1.0 4.6477e+01 1.3 1.74e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4 11  0  0  0   8 15  0  0  0 375398
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     574 1.0 1.0504e+02 1.4 2.77e+11 1.3 0.0e+00 0.0e+00 0.0e+00  9 17  0  0  0  18 22  0  0  0 245338
firedrake.dmhooks.get_function_space       1 1.0 1.6386e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1476e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      287 1.0 8.0151e+00 1.0 1.10e+08 12.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   357
MGSetup Level 1      287 1.0 1.4136e+00 1.0 1.03e+09 1.2 5.2e+03 1.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 72064
firedrake.constant.Constant.assign      33 1.0 1.6683e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534958389d0_wrap_pyop2_kernel_prolong       4 0.0 8.1688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15349583af90_wrap_pyop2_kernel_prolong       4 0.0 5.3819e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463360b6550_wrap_pyop2_kernel_prolong       4 0.0 8.1741e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463360b5f50_wrap_pyop2_kernel_prolong       4 0.0 6.7562e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b6a345d10_wrap_pyop2_kernel_prolong       4 0.0 8.1705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b6a346190_wrap_pyop2_kernel_prolong       4 0.0 6.3657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e780b9f3d0_wrap_pyop2_kernel_prolong       4 0.0 8.1707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e780be2410_wrap_pyop2_kernel_prolong       4 0.0 6.8339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484f73e06d0_wrap_pyop2_kernel_prolong       4 0.0 8.1788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484f73d1350_wrap_pyop2_kernel_prolong       4 0.0 7.6214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15068d120810_wrap_pyop2_kernel_prolong       4 0.0 8.1707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15068ce97d50_wrap_pyop2_kernel_prolong       4 0.0 6.2485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c758e2990_wrap_pyop2_kernel_prolong       4 0.0 8.1682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c74f69e10_wrap_pyop2_kernel_prolong       4 0.0 5.2895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154be1aafe10_wrap_pyop2_kernel_prolong       4 0.0 8.1746e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154be1a6d210_wrap_pyop2_kernel_prolong       4 0.0 6.9561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e46d491b90_wrap_pyop2_kernel_prolong       4 0.0 8.1686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e46d493bd0_wrap_pyop2_kernel_prolong       4 0.0 5.0570e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb7050f50_wrap_pyop2_kernel_prolong       4 0.0 8.1766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14feb727ad90_wrap_pyop2_kernel_prolong       4 0.0 7.5536e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bc1077a10_wrap_pyop2_kernel_prolong       4 0.0 8.1673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147bc10758d0_wrap_pyop2_kernel_prolong       4 0.0 6.5719e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b637ce810_wrap_pyop2_kernel_prolong       4 0.0 8.1720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b637ce350_wrap_pyop2_kernel_prolong       4 0.0 6.8229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f779e88d0_wrap_pyop2_kernel_prolong       4 0.0 8.1557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f7782a7d0_wrap_pyop2_kernel_prolong       4 0.0 5.5183e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b83af4e610_wrap_pyop2_kernel_prolong       4 0.0 8.1710e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b83af4e210_wrap_pyop2_kernel_prolong       4 0.0 6.4817e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151be97c5290_wrap_pyop2_kernel_prolong       4 0.0 8.1712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151be9840c90_wrap_pyop2_kernel_prolong       4 0.0 6.5625e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cee5f7c890_wrap_pyop2_kernel_prolong       4 0.0 8.1568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cee56257d0_wrap_pyop2_kernel_prolong       4 0.0 5.5754e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a82785210_wrap_pyop2_kernel_prolong       4 0.0 8.1679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a83b07bd0_wrap_pyop2_kernel_prolong       4 0.0 7.0377e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150128babe50_wrap_pyop2_kernel_prolong       4 0.0 8.1640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150128a61dd0_wrap_pyop2_kernel_prolong       4 0.0 6.2278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a08907e90_wrap_pyop2_kernel_prolong       4 0.0 8.1652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a089055d0_wrap_pyop2_kernel_prolong       4 0.0 6.1697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534182ebd50_wrap_pyop2_kernel_prolong       4 0.0 8.1700e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534182bebd0_wrap_pyop2_kernel_prolong       4 0.0 6.6705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1aca112d0_wrap_pyop2_kernel_prolong       4 0.0 8.1753e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1accb1850_wrap_pyop2_kernel_prolong       4 0.0 7.9134e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e526aa50_wrap_pyop2_kernel_prolong       4 0.0 8.1752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e4838790_wrap_pyop2_kernel_prolong       4 0.0 6.9608e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15277acb2310_wrap_pyop2_kernel_prolong       4 0.0 8.1617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15277a1b8c50_wrap_pyop2_kernel_prolong       4 0.0 6.2440e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acfe8aa7d0_wrap_pyop2_kernel_prolong       4 0.0 8.1661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acfe8ab990_wrap_pyop2_kernel_prolong       4 0.0 6.9794e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf68f9c450_wrap_pyop2_kernel_prolong       4 0.0 8.1728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf6976ec10_wrap_pyop2_kernel_prolong       4 0.0 8.1555e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15055d369050_wrap_pyop2_kernel_prolong       4 0.0 8.1648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15055d391fd0_wrap_pyop2_kernel_prolong       4 0.0 5.1170e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2c8cdc650_wrap_pyop2_kernel_prolong       4 0.0 8.1643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2c8cdff10_wrap_pyop2_kernel_prolong       4 0.0 5.5686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470e2ee7990_wrap_pyop2_kernel_prolong       4 0.0 8.1714e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470e2ee48d0_wrap_pyop2_kernel_prolong       4 0.0 6.7734e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148898f71cd0_wrap_pyop2_kernel_prolong       4 0.0 8.1583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148898f7cd50_wrap_pyop2_kernel_prolong       4 0.0 5.7875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b90ef93a50_wrap_pyop2_kernel_prolong       4 0.0 8.1727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b90ef90710_wrap_pyop2_kernel_prolong       4 0.0 7.0186e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e41521a90_wrap_pyop2_kernel_prolong       4 0.0 8.1691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e41551d50_wrap_pyop2_kernel_prolong       4 0.0 6.1801e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed24210050_wrap_pyop2_kernel_prolong       4 0.0 8.1640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed24237bd0_wrap_pyop2_kernel_prolong       4 0.0 5.7477e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14739473e790_wrap_pyop2_kernel_prolong       4 0.0 8.1628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14738fe51210_wrap_pyop2_kernel_prolong       4 0.0 6.1656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a95b356150_wrap_pyop2_kernel_prolong       4 0.0 8.1662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a95b355250_wrap_pyop2_kernel_prolong       4 0.0 5.9276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14defc47b4d0_wrap_pyop2_kernel_prolong       4 0.0 8.1686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14defc485790_wrap_pyop2_kernel_prolong       4 0.0 7.0590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482332607d0_wrap_pyop2_kernel_prolong       4 0.0 8.1705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14823321f050_wrap_pyop2_kernel_prolong       4 0.0 7.2681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d01b39d0_wrap_pyop2_kernel_prolong       4 0.0 8.1725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2d01b2590_wrap_pyop2_kernel_prolong       4 0.0 7.4513e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d18f87210_wrap_pyop2_kernel_prolong       4 0.0 8.1735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d18e27bd0_wrap_pyop2_kernel_prolong       4 0.0 8.0084e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dbe899850_wrap_pyop2_kernel_prolong       4 0.0 8.1602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dbde7d690_wrap_pyop2_kernel_prolong       4 0.0 5.5037e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d58c95de90_wrap_pyop2_kernel_prolong       4 0.0 8.1665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d58c95d490_wrap_pyop2_kernel_prolong       4 0.0 5.9350e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5f195fc10_wrap_pyop2_kernel_prolong       4 0.0 8.1718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5f227d710_wrap_pyop2_kernel_prolong       4 0.0 6.8717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498bd98f1d0_wrap_pyop2_kernel_prolong       4 0.0 8.1681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498bd98f550_wrap_pyop2_kernel_prolong       4 0.0 5.7269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5018a1a90_wrap_pyop2_kernel_prolong       4 0.0 8.1673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5018a2310_wrap_pyop2_kernel_prolong       4 0.0 6.5668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adf98ab010_wrap_pyop2_kernel_prolong       4 0.0 8.1675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adf991c490_wrap_pyop2_kernel_prolong       4 0.0 6.8143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e801bde490_wrap_pyop2_kernel_prolong       4 0.0 8.1754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e801bddd50_wrap_pyop2_kernel_prolong       4 0.0 7.2404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab21d8f850_wrap_pyop2_kernel_prolong       4 0.0 8.1757e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab21d6fc90_wrap_pyop2_kernel_prolong       4 0.0 6.7717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146548a31a50_wrap_pyop2_kernel_prolong       4 0.0 8.1747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146548a31650_wrap_pyop2_kernel_prolong       4 0.0 6.7018e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15513ef80ad0_wrap_pyop2_kernel_prolong       4 0.0 8.1734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15513ef70510_wrap_pyop2_kernel_prolong       4 0.0 6.5551e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455529ac690_wrap_pyop2_kernel_prolong       4 0.0 8.1768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455529b6110_wrap_pyop2_kernel_prolong       4 0.0 7.1886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e24123f950_wrap_pyop2_kernel_prolong       4 0.0 8.1685e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2408ab810_wrap_pyop2_kernel_prolong       4 0.0 7.2588e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e3e6b1dd0_wrap_pyop2_kernel_prolong       4 0.0 8.1694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e3e6b1790_wrap_pyop2_kernel_prolong       4 0.0 6.9192e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df99d3cbd0_wrap_pyop2_kernel_prolong       4 0.0 8.1567e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df99d1a4d0_wrap_pyop2_kernel_prolong       4 0.0 5.5679e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14556f21b510_wrap_pyop2_kernel_prolong       4 0.0 8.1619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14556e0fde10_wrap_pyop2_kernel_prolong       4 0.0 6.2868e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480abc46b10_wrap_pyop2_kernel_prolong       4 0.0 8.1727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480abecc3d0_wrap_pyop2_kernel_prolong       4 0.0 7.9112e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cad088ead0_wrap_pyop2_kernel_prolong       4 0.0 8.1639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cad088dfd0_wrap_pyop2_kernel_prolong       4 0.0 6.8400e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519669a3490_wrap_pyop2_kernel_prolong       4 0.0 8.1513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151966a2fbd0_wrap_pyop2_kernel_prolong       4 0.0 6.4779e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151540281110_wrap_pyop2_kernel_prolong       4 0.0 8.1573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515402a9f50_wrap_pyop2_kernel_prolong       4 0.0 5.8668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c18c08b10_wrap_pyop2_kernel_prolong       4 0.0 8.1472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c18c09b50_wrap_pyop2_kernel_prolong       4 0.0 5.4082e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be9d91f6d0_wrap_pyop2_kernel_prolong       4 0.0 8.1481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be9d9159d0_wrap_pyop2_kernel_prolong       4 0.0 5.3885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a267a16b90_wrap_pyop2_kernel_prolong       4 0.0 8.1561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2671ee450_wrap_pyop2_kernel_prolong       4 0.0 6.1027e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541e7b4aa10_wrap_pyop2_kernel_prolong       4 0.0 8.1593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541e7b75790_wrap_pyop2_kernel_prolong       4 0.0 7.2663e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bc99a8c90_wrap_pyop2_kernel_prolong       4 0.0 8.1563e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bca37f6d0_wrap_pyop2_kernel_prolong       4 0.0 6.4553e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f23611bbd0_wrap_pyop2_kernel_prolong       4 0.0 8.1610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f236025fd0_wrap_pyop2_kernel_prolong       4 0.0 7.3246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531594b0410_wrap_pyop2_kernel_prolong       4 0.0 8.1680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531594b2390_wrap_pyop2_kernel_prolong       4 0.0 8.0211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5d8be5dd0_wrap_pyop2_kernel_prolong       4 0.0 8.1516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5d8be77d0_wrap_pyop2_kernel_prolong       4 0.0 5.5464e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149df945df50_wrap_pyop2_kernel_prolong       4 0.0 8.1594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149df945d750_wrap_pyop2_kernel_prolong       4 0.0 6.1193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf5cf7c150_wrap_pyop2_kernel_prolong       4 0.0 8.1512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf5ce1be10_wrap_pyop2_kernel_prolong       4 0.0 5.4490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ddb145850_wrap_pyop2_kernel_prolong       4 0.0 8.1534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dda8b7e50_wrap_pyop2_kernel_prolong       4 0.0 6.4289e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152213b505d0_wrap_pyop2_kernel_prolong       4 0.0 8.1522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152213b35210_wrap_pyop2_kernel_prolong       4 0.0 6.0123e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca5d0e5bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca5cff90d0_wrap_pyop2_kernel_prolong       4 0.0 7.8558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f51e9f21d0_wrap_pyop2_kernel_prolong       4 0.0 8.1504e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f51e9f1210_wrap_pyop2_kernel_prolong       4 0.0 5.9600e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b38f2bbf10_wrap_pyop2_kernel_prolong       4 0.0 8.1619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b38f097110_wrap_pyop2_kernel_prolong       4 0.0 6.5276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15037f85e250_wrap_pyop2_kernel_prolong       4 0.0 8.1712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15037ef79b10_wrap_pyop2_kernel_prolong       4 0.0 7.8729e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546f1ba2650_wrap_pyop2_kernel_prolong       4 0.0 8.1534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546f198f190_wrap_pyop2_kernel_prolong       4 0.0 5.9139e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15470e5cb810_wrap_pyop2_kernel_prolong       4 0.0 8.1578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15470e455290_wrap_pyop2_kernel_prolong       4 0.0 6.9614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e7d66350_wrap_pyop2_kernel_prolong       4 0.0 8.1594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2e7d65990_wrap_pyop2_kernel_prolong       4 0.0 7.1999e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e730783510_wrap_pyop2_kernel_prolong       4 0.0 8.1584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e730783b10_wrap_pyop2_kernel_prolong       4 0.0 6.4045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15285da7b7d0_wrap_pyop2_kernel_prolong       4 0.0 8.1482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15285d80a7d0_wrap_pyop2_kernel_prolong       4 0.0 4.8666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483636acd90_wrap_pyop2_kernel_prolong       4 0.0 8.1524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483634cd510_wrap_pyop2_kernel_prolong       4 0.0 7.0028e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4408b1bd0_wrap_pyop2_kernel_prolong       4 0.0 8.1618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f440767cd0_wrap_pyop2_kernel_prolong       4 0.0 6.9940e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c81618e750_wrap_pyop2_kernel_prolong       4 0.0 8.1604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c81618c690_wrap_pyop2_kernel_prolong       4 0.0 6.5252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528ccff9850_wrap_pyop2_kernel_prolong       4 0.0 8.1566e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528cc6755d0_wrap_pyop2_kernel_prolong       4 0.0 6.5758e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b91223b7d0_wrap_pyop2_kernel_prolong       4 0.0 8.1773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9123d2590_wrap_pyop2_kernel_prolong       4 0.0 6.9663e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c08500190_wrap_pyop2_kernel_prolong       4 0.0 8.1501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c08295a50_wrap_pyop2_kernel_prolong       4 0.0 5.7648e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b7dc07290_wrap_pyop2_kernel_prolong       4 0.0 8.1524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b7de6d910_wrap_pyop2_kernel_prolong       4 0.0 6.6077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be8dd2a850_wrap_pyop2_kernel_prolong       4 0.0 8.1497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be8dea2b50_wrap_pyop2_kernel_prolong       4 0.0 6.3885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542463352d0_wrap_pyop2_kernel_prolong       4 0.0 8.1618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154246133810_wrap_pyop2_kernel_prolong       4 0.0 6.3590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da6c307950_wrap_pyop2_kernel_prolong       4 0.0 8.1627e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da6c221e90_wrap_pyop2_kernel_prolong       4 0.0 7.3038e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148139439c50_wrap_pyop2_kernel_prolong       4 0.0 8.1537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14813948b450_wrap_pyop2_kernel_prolong       4 0.0 6.2464e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9de95f290_wrap_pyop2_kernel_prolong       4 0.0 8.1564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9de7e1990_wrap_pyop2_kernel_prolong       4 0.0 6.3651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482d857fbd0_wrap_pyop2_kernel_prolong       4 0.0 8.1472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482d8561590_wrap_pyop2_kernel_prolong       4 0.0 5.4178e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ff7fa7610_wrap_pyop2_kernel_prolong       4 0.0 8.1573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ff7fd8050_wrap_pyop2_kernel_prolong       4 0.0 7.4405e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14608d6f2e90_wrap_pyop2_kernel_prolong       4 0.0 8.1592e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14608d6e5b10_wrap_pyop2_kernel_prolong       4 0.0 6.1653e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455fd012790_wrap_pyop2_kernel_prolong       4 0.0 8.1610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455fc86bbd0_wrap_pyop2_kernel_prolong       4 0.0 7.2550e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc9fbcced0_wrap_pyop2_kernel_prolong       4 0.0 8.1634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc9fbac410_wrap_pyop2_kernel_prolong       4 0.0 6.8026e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152253963810_wrap_pyop2_kernel_prolong       4 0.0 8.1541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15225394dc50_wrap_pyop2_kernel_prolong       4 0.0 7.2384e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbe8e3f690_wrap_pyop2_kernel_prolong       4 0.0 8.1553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbe8e3d550_wrap_pyop2_kernel_prolong       4 0.0 6.5938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512dea23e10_wrap_pyop2_kernel_prolong       4 0.0 8.1473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512de9ee2d0_wrap_pyop2_kernel_prolong       4 0.0 5.5970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c6b4f0290_wrap_pyop2_kernel_prolong       4 0.0 8.1662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c6b5783d0_wrap_pyop2_kernel_prolong       4 0.0 7.8635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaef902c90_wrap_pyop2_kernel_prolong       4 0.0 8.1584e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaef901c10_wrap_pyop2_kernel_prolong       4 0.0 6.3690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e13d2f790_wrap_pyop2_kernel_prolong       4 0.0 8.1643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e13d1dc10_wrap_pyop2_kernel_prolong       4 0.0 8.0410e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fc71d2710_wrap_pyop2_kernel_prolong       4 0.0 8.1641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fc71d2090_wrap_pyop2_kernel_prolong       4 0.0 7.4240e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152127217a50_wrap_pyop2_kernel_prolong       4 0.0 8.1705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15212721f650_wrap_pyop2_kernel_prolong       4 0.0 7.9549e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        287 1.0 1.8658e-02 4.5 0.00e+00 0.0 1.8e+05 4.0e+00 2.9e+02  0  0  3  0  3   0  0  4  0 11    -0
SFSetGraph           287 1.0 1.3033e-02 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              287 1.0 2.6697e-02 1.9 0.00e+00 0.0 3.6e+05 2.3e+02 2.9e+02  0  0  6  0  3   0  0  9  0 11    -0
SFPack              8190 1.0 1.8799e+00 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            8190 1.0 6.8599e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1170 1.0 1.5868e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              4679 1.0 1.0562e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             4680 1.0 6.7082e+00 1.4 4.04e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 60438
VecAYPX             4680 1.0 7.8741e+00 3.0 2.02e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 25744
VecScatterBegin     8190 1.0 2.0650e+00 3.2 0.00e+00 0.0 3.2e+06 9.3e+04 0.0e+00  0  0 51 38  0   0  0 78 100  0    -0
VecScatterEnd       8190 1.0 4.3707e+01 21.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             4680 1.0 2.1443e+02 1.2 1.43e+11 1.2 2.5e+06 1.2e+05 0.0e+00 20  9 39 38  0  42 39 60 100  0 66844
MatMultAdd          1170 1.0 6.4263e+00 1.2 3.03e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 47317
MatMultTranspose    1170 1.0 5.2553e+00 2.3 3.03e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 57861
MatSolve            5850 1.0 2.0938e+02 1.2 1.40e+11 1.2 1.6e+06 5.6e+02 1.4e+03 20  9 26  0 14  44 38 40  0 55 66428
MatLUFactorNum       271 1.0 4.3489e+01 1.2 7.40e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   9 20  0  0  0 166311
MatResidual         1170 1.0 5.5111e+01 1.2 3.64e+10 1.2 6.1e+05 1.2e+05 0.0e+00  5  2 10 10  0  11 10 15 25  0 65941
PCSetUpOnBlocks     2340 1.0 4.3517e+01 1.2 7.40e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   9 20  0  0  0 166205
PCApply             5850 1.0 2.0948e+02 1.2 1.40e+11 1.2 1.6e+06 5.6e+02 1.4e+03 20  9 26  0 14  44 38 40  0 55 66398
PCApplyOnBlocks     4680 1.0 2.0077e+02 1.2 1.40e+11 1.2 0.0e+00 0.0e+00 0.0e+00 20  9  0  0  0  42 38  0  0  0 69173
KSPSetUp               1 1.0 1.9070e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            3510 1.0 3.5735e+02 1.0 2.53e+11 1.2 3.5e+06 6.4e+04 2.6e+03 37 16 55 29 26  78 69 85 75 100 70566
MGSmooth Level 0    1170 1.0 1.4056e+01 3.2 8.64e+08 10.2 1.6e+06 5.6e+02 2.6e+03  1  0 26  0 26   2  0 40  0 100  1476
MGSmooth Level 1    2340 1.0 3.9468e+02 1.1 3.27e+11 1.2 1.8e+06 1.2e+05 0.0e+00 40 21 29 29  0  85 88 45 75  0 82164
MGResid Level 1     1170 1.0 5.5116e+01 1.2 3.64e+10 1.2 6.1e+05 1.2e+05 0.0e+00  5  2 10 10  0  11 10 15 25  0 65936
MGInterp Level 1    2340 1.0 1.1244e+01 1.4 6.07e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 54088
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   145            145
              Viewer     3              3
         PetscRandom    16             16
           Index Set  1515           1515
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   400            687
              Vector  1259           1258
              Matrix   132            132
      Preconditioner     6              6
       Krylov Solver    21             21
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   126            126
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   181            181
           Weak Form   181            181
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   574            574
   Star Forest Graph   287              0
              Vector   289            290
========================================================================================================================
Average time to get PetscTime(): 2.82e-08
Average time for MPI_Barrier(): 5.358e-06
Average time for zero size MPI_Send(): 2.27592e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal/vlumping/h1.profile # (source: code)
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

