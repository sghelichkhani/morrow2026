****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0108.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 13:52:51 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.870e+03     1.000   1.870e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.977e+12     1.213   3.722e+12  3.871e+14
Flops/sec:            2.127e+09     1.213   1.990e+09  2.070e+11
MPI Msg Count:        1.973e+05     2.941   1.404e+05  1.461e+07
MPI Msg Len (bytes):  2.381e+10     2.993   1.196e+05  1.747e+12
MPI Reductions:       2.629e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.1164e+03  59.7%  3.4450e+14  89.0%  5.877e+06  40.2%  2.146e+05       72.2%  1.897e+04  72.2%
 1:        MG Apply: 7.5357e+02  40.3%  4.2580e+13  11.0%  8.728e+06  59.8%  5.564e+04       27.8%  7.295e+03  27.8%

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

BuildTwoSided       3829 1.0 1.4118e+02 8.9 0.00e+00 0.0 2.2e+05 4.0e+00 3.6e+03  4  0  1  0 14   7  0  4  0 19    -0
BuildTwoSidedF      3491 1.0 1.4097e+02 9.0 0.00e+00 0.0 3.7e+05 1.5e+06 3.5e+03  4  0  3 30 13   7  0  6 42 18    -0
SFSetGraph           345 1.1 1.5720e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              338 1.1 1.9773e+00 56.6 0.00e+00 0.0 6.9e+04 1.1e+03 9.8e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin        2919 1.0 1.6843e+00 3.3 0.00e+00 0.0 1.5e+06 1.1e+05 0.0e+00  0  0 10 10  0   0  0 26 13  0    -0
SFBcastEnd          2919 1.0 4.4523e+01 76.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin       1940 1.0 5.5870e-01 19.8 0.00e+00 0.0 1.0e+06 1.2e+05 0.0e+00  0  0  7  7  0   0  0 17 10  0    -0
SFReduceEnd         1940 1.0 2.1463e+01 67.7 2.05e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   701
SFFetchOpBegin         6 1.0 2.8762e-05 4.0 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.1118e-04 7.4 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 5.8492e-04 1.2 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.4022e-03 1.4 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 3.1124e-03 2.1 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            2 1.0 8.1021e-05 2.4 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            197240 1.1 4.1399e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          197246 1.1 1.0046e+00 8.1 2.05e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14971
VecDot               697 1.0 2.6509e+00 5.1 6.02e+08 1.2 0.0e+00 0.0e+00 7.0e+02  0  0  0  0  3   0  0  0  0  4 22778
VecMDot             4180 1.0 3.4161e+01 3.1 1.42e+10 1.2 0.0e+00 0.0e+00 4.2e+03  1  0  0  0 16   2  0  0  0 22 41711
VecNorm             8207 1.0 3.0113e+01 5.3 7.09e+09 1.2 0.0e+00 0.0e+00 8.2e+03  1  0  0  0 31   1  0  0  0 43 23610
VecScale            4896 1.0 1.9817e+00 1.4 2.12e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 107015
VecCopy             6642 1.0 1.0168e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              2192 1.0 1.9430e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              716 1.0 1.3430e+00 1.4 6.19e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 46184
VecWAXPY            1864 1.0 4.3047e+00 1.2 1.31e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 30499
VecMAXPY            4896 1.0 2.4027e+01 1.2 1.78e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 74374
VecScatterBegin   192375 1.1 4.4037e+00 1.6 0.00e+00 0.0 2.6e+06 1.2e+05 0.0e+00  0  0 17 18  0   0  0 43 24  0    -0
VecScatterEnd     192375 1.1 3.6904e+01 36.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom          18 1.0 7.0112e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith      1394 1.0 1.0962e+00 1.7 1.20e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110169
VecReduceComm        697 1.0 1.1275e+00 131.3 0.00e+00 0.0 0.0e+00 0.0e+00 7.0e+02  0  0  0  0  3   0  0  0  0  4    -0
VecNormalize         389 1.0 1.6057e+00 3.6 5.04e+08 1.2 0.0e+00 0.0e+00 3.9e+02  0  0  0  0  1   0  0  0  0  2 31481
MatMult             4877 1.0 2.1645e+02 1.2 1.49e+11 1.2 2.6e+06 1.2e+05 0.0e+00 11  4 17 18  0  18  4 43 24  0 69008
MatSolve           93360 1.2 1.0105e+01 1.3 5.87e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 58228
MatLUFactorSym       241 1.2 4.3830e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      5017 1.1 1.5762e+01 1.0 1.46e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  8306
MatAssemblyBegin    9254 1.1 1.4104e+02 3.4 0.00e+00 0.0 3.7e+05 1.5e+06 3.5e+03  5  0  3 30 13   8  0  6 42 18    -0
MatAssemblyEnd      9254 1.1 3.4470e+01 20.4 7.83e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0   962
MatGetRowIJ          240 1.2 3.9971e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      18 1.0 2.6304e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  0  0  0  0  1   0  0  0  0  1    -0
MatGetOrdering       240 1.2 4.0884e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries      1394 1.0 3.2548e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatTranspose           2 1.0 1.5271e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3133e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1394 1.0 1.1906e+01 1.1 2.17e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 181824
MatPtAPSymbolic        1 1.0 2.0830e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       697 1.0 7.4861e+01 1.0 8.67e+10 1.2 3.7e+05 3.6e+05 7.0e+02  4  2  3  8  3   7  3  6 10  4 115683
MatGetLocalMat       697 1.0 5.2752e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        697 1.0 2.6190e+00 2.0 0.00e+00 0.0 3.7e+05 3.6e+05 0.0e+00  0  0  3  8  0   0  0  6 11  0    -0
MatSetPreallCOO       32 1.0 7.0490e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.1695e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              697 1.0 1.4109e+02 1.0 1.13e+11 1.2 5.6e+05 2.8e+05 3.2e+03  8  3  4  9 12  13  3 10 12 17 80257
PCApply             3810 1.0 7.6462e+02 1.0 4.26e+11 1.2 8.7e+06 5.6e+04 7.3e+03 40 11 60 28 28 Multiple stages 55687
PCApplyOnBlocks    93360 1.2 1.1380e+01 1.3 7.10e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 62601
KSPSetUp             697 1.0 2.1235e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             697 1.0 9.5316e+02 1.0 5.75e+11 1.2 1.1e+07 6.8e+04 1.6e+04 51 15 73 42 59 Multiple stages 60231
KSPGMRESOrthog      4180 1.0 5.1283e+01 1.7 2.84e+10 1.2 0.0e+00 0.0e+00 4.2e+03  2  1  0  0 16   3  1  0  0 22 55570
DMRefine               2 1.0 2.1852e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     1
DMPlexCreateGmsh       1 1.0 9.1970e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.0117e+00 491.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 4.4851e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.0913e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.1803e-03 575.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 6.3508e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.3742e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.8543e-03 1.3 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 9.3657e-04 2.2 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 4.0652e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.8787e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.3627e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.6510e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 8.2482e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        7 1.0 1.9846e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 3.1620e-03 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.1135e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0943e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.1109e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1578e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.0361e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.3760e-04 2.0 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.5967e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.4859e-04 2.2 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             35 1.0 1.8070e+03 1.0 3.98e+12 1.2 1.4e+07 1.2e+05 2.6e+04 97 100 99 100 97 Multiple stages 214205
SNESSetUp              1 1.0 6.6079e-05 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval    1899 1.0 1.4699e+02 1.2 1.85e+12 1.2 2.0e+06 1.2e+05 0.0e+00  7 46 14 14  0  12 52 34 19  0 1213941
SNESJacobianEval     697 1.0 5.2769e+02 1.0 1.42e+12 1.2 7.3e+05 7.9e+05 2.8e+03 28 35  5 33 11  47 40 12 46 15 260049
SNESLineSearch       697 1.0 1.7382e+02 1.0 1.84e+12 1.2 2.3e+06 1.2e+05 4.0e+03  9 46 16 16 15  15 52 39 22 21 1022999
DualSpaceSetUp         8 1.0 4.9172e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.8504e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.8679e+03 1.0 3.98e+12 1.2 1.5e+07 1.2e+05 2.6e+04 100 100 100 100 100 Multiple stages 207228
firedrake.__init__       1 1.0 1.0828e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.1021e+00 51.0 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  1  0  2   0  0  3  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 5.0124e+00 490.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 9.1048e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.5440e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.4922e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.2455e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 2.8215e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.9112e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 2.6071e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.3606e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.3485e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 8.3192e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.6310e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.4294e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.5638e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.0539e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.7234e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.3089e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.3039e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2537e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.7169e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     406 1.0 6.5154e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute     12303 1.0 5.6917e+02 1.2 3.26e+12 1.2 1.4e+06 1.2e+05 3.2e+01 28 82 10 10  0  47 92 24 13  0 554534
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.6747e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   24606 1.0 2.6171e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0658e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.3860e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5098e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.4405e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.4404e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.1145e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.9660e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin   12303 1.0 3.2533e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd     12303 1.0 3.1756e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.1525e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 6.8828e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   212
firedrake.interpolation.interpolate      13 1.0 5.0235e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.8835e+00 1.0 9.06e+07 1.2 1.4e+04 4.2e+04 3.7e+01  0  0  0  0  0   1  0  0  0  0  1544
firedrake.formmanipulation.split_form      14 1.0 4.6052e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.5295e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5359e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0161e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    2652 1.0 3.7942e+00 3.6 0.00e+00 0.0 1.4e+06 1.2e+05 4.0e+00  0  0 10 10  0   0  0 24 13  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.3964e+00 1.0 9.06e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1684
firedrake.halo.Halo.global_to_local_end    2652 1.0 4.4417e+01 93.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 3.0377e+00 47.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15145a65e410_wrap_pyop2_kernel_prolong       4 0.0 7.4770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15145a406090_wrap_pyop2_kernel_prolong       4 0.0 5.5436e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8981e+00 1.0 7.34e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  1889
firedrake.function.Function.assign     154 1.0 9.3776e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     153 1.0 8.9164e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2132e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      56 1.0 6.9350e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.2156e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4632e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9597e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2105e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2391e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 7.0624e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6506e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1822e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1822e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 3.7953e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.8388e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      35 1.0 1.8071e+03 1.0 3.98e+12 1.2 1.4e+07 1.2e+05 2.6e+04 97 100 99 100 97 Multiple stages 214189
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.5085e-01 1295.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.8650e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.5079e-01 1584.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.5076e-01 1814.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    3798 1.0 4.0194e+01 1.4 4.71e+11 1.2 0.0e+00 0.0e+00 0.0e+00  2 12  0  0  0   3 14  0  0  0 1175704
Parloop_Cells_wrap_form0_exterior_facet_top_integral    3798 1.0 1.2085e+00 1.1 6.06e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5029
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    3798 1.0 1.8375e+00 1.3 4.54e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 43645
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    3798 1.0 2.5528e+01 1.2 4.48e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 13  0  0  0 1759350
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    3798 1.0 6.0284e+01 1.3 9.27e+11 1.3 0.0e+00 0.0e+00 0.0e+00  3 22  0  0  0   5 25  0  0  0 1429372
firedrake.halo.Halo.local_to_global_begin    1899 1.0 6.5160e-01 9.1 0.00e+00 0.0 1.0e+06 1.2e+05 0.0e+00  0  0  7  7  0   0  0 17 10  0    -0
firedrake.halo.Halo.local_to_global_end    1899 1.0 2.1486e+01 64.7 2.05e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   700
Parloop_Cells_wrap_form00_cell_integral    1394 1.0 8.3170e+01 1.4 3.21e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4  8  0  0  0   6  9  0  0  0 387260
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral    1394 1.0 3.6865e+00 3.3 1.68e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8033
Parloop_Cells_wrap_form00_interior_facet_horiz_integral    1394 1.0 1.0726e+02 1.3 4.23e+11 1.2 0.0e+00 0.0e+00 0.0e+00  5 11  0  0  0   9 12  0  0  0 395047
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral    1394 1.0 2.5081e+02 1.4 6.73e+11 1.3 0.0e+00 0.0e+00 0.0e+00 12 16  0  0  0  19 18  0  0  0 249524
firedrake.dmhooks.get_function_space       2 1.0 2.5568e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1896e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      697 1.0 1.5163e+01 1.0 2.74e+08 11.7 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   456
MGSetup Level 1      697 1.0 1.9971e+00 1.0 6.60e+08 1.2 5.2e+03 1.2e+05 2.7e+02  0  0  0  0  1   0  0  0  0  1 33082
firedrake.constant.Constant.assign      35 1.0 1.9921e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c82bda890_wrap_pyop2_kernel_prolong       4 0.0 7.4756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c82bda210_wrap_pyop2_kernel_prolong       4 0.0 5.1733e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c751717cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7517456d0_wrap_pyop2_kernel_prolong       4 0.0 6.5259e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8e4f95c90_wrap_pyop2_kernel_prolong       4 0.0 7.4805e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8e4f2cfd0_wrap_pyop2_kernel_prolong       4 0.0 6.1724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14941795e990_wrap_pyop2_kernel_prolong       4 0.0 7.4811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14941795e090_wrap_pyop2_kernel_prolong       4 0.0 6.6078e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14947f847210_wrap_pyop2_kernel_prolong       4 0.0 7.4822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14947f953d50_wrap_pyop2_kernel_prolong       4 0.0 7.2785e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dfe969850_wrap_pyop2_kernel_prolong       4 0.0 7.4782e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dfd0edf90_wrap_pyop2_kernel_prolong       4 0.0 6.0324e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8718fe3d0_wrap_pyop2_kernel_prolong       4 0.0 7.4771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8718fd250_wrap_pyop2_kernel_prolong       4 0.0 5.0636e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d57037be50_wrap_pyop2_kernel_prolong       4 0.0 7.4790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5705f0b50_wrap_pyop2_kernel_prolong       4 0.0 6.7031e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a78267f690_wrap_pyop2_kernel_prolong       4 0.0 7.4759e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7826aa310_wrap_pyop2_kernel_prolong       4 0.0 5.0671e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479e31012d0_wrap_pyop2_kernel_prolong       4 0.0 7.4790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479e3101ed0_wrap_pyop2_kernel_prolong       4 0.0 7.2679e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a9b16c410_wrap_pyop2_kernel_prolong       4 0.0 7.4758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153a9b16f950_wrap_pyop2_kernel_prolong       4 0.0 6.3358e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dcd0bda50_wrap_pyop2_kernel_prolong       4 0.0 7.4780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150dcce33610_wrap_pyop2_kernel_prolong       4 0.0 6.5282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fedbdf410_wrap_pyop2_kernel_prolong       4 0.0 7.4707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153fedbbc6d0_wrap_pyop2_kernel_prolong       4 0.0 5.2820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ac0d8b390_wrap_pyop2_kernel_prolong       4 0.0 7.4738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ac0da02d0_wrap_pyop2_kernel_prolong       4 0.0 6.2626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151dc4304c90_wrap_pyop2_kernel_prolong       4 0.0 7.4806e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151dc40e4a50_wrap_pyop2_kernel_prolong       4 0.0 6.5735e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15363cdbe2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15363cdedcd0_wrap_pyop2_kernel_prolong       4 0.0 5.1386e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcc7e57c50_wrap_pyop2_kernel_prolong       4 0.0 7.4781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcc7e55e10_wrap_pyop2_kernel_prolong       4 0.0 6.8045e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d48795c1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d48795e290_wrap_pyop2_kernel_prolong       4 0.0 6.1720e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f2591bc50_wrap_pyop2_kernel_prolong       4 0.0 7.4718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f24dc5fd0_wrap_pyop2_kernel_prolong       4 0.0 5.9522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148348c06e10_wrap_pyop2_kernel_prolong       4 0.0 7.4781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148348c073d0_wrap_pyop2_kernel_prolong       4 0.0 5.9404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519a1a0b6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4898e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519a18cbc10_wrap_pyop2_kernel_prolong       4 0.0 7.8660e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552506f9050_wrap_pyop2_kernel_prolong       4 0.0 7.4790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552504df950_wrap_pyop2_kernel_prolong       4 0.0 7.0150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548baa42a90_wrap_pyop2_kernel_prolong       4 0.0 7.4748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548ba9e9650_wrap_pyop2_kernel_prolong       4 0.0 6.2787e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515d4502310_wrap_pyop2_kernel_prolong       4 0.0 7.4779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515d4501250_wrap_pyop2_kernel_prolong       4 0.0 6.9775e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14def2edff10_wrap_pyop2_kernel_prolong       4 0.0 7.4845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14def2f479d0_wrap_pyop2_kernel_prolong       4 0.0 7.9029e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8f1ca6890_wrap_pyop2_kernel_prolong       4 0.0 7.4758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8f34ccd90_wrap_pyop2_kernel_prolong       4 0.0 5.3395e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b50d9b2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b50d5ded0_wrap_pyop2_kernel_prolong       4 0.0 5.5886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151297a5eb90_wrap_pyop2_kernel_prolong       4 0.0 7.4789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151297a5f790_wrap_pyop2_kernel_prolong       4 0.0 6.5420e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b037c2410_wrap_pyop2_kernel_prolong       4 0.0 7.4722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b037c0890_wrap_pyop2_kernel_prolong       4 0.0 5.9930e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e74bef7450_wrap_pyop2_kernel_prolong       4 0.0 7.4851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e74be3a110_wrap_pyop2_kernel_prolong       4 0.0 7.2900e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154871c5b610_wrap_pyop2_kernel_prolong       4 0.0 7.4757e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154871b56bd0_wrap_pyop2_kernel_prolong       4 0.0 5.9196e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536e3d6a390_wrap_pyop2_kernel_prolong       4 0.0 7.4735e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536e3d69b10_wrap_pyop2_kernel_prolong       4 0.0 5.6961e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a718cef790_wrap_pyop2_kernel_prolong       4 0.0 7.4761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a718cec090_wrap_pyop2_kernel_prolong       4 0.0 5.9240e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cab6f01090_wrap_pyop2_kernel_prolong       4 0.0 7.4690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cab6f5f510_wrap_pyop2_kernel_prolong       4 0.0 5.9437e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517a6176050_wrap_pyop2_kernel_prolong       4 0.0 7.4739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517a6177e90_wrap_pyop2_kernel_prolong       4 0.0 6.7570e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552da3ee090_wrap_pyop2_kernel_prolong       4 0.0 7.4767e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552da3edc50_wrap_pyop2_kernel_prolong       4 0.0 7.2524e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba211e350_wrap_pyop2_kernel_prolong       4 0.0 7.4824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aba217a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.2249e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553e3f5d450_wrap_pyop2_kernel_prolong       4 0.0 7.4775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553e3fda9d0_wrap_pyop2_kernel_prolong       4 0.0 7.9518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148589c9e010_wrap_pyop2_kernel_prolong       4 0.0 7.4712e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148589c9d6d0_wrap_pyop2_kernel_prolong       4 0.0 5.2339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6c6598bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6c5a462d0_wrap_pyop2_kernel_prolong       4 0.0 5.7460e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149572c2e610_wrap_pyop2_kernel_prolong       4 0.0 7.4852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149572c2df10_wrap_pyop2_kernel_prolong       4 0.0 6.6311e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6fb3dc710_wrap_pyop2_kernel_prolong       4 0.0 7.4734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6fb3dd750_wrap_pyop2_kernel_prolong       4 0.0 5.4223e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d18b40f5d0_wrap_pyop2_kernel_prolong       4 0.0 7.4815e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d18b3c7bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540de4636d0_wrap_pyop2_kernel_prolong       4 0.0 7.4778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540ddabd910_wrap_pyop2_kernel_prolong       4 0.0 6.5956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf1eab9c90_wrap_pyop2_kernel_prolong       4 0.0 7.4773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf1eab9490_wrap_pyop2_kernel_prolong       4 0.0 7.1989e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d40510d0_wrap_pyop2_kernel_prolong       4 0.0 7.4834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d4051990_wrap_pyop2_kernel_prolong       4 0.0 6.7848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbd1ab2150_wrap_pyop2_kernel_prolong       4 0.0 7.4819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbd1ab1650_wrap_pyop2_kernel_prolong       4 0.0 6.4597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14841c307050_wrap_pyop2_kernel_prolong       4 0.0 7.4719e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14841c2a9b90_wrap_pyop2_kernel_prolong       4 0.0 6.6069e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4c80cb350_wrap_pyop2_kernel_prolong       4 0.0 7.4828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4c80ca510_wrap_pyop2_kernel_prolong       4 0.0 6.8490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6f26f4fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6f2727ad0_wrap_pyop2_kernel_prolong       4 0.0 7.2218e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c65384190_wrap_pyop2_kernel_prolong       4 0.0 7.4835e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c655d1490_wrap_pyop2_kernel_prolong       4 0.0 6.6450e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148acde5b210_wrap_pyop2_kernel_prolong       4 0.0 7.4575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148acdf59550_wrap_pyop2_kernel_prolong       4 0.0 5.3449e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15241b013690_wrap_pyop2_kernel_prolong       4 0.0 7.4625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15241b010510_wrap_pyop2_kernel_prolong       4 0.0 6.3182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488206c3890_wrap_pyop2_kernel_prolong       4 0.0 7.4706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488206f1e50_wrap_pyop2_kernel_prolong       4 0.0 7.8903e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f2710f550_wrap_pyop2_kernel_prolong       4 0.0 7.4693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f2710d890_wrap_pyop2_kernel_prolong       4 0.0 6.5385e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519122352d0_wrap_pyop2_kernel_prolong       4 0.0 7.4585e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151912336290_wrap_pyop2_kernel_prolong       4 0.0 6.2560e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a4deca110_wrap_pyop2_kernel_prolong       4 0.0 7.4666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a4dd41210_wrap_pyop2_kernel_prolong       4 0.0 6.0697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1f11aa4d0_wrap_pyop2_kernel_prolong       4 0.0 7.4552e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1f084f650_wrap_pyop2_kernel_prolong       4 0.0 5.4091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155377213dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4665e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553770c5cd0_wrap_pyop2_kernel_prolong       4 0.0 5.5628e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150415567090_wrap_pyop2_kernel_prolong       4 0.0 7.4651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504154f04d0_wrap_pyop2_kernel_prolong       4 0.0 5.8455e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc3f8869d0_wrap_pyop2_kernel_prolong       4 0.0 7.4689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc3f8c0950_wrap_pyop2_kernel_prolong       4 0.0 7.0209e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15075158f790_wrap_pyop2_kernel_prolong       4 0.0 7.4628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15075158f8d0_wrap_pyop2_kernel_prolong       4 0.0 6.2555e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d04fb8bdd0_wrap_pyop2_kernel_prolong       4 0.0 7.4661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d04fb49b50_wrap_pyop2_kernel_prolong       4 0.0 7.0518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a834b57150_wrap_pyop2_kernel_prolong       4 0.0 7.4729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a834c4b590_wrap_pyop2_kernel_prolong       4 0.0 8.1251e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473242e7890_wrap_pyop2_kernel_prolong       4 0.0 7.4588e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473242e70d0_wrap_pyop2_kernel_prolong       4 0.0 5.5900e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155389401d90_wrap_pyop2_kernel_prolong       4 0.0 7.4678e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155389c2bbd0_wrap_pyop2_kernel_prolong       4 0.0 5.9410e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e77f962d0_wrap_pyop2_kernel_prolong       4 0.0 7.4554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e77febd90_wrap_pyop2_kernel_prolong       4 0.0 5.4229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0e77dc310_wrap_pyop2_kernel_prolong       4 0.0 7.4603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0e7811f90_wrap_pyop2_kernel_prolong       4 0.0 6.4059e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149304583850_wrap_pyop2_kernel_prolong       4 0.0 7.4635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493045812d0_wrap_pyop2_kernel_prolong       4 0.0 5.9765e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fc3e630d0_wrap_pyop2_kernel_prolong       4 0.0 7.4729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fc3e60f90_wrap_pyop2_kernel_prolong       4 0.0 7.5078e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c0ad6cfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c0abda690_wrap_pyop2_kernel_prolong       4 0.0 5.9226e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f8e7d0710_wrap_pyop2_kernel_prolong       4 0.0 7.4636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f8e8d5a90_wrap_pyop2_kernel_prolong       4 0.0 6.5869e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ec0e19390_wrap_pyop2_kernel_prolong       4 0.0 7.4783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ec0ccfcd0_wrap_pyop2_kernel_prolong       4 0.0 8.2219e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515d8aa3890_wrap_pyop2_kernel_prolong       4 0.0 7.4655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515d8a68850_wrap_pyop2_kernel_prolong       4 0.0 5.7610e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b848221b10_wrap_pyop2_kernel_prolong       4 0.0 7.4711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b843b89f10_wrap_pyop2_kernel_prolong       4 0.0 6.7328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb10e0e50_wrap_pyop2_kernel_prolong       4 0.0 7.4659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ceb114a050_wrap_pyop2_kernel_prolong       4 0.0 7.1970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14998eee5c10_wrap_pyop2_kernel_prolong       4 0.0 7.4688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14998eee4a90_wrap_pyop2_kernel_prolong       4 0.0 6.1215e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7feee91d0_wrap_pyop2_kernel_prolong       4 0.0 7.4620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7fef27490_wrap_pyop2_kernel_prolong       4 0.0 4.8550e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491fd9f9150_wrap_pyop2_kernel_prolong       4 0.0 7.4694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491fda20a10_wrap_pyop2_kernel_prolong       4 0.0 6.7923e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fefb62b90_wrap_pyop2_kernel_prolong       4 0.0 7.4646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fefb63410_wrap_pyop2_kernel_prolong       4 0.0 6.8089e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b660c1d90_wrap_pyop2_kernel_prolong       4 0.0 7.4636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b660d4a10_wrap_pyop2_kernel_prolong       4 0.0 6.5087e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458bfb291d0_wrap_pyop2_kernel_prolong       4 0.0 7.4748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458bfb2ed90_wrap_pyop2_kernel_prolong       4 0.0 6.6628e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1824f0ad0_wrap_pyop2_kernel_prolong       4 0.0 7.4690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a181192e90_wrap_pyop2_kernel_prolong       4 0.0 6.9902e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15524f0c96d0_wrap_pyop2_kernel_prolong       4 0.0 7.4600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15524e8e0450_wrap_pyop2_kernel_prolong       4 0.0 5.7355e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c53500e210_wrap_pyop2_kernel_prolong       4 0.0 7.4605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c535002e90_wrap_pyop2_kernel_prolong       4 0.0 6.5582e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa93514050_wrap_pyop2_kernel_prolong       4 0.0 7.4655e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa93517f10_wrap_pyop2_kernel_prolong       4 0.0 6.1603e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a47c571a90_wrap_pyop2_kernel_prolong       4 0.0 7.4706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a47c668b50_wrap_pyop2_kernel_prolong       4 0.0 6.3923e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478e483cf50_wrap_pyop2_kernel_prolong       4 0.0 7.4886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478e45c6f50_wrap_pyop2_kernel_prolong       4 0.0 7.3367e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1226878d0_wrap_pyop2_kernel_prolong       4 0.0 7.4720e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a12269b310_wrap_pyop2_kernel_prolong       4 0.0 6.2859e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150074d02390_wrap_pyop2_kernel_prolong       4 0.0 7.4634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150074c6ca10_wrap_pyop2_kernel_prolong       4 0.0 6.3623e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15162c6f6690_wrap_pyop2_kernel_prolong       4 0.0 7.4801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15162c6f4b90_wrap_pyop2_kernel_prolong       4 0.0 5.1872e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3224b1310_wrap_pyop2_kernel_prolong       4 0.0 7.4646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b321ae1210_wrap_pyop2_kernel_prolong       4 0.0 7.1515e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467d993fa90_wrap_pyop2_kernel_prolong       4 0.0 7.4649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467d99404d0_wrap_pyop2_kernel_prolong       4 0.0 6.6932e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529636dbd50_wrap_pyop2_kernel_prolong       4 0.0 7.4727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152963253a10_wrap_pyop2_kernel_prolong       4 0.0 7.2788e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd0e0887d0_wrap_pyop2_kernel_prolong       4 0.0 7.4634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd0e088650_wrap_pyop2_kernel_prolong       4 0.0 6.8065e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf19879390_wrap_pyop2_kernel_prolong       4 0.0 7.4724e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf1987a5d0_wrap_pyop2_kernel_prolong       4 0.0 6.9559e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145eaac52890_wrap_pyop2_kernel_prolong       4 0.0 7.4715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145eaaa3b2d0_wrap_pyop2_kernel_prolong       4 0.0 6.3933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f895ac050_wrap_pyop2_kernel_prolong       4 0.0 7.4611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f89821350_wrap_pyop2_kernel_prolong       4 0.0 5.3690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bfe2aad10_wrap_pyop2_kernel_prolong       4 0.0 7.4710e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bfe111b10_wrap_pyop2_kernel_prolong       4 0.0 7.6986e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153647507dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536476f1790_wrap_pyop2_kernel_prolong       4 0.0 6.3982e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150192a9d650_wrap_pyop2_kernel_prolong       4 0.0 7.4721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150192276ed0_wrap_pyop2_kernel_prolong       4 0.0 8.0652e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e388cb210_wrap_pyop2_kernel_prolong       4 0.0 7.4686e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e38756490_wrap_pyop2_kernel_prolong       4 0.0 7.2018e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c23920a50_wrap_pyop2_kernel_prolong       4 0.0 7.4755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c23ba2110_wrap_pyop2_kernel_prolong       4 0.0 7.3790e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        697 1.0 3.9689e-02 3.5 0.00e+00 0.0 4.5e+05 4.0e+00 7.0e+02  0  0  3  0  3   0  0  5  0 10    -0
SFSetGraph           697 1.0 3.3753e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              697 1.0 6.0368e-02 1.8 0.00e+00 0.0 9.0e+05 2.2e+02 7.0e+02  0  0  6  0  3   0  0 10  0 10    -0
SFPack           3691890 1.2 3.5599e+00 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         3691890 1.2 1.9307e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             3810 1.0 5.7024e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             30479 1.0 1.6753e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             7620 1.0 1.3159e+01 1.7 6.58e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  2  0  0  0 50165
VecAYPX             7620 1.0 1.3947e+01 3.6 3.29e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 23666
VecScatterBegin  3691890 1.2 4.7237e+01 1.2 0.00e+00 0.0 6.5e+06 7.5e+04 0.0e+00  2  0 44 28  0   6  0 74 100  0    -0
VecScatterEnd    3691890 1.2 6.6148e+01 28.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult             7620 1.0 3.4592e+02 1.2 2.33e+11 1.2 4.0e+06 1.2e+05 0.0e+00 17  6 27 28  0  41 55 46 99  0 67466
MatMultAdd          3810 1.0 1.9494e+01 1.2 9.88e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 50794
MatMultTranspose    3810 1.0 1.7572e+01 1.7 9.88e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 56349
MatSolve         1832610 1.2 2.2002e+02 1.3 1.17e+11 1.2 4.7e+06 5.9e+02 3.5e+03 10  3 32  0 13  26 27 54  1 48 52693
MatLUFactorNum    162960 1.2 3.8582e+01 1.2 4.67e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5 11  0  0  0 121237
MatResidual         3810 1.0 1.9560e+02 1.3 1.18e+11 1.2 2.0e+06 1.2e+05 0.0e+00  9  3 14 14  0  22 28 23 50  0 60501
MatAssemblyBegin  162960 1.2 2.5832e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd    162960 1.2 3.8112e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     679 1.0 9.2334e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0  11  0  0  0  0    -0
PCSetUp           163639 1.2 1.3119e+02 1.2 4.67e+10 1.2 0.0e+00 0.0e+00 0.0e+00  7  1  0  0  0  16 11  0  0  0 35655
PCApply            11430 1.0 3.9957e+02 1.2 1.64e+11 1.2 4.7e+06 5.9e+02 3.5e+03 20  4 32  0 13  50 38 54  1 48 40721
PCApplyOnBlocks  1828800 1.2 2.3031e+02 1.2 1.62e+11 1.2 0.0e+00 0.0e+00 0.0e+00 12  4  0  0  0  29 38  0  0  0 70353
KSPSetUp          162961 1.2 1.1312e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           11430 1.0 5.7191e+02 1.1 2.88e+11 1.2 6.7e+06 3.6e+04 7.3e+03 30  7 46 14 28  74 68 77 50 100 50297
MGSmooth Level 0    3810 1.0 4.4898e+01 3.4 2.89e+09 16.9 4.7e+06 5.9e+02 7.3e+03  1  0 32  0 28   3  0 54  1 100  1505
MGSmooth Level 1    7620 1.0 5.5805e+02 1.1 2.87e+11 1.2 2.0e+06 1.2e+05 0.0e+00 29  7 14 14  0  71 67 23 50  0 51424
MGResid Level 1     3810 1.0 1.9562e+02 1.3 1.18e+11 1.2 2.0e+06 1.2e+05 0.0e+00  9  3 14 14  0  22 28 23 50  0 60495
MGInterp Level 1    7620 1.0 3.6885e+01 1.3 1.98e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  5  0  0  0 53691
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   149            149
              Viewer     3              3
         PetscRandom    18             18
           Index Set  3673           3673
   IS L to G Mapping   447            447
             Section   472            472
   Star Forest Graph   646           1343
              Vector  2864           2863
              Matrix  1328           1328
      Preconditioner   246            246
       Krylov Solver   262            262
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   128            128
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   183            183
           Weak Form   183            183
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set  1394           1394
   Star Forest Graph   697              0
              Vector   699            700
========================================================================================================================
Average time to get PetscTime(): 2.68e-08
Average time for MPI_Barrier(): 4.3368e-06
Average time for zero size MPI_Send(): 2.22809e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_seasonal_saturated/vlumping_linesmooth/h1.profile # (source: code)
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

