****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0474.gadi.nci.org.au with 104 processes, by sg8812 on Tue Aug 25 22:11:48 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.162e+02     1.000   4.162e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.111e+11     1.206   4.799e+11  4.991e+13
Flops/sec:            1.228e+09     1.206   1.153e+09  1.199e+11
MPI Msg Count:        1.594e+05     3.255   1.137e+05  1.182e+07
MPI Msg Len (bytes):  3.988e+09     2.999   2.474e+04  2.925e+11
MPI Reductions:       1.277e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.5829e+02  62.1%  4.1029e+13  82.2%  2.400e+06  20.3%  7.825e+04       64.2%  9.097e+03  71.2%
 1:        MG Apply: 1.5787e+02  37.9%  8.8854e+12  17.8%  9.425e+06  79.7%  1.111e+04       35.8%  3.652e+03  28.6%

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

BuildTwoSided       1509 1.0 2.4012e+01 8.0 0.00e+00 0.0 9.8e+04 4.0e+00 1.3e+03  3  0  1  0 10   5  0  4  0 14    -0
BuildTwoSidedF      1149 1.0 2.3962e+01 8.1 0.00e+00 0.0 1.2e+05 7.3e+05 1.1e+03  3  0  1 30  9   5  0  5 46 13    -0
SFSetGraph           369 1.1 8.2222e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              360 1.1 2.5768e+00 123.6 0.00e+00 0.0 7.8e+04 5.3e+02 1.2e+02  0  0  1  0  1   0  0  3  0  1    -0
SFBcastBegin         914 1.0 2.1360e-01 3.7 0.00e+00 0.0 4.5e+05 4.3e+04 0.0e+00  0  0  4  7  0   0  0 19 10  0    -0
SFBcastEnd           914 1.0 9.3362e+00 104.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        345 1.0 3.1724e-02 7.4 0.00e+00 0.0 1.8e+05 5.4e+04 0.0e+00  0  0  1  3  0   0  0  7  5  0    -0
SFReduceEnd          345 1.0 2.0325e+00 77.0 1.62e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   585
SFFetchOpBegin         6 1.0 2.4753e-05 3.4 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.5679e-04 9.8 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 5.9593e-04 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         51 1.0 4.2938e-03 1.3 0.00e+00 0.0 6.2e+04 8.1e+01 6.0e+01  0  0  1  0  0   0  0  3  0  1    -0
SFSectionSF           53 1.0 2.9913e-03 1.9 0.00e+00 0.0 3.1e+04 3.6e+01 5.3e+01  0  0  0  0  0   0  0  1  0  1    -0
SFRemoteOff            2 1.0 7.6644e-05 2.1 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            100431 1.1 5.7413e-01 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          100437 1.1 7.4356e-02 7.1 1.62e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15977
VecDot               225 1.0 3.8158e-01 4.1 9.72e+07 1.2 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2 25541
VecMDot             2541 1.0 7.5780e+00 2.2 3.98e+09 1.2 0.0e+00 0.0e+00 2.5e+03  1  1  0  0 20   2  1  0  0 28 52704
VecNorm             3463 1.0 4.0387e+00 4.7 1.15e+09 1.2 0.0e+00 0.0e+00 3.5e+03  1  0  0  0 27   1  0  0  0 38 28664
VecScale            2854 1.0 1.3135e-01 1.4 4.46e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 340273
VecCopy             1665 1.0 9.3760e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1017 1.0 3.6725e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              313 1.0 1.3468e-01 1.2 1.02e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 75661
VecWAXPY             225 1.0 2.1131e-01 1.2 4.86e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23060
VecMAXPY            2854 1.0 5.3221e+00 1.2 4.77e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 89925
VecScatterBegin    99166 1.1 9.7294e-01 1.4 0.00e+00 0.0 1.4e+06 4.5e+04 0.0e+00  0  0 12 22  0   0  0 60 35  0    -0
VecScatterEnd      99166 1.1 8.7809e+00 56.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom           9 1.0 1.8511e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       450 1.0 9.7933e-02 1.4 1.94e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 199032
VecReduceComm        225 1.0 1.9154e-01 7.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize         993 1.0 5.6067e-01 4.1 1.31e+08 1.2 0.0e+00 0.0e+00 9.9e+02  0  0  0  0  8   0  0  0  0 11 23482
MatMult             2766 1.0 4.6417e+01 1.2 3.14e+10 1.2 1.4e+06 4.5e+04 0.0e+00 10  6 12 22  0  16  8 60 35  0 67615
MatSolve           48793 1.2 2.6704e+00 1.3 1.52e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 56978
MatLUFactorSym       241 1.2 8.1135e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum      2239 1.1 3.0259e-01 1.2 3.12e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 103393
MatILUFactorSym        2 1.0 1.1506e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               75 1.0 2.3155e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 8.7839e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    3838 1.1 2.4741e+01 3.7 0.00e+00 0.0 1.2e+05 7.3e+05 1.1e+03  4  0  1 30  9   6  0  5 46 13    -0
MatAssemblyEnd      3838 1.1 5.3476e+00 6.1 1.26e+08 0.0 4.2e+03 3.8e+03 7.1e+01  1  0  0  0  1   1  0  0  0  1  1001
MatGetRowIJ          242 1.2 4.8995e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       9 1.0 6.5971e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  0  0  0  0  2   0  0  0  0  3    -0
MatGetOrdering       242 1.2 2.9105e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       456 1.0 4.0051e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           8 1.0 6.5744e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          8 1.0 7.8969e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        464 1.0 7.0245e-01 1.1 1.20e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 170742
MatPtAPSymbolic        3 1.0 9.4706e-02 1.0 0.00e+00 0.0 4.7e+03 3.4e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       231 1.0 5.6873e+00 1.0 4.79e+09 1.2 1.2e+05 5.9e+04 2.5e+02  1  1  1  2  2   2  1  5  4  3 84200
MatGetLocalMat       235 1.0 3.0286e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        235 1.0 4.2761e-01 5.0 0.00e+00 0.0 1.2e+05 6.0e+04 0.0e+00  0  0  1  3  0   0  0  5  4  0    -0
MatSetPreallCOO       32 1.0 7.1905e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.7914e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 2.8824e+01 1.0 1.15e+10 1.2 6.2e+05 2.2e+04 2.9e+03  7  2  5  5 23  11  3 26  7 32 39877
PCApply             1636 1.0 1.6026e+02 1.0 8.88e+10 1.2 9.4e+06 1.1e+04 3.7e+03 38 18 80 36 29 Multiple stages 55445
PCApplyOnBlocks    48793 1.2 3.0732e+00 1.3 1.83e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 59568
KSPSetUp             225 1.0 7.9029e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 2.0105e+02 1.0 1.22e+11 1.2 1.0e+07 1.5e+04 7.1e+03 48 24 87 54 56 Multiple stages 60772
KSPGMRESOrthog      2541 1.0 1.1516e+01 1.5 7.97e+09 1.2 0.0e+00 0.0e+00 2.5e+03  2  2  0  0 20   4  2  0  0 28 69365
DMRefine               2 1.0 1.9858e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  1     1
DMPlexCreateGmsh       1 1.0 1.2306e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.0103e+00 374.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 5.2913e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.0676e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexPartSelf         1 1.0 1.1499e-03 552.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 9.9533e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.4056e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.8273e-03 1.3 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 9.5878e-04 1.8 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 4.9140e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.6513e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.3723e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.4840e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  1   0  0  1  0  2    -0
DMPlexDistOvrlp        3 1.0 8.3359e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  2   0  0  3  0  3    -0
DMPlexDistField        7 1.0 1.9968e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexDistData         2 1.0 2.7041e-04 1.1 0.00e+00 0.0 5.4e+03 2.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.3914e-03 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9863e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1557e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.9264e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1868e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.2392e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.4234e-04 2.1 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.0474e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.7051e-04 2.1 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMSwarmSetSizes        4 1.0 8.3520e-05 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 3.5219e+02 1.0 5.11e+11 1.2 1.2e+07 2.5e+04 1.2e+04 85 100 98 100 93 Multiple stages 141712
SNESSetUp              1 1.0 4.1786e-05 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 2.1675e+01 1.1 1.45e+11 1.2 3.5e+05 6.0e+04 0.0e+00  5 28  3  7  0   8 34 15 11  0 647926
SNESJacobianEval     225 1.0 9.5028e+01 1.0 2.28e+11 1.2 2.4e+05 3.9e+05 9.0e+02 23 44  2 32  7  37 54 10 49 10 232530
SNESLineSearch       225 1.0 1.4283e+01 1.0 1.13e+11 1.2 3.5e+05 6.0e+04 9.0e+02  3 22  3  7  7   5 27 15 11 10 765331
DualSpaceSetUp         8 1.0 5.2243e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.7141e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 4.1371e+02 1.0 5.11e+11 1.2 1.2e+07 2.5e+04 1.3e+04 99 100 100 100 100 Multiple stages 120651
firedrake.__init__       1 1.0 1.2391e+01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
CreateMesh             3 1.0 5.1140e+00 43.9 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  1  0  3   1  0  7  0  5    -0
firedrake.mesh._from_gmsh       1 1.0 5.0111e+00 373.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.1043e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.9150e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        7 1.0 7.2585e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.9341e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      36 1.0 3.9879e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      44 1.0 2.5947e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      40 1.0 3.6414e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      39 1.0 3.2645e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      39 1.0 3.2446e-02 1.1 0.00e+00 0.0 7.6e+03 1.0e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      78 1.0 1.3759e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.6084e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5319e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      24 1.0 2.2720e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      76 1.0 2.0905e-02 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.7440e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.3716e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       8 1.0 6.7217e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2954e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.7376e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     662 1.0 9.2829e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2424 1.0 1.0909e+02 1.2 3.73e+11 1.2 3.3e+05 5.9e+04 3.8e+01 24 72  3  7  0  39 88 14 10  0 331277
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.6942e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4848 1.0 2.6947e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0  10  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      19 1.0 1.0605e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      19 0.0 1.3930e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      19 0.0 8.6790e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      21 1.0 2.0681e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   7  0  0  0  0    -0
pyop2.compilation.load      20 1.0 2.0680e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      20 1.0 1.0528e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.make_so      20 1.0 1.0305e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
ParLoopRednBegin    2424 1.0 6.8186e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2424 1.0 5.7060e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.9667e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 7.8329e+00 1.0 7.29e+06 1.2 8.9e+03 6.7e+03 1.3e+01  2  0  0  0  0   3  0  0  0  0    93
firedrake.interpolation.interpolate      21 1.0 5.4642e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      15 1.0 1.4226e+01 1.0 4.51e+07 1.2 3.2e+04 9.1e+03 1.8e+02  3  0  0  0  1   6  0  1  0  2   318
firedrake.formmanipulation.split_form      16 1.0 5.7144e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      16 1.0 2.0694e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      17 1.0 2.9001e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       8 1.0 2.4625e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 3.1331e+00 27.8 0.00e+00 0.0 3.3e+05 5.8e+04 4.0e+00  0  0  3  7  0   1  0 14 10  0    -0
Parloop_Cells_wrap_expression_kernel      34 1.0 7.2568e+00 1.0 4.51e+07 1.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0   624
firedrake.halo.Halo.global_to_local_end     621 1.0 7.2451e+00 89.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 9.2724e+00 41.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
Parloop_set_#x1514ecbecdd0_wrap_pyop2_kernel_prolong       4 0.0 7.5343e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514ecbef850_wrap_pyop2_kernel_prolong       4 0.0 3.0000e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8707e+00 1.0 3.65e+07 1.2 8.1e+03 3.0e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0   946
firedrake.function.Function.assign     314 1.0 8.6220e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.9226e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8705e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6599e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.2695e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3953e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9518e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1348e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.8582e+00 1.0 0.00e+00 0.0 3.2e+03 2.4e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.2547e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.0101e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1163e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1163e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         4 1.0 1.8696e+00 1.1 0.00e+00 0.0 7.1e+03 5.4e+04 4.6e+01  0  0  0  0  0   1  0  0  0  1    -0
MatZeroInitial         4 1.0 2.8589e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 3.5235e+02 1.0 5.11e+11 1.2 1.2e+07 2.5e+04 1.2e+04 85 100 98 100 95 Multiple stages 141647
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0813e-01 1163.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.5240e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0808e-01 1416.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0805e-01 1612.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 5.0247e+00 1.3 3.68e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   2  9  0  0  0 735110
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 9.9326e-01 1.0 9.58e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   967
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.3593e+00 1.0 3.54e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  4604
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 3.5785e+00 1.2 3.53e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  9  0  0  0 988051
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 7.3880e+00 1.3 7.32e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2 14  0  0  0   3 17  0  0  0 921260
firedrake.halo.Halo.local_to_global_begin     300 1.0 3.7838e-02 3.6 0.00e+00 0.0 1.6e+05 6.0e+04 0.0e+00  0  0  1  3  0   0  0  7  5  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.0337e+00 73.3 1.62e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   584
Parloop_Cells_wrap_form00_cell_integral     450 1.0 1.7297e+01 1.5 5.16e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   6 13  0  0  0 298859
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.5172e+00 1.4 2.71e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3150
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 2.1898e+01 1.3 6.80e+10 1.2 0.0e+00 0.0e+00 0.0e+00  5 14  0  0  0   7 17  0  0  0 311270
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 4.2675e+01 1.3 1.09e+11 1.3 0.0e+00 0.0e+00 0.0e+00  9 20  0  0  0  14 25  0  0  0 236698
firedrake.dmhooks.get_function_space       2 1.0 2.5545e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       3 1.0 1.0089e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMesh       2 1.0 6.3006e+00 1.0 0.00e+00 0.0 1.4e+04 8.1e+01 2.2e+01  2  0  0  0  0   2  0  1  0  0    -0
firedrake.mesh._pic_swarm_in_mesh       2 1.0 6.2913e+00 1.0 0.00e+00 0.0 9.6e+03 6.6e+01 1.2e+01  2  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh._parent_mesh_embedding       2 1.0 6.0714e+00 1.0 0.00e+00 0.0 5.4e+03 2.9e+01 8.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry.locate_cells_ref_coords_and_dists       2 1.0 5.0355e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.MeshGeometry._c_locator       2 1.0 5.0195e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.pointquery_utils.src_locate_cell       2 1.0 4.4547e+00 14.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.compile_coordinate_element       2 1.0 4.4404e+00 28.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.make_wrapper       2 1.0 3.7562e+00 295.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.parloop.generate_single_cell_wrapper       2 1.0 3.7560e+00 298.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
c_locator_run          2 1.0 1.8556e-01 12.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._ctypes       2 1.0 1.8242e-01 16.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function._constant_ctypes       2 1.0 1.7484e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.rtree       2 1.0 1.4429e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshGeometry.bounding_box_coords       2 1.0 2.3518e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
rtree_build            2 1.0 1.0938e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._dmswarm_create       4 1.0 4.2860e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._swarm_original_ordering_preserve       2 1.0 2.1645e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.VertexOnlyMeshTopology.__init__       4 1.0 1.1062e-02 1.3 0.00e+00 0.0 4.2e+03 1.1e+02 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_vom_from_vom_topology       4 1.0 4.1052e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.action       2 1.0 4.4841e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       77 1.0 5.9809e-01 1.3 5.05e+07 1.2 4.6e+05 2.4e+02 1.8e+03  0  0  4  0 14   0  0 19  0 20  8382
MGSetup Level 1       77 1.0 1.0022e+00 1.2 3.29e+08 1.2 5.2e+03 6.0e+04 2.7e+02  0  0  0  0  2   0  0  0  0  3 32915
firedrake.constant.Constant.assign      75 1.0 2.6976e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a02572dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5169e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a02353c10_wrap_pyop2_kernel_prolong       4 0.0 2.8194e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb39f60990_wrap_pyop2_kernel_prolong       4 0.0 7.5217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb3951a710_wrap_pyop2_kernel_prolong       4 0.0 3.5385e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150eec795d10_wrap_pyop2_kernel_prolong       4 0.0 7.5148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150eec7bec90_wrap_pyop2_kernel_prolong       4 0.0 3.3557e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb30377f50_wrap_pyop2_kernel_prolong       4 0.0 7.5188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb303746d0_wrap_pyop2_kernel_prolong       4 0.0 3.5962e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461c12817d0_wrap_pyop2_kernel_prolong       4 0.0 7.5286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461c14fc050_wrap_pyop2_kernel_prolong       4 0.0 3.9596e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15189ec22350_wrap_pyop2_kernel_prolong       4 0.0 7.5185e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15189ec21a90_wrap_pyop2_kernel_prolong       4 0.0 3.2969e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151972339e50_wrap_pyop2_kernel_prolong       4 0.0 7.5203e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519719878d0_wrap_pyop2_kernel_prolong       4 0.0 2.7586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbbea51410_wrap_pyop2_kernel_prolong       4 0.0 7.5272e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbbe919f50_wrap_pyop2_kernel_prolong       4 0.0 3.6429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549cc867390_wrap_pyop2_kernel_prolong       4 0.0 7.5235e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549cc829750_wrap_pyop2_kernel_prolong       4 0.0 2.7621e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f31bd83a50_wrap_pyop2_kernel_prolong       4 0.0 7.5286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f31b365810_wrap_pyop2_kernel_prolong       4 0.0 3.9103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cf6e77e50_wrap_pyop2_kernel_prolong       4 0.0 7.5254e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cdc515d90_wrap_pyop2_kernel_prolong       4 0.0 3.4481e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cba8491bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cba8600cd0_wrap_pyop2_kernel_prolong       4 0.0 3.7062e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fde2277110_wrap_pyop2_kernel_prolong       4 0.0 7.5011e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fde22bd950_wrap_pyop2_kernel_prolong       4 0.0 2.9951e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498c13a6a50_wrap_pyop2_kernel_prolong       4 0.0 7.5039e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498c1f51c10_wrap_pyop2_kernel_prolong       4 0.0 3.5170e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15528b9fd010_wrap_pyop2_kernel_prolong       4 0.0 7.5065e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15528b75d5d0_wrap_pyop2_kernel_prolong       4 0.0 3.5737e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5873b1110_wrap_pyop2_kernel_prolong       4 0.0 7.5049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b586a3ebd0_wrap_pyop2_kernel_prolong       4 0.0 2.8214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153245289d50_wrap_pyop2_kernel_prolong       4 0.0 7.5170e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153245289610_wrap_pyop2_kernel_prolong       4 0.0 3.6974e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f60e0c310_wrap_pyop2_kernel_prolong       4 0.0 7.5042e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f60c0c3d0_wrap_pyop2_kernel_prolong       4 0.0 3.3793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a209f42910_wrap_pyop2_kernel_prolong       4 0.0 7.5101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a209f42090_wrap_pyop2_kernel_prolong       4 0.0 3.2066e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552b1fe7c50_wrap_pyop2_kernel_prolong       4 0.0 7.5178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552b1fe7e90_wrap_pyop2_kernel_prolong       4 0.0 3.2224e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ae631db50_wrap_pyop2_kernel_prolong       4 0.0 7.5216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ae631c410_wrap_pyop2_kernel_prolong       4 0.0 4.4211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15512707ef90_wrap_pyop2_kernel_prolong       4 0.0 7.5268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15512731edd0_wrap_pyop2_kernel_prolong       4 0.0 3.9480e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491a333fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.5078e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491a333d9d0_wrap_pyop2_kernel_prolong       4 0.0 3.3787e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496bf9e4c90_wrap_pyop2_kernel_prolong       4 0.0 7.5064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496bf890b10_wrap_pyop2_kernel_prolong       4 0.0 3.8029e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfe90b2bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5244e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dfcea2ea90_wrap_pyop2_kernel_prolong       4 0.0 4.3917e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14895594aa10_wrap_pyop2_kernel_prolong       4 0.0 7.5052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148955887110_wrap_pyop2_kernel_prolong       4 0.0 2.8866e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a02d4cdbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a02ca3d610_wrap_pyop2_kernel_prolong       4 0.0 3.0399e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493235e6990_wrap_pyop2_kernel_prolong       4 0.0 7.5158e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493235e7310_wrap_pyop2_kernel_prolong       4 0.0 3.7054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490f5f2e710_wrap_pyop2_kernel_prolong       4 0.0 7.5136e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490f5dcbcd0_wrap_pyop2_kernel_prolong       4 0.0 3.2536e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14975450b090_wrap_pyop2_kernel_prolong       4 0.0 7.5122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14975475a110_wrap_pyop2_kernel_prolong       4 0.0 4.3882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15346046dc10_wrap_pyop2_kernel_prolong       4 0.0 7.5193e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534602b5d50_wrap_pyop2_kernel_prolong       4 0.0 3.2230e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e5d310bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e5d2b8b90_wrap_pyop2_kernel_prolong       4 0.0 3.1187e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d30ec57d0_wrap_pyop2_kernel_prolong       4 0.0 7.5077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d30ec7d10_wrap_pyop2_kernel_prolong       4 0.0 3.3341e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ed335a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ed3379790_wrap_pyop2_kernel_prolong       4 0.0 3.2079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6e5a6d150_wrap_pyop2_kernel_prolong       4 0.0 7.5156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6e50a1f50_wrap_pyop2_kernel_prolong       4 0.0 3.7565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458b1dc54d0_wrap_pyop2_kernel_prolong       4 0.0 7.5141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458b1f4f490_wrap_pyop2_kernel_prolong       4 0.0 3.9003e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc85be7150_wrap_pyop2_kernel_prolong       4 0.0 7.5168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc84afdd50_wrap_pyop2_kernel_prolong       4 0.0 4.2103e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b27be8c550_wrap_pyop2_kernel_prolong       4 0.0 7.5224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b27b579490_wrap_pyop2_kernel_prolong       4 0.0 4.1591e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149518601f90_wrap_pyop2_kernel_prolong       4 0.0 7.5009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149518600550_wrap_pyop2_kernel_prolong       4 0.0 2.8423e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cea19bf10_wrap_pyop2_kernel_prolong       4 0.0 7.5029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cea051250_wrap_pyop2_kernel_prolong       4 0.0 3.2213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e133355e10_wrap_pyop2_kernel_prolong       4 0.0 7.5086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e133355850_wrap_pyop2_kernel_prolong       4 0.0 3.7104e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec3f3279d0_wrap_pyop2_kernel_prolong       4 0.0 7.5115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec3e721e90_wrap_pyop2_kernel_prolong       4 0.0 3.0826e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb0a60dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5163e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb09ca7ed0_wrap_pyop2_kernel_prolong       4 0.0 3.5345e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0c841a850_wrap_pyop2_kernel_prolong       4 0.0 7.5064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0c81d4050_wrap_pyop2_kernel_prolong       4 0.0 3.6545e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476ab71a9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476ab718090_wrap_pyop2_kernel_prolong       4 0.0 3.8044e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15474ad269d0_wrap_pyop2_kernel_prolong       4 0.0 7.5193e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15474ad69d10_wrap_pyop2_kernel_prolong       4 0.0 3.6641e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d16527590_wrap_pyop2_kernel_prolong       4 0.0 7.5115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d16526690_wrap_pyop2_kernel_prolong       4 0.0 3.6125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3fc2d6410_wrap_pyop2_kernel_prolong       4 0.0 7.5064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3f7805710_wrap_pyop2_kernel_prolong       4 0.0 3.5637e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2d222a190_wrap_pyop2_kernel_prolong       4 0.0 7.5155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2d0f91b90_wrap_pyop2_kernel_prolong       4 0.0 3.8286e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe4eb6add0_wrap_pyop2_kernel_prolong       4 0.0 7.5159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe4eb6a490_wrap_pyop2_kernel_prolong       4 0.0 3.7756e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459c40fc110_wrap_pyop2_kernel_prolong       4 0.0 7.5223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459c439b550_wrap_pyop2_kernel_prolong       4 0.0 3.7090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468a19bdd90_wrap_pyop2_kernel_prolong       4 0.0 7.5174e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468a19bd610_wrap_pyop2_kernel_prolong       4 0.0 2.8586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526a7d5e450_wrap_pyop2_kernel_prolong       4 0.0 7.5227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526a7d5dc50_wrap_pyop2_kernel_prolong       4 0.0 3.2196e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac730f3550_wrap_pyop2_kernel_prolong       4 0.0 7.5148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac731f8fd0_wrap_pyop2_kernel_prolong       4 0.0 4.0110e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14728dd73a10_wrap_pyop2_kernel_prolong       4 0.0 7.5368e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14728dd71dd0_wrap_pyop2_kernel_prolong       4 0.0 3.4442e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecd22cd050_wrap_pyop2_kernel_prolong       4 0.0 7.5055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecd1972490_wrap_pyop2_kernel_prolong       4 0.0 3.2519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f24b91d50_wrap_pyop2_kernel_prolong       4 0.0 7.5107e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f24b91550_wrap_pyop2_kernel_prolong       4 0.0 2.8575e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b66ae70d0_wrap_pyop2_kernel_prolong       4 0.0 7.5075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b66bbebd0_wrap_pyop2_kernel_prolong       4 0.0 2.7602e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b04420e10_wrap_pyop2_kernel_prolong       4 0.0 7.5208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b046aebd0_wrap_pyop2_kernel_prolong       4 0.0 2.7281e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526c4956e10_wrap_pyop2_kernel_prolong       4 0.0 7.5270e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526c496c950_wrap_pyop2_kernel_prolong       4 0.0 3.1218e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c67552dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c66202d90_wrap_pyop2_kernel_prolong       4 0.0 3.6802e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbc257fe10_wrap_pyop2_kernel_prolong       4 0.0 7.5122e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbc2789810_wrap_pyop2_kernel_prolong       4 0.0 3.2775e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5cc65fc50_wrap_pyop2_kernel_prolong       4 0.0 7.5147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5cc47b3d0_wrap_pyop2_kernel_prolong       4 0.0 3.5604e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15069be88110_wrap_pyop2_kernel_prolong       4 0.0 7.5396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15069be74350_wrap_pyop2_kernel_prolong       4 0.0 4.0787e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d5051c50_wrap_pyop2_kernel_prolong       4 0.0 7.5073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d5050a90_wrap_pyop2_kernel_prolong       4 0.0 2.8248e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e0b664bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e0b48f790_wrap_pyop2_kernel_prolong       4 0.0 3.1341e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dee0166f90_wrap_pyop2_kernel_prolong       4 0.0 7.5217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dedbb66c10_wrap_pyop2_kernel_prolong       4 0.0 2.7443e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b9a46e50_wrap_pyop2_kernel_prolong       4 0.0 7.5216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b9903610_wrap_pyop2_kernel_prolong       4 0.0 3.2581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f893ef1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f893ef12d0_wrap_pyop2_kernel_prolong       4 0.0 2.9591e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecf0b4d990_wrap_pyop2_kernel_prolong       4 0.0 7.5126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecf0a13950_wrap_pyop2_kernel_prolong       4 0.0 3.9592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15423d755a10_wrap_pyop2_kernel_prolong       4 0.0 7.5212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15423d755510_wrap_pyop2_kernel_prolong       4 0.0 3.0416e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482d5c90790_wrap_pyop2_kernel_prolong       4 0.0 7.5209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482d54ee2d0_wrap_pyop2_kernel_prolong       4 0.0 3.2531e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471f7f5c5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471f77819d0_wrap_pyop2_kernel_prolong       4 0.0 3.9803e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf2fa29b90_wrap_pyop2_kernel_prolong       4 0.0 7.5154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf2f0cdd10_wrap_pyop2_kernel_prolong       4 0.0 3.2333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14862d521ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14862d76bfd0_wrap_pyop2_kernel_prolong       4 0.0 3.5425e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149168602a10_wrap_pyop2_kernel_prolong       4 0.0 7.5172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149168602050_wrap_pyop2_kernel_prolong       4 0.0 3.6795e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a9f1ea250_wrap_pyop2_kernel_prolong       4 0.0 7.5092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a9f1e9650_wrap_pyop2_kernel_prolong       4 0.0 3.2414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e20b6d9090_wrap_pyop2_kernel_prolong       4 0.0 7.5226e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e20acf6750_wrap_pyop2_kernel_prolong       4 0.0 2.5875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150737114710_wrap_pyop2_kernel_prolong       4 0.0 7.5140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150737115c90_wrap_pyop2_kernel_prolong       4 0.0 3.5619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15105ef17990_wrap_pyop2_kernel_prolong       4 0.0 7.5326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15105e220350_wrap_pyop2_kernel_prolong       4 0.0 3.5373e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0a79e6550_wrap_pyop2_kernel_prolong       4 0.0 7.5093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0a7a3de50_wrap_pyop2_kernel_prolong       4 0.0 3.2756e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a550fbd50_wrap_pyop2_kernel_prolong       4 0.0 7.5119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a550fb890_wrap_pyop2_kernel_prolong       4 0.0 3.3307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7c7e73d90_wrap_pyop2_kernel_prolong       4 0.0 7.5249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7c7d25fd0_wrap_pyop2_kernel_prolong       4 0.0 3.4525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14902605b850_wrap_pyop2_kernel_prolong       4 0.0 7.5168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490260085d0_wrap_pyop2_kernel_prolong       4 0.0 2.9157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaa5895a90_wrap_pyop2_kernel_prolong       4 0.0 7.5056e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaa5894990_wrap_pyop2_kernel_prolong       4 0.0 3.3375e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3ba6d9810_wrap_pyop2_kernel_prolong       4 0.0 7.5148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3bb173fd0_wrap_pyop2_kernel_prolong       4 0.0 3.2134e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522508463d0_wrap_pyop2_kernel_prolong       4 0.0 7.5148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152250845950_wrap_pyop2_kernel_prolong       4 0.0 3.1429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145eef710f90_wrap_pyop2_kernel_prolong       4 0.0 7.5126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145eef712a50_wrap_pyop2_kernel_prolong       4 0.0 3.6939e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eda6f64390_wrap_pyop2_kernel_prolong       4 0.0 7.5080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eda6f4a390_wrap_pyop2_kernel_prolong       4 0.0 3.2116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b879fc52d0_wrap_pyop2_kernel_prolong       4 0.0 7.5204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b879fc7450_wrap_pyop2_kernel_prolong       4 0.0 3.2222e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477b8866a10_wrap_pyop2_kernel_prolong       4 0.0 7.5133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477b8866bd0_wrap_pyop2_kernel_prolong       4 0.0 2.7574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f7d6b7950_wrap_pyop2_kernel_prolong       4 0.0 7.5277e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f7d5cdd50_wrap_pyop2_kernel_prolong       4 0.0 3.6329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15457772d5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15457770f790_wrap_pyop2_kernel_prolong       4 0.0 3.0429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daf371b3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daf371bc50_wrap_pyop2_kernel_prolong       4 0.0 3.6505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459affe92d0_wrap_pyop2_kernel_prolong       4 0.0 7.5138e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459aff70290_wrap_pyop2_kernel_prolong       4 0.0 3.4338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c767e7350_wrap_pyop2_kernel_prolong       4 0.0 7.5260e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c7664e050_wrap_pyop2_kernel_prolong       4 0.0 3.6358e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb73d6c990_wrap_pyop2_kernel_prolong       4 0.0 7.5043e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb73d6e990_wrap_pyop2_kernel_prolong       4 0.0 3.2210e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a68665d290_wrap_pyop2_kernel_prolong       4 0.0 7.5036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a68665d550_wrap_pyop2_kernel_prolong       4 0.0 2.8460e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bb5226650_wrap_pyop2_kernel_prolong       4 0.0 7.5293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bb6399810_wrap_pyop2_kernel_prolong       4 0.0 3.9971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14569e764410_wrap_pyop2_kernel_prolong       4 0.0 7.5236e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14569e714d10_wrap_pyop2_kernel_prolong       4 0.0 3.2527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5051d3690_wrap_pyop2_kernel_prolong       4 0.0 7.5270e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5051bd610_wrap_pyop2_kernel_prolong       4 0.0 4.0858e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d5932310_wrap_pyop2_kernel_prolong       4 0.0 7.5265e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5d5931b50_wrap_pyop2_kernel_prolong       4 0.0 3.7794e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153238257a90_wrap_pyop2_kernel_prolong       4 0.0 7.5255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532382865d0_wrap_pyop2_kernel_prolong       4 0.0 3.7285e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         76 1.0 1.5678e-03 1.6 0.00e+00 0.0 3.2e+04 4.0e+00 7.6e+01  0  0  0  0  1   0  0  0  0  2    -0
SFSetGraph            76 1.0 2.6258e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               76 1.0 2.4889e-03 1.4 0.00e+00 0.0 6.4e+04 2.3e+01 7.6e+01  0  0  1  0  1   0  0  1  0  2    -0
SFPack           1604916 1.2 6.7766e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1604916 1.2 8.6804e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy            11452 1.0 9.9143e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet             22901 1.0 3.5109e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             3272 1.0 1.8651e+00 1.5 1.41e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 75990
VecAYPX            22904 1.0 2.3940e+00 2.9 7.19e+08 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 30094
VecAXPBYCZ          6544 1.0 3.1370e-03 2.0 1.47e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 470620
VecScatterBegin  1604916 1.2 1.0365e+01 1.2 0.00e+00 0.0 9.3e+06 1.1e+04 0.0e+00  2  0 78 36  0   6  0 98 100  0    -0
VecScatterEnd    1604916 1.2 1.5419e+01 11.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult            16360 1.0 7.5323e+01 1.2 5.02e+10 1.2 8.6e+06 1.2e+04 0.0e+00 16 10 72 36  0  43 56 91 100  0 66626
MatMultAdd          4908 1.0 4.3458e+00 1.2 2.13e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 49123
MatMultTranspose    4908 1.0 3.5093e+00 1.8 2.13e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 60833
MatSolve          800004 1.2 4.5284e+01 1.2 2.48e+10 1.2 8.5e+05 7.4e+01 3.8e+02 10  5  7  0  3  27 28  9  0 10 54825
MatLUFactorNum     51992 1.2 6.6055e+00 1.2 7.40e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   4  8  0  0  0 112323
MatResidual         4908 1.0 4.1582e+01 1.3 2.54e+10 1.2 2.6e+06 2.0e+04 0.0e+00  9  5 22 18  0  22 29 27 50  0 61119
MatAssemblyBegin   51840 1.2 7.3792e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     51840 1.2 7.4377e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     216 1.0 1.3872e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
PCSetUp            52284 1.2 2.0584e+01 1.2 7.40e+09 1.2 0.0e+00 0.0e+00 0.0e+00  5  1  0  0  0  12  8  0  0  0 36045
PCSetUpOnBlocks     6544 1.0 1.7121e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             4908 1.0 8.3242e+01 1.2 3.24e+10 1.2 7.7e+06 1.4e+02 2.0e+03 19  6 65  0 16  50 36 82  1 55 38954
PCApplyOnBlocks   798368 1.2 4.9406e+01 1.2 3.22e+10 1.2 0.0e+00 0.0e+00 0.0e+00 11  6  0  0  0  29 36  0  0  0 65246
KSPSetUp           51916 1.2 3.7445e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            4908 1.0 1.1912e+02 1.1 5.92e+10 1.2 8.6e+06 6.2e+03 3.7e+03 28 12 72 18 29  73 67 91 51 100 49715
MGSmooth Level 0    1636 1.0 1.0851e+01 2.1 3.35e+08 1.2 7.7e+06 1.4e+02 3.7e+03  1  0 65  0 29   4  0 82  1 100  2936
MGSmooth Level 1    3272 1.0 1.1370e+02 1.1 5.88e+10 1.2 8.6e+05 6.0e+04 0.0e+00 26 12  7 18  0  69 66  9 49  0 51808
MGResid Level 1     1636 1.0 4.1378e+01 1.3 2.54e+10 1.2 8.6e+05 6.0e+04 0.0e+00  8  5  7 18  0  22 29  9 49  0 61336
MGInterp Level 1    3272 1.0 7.5096e+00 1.3 4.24e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   4  5  0  0  0 56619
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   239            237
              Viewer     3              3
         PetscRandom     9              9
           Index Set  3721           3721
   IS L to G Mapping   451            445
             Section   493            493
   Star Forest Graph   695            693
              Vector  1576           1569
              Matrix  1389           1364
      Preconditioner   253            253
       Krylov Solver   260            260
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   136            138
            DM Label   345            345
          Quadrature   144            144
      Mesh Transform     2              2
       Swarm Cell DM     4              4
    GraphPartitioner    41             41
     Discrete System   191            193
           Weak Form   191            193
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   152            152
   Star Forest Graph    80             75
              Vector   152            152
    Distributed Mesh     2              0
     Discrete System     2              0
           Weak Form     2              0
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 4.0324e-06
Average time for zero size MPI_Send(): 2.51633e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_mg_coarse_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_mg_levels_1_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type natural # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_hmg_rich_lag3/smoke.profile # (source: code)
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

