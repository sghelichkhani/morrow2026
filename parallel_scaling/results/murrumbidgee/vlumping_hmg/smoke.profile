****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0647.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:33:05 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.010e+02     1.000   5.010e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.737e+11     1.201   5.402e+11  5.618e+13
Flops/sec:            1.145e+09     1.201   1.078e+09  1.121e+11
MPI Msg Count:        1.810e+05     3.435   1.294e+05  1.346e+07
MPI Msg Len (bytes):  4.932e+09     2.999   2.688e+04  3.618e+11
MPI Reductions:       2.118e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.6879e+02  73.6%  4.8619e+13  86.5%  4.395e+06  32.6%  6.019e+04       73.1%  1.699e+04  80.2%
 1:        MG Apply: 1.3217e+02  26.4%  7.5613e+12  13.5%  9.066e+06  67.4%  1.073e+04       26.9%  4.168e+03  19.7%

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

BuildTwoSided       1960 1.0 2.8615e+01 5.1 0.00e+00 0.0 9.9e+04 4.0e+00 1.7e+03  3  0  1  0  8   5  0  2  0 10    -0
BuildTwoSidedF      1600 1.0 2.8104e+01 5.0 0.00e+00 0.0 1.2e+05 7.3e+05 1.6e+03  3  0  1 24  8   4  0  3 33  9    -0
SFSetGraph           369 1.1 8.3703e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              360 1.1 1.8046e+00 77.5 0.00e+00 0.0 7.8e+04 5.3e+02 1.2e+02  0  0  1  0  1   0  0  2  0  1    -0
SFBcastBegin         916 1.0 2.1682e-01 3.7 0.00e+00 0.0 4.5e+05 4.3e+04 0.0e+00  0  0  3  5  0   0  0 10  7  0    -0
SFBcastEnd           916 1.0 7.8757e+00 137.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        346 1.0 3.2286e-02 7.4 0.00e+00 0.0 1.8e+05 5.4e+04 0.0e+00  0  0  1  3  0   0  0  4  4  0    -0
SFReduceEnd          346 1.0 1.5701e+00 46.1 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   759
SFFetchOpBegin         6 1.0 2.7962e-05 4.1 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 4.9467e-04 8.4 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.3056e-04 1.3 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 4.4308e-03 1.3 0.00e+00 0.0 6.2e+04 8.1e+01 6.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           53 1.0 2.9569e-03 1.9 0.00e+00 0.0 3.1e+04 3.6e+01 5.3e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.2470e-05 2.1 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack           1205642 1.2 8.9640e-01 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1205648 1.2 1.2070e-01 2.3 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9875
VecDot               226 1.0 4.2674e-01 5.5 9.76e+07 1.2 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  1 22939
VecMDot             5896 1.0 1.9369e+01 3.2 8.08e+09 1.2 0.0e+00 0.0e+00 5.9e+03  2  1  0  0 28   3  2  0  0 35 41819
VecNorm             7102 1.0 8.0807e+00 4.4 2.06e+09 1.2 0.0e+00 0.0e+00 7.1e+03  1  0  0  0 34   1  0  0  0 42 25546
VecScale            6575 1.0 2.3854e-01 1.3 9.16e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 384848
VecCopy             2036 1.0 1.0998e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6330 1.0 2.5929e+00 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecAXPY              679 1.0 2.5545e-01 1.3 1.96e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 76772
VecWAXPY             226 1.0 2.1310e-01 1.2 4.88e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 22968
VecMAXPY            6575 1.0 1.0425e+01 1.2 9.71e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   3  2  0  0  0 93430
VecScatterBegin  1204374 1.2 7.8024e+00 1.3 0.00e+00 0.0 3.2e+06 4.0e+04 0.0e+00  1  0 24 35  0   2  0 73 48  0    -0
VecScatterEnd    1204374 1.2 1.3050e+01 22.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       452 1.0 1.4921e-01 2.1 1.95e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 131216
VecReduceComm        226 1.0 1.3130e-01 20.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        4830 1.0 5.6116e+00 6.3 1.62e+09 1.2 0.0e+00 0.0e+00 4.8e+03  1  0  0  0 23   1  0  0  0 28 28874
MatMult             6122 1.0 8.5654e+01 1.1 6.13e+10 1.2 3.2e+06 4.0e+04 0.0e+00 16 11 24 35  0  22 13 73 48  0 71564
MatSolve          598984 1.2 3.0063e+01 1.2 1.87e+10 1.2 0.0e+00 0.0e+00 0.0e+00  6  3  0  0  0   8  4  0  0  0 62519
MatLUFactorSym       241 1.2 7.0953e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     54468 1.2 6.1776e+00 1.2 7.75e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 125824
MatILUFactorSym        2 1.0 1.2072e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin   57263 1.1 2.8134e+01 2.5 0.00e+00 0.0 1.2e+05 7.3e+05 1.6e+03  4  0  1 24  8   5  0  3 33  9    -0
MatAssemblyEnd     57263 1.1 5.7095e+00 12.9 1.27e+08 0.0 4.2e+03 3.8e+03 7.1e+01  1  0  0  0  0   1  0  0  0  0   942
MatGetRowIJ          242 1.2 4.2733e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     226 1.0 1.5226e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  3  0  0  0  1   4  0  0  0  1    -0
MatGetOrdering       242 1.2 3.1259e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       904 1.0 4.0121e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 7.5540e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 7.5025e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum       1358 1.0 2.0925e+00 1.1 3.53e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 168233
MatPtAPSymbolic        3 1.0 1.1758e-01 1.0 0.00e+00 0.0 4.7e+03 3.4e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       678 1.0 1.6448e+01 1.0 1.41e+10 1.2 3.6e+05 6.0e+04 6.9e+02  3  3  3  6  3   4  3  8  8  4 85453
MatGetLocalMat       682 1.0 8.8953e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        682 1.0 5.1832e-01 2.1 0.00e+00 0.0 3.6e+05 6.0e+04 0.0e+00  0  0  3  6  0   0  0  8  8  0    -0
MatSetPreallCOO       32 1.0 6.0959e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.9976e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              226 1.0 1.4608e+02 1.0 8.86e+10 1.2 2.7e+06 3.5e+04 1.1e+04 29 16 20 26 52  40 18 61 35 65 60740
PCApply             1519 1.0 1.3422e+02 1.0 7.56e+10 1.2 9.1e+06 1.1e+04 4.2e+03 26 13 67 27 20 Multiple stages 56337
PCApplyOnBlocks   598984 1.2 3.7772e+01 1.2 2.65e+10 1.2 0.0e+00 0.0e+00 0.0e+00  7  5  0  0  0  10  5  0  0  0 70309
KSPSetUp             226 1.0 1.0848e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 1.7212e+02 1.0 1.06e+11 1.2 9.9e+06 1.5e+04 7.4e+03 34 19 73 40 35 Multiple stages 61666
KSPGMRESOrthog      5896 1.0 2.6649e+01 1.9 1.62e+10 1.2 0.0e+00 0.0e+00 5.9e+03  4  3  0  0 28   5  3  0  0 35 60791
DMRefine               2 1.0 2.6437e-02 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     8
DMPlexCreateGmsh       1 1.0 9.3754e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.1711e+00 597.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 5.0095e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.0783e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  1   0  0  2  0  1    -0
DMPlexPartSelf         1 1.0 1.2155e-03 555.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 5.6587e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.0493e-03 1.3 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 6.3214e-04 3.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 8.3019e-04 2.7 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 4.3986e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.2965e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.4286e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.4628e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 9.2083e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  1   0  0  2  0  1    -0
DMPlexDistField        7 1.0 2.0175e-03 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         2 1.0 2.7817e-04 1.2 0.00e+00 0.0 5.4e+03 2.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 3.6319e-03 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9907e-04 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.4028e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.7510e-03 1.5 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.3688e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.4146e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.1614e-04 1.8 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.5022e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.3913e-04 1.6 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 4.8000e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.4187e+02 1.0 5.74e+11 1.2 1.3e+07 2.7e+04 2.0e+04 88 100 98 100 96 Multiple stages 127132
SNESSetUp              1 1.0 5.0026e-05 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 2.1459e+01 1.1 1.46e+11 1.2 3.6e+05 6.0e+04 0.0e+00  4 25  3  6  0   6 29  8  8  0 656632
SNESJacobianEval     226 1.0 9.6591e+01 1.0 2.29e+11 1.2 2.4e+05 3.9e+05 9.0e+02 19 40  2 26  4  26 46  5 35  5 229785
SNESLineSearch       226 1.0 1.4050e+01 1.0 1.13e+11 1.2 3.6e+05 6.0e+04 9.0e+02  3 20  3  6  4   4 23  8  8  5 781435
DualSpaceSetUp         8 1.0 5.7370e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.1059e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.9883e+02 1.0 5.74e+11 1.2 1.3e+07 2.7e+04 2.1e+04 100 100 100 100 100 Multiple stages 112623
firedrake.__init__       1 1.0 1.0513e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 6.2680e+00 58.8 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  1  0  1  0  2   1  0  4  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 6.1720e+00 595.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0569e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.9030e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 7.2014e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.3698e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 3.6161e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.5977e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 3.2599e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 2.8157e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 2.7945e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 9.5022e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.1854e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.3979e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 2.2136e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 1.4285e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.4642e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2787e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 6.8268e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2443e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.3998e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     662 1.0 9.1802e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2433 1.0 1.0749e+02 1.2 3.75e+11 1.2 3.3e+05 5.9e+04 3.8e+01 20 65  2  5  0  27 75  7  7  0 337572
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 8.9972e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4866 1.0 2.5738e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0648e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.4028e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.6999e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 1.9713e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      20 1.0 1.9711e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0069e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 9.8894e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    2433 1.0 6.8676e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2433 1.0 5.8756e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.1369e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 5.1928e+00 1.0 7.29e+06 1.2 8.9e+03 6.7e+03 1.3e+01  1  0  0  0  0   1  0  0  0  0   141
firedrake.interpolation.interpolate      21 1.0 5.3837e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.2512e+01 1.0 4.51e+07 1.2 3.2e+04 9.1e+03 1.8e+02  2  0  0  0  1   3  0  1  0  1   362
firedrake.formmanipulation.split_form      16 1.0 5.2534e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.0212e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 1.9203e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 1.2415e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     623 1.0 2.0814e+00 13.7 0.00e+00 0.0 3.3e+05 5.8e+04 4.0e+00  0  0  2  5  0   0  0  8  7  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 6.9133e+00 1.0 4.51e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0   655
firedrake.halo.Halo.global_to_local_end     623 1.0 7.1728e+00 132.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 5.5053e+00 24.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
Parloop_set_#x14ed7b21f850_wrap_pyop2_kernel_prolong       4 0.0 7.3364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed7b592bd0_wrap_pyop2_kernel_prolong       4 0.0 2.8535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.7790e+00 1.0 3.65e+07 1.2 8.1e+03 3.0e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0   969
firedrake.function.Function.assign     314 1.0 9.1282e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 8.3849e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.9670e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.5224e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.7004e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3056e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.0997e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.0540e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.8464e+00 1.0 0.00e+00 0.0 3.2e+03 2.4e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.3894e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1904e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1088e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1088e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         4 1.0 1.7105e+00 1.1 0.00e+00 0.0 7.1e+03 5.4e+04 4.6e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         4 1.0 2.9665e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.4202e+02 1.0 5.74e+11 1.2 1.3e+07 2.7e+04 2.0e+04 88 100 98 100 97 Multiple stages 127089
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2225e-01 1001.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 9.8170e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2220e-01 1182.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2216e-01 1333.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 4.8780e+00 1.3 3.70e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  8  0  0  0 759733
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 9.7611e-01 1.0 9.61e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   987
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.3467e+00 1.0 3.55e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4663
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 3.5416e+00 1.1 3.54e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 1001653
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 7.2952e+00 1.2 7.35e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   2 14  0  0  0 936093
firedrake.halo.Halo.local_to_global_begin     301 1.0 3.8737e-02 3.7 0.00e+00 0.0 1.6e+05 6.0e+04 0.0e+00  0  0  1  3  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 1.5708e+00 43.9 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   759
Parloop_Cells_wrap_form00_cell_integral     452 1.0 1.7162e+01 1.4 5.18e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   4 11  0  0  0 302555
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 1.6619e+00 1.3 2.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2889
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 2.0530e+01 1.2 6.83e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   5 14  0  0  0 333495
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 4.2894e+01 1.3 1.09e+11 1.3 0.0e+00 0.0e+00 0.0e+00  8 18  0  0  0  10 21  0  0  0 236538
firedrake.dmhooks.get_function_space       2 1.0 2.9540e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 1.0487e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 5.2116e+00 1.0 0.00e+00 0.0 1.4e+04 8.1e+01 2.2e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 5.2025e+00 1.0 0.00e+00 0.0 9.6e+03 6.6e+01 1.2e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 5.1290e+00 1.0 0.00e+00 0.0 5.4e+03 2.9e+01 8.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 5.0643e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 5.0554e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 4.6399e+00 16.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 4.6253e+00 29.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 3.6543e+00 280.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 3.6541e+00 283.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 1.5873e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 1.2637e-02 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.6178e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.8621e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.2899e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.5155e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 4.2640e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 7.1683e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 1.1759e-02 1.4 0.00e+00 0.0 4.2e+03 1.1e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 3.7151e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.3492e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      226 1.0 4.4891e-01 1.4 1.49e+08 1.2 1.4e+06 2.5e+02 5.4e+03  0  0 10  0 25   0  0 31  0 32 33085
MGSetup Level 1      226 1.0 1.2159e+02 1.0 7.45e+10 1.2 1.2e+06 6.0e+04 5.0e+03 24 13  9 20 24  33 15 27 27 29 61312
firedrake.constant.Constant.assign      75 1.0 2.8867e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b49f15d10_wrap_pyop2_kernel_prolong       4 0.0 7.3354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b49ebd390_wrap_pyop2_kernel_prolong       4 0.0 2.8058e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475a40b1950_wrap_pyop2_kernel_prolong       4 0.0 7.3371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475a40d4350_wrap_pyop2_kernel_prolong       4 0.0 3.3470e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153841c1f110_wrap_pyop2_kernel_prolong       4 0.0 7.3373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153841243bd0_wrap_pyop2_kernel_prolong       4 0.0 3.3316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfaa3fa990_wrap_pyop2_kernel_prolong       4 0.0 7.3351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfaa429a10_wrap_pyop2_kernel_prolong       4 0.0 3.4079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e54bd59e10_wrap_pyop2_kernel_prolong       4 0.0 7.3403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e54bd59550_wrap_pyop2_kernel_prolong       4 0.0 3.7427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151067025410_wrap_pyop2_kernel_prolong       4 0.0 7.3328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151066e93c90_wrap_pyop2_kernel_prolong       4 0.0 3.0998e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529d71da0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3314e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529d71dbdd0_wrap_pyop2_kernel_prolong       4 0.0 2.6244e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca6a7be0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca6a632fd0_wrap_pyop2_kernel_prolong       4 0.0 3.6119e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff37d60410_wrap_pyop2_kernel_prolong       4 0.0 7.3358e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff37d3d790_wrap_pyop2_kernel_prolong       4 0.0 2.6161e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491db53d950_wrap_pyop2_kernel_prolong       4 0.0 7.3398e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491db3e0610_wrap_pyop2_kernel_prolong       4 0.0 3.8992e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152846119a50_wrap_pyop2_kernel_prolong       4 0.0 7.3348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15284611bc90_wrap_pyop2_kernel_prolong       4 0.0 3.2618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef550e4d0_wrap_pyop2_kernel_prolong       4 0.0 7.3280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ef550dd10_wrap_pyop2_kernel_prolong       4 0.0 3.3836e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bc0909a10_wrap_pyop2_kernel_prolong       4 0.0 7.3332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bc1135510_wrap_pyop2_kernel_prolong       4 0.0 2.8952e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153751c3b0d0_wrap_pyop2_kernel_prolong       4 0.0 7.3299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537511e5990_wrap_pyop2_kernel_prolong       4 0.0 3.3729e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149931500e10_wrap_pyop2_kernel_prolong       4 0.0 7.3306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149931761c50_wrap_pyop2_kernel_prolong       4 0.0 3.3767e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7bc346310_wrap_pyop2_kernel_prolong       4 0.0 7.3263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7bcc9b250_wrap_pyop2_kernel_prolong       4 0.0 2.8166e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbab6c21d0_wrap_pyop2_kernel_prolong       4 0.0 7.3358e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbab6c3b50_wrap_pyop2_kernel_prolong       4 0.0 3.4823e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc65ef1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3278e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc64a98c10_wrap_pyop2_kernel_prolong       4 0.0 3.3682e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145812ee31d0_wrap_pyop2_kernel_prolong       4 0.0 7.3341e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145813198290_wrap_pyop2_kernel_prolong       4 0.0 3.0400e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cda6ff290_wrap_pyop2_kernel_prolong       4 0.0 7.3363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cd9c6dc90_wrap_pyop2_kernel_prolong       4 0.0 3.0562e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498a2250310_wrap_pyop2_kernel_prolong       4 0.0 7.3358e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498a1a1d350_wrap_pyop2_kernel_prolong       4 0.0 4.2565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d93c0de4d0_wrap_pyop2_kernel_prolong       4 0.0 7.3251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d93c0dd950_wrap_pyop2_kernel_prolong       4 0.0 3.5999e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6665cc4d0_wrap_pyop2_kernel_prolong       4 0.0 7.3388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c665de97d0_wrap_pyop2_kernel_prolong       4 0.0 3.3977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad4be9dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.3395e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad4be9de10_wrap_pyop2_kernel_prolong       4 0.0 3.7578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f690959a90_wrap_pyop2_kernel_prolong       4 0.0 7.3379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f690959790_wrap_pyop2_kernel_prolong       4 0.0 4.0209e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4629dc790_wrap_pyop2_kernel_prolong       4 0.0 7.3327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a46201fb90_wrap_pyop2_kernel_prolong       4 0.0 2.6412e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146582a386d0_wrap_pyop2_kernel_prolong       4 0.0 7.3286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146582a3b090_wrap_pyop2_kernel_prolong       4 0.0 2.9224e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543d6896cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543d6791910_wrap_pyop2_kernel_prolong       4 0.0 3.3706e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548d0dec990_wrap_pyop2_kernel_prolong       4 0.0 7.3302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548d0ddb9d0_wrap_pyop2_kernel_prolong       4 0.0 3.1295e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14712eba3950_wrap_pyop2_kernel_prolong       4 0.0 7.3347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14712eba3210_wrap_pyop2_kernel_prolong       4 0.0 3.5622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df9ec3a710_wrap_pyop2_kernel_prolong       4 0.0 7.3349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df9ebddad0_wrap_pyop2_kernel_prolong       4 0.0 3.2136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e629bfd390_wrap_pyop2_kernel_prolong       4 0.0 7.3305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6293aa550_wrap_pyop2_kernel_prolong       4 0.0 2.8534e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14993041b990_wrap_pyop2_kernel_prolong       4 0.0 7.3302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149930179990_wrap_pyop2_kernel_prolong       4 0.0 3.2229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506f4d0e590_wrap_pyop2_kernel_prolong       4 0.0 7.3253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506f4d0d9d0_wrap_pyop2_kernel_prolong       4 0.0 3.0811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148297b6b650_wrap_pyop2_kernel_prolong       4 0.0 7.3330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148297bab010_wrap_pyop2_kernel_prolong       4 0.0 3.6703e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a20075cdd0_wrap_pyop2_kernel_prolong       4 0.0 7.3310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a200670d50_wrap_pyop2_kernel_prolong       4 0.0 3.5919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b338a30e90_wrap_pyop2_kernel_prolong       4 0.0 7.3296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3389e1290_wrap_pyop2_kernel_prolong       4 0.0 3.8457e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8767ed010_wrap_pyop2_kernel_prolong       4 0.0 7.3345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b875ee1290_wrap_pyop2_kernel_prolong       4 0.0 3.9395e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151539c3edd0_wrap_pyop2_kernel_prolong       4 0.0 7.3379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151539a97fd0_wrap_pyop2_kernel_prolong       4 0.0 2.7558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aede14df10_wrap_pyop2_kernel_prolong       4 0.0 7.3309e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aede026390_wrap_pyop2_kernel_prolong       4 0.0 2.9682e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1ec891110_wrap_pyop2_kernel_prolong       4 0.0 7.3353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1ec472810_wrap_pyop2_kernel_prolong       4 0.0 3.4177e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f67c830350_wrap_pyop2_kernel_prolong       4 0.0 7.3280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f67c0f50d0_wrap_pyop2_kernel_prolong       4 0.0 2.9714e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb51b13790_wrap_pyop2_kernel_prolong       4 0.0 7.3276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb511dc310_wrap_pyop2_kernel_prolong       4 0.0 3.4290e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15073c1041d0_wrap_pyop2_kernel_prolong       4 0.0 7.3276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15073c21f810_wrap_pyop2_kernel_prolong       4 0.0 3.5151e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15417b3b8dd0_wrap_pyop2_kernel_prolong       4 0.0 7.3228e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15417b1975d0_wrap_pyop2_kernel_prolong       4 0.0 3.7644e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e688b4cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e635ee4d0_wrap_pyop2_kernel_prolong       4 0.0 3.5374e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15170fdce710_wrap_pyop2_kernel_prolong       4 0.0 7.3381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15170f4f6a10_wrap_pyop2_kernel_prolong       4 0.0 3.5051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155441a1e110_wrap_pyop2_kernel_prolong       4 0.0 7.3370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554419dfb10_wrap_pyop2_kernel_prolong       4 0.0 3.4122e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0ff0a60d0_wrap_pyop2_kernel_prolong       4 0.0 7.3350e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0ff1d5b10_wrap_pyop2_kernel_prolong       4 0.0 3.5474e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514c3d2a250_wrap_pyop2_kernel_prolong       4 0.0 7.3354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514c3d4df50_wrap_pyop2_kernel_prolong       4 0.0 3.7521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523b6ea7950_wrap_pyop2_kernel_prolong       4 0.0 7.3390e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523b6ea57d0_wrap_pyop2_kernel_prolong       4 0.0 3.8251e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f549aef210_wrap_pyop2_kernel_prolong       4 0.0 7.3264e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f549aedb50_wrap_pyop2_kernel_prolong       4 0.0 2.7625e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c19c367390_wrap_pyop2_kernel_prolong       4 0.0 7.3196e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c19c365f10_wrap_pyop2_kernel_prolong       4 0.0 3.2478e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af6d41ea10_wrap_pyop2_kernel_prolong       4 0.0 7.3259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af6d41df50_wrap_pyop2_kernel_prolong       4 0.0 4.0282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495e46e5850_wrap_pyop2_kernel_prolong       4 0.0 7.3166e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495e470df90_wrap_pyop2_kernel_prolong       4 0.0 3.3679e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cda4849110_wrap_pyop2_kernel_prolong       4 0.0 7.3145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cda48f07d0_wrap_pyop2_kernel_prolong       4 0.0 3.1896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd6a44dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.3244e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd6a44d650_wrap_pyop2_kernel_prolong       4 0.0 3.0057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474b8dfbd90_wrap_pyop2_kernel_prolong       4 0.0 7.3160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474b8cddb10_wrap_pyop2_kernel_prolong       4 0.0 2.6768e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b8f1d4bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b8f1e53d0_wrap_pyop2_kernel_prolong       4 0.0 2.7715e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14954ffd5d10_wrap_pyop2_kernel_prolong       4 0.0 7.3180e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14954feeaf10_wrap_pyop2_kernel_prolong       4 0.0 3.0281e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ccd13dd90_wrap_pyop2_kernel_prolong       4 0.0 7.3225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ccd13d310_wrap_pyop2_kernel_prolong       4 0.0 3.5643e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a991d5a650_wrap_pyop2_kernel_prolong       4 0.0 7.3239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a991d26f10_wrap_pyop2_kernel_prolong       4 0.0 3.2061e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149097132d50_wrap_pyop2_kernel_prolong       4 0.0 7.3178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490970faa50_wrap_pyop2_kernel_prolong       4 0.0 3.7252e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c56c8e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.3216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c56c8dcd0_wrap_pyop2_kernel_prolong       4 0.0 4.1757e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152242e30c90_wrap_pyop2_kernel_prolong       4 0.0 7.3166e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152242e37390_wrap_pyop2_kernel_prolong       4 0.0 2.8858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151efc163610_wrap_pyop2_kernel_prolong       4 0.0 7.3165e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ef7923590_wrap_pyop2_kernel_prolong       4 0.0 3.1602e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bc105da50_wrap_pyop2_kernel_prolong       4 0.0 7.3178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bc105d310_wrap_pyop2_kernel_prolong       4 0.0 2.6585e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8baee7a90_wrap_pyop2_kernel_prolong       4 0.0 7.3171e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8baddc410_wrap_pyop2_kernel_prolong       4 0.0 3.3149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca7f795d0_wrap_pyop2_kernel_prolong       4 0.0 7.3164e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca7fdfbd0_wrap_pyop2_kernel_prolong       4 0.0 3.0993e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468606a3850_wrap_pyop2_kernel_prolong       4 0.0 7.3299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468606a2190_wrap_pyop2_kernel_prolong       4 0.0 4.0091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b311b47750_wrap_pyop2_kernel_prolong       4 0.0 7.3287e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b311b541d0_wrap_pyop2_kernel_prolong       4 0.0 3.0550e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbd3f46010_wrap_pyop2_kernel_prolong       4 0.0 7.3302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbd3f459d0_wrap_pyop2_kernel_prolong       4 0.0 3.3810e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147af65c5c90_wrap_pyop2_kernel_prolong       4 0.0 7.3224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147af5e14ed0_wrap_pyop2_kernel_prolong       4 0.0 4.0283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472b5b61f50_wrap_pyop2_kernel_prolong       4 0.0 7.3230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472b5149a50_wrap_pyop2_kernel_prolong       4 0.0 3.0436e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffcd289750_wrap_pyop2_kernel_prolong       4 0.0 7.3243e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffcd28b810_wrap_pyop2_kernel_prolong       4 0.0 3.4459e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15531897b050_wrap_pyop2_kernel_prolong       4 0.0 7.3245e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553195e3190_wrap_pyop2_kernel_prolong       4 0.0 3.7198e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149858cbd850_wrap_pyop2_kernel_prolong       4 0.0 7.3246e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149858a46150_wrap_pyop2_kernel_prolong       4 0.0 3.1243e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550b016fb50_wrap_pyop2_kernel_prolong       4 0.0 7.3154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550b015fa10_wrap_pyop2_kernel_prolong       4 0.0 2.5117e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c8edafe50_wrap_pyop2_kernel_prolong       4 0.0 7.3264e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c8edaea10_wrap_pyop2_kernel_prolong       4 0.0 3.5793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bcb0ff590_wrap_pyop2_kernel_prolong       4 0.0 7.3162e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bcb4efa50_wrap_pyop2_kernel_prolong       4 0.0 3.6015e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150af5124bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150af468ee90_wrap_pyop2_kernel_prolong       4 0.0 3.3446e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467e2a1fb50_wrap_pyop2_kernel_prolong       4 0.0 7.3241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467e2a1e6d0_wrap_pyop2_kernel_prolong       4 0.0 3.2354e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af2f7b5b90_wrap_pyop2_kernel_prolong       4 0.0 7.3160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af2eeb7e50_wrap_pyop2_kernel_prolong       4 0.0 3.5679e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb1209d90_wrap_pyop2_kernel_prolong       4 0.0 7.3150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb1209490_wrap_pyop2_kernel_prolong       4 0.0 2.9656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c108cc210_wrap_pyop2_kernel_prolong       4 0.0 7.3177e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c10b80690_wrap_pyop2_kernel_prolong       4 0.0 3.3825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14831748dd50_wrap_pyop2_kernel_prolong       4 0.0 7.3220e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14831748ed90_wrap_pyop2_kernel_prolong       4 0.0 3.2853e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ced4859590_wrap_pyop2_kernel_prolong       4 0.0 7.3219e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ced4859d90_wrap_pyop2_kernel_prolong       4 0.0 3.2930e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14636fff6810_wrap_pyop2_kernel_prolong       4 0.0 7.3249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14636f809750_wrap_pyop2_kernel_prolong       4 0.0 3.7519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153de94194d0_wrap_pyop2_kernel_prolong       4 0.0 7.3268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153de9421650_wrap_pyop2_kernel_prolong       4 0.0 3.2145e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15541467e850_wrap_pyop2_kernel_prolong       4 0.0 7.3187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155414704bd0_wrap_pyop2_kernel_prolong       4 0.0 3.2689e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ade899910_wrap_pyop2_kernel_prolong       4 0.0 7.3168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152adea0df90_wrap_pyop2_kernel_prolong       4 0.0 2.9956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dd48714d0_wrap_pyop2_kernel_prolong       4 0.0 7.3272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dd2211410_wrap_pyop2_kernel_prolong       4 0.0 3.8199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473f9c23150_wrap_pyop2_kernel_prolong       4 0.0 7.3260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473f9b00bd0_wrap_pyop2_kernel_prolong       4 0.0 3.0520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1034f7c10_wrap_pyop2_kernel_prolong       4 0.0 7.3189e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1033b8f50_wrap_pyop2_kernel_prolong       4 0.0 3.6302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15119726e710_wrap_pyop2_kernel_prolong       4 0.0 7.3231e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1511968276d0_wrap_pyop2_kernel_prolong       4 0.0 3.5164e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546b037ab10_wrap_pyop2_kernel_prolong       4 0.0 7.3262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546b03585d0_wrap_pyop2_kernel_prolong       4 0.0 3.6944e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff50895b10_wrap_pyop2_kernel_prolong       4 0.0 7.3226e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff50897c50_wrap_pyop2_kernel_prolong       4 0.0 3.2342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b67678e50_wrap_pyop2_kernel_prolong       4 0.0 7.3183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b676c2150_wrap_pyop2_kernel_prolong       4 0.0 2.7662e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de2d3affd0_wrap_pyop2_kernel_prolong       4 0.0 7.3288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de2d427ed0_wrap_pyop2_kernel_prolong       4 0.0 4.0672e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14969202d890_wrap_pyop2_kernel_prolong       4 0.0 7.3179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149692056250_wrap_pyop2_kernel_prolong       4 0.0 3.2795e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c9cb79150_wrap_pyop2_kernel_prolong       4 0.0 7.3197e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c9cba9210_wrap_pyop2_kernel_prolong       4 0.0 4.1257e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148885dd7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148885dcdd90_wrap_pyop2_kernel_prolong       4 0.0 3.6693e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f11b0f0cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f11b0f25d0_wrap_pyop2_kernel_prolong       4 0.0 3.9184e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        226 1.0 4.6288e-03 1.9 0.00e+00 0.0 9.4e+04 4.0e+00 2.3e+02  0  0  1  0  1   0  0  1  0  5    -0
SFSetGraph           226 1.0 8.2915e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              226 1.0 7.3223e-03 1.6 0.00e+00 0.0 1.9e+05 2.3e+01 2.3e+02  0  0  1  0  1   0  0  2  0  5    -0
SFPack           1490139 1.2 6.6223e-01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1490139 1.2 6.6906e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            13671 1.0 1.5817e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             21263 1.0 3.2979e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX            24304 1.0 3.6952e+00 1.9 1.98e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 53714
VecAXPBYCZ          6076 1.0 2.9363e-03 1.9 1.37e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 466832
VecScatterBegin  1490139 1.2 9.6575e+00 1.2 0.00e+00 0.0 8.6e+06 1.1e+04 0.0e+00  2  0 64 27  0   7  0 95 100  0    -0
VecScatterEnd    1490139 1.2 1.2113e+01 9.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult            15190 1.0 6.7521e+01 1.1 4.66e+10 1.2 8.0e+06 1.2e+04 0.0e+00 13  8 59 27  0  48 62 88 100  0 69009
MatMultAdd          4557 1.0 4.1330e+00 1.3 1.98e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 47958
MatMultTranspose    4557 1.0 3.3086e+00 1.8 1.98e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 59907
MatSolve          742791 1.2 4.4062e+01 1.2 2.30e+10 1.2 1.1e+06 6.1e+01 1.1e+03  8  4  8  0  5  31 30 12  0 27 52316
MatLUFactorNum       450 1.0 1.3995e+00 1.1 5.29e+06 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   221
MatResidual         4557 1.0 3.6490e+01 1.2 2.36e+10 1.2 2.4e+06 2.0e+04 0.0e+00  7  4 18 13  0  25 31 26 50  0 64666
PCSetUp              675 1.0 1.4044e+00 1.1 5.29e+06 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   220
PCSetUpOnBlocks     6076 1.0 1.6247e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             4557 1.0 6.2149e+01 1.2 2.32e+10 1.2 7.5e+06 1.4e+02 2.6e+03 12  4 56  0 13  44 31 82  1 64 37363
PCApplyOnBlocks   741272 1.2 4.1808e+01 1.2 2.30e+10 1.2 0.0e+00 0.0e+00 0.0e+00  8  4  0  0  0  30 30  0  0  0 55119
KSPSetUp             225 1.0 6.0753e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            4557 1.0 9.5921e+01 1.1 4.81e+10 1.2 8.3e+06 5.9e+03 4.2e+03 19  9 61 14 20  70 64 91 51 100 50147
MGSmooth Level 0    1519 1.0 1.1041e+01 1.9 3.28e+08 1.3 7.5e+06 1.4e+02 4.2e+03  1  0 56  0 20   5  0 82  1 100  2698
MGSmooth Level 1    3038 1.0 8.9548e+01 1.1 4.77e+10 1.2 8.0e+05 6.0e+04 0.0e+00 17  9  6 13  0  65 63  9 49  0 53383
MGResid Level 1     1519 1.0 3.6338e+01 1.2 2.36e+10 1.2 8.0e+05 6.0e+04 0.0e+00  6  4  6 13  0  24 31  9 49  0 64847
MGInterp Level 1    3038 1.0 7.0355e+00 1.3 3.94e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   5  5  0  0  0 56112
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   239            237
              Viewer     3              3
           Index Set  3721           3721
   IS L to G Mapping   451            445
             Section   493            493
   Star Forest Graph   677            675
              Vector  2330           2323
              Matrix  1386           1361
      Preconditioner   253            253
       Krylov Solver   251            251
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   127            129
            DM Label   345            345
          Quadrature   144            144
      Mesh Transform     2              2
       Swarm Cell DM     4              4
    GraphPartitioner    41             41
     Discrete System   182            184
           Weak Form   182            184
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   452            452
   Star Forest Graph   230            225
              Vector   451            451
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 4.193e-06
Average time for zero size MPI_Send(): 2.61386e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_hmg/smoke.profile # (source: code)
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

