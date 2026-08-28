****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0343.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 27 15:49:38 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           2.449e+03     1.000   2.449e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                4.472e+12     1.204   4.203e+12  4.371e+14
Flops/sec:            1.826e+09     1.204   1.716e+09  1.785e+11
MPI Msg Count:        2.531e+05     3.299   1.631e+05  1.696e+07
MPI Msg Len (bytes):  2.903e+10     2.996   1.256e+05  2.129e+12
MPI Reductions:       2.229e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.0784e+03  44.0%  3.3566e+14  76.8%  5.618e+06  33.1%  2.068e+05       54.6%  1.732e+04  77.7%
 1:        MG Apply: 1.3703e+03  56.0%  1.0143e+14  23.2%  1.134e+07  66.9%  8.532e+04       45.4%  4.953e+03  22.2%

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

BuildTwoSided       3069 1.0 1.3067e+02 8.9 0.00e+00 0.0 2.1e+05 4.0e+00 3.1e+03  3  0  1  0 14   6  0  4  0 18    -0
BuildTwoSidedF      2972 1.0 1.3030e+02 9.5 0.00e+00 0.0 3.6e+05 1.5e+06 3.0e+03  3  0  2 25 13   6  0  6 45 17    -0
SFSetGraph           104 1.0 7.1594e-03 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 2.6128e+00 126.8 0.00e+00 0.0 6.9e+04 1.1e+03 9.7e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin        2883 1.0 1.6059e+00 3.1 0.00e+00 0.0 1.5e+06 1.1e+05 0.0e+00  0  0  9  8  0   0  0 26 14  0    -0
SFBcastEnd          2883 1.0 4.5024e+01 105.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
SFReduceBegin       1917 1.0 4.6263e-01 20.4 0.00e+00 0.0 1.0e+06 1.2e+05 0.0e+00  0  0  6  6  0   0  0 18 10  0    -0
SFReduceEnd         1917 1.0 2.6286e+01 82.7 2.03e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   565
SFFetchOpBegin         6 1.0 2.4050e-05 3.1 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.7754e-04 7.8 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.8623e-04 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.8670e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 2.9946e-03 2.0 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 7.8399e-05 2.0 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              9728 1.0 3.7000e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            9734 1.0 8.9056e-01 12.6 2.03e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16684
VecDot               684 1.0 2.7277e+00 5.2 5.91e+08 1.2 0.0e+00 0.0e+00 6.8e+02  0  0  0  0  3   0  0  0  0  4 21723
VecMDot             4238 1.0 3.8228e+01 3.1 1.61e+10 1.2 0.0e+00 0.0e+00 4.2e+03  1  0  0  0 19   2  0  0  0 24 42201
VecNorm             7753 1.0 4.0849e+01 7.5 6.70e+09 1.2 0.0e+00 0.0e+00 7.8e+03  1  0  0  0 35   2  0  0  0 45 16442
VecScale            4944 1.0 1.9456e+00 1.4 2.14e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110068
VecCopy             6547 1.0 9.4140e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              1391 1.0 1.2917e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              706 1.0 1.3506e+00 1.2 6.10e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 45283
VecWAXPY            1841 1.0 4.2611e+00 1.2 1.30e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 30476
VecMAXPY            4944 1.0 2.5946e+01 1.2 1.98e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 76328
VecScatterBegin     4922 1.0 2.1097e+00 3.3 0.00e+00 0.0 2.6e+06 1.2e+05 0.0e+00  0  0 15 15  0   0  0 46 27  0    -0
VecScatterEnd       4922 1.0 4.1012e+01 34.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          21 1.0 8.1963e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith      1368 1.0 1.0767e+00 1.5 1.18e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110064
VecReduceComm        684 1.0 8.7839e-01 71.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.8e+02  0  0  0  0  3   0  0  0  0  4    -0
VecNormalize         452 1.0 1.6750e+00 3.6 5.86e+08 1.2 0.0e+00 0.0e+00 4.5e+02  0  0  0  0  2   0  0  0  0  3 35066
MatMult             4922 1.0 2.1992e+02 1.2 1.51e+11 1.2 2.6e+06 1.2e+05 0.0e+00  8  3 15 15  0  18  4 46 27  0 68549
MatSolve             452 1.0 1.9240e+01 1.2 1.35e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0 69716
MatLUFactorSym         1 1.0 4.0107e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       252 1.0 8.7780e+00 1.1 6.05e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 67154
MatILUFactorSym        2 1.0 3.3632e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy              228 1.0 1.2826e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 1.8654e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    3481 1.0 1.3036e+02 3.6 0.00e+00 0.0 3.6e+05 1.5e+06 3.0e+03  3  0  2 25 13   7  0  6 45 17    -0
MatAssemblyEnd      3481 1.0 3.3796e+01 11.4 7.68e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0   963
MatGetRowIJ            2 1.0 5.5820e-06 22.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 1.0603e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       914 1.0 3.1246e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatTranspose           2 1.0 1.4970e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3156e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        460 1.0 4.0663e+00 1.1 7.16e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 175671
MatPtAPSymbolic        1 1.0 2.1790e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       230 1.0 2.7127e+01 1.0 2.86e+10 1.2 1.2e+05 3.6e+05 2.4e+02  1  1  1  2  1   3  1  2  4  1 105344
MatGetLocalMat       230 1.0 1.7604e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        230 1.0 8.8016e-01 1.9 0.00e+00 0.0 1.2e+05 3.6e+05 0.0e+00  0  0  1  2  0   0  0  2  4  0    -0
MatSetPreallCOO       32 1.0 7.0478e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.5557e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              684 1.0 1.0000e+02 1.0 7.02e+10 1.2 3.5e+05 2.0e+05 1.6e+03  4  2  2  3  7   9  2  6  6  9 69988
PCApply             3808 1.0 1.3817e+03 1.0 1.02e+12 1.2 1.1e+07 8.5e+04 5.0e+03 56 23 67 45 22 Multiple stages 73410
PCApplyOnBlocks      452 1.0 1.9246e+01 1.2 1.35e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0 69694
KSPSetUp             684 1.0 2.1327e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             684 1.0 1.5730e+03 1.0 1.17e+12 1.2 1.3e+07 9.1e+04 1.3e+04 64 27 79 57 59 Multiple stages 74073
KSPGMRESOrthog      4238 1.0 5.6374e+01 1.7 3.22e+10 1.2 0.0e+00 0.0e+00 4.2e+03  2  1  0  0 19   4  1  0  0 24 57233
DMRefine               2 1.0 2.2752e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     1
DMPlexCreateGmsh       1 1.0 1.2259e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.9732e+00 147.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 4.3599e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.1856e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.1601e-03 549.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 8.2025e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.7659e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.3800e-03 1.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 8.0469e-04 2.1 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.3551e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.7918e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.5929e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.9904e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 8.7824e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        7 1.0 2.1776e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.4177e-03 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9625e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0884e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.8565e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.2020e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 2.9767e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.5134e-04 2.1 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.4639e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.9996e-04 2.0 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             35 1.0 2.3839e+03 1.0 4.47e+12 1.2 1.7e+07 1.3e+05 2.2e+04 97 100 99 100 97 Multiple stages 183350
SNESSetUp              1 1.0 5.2568e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval    1876 1.0 1.5559e+02 1.2 1.82e+12 1.2 2.0e+06 1.2e+05 0.0e+00  6 40 12 11  0  13 53 35 21  0 1132987
SNESJacobianEval     684 1.0 5.1846e+02 1.0 1.39e+12 1.2 7.2e+05 7.9e+05 2.7e+03 21 31  4 26 12  48 40 13 49 16 259742
SNESLineSearch       684 1.0 1.8051e+02 1.0 1.82e+12 1.2 2.3e+06 1.2e+05 3.9e+03  7 40 13 13 17  17 52 41 24 22 972863
DualSpaceSetUp         8 1.0 5.0345e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.9661e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 2.4464e+03 1.0 4.47e+12 1.2 1.7e+07 1.3e+05 2.2e+04 100 100 100 100 100 Multiple stages 178667
firedrake.__init__       1 1.0 1.0240e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 2.0684e+00 19.2 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  1  0  2   0  0  3  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 1.9741e+00 147.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 9.4023e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.0370e-06 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.3885e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.8272e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.2411e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.7487e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.0241e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.7743e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.7607e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.2800e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.2071e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.4248e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.2360e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.2405e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.7841e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2372e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.0377e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2802e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.7776e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     406 1.0 6.5368e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute     12136 1.0 5.6653e+02 1.2 3.21e+12 1.2 1.4e+06 1.2e+05 3.2e+01 21 71  8  8  0  48 93 24 14  0 548785
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.7367e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   24272 1.0 2.6446e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0784e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.3840e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5816e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.4562e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.4561e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.2382e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.0745e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin   12136 1.0 3.4478e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd     12136 1.0 3.0549e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.2505e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.5305e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   171
firedrake.interpolation.interpolate      13 1.0 4.9351e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.9223e+00 1.0 9.06e+07 1.2 1.4e+04 4.2e+04 3.7e+01  0  0  0  0  0   1  0  0  0  0  1534
firedrake.formmanipulation.split_form      14 1.0 4.8354e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.6411e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5564e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0397e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    2616 1.0 4.7223e+00 6.6 0.00e+00 0.0 1.4e+06 1.2e+05 4.0e+00  0  0  8  8  0   0  0 25 14  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4259e+00 1.0 9.06e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  1674
firedrake.halo.Halo.global_to_local_end    2616 1.0 4.4984e+01 99.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.1437e+00 65.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5f1088cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5f0cf2290_wrap_pyop2_kernel_prolong       4 0.0 5.6514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9320e+00 1.0 7.34e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  1873
firedrake.function.Function.assign     154 1.0 9.3331e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     153 1.0 8.9014e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1391e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      56 1.0 6.7407e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.9665e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4370e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9735e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1830e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.1943e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.5207e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1515e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1956e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1956e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 3.7154e+00 1.0 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.8990e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      35 1.0 2.3840e+03 1.0 4.47e+12 1.2 1.7e+07 1.3e+05 2.2e+04 97 100 99 100 97 Multiple stages 183340
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.6344e-01 1401.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.4730e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.6339e-01 1701.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.6335e-01 1953.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    3752 1.0 5.1074e+01 1.8 4.66e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   3 14  0  0  0 914031
Parloop_Cells_wrap_form0_exterior_facet_top_integral    3752 1.0 1.2173e+00 1.1 5.99e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4932
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    3752 1.0 1.7053e+00 1.3 4.48e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 46458
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    3752 1.0 3.0465e+01 1.5 4.43e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   2 13  0  0  0 1456373
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    3752 1.0 6.0245e+01 1.4 9.16e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 19  0  0  0   5 25  0  0  0 1412969
firedrake.halo.Halo.local_to_global_begin    1876 1.0 5.2275e-01 8.3 0.00e+00 0.0 9.8e+05 1.2e+05 0.0e+00  0  0  6  6  0   0  0 17 10  0    -0
firedrake.halo.Halo.local_to_global_end    1876 1.0 2.6307e+01 78.9 2.03e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   565
Parloop_Cells_wrap_form00_cell_integral    1368 1.0 8.1780e+01 1.4 3.15e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   6  9  0  0  0 386498
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral    1368 1.0 3.6338e+00 3.2 1.64e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7997
Parloop_Cells_wrap_form00_interior_facet_horiz_integral    1368 1.0 1.0436e+02 1.2 4.15e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4 10  0  0  0   9 12  0  0  0 398425
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral    1368 1.0 2.4351e+02 1.3 6.60e+11 1.3 0.0e+00 0.0e+00 0.0e+00  9 14  0  0  0  20 18  0  0  0 252207
firedrake.dmhooks.get_function_space       1 1.0 1.6156e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.2877e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      230 1.0 5.7044e+00 1.0 8.19e+07 9.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0   407
MGSetup Level 1      230 1.0 1.4340e+00 1.0 1.03e+09 1.2 5.2e+03 1.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 71039
firedrake.constant.Constant.assign      35 1.0 2.1151e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145efce77bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145efce539d0_wrap_pyop2_kernel_prolong       4 0.0 5.1771e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486019b0450_wrap_pyop2_kernel_prolong       4 0.0 7.5200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148601c22890_wrap_pyop2_kernel_prolong       4 0.0 6.5619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f11c844cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f11c5d1390_wrap_pyop2_kernel_prolong       4 0.0 6.4921e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14740616b490_wrap_pyop2_kernel_prolong       4 0.0 7.5286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474061681d0_wrap_pyop2_kernel_prolong       4 0.0 6.9197e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e23c482850_wrap_pyop2_kernel_prolong       4 0.0 7.5025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e23c481f90_wrap_pyop2_kernel_prolong       4 0.0 7.8385e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147668d2c290_wrap_pyop2_kernel_prolong       4 0.0 7.5337e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147668d196d0_wrap_pyop2_kernel_prolong       4 0.0 6.4150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbc3c71910_wrap_pyop2_kernel_prolong       4 0.0 7.4788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbc3446f90_wrap_pyop2_kernel_prolong       4 0.0 5.3569e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14918c5e1110_wrap_pyop2_kernel_prolong       4 0.0 7.5376e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14918c5f5290_wrap_pyop2_kernel_prolong       4 0.0 7.0894e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b09282e610_wrap_pyop2_kernel_prolong       4 0.0 7.5185e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b09282dd10_wrap_pyop2_kernel_prolong       4 0.0 5.4315e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c62ada6ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4890e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c62adda050_wrap_pyop2_kernel_prolong       4 0.0 7.6308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ffe1480d0_wrap_pyop2_kernel_prolong       4 0.0 7.4994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ff7a81f90_wrap_pyop2_kernel_prolong       4 0.0 6.7175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145760a35550_wrap_pyop2_kernel_prolong       4 0.0 7.5242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1457613dcd50_wrap_pyop2_kernel_prolong       4 0.0 6.5952e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495f0882310_wrap_pyop2_kernel_prolong       4 0.0 7.4732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495f0880390_wrap_pyop2_kernel_prolong       4 0.0 5.6511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147824856050_wrap_pyop2_kernel_prolong       4 0.0 7.4822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14781f4bab50_wrap_pyop2_kernel_prolong       4 0.0 7.0809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d76d81510_wrap_pyop2_kernel_prolong       4 0.0 7.4788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d76d9b250_wrap_pyop2_kernel_prolong       4 0.0 6.5748e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebb0bbc950_wrap_pyop2_kernel_prolong       4 0.0 7.4766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebb0e3c4d0_wrap_pyop2_kernel_prolong       4 0.0 5.4895e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517c7a5a590_wrap_pyop2_kernel_prolong       4 0.0 7.4843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517c7a59f50_wrap_pyop2_kernel_prolong       4 0.0 6.8497e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15035c40a8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15035c3cfcd0_wrap_pyop2_kernel_prolong       4 0.0 6.5739e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb7257f010_wrap_pyop2_kernel_prolong       4 0.0 7.5108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb7257dad0_wrap_pyop2_kernel_prolong       4 0.0 6.2713e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cb572be50_wrap_pyop2_kernel_prolong       4 0.0 7.4815e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cb55be650_wrap_pyop2_kernel_prolong       4 0.0 5.9943e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14925cf67690_wrap_pyop2_kernel_prolong       4 0.0 7.5230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14925c531b90_wrap_pyop2_kernel_prolong       4 0.0 8.2670e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534309fdad0_wrap_pyop2_kernel_prolong       4 0.0 7.4825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15343152fe50_wrap_pyop2_kernel_prolong       4 0.0 7.0130e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e9b1c3ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e9b410ed0_wrap_pyop2_kernel_prolong       4 0.0 6.5774e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7bcf6f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7bcd55050_wrap_pyop2_kernel_prolong       4 0.0 7.4008e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb3b64f550_wrap_pyop2_kernel_prolong       4 0.0 7.4877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb40a55390_wrap_pyop2_kernel_prolong       4 0.0 7.9031e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15526e487a10_wrap_pyop2_kernel_prolong       4 0.0 7.4789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15526e487850_wrap_pyop2_kernel_prolong       4 0.0 5.4504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee14334190_wrap_pyop2_kernel_prolong       4 0.0 7.5205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee14581310_wrap_pyop2_kernel_prolong       4 0.0 5.6781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153026404090_wrap_pyop2_kernel_prolong       4 0.0 7.5035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530263c2610_wrap_pyop2_kernel_prolong       4 0.0 7.0690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b7f967c90_wrap_pyop2_kernel_prolong       4 0.0 7.4813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b7f9774d0_wrap_pyop2_kernel_prolong       4 0.0 6.1369e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a466e0c90_wrap_pyop2_kernel_prolong       4 0.0 7.5213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a468522d0_wrap_pyop2_kernel_prolong       4 0.0 7.3796e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e5a7c85d0_wrap_pyop2_kernel_prolong       4 0.0 7.5310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e595bebd0_wrap_pyop2_kernel_prolong       4 0.0 6.2659e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f34f372f50_wrap_pyop2_kernel_prolong       4 0.0 7.5069e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f34f3715d0_wrap_pyop2_kernel_prolong       4 0.0 5.8128e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f85770890_wrap_pyop2_kernel_prolong       4 0.0 7.5017e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f85770650_wrap_pyop2_kernel_prolong       4 0.0 6.2278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b8b72f10_wrap_pyop2_kernel_prolong       4 0.0 7.4792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b8b4db10_wrap_pyop2_kernel_prolong       4 0.0 6.0458e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae05fb7910_wrap_pyop2_kernel_prolong       4 0.0 7.4808e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae05fe1d10_wrap_pyop2_kernel_prolong       4 0.0 7.1275e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522cb906290_wrap_pyop2_kernel_prolong       4 0.0 7.4852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522cb905c50_wrap_pyop2_kernel_prolong       4 0.0 7.6410e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14713da3e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14713da3de10_wrap_pyop2_kernel_prolong       4 0.0 7.5074e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b18ae05110_wrap_pyop2_kernel_prolong       4 0.0 7.5276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b18b284850_wrap_pyop2_kernel_prolong       4 0.0 8.0368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152216bf6790_wrap_pyop2_kernel_prolong       4 0.0 7.5108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152216c86010_wrap_pyop2_kernel_prolong       4 0.0 5.4129e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15151bf463d0_wrap_pyop2_kernel_prolong       4 0.0 7.4976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15151bf45b10_wrap_pyop2_kernel_prolong       4 0.0 6.0158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6f0e6f290_wrap_pyop2_kernel_prolong       4 0.0 7.4824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6f0e35d10_wrap_pyop2_kernel_prolong       4 0.0 6.9713e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dbc221e90_wrap_pyop2_kernel_prolong       4 0.0 7.5255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dbc242510_wrap_pyop2_kernel_prolong       4 0.0 5.8010e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da0e000290_wrap_pyop2_kernel_prolong       4 0.0 7.4842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da0e000590_wrap_pyop2_kernel_prolong       4 0.0 6.6681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149361f81d10_wrap_pyop2_kernel_prolong       4 0.0 7.5074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14936210bf50_wrap_pyop2_kernel_prolong       4 0.0 6.8949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15439f3d3450_wrap_pyop2_kernel_prolong       4 0.0 7.4944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15439f3d14d0_wrap_pyop2_kernel_prolong       4 0.0 7.3678e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14669417b6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14669466a2d0_wrap_pyop2_kernel_prolong       4 0.0 6.9410e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccae9b5b90_wrap_pyop2_kernel_prolong       4 0.0 7.4907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccaea011d0_wrap_pyop2_kernel_prolong       4 0.0 6.8225e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b7e72d550_wrap_pyop2_kernel_prolong       4 0.0 7.5329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b7e648c50_wrap_pyop2_kernel_prolong       4 0.0 6.7143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519ef5b5590_wrap_pyop2_kernel_prolong       4 0.0 7.4863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519ef5b6e50_wrap_pyop2_kernel_prolong       4 0.0 7.2710e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a278a08210_wrap_pyop2_kernel_prolong       4 0.0 7.4983e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a278a2dc50_wrap_pyop2_kernel_prolong       4 0.0 7.3778e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15404ffa3450_wrap_pyop2_kernel_prolong       4 0.0 7.5150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15404ff85b90_wrap_pyop2_kernel_prolong       4 0.0 7.3282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b2000ee10_wrap_pyop2_kernel_prolong       4 0.0 7.4693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b1ed5e450_wrap_pyop2_kernel_prolong       4 0.0 5.5389e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2770ae9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e27664e950_wrap_pyop2_kernel_prolong       4 0.0 6.3288e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f3ed39610_wrap_pyop2_kernel_prolong       4 0.0 7.4877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f3ed60c90_wrap_pyop2_kernel_prolong       4 0.0 7.8751e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155103b42450_wrap_pyop2_kernel_prolong       4 0.0 7.4794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155103d86110_wrap_pyop2_kernel_prolong       4 0.0 6.8356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b05e92250_wrap_pyop2_kernel_prolong       4 0.0 7.4744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b05d356d0_wrap_pyop2_kernel_prolong       4 0.0 6.4548e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15228c72b510_wrap_pyop2_kernel_prolong       4 0.0 7.4783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15228c728bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8286e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148545326c50_wrap_pyop2_kernel_prolong       4 0.0 7.4682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14854537e110_wrap_pyop2_kernel_prolong       4 0.0 5.1720e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c9d331750_wrap_pyop2_kernel_prolong       4 0.0 7.4705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c9d168610_wrap_pyop2_kernel_prolong       4 0.0 5.5727e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ca562c910_wrap_pyop2_kernel_prolong       4 0.0 7.4786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ca55e8e10_wrap_pyop2_kernel_prolong       4 0.0 6.1260e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8d2add1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8d2a80410_wrap_pyop2_kernel_prolong       4 0.0 7.2654e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfd254b450_wrap_pyop2_kernel_prolong       4 0.0 7.4747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfd2525990_wrap_pyop2_kernel_prolong       4 0.0 6.4948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c5dee6b50_wrap_pyop2_kernel_prolong       4 0.0 7.4822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c5d2813d0_wrap_pyop2_kernel_prolong       4 0.0 7.3279e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fcbc569d0_wrap_pyop2_kernel_prolong       4 0.0 7.4821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fcbeadf50_wrap_pyop2_kernel_prolong       4 0.0 7.9672e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492e4b21a90_wrap_pyop2_kernel_prolong       4 0.0 7.4728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492e49ddbd0_wrap_pyop2_kernel_prolong       4 0.0 5.5531e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548aad5cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4714e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548aa118590_wrap_pyop2_kernel_prolong       4 0.0 6.1269e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469e8306750_wrap_pyop2_kernel_prolong       4 0.0 7.4688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469e81a9610_wrap_pyop2_kernel_prolong       4 0.0 5.4238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503e8a12950_wrap_pyop2_kernel_prolong       4 0.0 7.4717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503e80ebd50_wrap_pyop2_kernel_prolong       4 0.0 6.1939e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154552cfb650_wrap_pyop2_kernel_prolong       4 0.0 7.4706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154552cd0710_wrap_pyop2_kernel_prolong       4 0.0 5.9565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b648796910_wrap_pyop2_kernel_prolong       4 0.0 7.4786e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b64875bc10_wrap_pyop2_kernel_prolong       4 0.0 7.8214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0914fb710_wrap_pyop2_kernel_prolong       4 0.0 7.4702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d076bc4ed0_wrap_pyop2_kernel_prolong       4 0.0 5.9921e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fa24a46d0_wrap_pyop2_kernel_prolong       4 0.0 7.4713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fa24cde10_wrap_pyop2_kernel_prolong       4 0.0 6.6876e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c15fd23d0_wrap_pyop2_kernel_prolong       4 0.0 7.4790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c15551d50_wrap_pyop2_kernel_prolong       4 0.0 7.8509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155373b02310_wrap_pyop2_kernel_prolong       4 0.0 7.4784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15537323e210_wrap_pyop2_kernel_prolong       4 0.0 5.9533e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e570193910_wrap_pyop2_kernel_prolong       4 0.0 7.4892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e57040d0d0_wrap_pyop2_kernel_prolong       4 0.0 6.9681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e160d7390_wrap_pyop2_kernel_prolong       4 0.0 7.4730e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e15e71c90_wrap_pyop2_kernel_prolong       4 0.0 7.2116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1207bd350_wrap_pyop2_kernel_prolong       4 0.0 7.4745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1205933d0_wrap_pyop2_kernel_prolong       4 0.0 6.3691e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca64632d0_wrap_pyop2_kernel_prolong       4 0.0 7.4666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca640b8d0_wrap_pyop2_kernel_prolong       4 0.0 5.1193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478172639d0_wrap_pyop2_kernel_prolong       4 0.0 7.4806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147816a44c50_wrap_pyop2_kernel_prolong       4 0.0 6.9840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523c1f16a10_wrap_pyop2_kernel_prolong       4 0.0 7.4795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523c1f16210_wrap_pyop2_kernel_prolong       4 0.0 6.9880e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c936be0dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c934583bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497f7d6f510_wrap_pyop2_kernel_prolong       4 0.0 7.4820e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497f7eebdd0_wrap_pyop2_kernel_prolong       4 0.0 6.5675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a30dfebc50_wrap_pyop2_kernel_prolong       4 0.0 7.4831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a30e049750_wrap_pyop2_kernel_prolong       4 0.0 6.9751e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f3e3c75d0_wrap_pyop2_kernel_prolong       4 0.0 7.4762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f3e659250_wrap_pyop2_kernel_prolong       4 0.0 5.7241e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc372da050_wrap_pyop2_kernel_prolong       4 0.0 7.4699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc372d9810_wrap_pyop2_kernel_prolong       4 0.0 6.5279e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14deac2f4f90_wrap_pyop2_kernel_prolong       4 0.0 7.4768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14deaca16610_wrap_pyop2_kernel_prolong       4 0.0 6.3846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462b15f1cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4793e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462b15f1410_wrap_pyop2_kernel_prolong       4 0.0 6.3861e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151763863850_wrap_pyop2_kernel_prolong       4 0.0 7.4812e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151763a33250_wrap_pyop2_kernel_prolong       4 0.0 7.3375e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bbe0e6bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bbd7d5bd0_wrap_pyop2_kernel_prolong       4 0.0 6.0626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14991ffee6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14991ffecc10_wrap_pyop2_kernel_prolong       4 0.0 6.3667e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15391f026d10_wrap_pyop2_kernel_prolong       4 0.0 7.4701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15391f221610_wrap_pyop2_kernel_prolong       4 0.0 5.4263e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152123bba190_wrap_pyop2_kernel_prolong       4 0.0 7.4742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152123267450_wrap_pyop2_kernel_prolong       4 0.0 7.4066e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa799a8b50_wrap_pyop2_kernel_prolong       4 0.0 7.4884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa79742490_wrap_pyop2_kernel_prolong       4 0.0 6.1827e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146933556bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146933554c90_wrap_pyop2_kernel_prolong       4 0.0 7.3091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15076ee7b550_wrap_pyop2_kernel_prolong       4 0.0 7.4799e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15076ee7bf50_wrap_pyop2_kernel_prolong       4 0.0 6.8158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b45cc3f950_wrap_pyop2_kernel_prolong       4 0.0 7.4747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b45ce75a10_wrap_pyop2_kernel_prolong       4 0.0 7.2012e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a972671750_wrap_pyop2_kernel_prolong       4 0.0 7.4809e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9723ddad0_wrap_pyop2_kernel_prolong       4 0.0 6.5980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15381dd10090_wrap_pyop2_kernel_prolong       4 0.0 7.4704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15381daa1650_wrap_pyop2_kernel_prolong       4 0.0 5.3262e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347e153d10_wrap_pyop2_kernel_prolong       4 0.0 7.4791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15347e1515d0_wrap_pyop2_kernel_prolong       4 0.0 7.9595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455c2e90e90_wrap_pyop2_kernel_prolong       4 0.0 7.4716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455c2e92210_wrap_pyop2_kernel_prolong       4 0.0 6.4036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9ddbc56d0_wrap_pyop2_kernel_prolong       4 0.0 7.4832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9ddbe9610_wrap_pyop2_kernel_prolong       4 0.0 8.1038e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9d01b4650_wrap_pyop2_kernel_prolong       4 0.0 7.4743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9cbb41890_wrap_pyop2_kernel_prolong       4 0.0 7.4371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d6afb8790_wrap_pyop2_kernel_prolong       4 0.0 7.4858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d6a620ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        229 1.0 1.4391e-02 4.0 0.00e+00 0.0 1.6e+05 4.0e+00 2.3e+02  0  0  1  0  1   0  0  1  0  5    -0
SFSetGraph           229 1.0 1.0470e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              229 1.0 2.0650e-02 1.8 0.00e+00 0.0 3.1e+05 2.1e+02 2.3e+02  0  0  2  0  1   0  0  3  0  5    -0
SFPack             26656 1.0 6.4584e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           26656 1.0 2.3181e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             3808 1.0 5.2735e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             15231 1.0 3.5041e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY            15232 1.0 2.1946e+01 1.4 1.32e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 60126
VecAYPX            15232 1.0 2.6660e+01 3.2 6.58e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 24748
VecScatterBegin    26656 1.0 7.1685e+00 3.3 0.00e+00 0.0 1.1e+07 9.2e+04 0.0e+00  0  0 62 45  0   0  0 93 100  0    -0
VecScatterEnd      26656 1.0 1.2378e+02 34.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult            15232 1.0 6.8206e+02 1.2 4.67e+11 1.2 8.0e+06 1.2e+05 0.0e+00 25 11 47 45  0  45 46 70 100  0 68399
MatMultAdd          3808 1.0 2.0581e+01 1.2 9.87e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 48085
MatMultTranspose    3808 1.0 1.8068e+01 2.4 9.87e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 54776
MatSolve           19040 1.0 6.8176e+02 1.2 4.56e+11 1.2 3.4e+06 7.1e+02 1.1e+03 26 10 20  0  5  47 45 30  0 23 66401
MatLUFactorNum       208 1.0 3.3301e+01 1.2 5.68e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  5  0  0  0 166703
MatResidual         3808 1.0 1.8107e+02 1.2 1.18e+11 1.2 2.0e+06 1.2e+05 0.0e+00  7  3 12 11  0  12 12 18 25  0 65324
PCSetUpOnBlocks     7616 1.0 3.3376e+01 1.2 5.68e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  5  0  0  0 166324
PCApply            19040 1.0 6.8209e+02 1.2 4.56e+11 1.2 3.4e+06 7.1e+02 1.1e+03 26 10 20  0  5  47 45 30  0 23 66369
PCApplyOnBlocks    15232 1.0 6.5322e+02 1.2 4.55e+11 1.2 0.0e+00 0.0e+00 0.0e+00 25 10  0  0  0  45 45  0  0  0 69198
KSPSolve           11424 1.0 1.1570e+03 1.0 8.24e+11 1.2 9.3e+06 7.8e+04 5.0e+03 47 19 55 34 22  83 81 82 75 100 70935
MGSmooth Level 0    3808 1.0 4.2424e+01 3.2 2.71e+09 16.5 3.4e+06 7.1e+02 5.0e+03  1  0 20  0 22   2  0 30  0 100  1596
MGSmooth Level 1    7616 1.0 1.1732e+03 1.1 8.80e+11 1.2 6.0e+06 1.2e+05 0.0e+00 47 20 35 34  0  84 86 53 75  0 74630
MGResid Level 1     3808 1.0 1.8108e+02 1.2 1.18e+11 1.2 2.0e+06 1.2e+05 0.0e+00  7  3 12 11  0  12 12 18 25  0 65318
MGInterp Level 1    7616 1.0 3.7449e+01 1.4 1.97e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 52854
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   149            149
              Viewer     3              3
         PetscRandom    21             21
           Index Set  1520           1520
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   410            639
              Vector  1327           1327
              Matrix   136            136
      Preconditioner     6              6
       Krylov Solver    26             26
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   131            131
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   186            186
           Weak Form   186            186
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   458            458
   Star Forest Graph   229              0
              Vector   229            229
========================================================================================================================
Average time to get PetscTime(): 2.75e-08
Average time for MPI_Barrier(): 4.3492e-06
Average time for zero size MPI_Send(): 2.22694e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly3/vlumping_inexact_rich_lag3/h1.profile # (source: code)
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

