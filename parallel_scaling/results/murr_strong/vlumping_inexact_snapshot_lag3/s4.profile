****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0497.gadi.nci.org.au with 416 processes, by sg8812 on Sat Aug 22 00:08:15 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           3.026e+03     1.000   3.026e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.200e+12     1.141   3.049e+12  1.268e+15
Flops/sec:            1.058e+09     1.141   1.008e+09  4.191e+11
MPI Msg Count:        1.913e+05     4.112   1.096e+05  4.559e+07
MPI Msg Len (bytes):  2.454e+10     2.869   1.454e+05  6.630e+12
MPI Reductions:       1.332e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.0468e+03  34.6%  7.2897e+14  57.5%  1.216e+07  26.7%  2.234e+05       41.0%  1.019e+04  76.5%
 1:        MG Apply: 1.9789e+03  65.4%  5.3922e+14  42.5%  3.343e+07  73.3%  1.171e+05       59.0%  3.108e+03  23.3%

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

BuildTwoSided       1080 1.0 7.5032e+01 5.3 0.00e+00 0.0 4.0e+05 4.0e+00 1.1e+03  1  0  1  0  8   4  0  3  0 11    -0
BuildTwoSidedF       983 1.0 7.2711e+01 4.8 0.00e+00 0.0 5.2e+05 1.9e+06 9.8e+02  1  0  1 15  7   4  0  4 36 10    -0
SFSetGraph           104 1.0 1.1417e-02 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 4.3194e+00 125.3 0.00e+00 0.0 2.9e+05 1.5e+03 9.7e+01  0  0  1  0  1   0  0  2  0  1    -0
SFBcastBegin         888 1.0 6.3793e-01 3.8 0.00e+00 0.0 1.9e+06 1.2e+05 0.0e+00  0  0  4  3  0   0  0 16  8  0    -0
SFBcastEnd           888 1.0 2.3252e+01 116.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        341 1.0 1.3889e-01 4.2 0.00e+00 0.0 7.6e+05 1.4e+05 0.0e+00  0  0  2  2  0   0  0  6  4  0    -0
SFReduceEnd          341 1.0 6.1195e+00 80.4 4.97e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2191
SFFetchOpBegin         6 1.0 3.9179e-05 5.1 0.00e+00 0.0 1.1e+04 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 9.2658e-04 21.6 0.00e+00 0.0 1.1e+04 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 2.4087e-03 4.1 0.00e+00 0.0 5.2e+03 1.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 1.1501e-02 1.3 0.00e+00 0.0 2.5e+05 1.1e+02 5.8e+01  0  0  1  0  0   0  0  2  0  1    -0
SFSectionSF           51 1.0 5.7395e-03 2.6 0.00e+00 0.0 1.2e+05 5.2e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
SFRemoteOff            2 1.0 9.8426e-05 3.0 0.00e+00 0.0 4.7e+03 2.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4959 1.0 3.1958e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4965 1.0 3.7604e-01 5.1 4.97e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 35655
VecDot               225 1.0 1.5611e+00 3.4 3.76e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2 96433
VecMDot             3498 1.0 1.0057e+02 2.4 3.81e+10 1.1 0.0e+00 0.0e+00 3.5e+03  2  1  0  0 26   6  2  0  0 34 151864
VecNorm             4326 1.0 2.2323e+01 2.5 7.23e+09 1.1 0.0e+00 0.0e+00 4.3e+03  0  0  0  0 32   1  0  0  0 42 129661
VecScale            3801 1.0 7.3958e+00 1.1 3.17e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 171935
VecCopy             1654 1.0 4.9756e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               605 1.0 1.1838e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              303 1.0 1.2135e+00 1.1 5.06e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 167067
VecWAXPY             226 1.0 9.7202e-01 1.2 1.89e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 77783
VecMAXPY            3801 1.0 5.8367e+01 1.1 4.40e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5  2  0  0  0 301775
VecScatterBegin     3724 1.0 2.7025e+00 2.9 0.00e+00 0.0 8.5e+06 1.6e+05 0.0e+00  0  0 19 20  0   0  0 70 49  0    -0
VecScatterEnd       3724 1.0 5.2917e+01 22.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       450 1.0 8.0335e-01 2.1 7.52e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 374791
VecReduceComm        225 1.0 5.2303e-01 22.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize         847 1.0 9.2733e+00 3.0 2.12e+09 1.1 0.0e+00 0.0e+00 8.5e+02  0  0  0  0  6   1  0  0  0  8 91668
MatMult             3724 1.0 3.2731e+02 1.2 2.21e+11 1.1 8.5e+06 1.6e+05 0.0e+00 10  7 19 20  0  28 12 70 49  0 269653
MatSolve             847 1.0 7.1323e+01 1.2 4.92e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   6  3  0  0  0 275077
MatLUFactorSym         1 1.0 2.1489e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       154 1.0 5.7449e+01 1.1 4.10e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   5  2  0  0  0 281553
MatILUFactorSym        2 1.0 6.5101e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               75 1.0 7.9015e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 3.2630e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1186 1.0 7.7562e+01 3.3 0.00e+00 0.0 5.2e+05 1.9e+06 9.8e+02  2  0  1 15  7   5  0  4 36 10    -0
MatAssemblyEnd      1186 1.0 1.8571e+01 20.6 3.69e+08 0.0 9.1e+03 2.0e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  3251
MatGetRowIJ            2 1.0 9.6150e-06 35.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 2.3845e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       302 1.0 1.6529e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatTranspose           2 1.0 3.0153e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 2.5275e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        154 1.0 2.7121e+00 1.1 4.63e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 682951
MatPtAPSymbolic        1 1.0 4.6441e-01 1.0 0.00e+00 0.0 6.8e+03 2.6e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        77 1.0 2.0368e+01 1.0 1.85e+10 1.1 1.8e+05 4.6e+05 8.2e+01  1  1  0  1  1   2  1  1  3  1 363555
MatGetLocalMat        77 1.0 1.2312e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         77 1.0 1.0062e+00 5.7 0.00e+00 0.0 1.8e+05 4.6e+05 0.0e+00  0  0  0  1  0   0  0  1  3  0    -0
MatSetPreallCOO       32 1.0 7.9463e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.8766e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 2.4195e+02 1.0 1.72e+11 1.1 1.9e+06 1.8e+05 1.8e+03  8  5  4  5 14  23  9 16 13 18 283254
PCApply             2728 1.0 2.0151e+03 1.1 1.35e+12 1.1 3.3e+07 1.2e+05 3.1e+03 65 43 73 59 23 Multiple stages 267584
PCApplyOnBlocks      847 1.0 7.1332e+01 1.2 4.92e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   6  3  0  0  0 275040
KSPSetUp             225 1.0 5.7681e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 2.3095e+03 1.0 1.59e+12 1.1 4.0e+07 1.2e+05 8.8e+03 76 50 87 74 66 Multiple stages 274397
KSPGMRESOrthog      3498 1.0 1.4616e+02 1.6 7.63e+10 1.1 0.0e+00 0.0e+00 3.5e+03  4  2  0  0 26  11  4  0  0 34 208988
DMRefine               2 1.0 5.3469e-02 1.0 2.09e+03 1.0 3.2e+04 4.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  1    16
DMPlexCreateGmsh       1 1.0 3.2263e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.3817e+00 159.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 2.1039e-01 1.0 0.00e+00 0.0 7.7e+04 8.6e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
Mesh Migration         4 1.0 2.9335e-02 1.0 0.00e+00 0.0 2.8e+05 1.0e+02 2.4e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 5.6019e-03 1747.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 3.4126e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.1903e-03 1.5 0.00e+00 0.0 1.5e+04 6.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.5985e-03 3.5 0.00e+00 0.0 7.5e+03 2.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 3.2624e-03 1.8 0.00e+00 0.0 8.0e+03 3.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.6580e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.1006e-01 1.0 0.00e+00 0.0 1.7e+04 3.4e+02 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 3.8597e-03 1.1 0.00e+00 0.0 4.5e+04 1.6e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.2671e-02 1.0 0.00e+00 0.0 1.4e+05 9.9e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 3.3742e-02 1.0 0.00e+00 0.0 3.5e+05 9.2e+01 2.4e+02  0  0  1  0  2   0  0  3  0  2    -0
DMPlexDistField        7 1.0 6.1410e-03 1.2 0.00e+00 0.0 6.5e+04 7.7e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 1.3593e-02 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.1241e-03 12.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.2959e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 4.5981e-03 1.4 0.00e+00 0.0 1.8e+04 3.7e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.8347e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 9.1094e-04 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 4.0307e-04 1.9 0.00e+00 0.0 1.4e+04 3.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 1.3908e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 1.0088e-03 1.6 0.00e+00 0.0 3.5e+03 4.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 2.9498e+03 1.0 3.20e+12 1.1 4.5e+07 1.5e+05 1.2e+04 97 100 98 100 94 Multiple stages 429906
SNESSetUp              1 1.0 6.2906e-05 7.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 5.2404e+01 1.1 5.56e+11 1.2 1.5e+06 1.6e+05 0.0e+00  2 17  3  4  0   5 30 13  9  0 4149366
SNESJacobianEval     225 1.0 3.2383e+02 1.0 8.74e+11 1.2 1.0e+06 1.0e+06 9.0e+02 11 27  2 16  7  31 47  8 39  9 1056777
SNESLineSearch       225 1.0 5.4657e+01 1.0 4.33e+11 1.2 1.5e+06 1.6e+05 9.0e+02  2 13  3  4  7   5 23 13  9  9 3096438
DualSpaceSetUp         8 1.0 6.7553e-03 1.5 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     7
FESetUp                8 1.0 1.9993e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 3.0235e+03 1.0 3.20e+12 1.1 4.6e+07 1.5e+05 1.3e+04 100 100 100 100 100 Multiple stages 419447
firedrake.__init__       1 1.0 1.0732e+01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.6726e+00 17.5 0.00e+00 0.0 6.9e+05 1.0e+02 4.4e+02  0  0  2  0  3   0  0  6  0  4    -0
firedrake.mesh._from_gmsh       1 1.0 5.3825e+00 159.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.0751e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 7.0190e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 6.6480e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.2212e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.2078e-02 1.2 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.5674e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 3.0201e-02 1.2 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.7901e-02 1.2 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.7771e-02 1.2 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 9.2196e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 7.2053e-03 1.2 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.8659e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3768e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 4.6928e-02 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.9617e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.5663e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.4871e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.5048e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.8951e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 1.1478e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2420 1.0 3.3106e+02 1.2 1.43e+12 1.2 1.4e+06 1.5e+05 3.2e+01 10 44  3  3  0  29 77 12  8  0 1690487
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.4092e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4840 1.0 2.4950e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0940e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.3972e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5786e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.3824e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.3823e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.0708e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.8877e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2420 1.0 8.5804e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2420 1.0 7.4231e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 1.2725e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 1.1810e+01 1.0 2.82e+07 1.1 3.8e+04 1.8e+04 1.3e+01  0  0  0  0  0   1  0  0  0  0   956
firedrake.interpolation.interpolate      13 1.0 4.9404e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 6.5584e+00 1.0 1.74e+08 1.1 5.8e+04 5.5e+04 3.7e+01  0  0  0  0  0   1  0  0  0  0 10648
firedrake.formmanipulation.split_form      14 1.0 5.5276e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.6132e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 3.1965e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 2.7550e-01 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 6.9840e+00 18.8 0.00e+00 0.0 1.4e+06 1.5e+05 4.0e+00  0  0  3  3  0   0  0 12  8  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.7298e+00 1.0 1.74e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 12188
firedrake.halo.Halo.global_to_local_end     621 1.0 2.1921e+01 122.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.4373e+00 87.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d603db490_wrap_pyop2_kernel_prolong       4 0.0 7.5829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d601418d0_wrap_pyop2_kernel_prolong       4 0.0 1.0852e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.0940e+00 1.0 1.41e+08 1.1 3.5e+04 7.9e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0 13810
firedrake.function.Function.assign     314 1.0 3.6517e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 3.5667e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1496e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.8904e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.8500e-05 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 1.4910e-01 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9552e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 1.4665e-01 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 1.1987e+01 1.0 0.00e+00 0.0 1.4e+04 6.3e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 9.9530e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.2066e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1174e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1174e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 8.0417e+00 1.1 0.00e+00 0.0 1.2e+04 3.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 1.2030e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 2.9503e+03 1.0 3.20e+12 1.1 4.5e+07 1.5e+05 1.3e+04 97 100 98 100 95 Multiple stages 429832
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0833e-01 997.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 9.9380e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0828e-01 1190.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0825e-01 1354.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 1.4936e+01 1.5 1.42e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  8  0  0  0 3820145
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0250e+00 1.0 1.85e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7235
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.4364e+00 1.1 9.45e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 24332
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 9.3403e+00 1.2 1.37e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  8  0  0  0 5866894
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 2.0767e+01 1.3 2.77e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   2 14  0  0  0 5081698
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.5293e-01 3.8 0.00e+00 0.0 6.8e+05 1.6e+05 0.0e+00  0  0  2  2  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 6.1233e+00 76.4 4.97e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2190
Parloop_Cells_wrap_form00_cell_integral     450 1.0 5.8980e+01 1.4 1.99e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   5 11  0  0  0 1353855
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 2.4500e+00 1.9 7.21e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10895
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 7.9176e+01 1.3 2.64e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   6 14  0  0  0 1334258
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 1.5500e+02 1.3 4.11e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0  13 21  0  0  0 1010624
firedrake.dmhooks.get_function_space       1 1.0 1.4151e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 1.1631e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       77 1.0 3.2687e+01 1.0 6.25e+07 7.1 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   3  0  0  0  0   288
MGSetup Level 1       77 1.0 1.7971e+02 1.0 1.53e+11 1.1 1.8e+06 1.6e+05 1.6e+03  6  5  4  4 12  17  8 14 10 16 340088
firedrake.constant.Constant.assign      75 1.0 3.7630e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b70edcdc50_wrap_pyop2_kernel_prolong       4 0.0 7.5222e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b70edcd450_wrap_pyop2_kernel_prolong       4 0.0 1.1117e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb6e89490_wrap_pyop2_kernel_prolong       4 0.0 7.5393e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152eb6e86410_wrap_pyop2_kernel_prolong       4 0.0 9.9749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a10663c10_wrap_pyop2_kernel_prolong       4 0.0 7.5897e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a10687410_wrap_pyop2_kernel_prolong       4 0.0 1.1122e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520649410d0_wrap_pyop2_kernel_prolong       4 0.0 7.5009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152064941e50_wrap_pyop2_kernel_prolong       4 0.0 1.0146e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478e2c4ba10_wrap_pyop2_kernel_prolong       4 0.0 7.5081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478e2c4bd90_wrap_pyop2_kernel_prolong       4 0.0 1.3350e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146858454a10_wrap_pyop2_kernel_prolong       4 0.0 7.5283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146858457a10_wrap_pyop2_kernel_prolong       4 0.0 9.7507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539d6110410_wrap_pyop2_kernel_prolong       4 0.0 7.5502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1539d6aee790_wrap_pyop2_kernel_prolong       4 0.0 1.2053e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bedab258d0_wrap_pyop2_kernel_prolong       4 0.0 7.5018e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bedab25690_wrap_pyop2_kernel_prolong       4 0.0 1.2337e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e4b36d650_wrap_pyop2_kernel_prolong       4 0.0 7.5833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e4b36e450_wrap_pyop2_kernel_prolong       4 0.0 1.0736e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc69aef490_wrap_pyop2_kernel_prolong       4 0.0 7.5570e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc69d21890_wrap_pyop2_kernel_prolong       4 0.0 1.2705e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edf3a379d0_wrap_pyop2_kernel_prolong       4 0.0 7.5811e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edf3a35b50_wrap_pyop2_kernel_prolong       4 0.0 1.2681e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dc71c4210_wrap_pyop2_kernel_prolong       4 0.0 7.5557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147dc71a6290_wrap_pyop2_kernel_prolong       4 0.0 1.2955e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf410e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf4116250_wrap_pyop2_kernel_prolong       4 0.0 1.1193e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472fbd2e550_wrap_pyop2_kernel_prolong       4 0.0 7.5029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472fbd2ea90_wrap_pyop2_kernel_prolong       4 0.0 1.0288e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb225f1250_wrap_pyop2_kernel_prolong       4 0.0 7.5117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb226a5d50_wrap_pyop2_kernel_prolong       4 0.0 1.3360e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f0b091dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f0b0939d0_wrap_pyop2_kernel_prolong       4 0.0 1.0624e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501ba6069d0_wrap_pyop2_kernel_prolong       4 0.0 7.5075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501ba604890_wrap_pyop2_kernel_prolong       4 0.0 1.2395e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c324bf7fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c324bcc190_wrap_pyop2_kernel_prolong       4 0.0 1.1291e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153126143850_wrap_pyop2_kernel_prolong       4 0.0 7.5745e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153126141610_wrap_pyop2_kernel_prolong       4 0.0 1.1261e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151aa4707990_wrap_pyop2_kernel_prolong       4 0.0 7.5109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151aa4705710_wrap_pyop2_kernel_prolong       4 0.0 1.1867e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff870e4750_wrap_pyop2_kernel_prolong       4 0.0 7.5863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff866bb490_wrap_pyop2_kernel_prolong       4 0.0 1.2247e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481b0429fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481b0e75850_wrap_pyop2_kernel_prolong       4 0.0 1.2914e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503b7b88bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503b7b5e210_wrap_pyop2_kernel_prolong       4 0.0 1.3371e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e9c2e9a90_wrap_pyop2_kernel_prolong       4 0.0 7.5111e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e9c751cd0_wrap_pyop2_kernel_prolong       4 0.0 1.2436e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6ee80fe50_wrap_pyop2_kernel_prolong       4 0.0 7.5717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6eea46a90_wrap_pyop2_kernel_prolong       4 0.0 1.2314e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480503f5dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148050575590_wrap_pyop2_kernel_prolong       4 0.0 1.1522e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800fee3ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5785e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14800fd5c510_wrap_pyop2_kernel_prolong       4 0.0 1.1205e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4e77ae5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4e79d6350_wrap_pyop2_kernel_prolong       4 0.0 1.2612e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e9d531250_wrap_pyop2_kernel_prolong       4 0.0 7.5449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e9d59f850_wrap_pyop2_kernel_prolong       4 0.0 1.2865e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e90fefa050_wrap_pyop2_kernel_prolong       4 0.0 7.5066e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e90fef9c50_wrap_pyop2_kernel_prolong       4 0.0 1.2381e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486467e3290_wrap_pyop2_kernel_prolong       4 0.0 7.5091e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14864686cb50_wrap_pyop2_kernel_prolong       4 0.0 1.2782e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab478c6e10_wrap_pyop2_kernel_prolong       4 0.0 7.4996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab478c5e90_wrap_pyop2_kernel_prolong       4 0.0 1.1086e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d18d64d10_wrap_pyop2_kernel_prolong       4 0.0 7.5449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d18d67850_wrap_pyop2_kernel_prolong       4 0.0 1.3329e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a39fbf410_wrap_pyop2_kernel_prolong       4 0.0 7.5276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a39fb5a50_wrap_pyop2_kernel_prolong       4 0.0 1.3734e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14866f0bdf90_wrap_pyop2_kernel_prolong       4 0.0 7.5814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14866f0bd650_wrap_pyop2_kernel_prolong       4 0.0 1.2175e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f660385010_wrap_pyop2_kernel_prolong       4 0.0 7.5152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f660322990_wrap_pyop2_kernel_prolong       4 0.0 1.1623e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b9beb8f90_wrap_pyop2_kernel_prolong       4 0.0 7.5140e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b9bea7290_wrap_pyop2_kernel_prolong       4 0.0 1.3342e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15015db0e090_wrap_pyop2_kernel_prolong       4 0.0 7.5639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15015db15f50_wrap_pyop2_kernel_prolong       4 0.0 1.3968e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491355c98d0_wrap_pyop2_kernel_prolong       4 0.0 7.5536e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491355c8f10_wrap_pyop2_kernel_prolong       4 0.0 1.1494e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476e83e2150_wrap_pyop2_kernel_prolong       4 0.0 7.5324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476e8689bd0_wrap_pyop2_kernel_prolong       4 0.0 1.0882e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeedc53a50_wrap_pyop2_kernel_prolong       4 0.0 7.5619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aeedee9e10_wrap_pyop2_kernel_prolong       4 0.0 1.2919e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151975963450_wrap_pyop2_kernel_prolong       4 0.0 7.5933e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151975961110_wrap_pyop2_kernel_prolong       4 0.0 1.3947e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a692efe50_wrap_pyop2_kernel_prolong       4 0.0 7.5795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a692ed390_wrap_pyop2_kernel_prolong       4 0.0 1.2117e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534199cd550_wrap_pyop2_kernel_prolong       4 0.0 7.5136e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534199cffd0_wrap_pyop2_kernel_prolong       4 0.0 1.3822e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb419b4d90_wrap_pyop2_kernel_prolong       4 0.0 7.5023e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb417cd1d0_wrap_pyop2_kernel_prolong       4 0.0 1.1389e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa9c52bb10_wrap_pyop2_kernel_prolong       4 0.0 7.5002e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa9c5b4bd0_wrap_pyop2_kernel_prolong       4 0.0 1.1646e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15531af65bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15531a5d5550_wrap_pyop2_kernel_prolong       4 0.0 1.4287e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550dc879010_wrap_pyop2_kernel_prolong       4 0.0 7.5331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550dc61f6d0_wrap_pyop2_kernel_prolong       4 0.0 1.1098e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525d97887d0_wrap_pyop2_kernel_prolong       4 0.0 7.5441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525d9788210_wrap_pyop2_kernel_prolong       4 0.0 1.2242e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147927d6e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147927d6de50_wrap_pyop2_kernel_prolong       4 0.0 1.3456e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486567c4e50_wrap_pyop2_kernel_prolong       4 0.0 7.5818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148655e44410_wrap_pyop2_kernel_prolong       4 0.0 1.4230e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14760dea3e50_wrap_pyop2_kernel_prolong       4 0.0 7.4961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14760dea05d0_wrap_pyop2_kernel_prolong       4 0.0 1.1148e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154862431390_wrap_pyop2_kernel_prolong       4 0.0 7.5019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154862432050_wrap_pyop2_kernel_prolong       4 0.0 1.0922e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455210c4850_wrap_pyop2_kernel_prolong       4 0.0 7.4972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145520ebb610_wrap_pyop2_kernel_prolong       4 0.0 1.1424e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ebe1f9650_wrap_pyop2_kernel_prolong       4 0.0 7.4987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ebe277450_wrap_pyop2_kernel_prolong       4 0.0 1.2572e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460f858ff90_wrap_pyop2_kernel_prolong       4 0.0 7.5166e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460f858e110_wrap_pyop2_kernel_prolong       4 0.0 1.1568e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7c17da510_wrap_pyop2_kernel_prolong       4 0.0 7.5058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7c1919850_wrap_pyop2_kernel_prolong       4 0.0 1.2843e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528ef961290_wrap_pyop2_kernel_prolong       4 0.0 7.5564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528ef92a010_wrap_pyop2_kernel_prolong       4 0.0 1.1300e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506a01d5e10_wrap_pyop2_kernel_prolong       4 0.0 7.5288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506a009b250_wrap_pyop2_kernel_prolong       4 0.0 1.1394e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15176fee2c50_wrap_pyop2_kernel_prolong       4 0.0 7.5050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15176f551c10_wrap_pyop2_kernel_prolong       4 0.0 1.3558e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146614335f50_wrap_pyop2_kernel_prolong       4 0.0 7.5026e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146614335550_wrap_pyop2_kernel_prolong       4 0.0 1.3225e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de6de73b90_wrap_pyop2_kernel_prolong       4 0.0 7.5073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de6dfd11d0_wrap_pyop2_kernel_prolong       4 0.0 1.3501e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbf71b6350_wrap_pyop2_kernel_prolong       4 0.0 7.5096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbf71b5ad0_wrap_pyop2_kernel_prolong       4 0.0 1.2437e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15244ef861d0_wrap_pyop2_kernel_prolong       4 0.0 7.5112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15244ef85950_wrap_pyop2_kernel_prolong       4 0.0 1.3770e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbad167cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbacf05d10_wrap_pyop2_kernel_prolong       4 0.0 1.1593e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15475db97a50_wrap_pyop2_kernel_prolong       4 0.0 7.5060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15475db97f90_wrap_pyop2_kernel_prolong       4 0.0 1.3207e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14652e076490_wrap_pyop2_kernel_prolong       4 0.0 7.5764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14652d5cdf90_wrap_pyop2_kernel_prolong       4 0.0 1.2784e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15092eda1c50_wrap_pyop2_kernel_prolong       4 0.0 7.5002e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15092eda23d0_wrap_pyop2_kernel_prolong       4 0.0 1.1714e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151997079890_wrap_pyop2_kernel_prolong       4 0.0 7.5098e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15199700a250_wrap_pyop2_kernel_prolong       4 0.0 1.2617e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c193db950_wrap_pyop2_kernel_prolong       4 0.0 7.5114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c193d9510_wrap_pyop2_kernel_prolong       4 0.0 1.4092e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a10b355d0_wrap_pyop2_kernel_prolong       4 0.0 7.5038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a0b740190_wrap_pyop2_kernel_prolong       4 0.0 1.0919e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e0884ef10_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e08824a90_wrap_pyop2_kernel_prolong       4 0.0 1.2559e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b4903f950_wrap_pyop2_kernel_prolong       4 0.0 7.5070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b4903f350_wrap_pyop2_kernel_prolong       4 0.0 1.3472e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14faaf6a8bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5065e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fab033d210_wrap_pyop2_kernel_prolong       4 0.0 1.1551e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db47601350_wrap_pyop2_kernel_prolong       4 0.0 7.5483e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db475c5310_wrap_pyop2_kernel_prolong       4 0.0 1.1468e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b91cb0aad0_wrap_pyop2_kernel_prolong       4 0.0 7.5043e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b91cd3bf10_wrap_pyop2_kernel_prolong       4 0.0 1.2612e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c6885cfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c63e46a50_wrap_pyop2_kernel_prolong       4 0.0 1.4299e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d1e54cf50_wrap_pyop2_kernel_prolong       4 0.0 7.4896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d1e520ad0_wrap_pyop2_kernel_prolong       4 0.0 1.0273e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e233073e50_wrap_pyop2_kernel_prolong       4 0.0 7.4989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e232efc210_wrap_pyop2_kernel_prolong       4 0.0 1.2568e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfcb62b210_wrap_pyop2_kernel_prolong       4 0.0 7.5049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfca613550_wrap_pyop2_kernel_prolong       4 0.0 1.3814e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5a3e8d390_wrap_pyop2_kernel_prolong       4 0.0 7.5118e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5a3e60f90_wrap_pyop2_kernel_prolong       4 0.0 1.3382e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15052f45ca10_wrap_pyop2_kernel_prolong       4 0.0 7.4979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15052f4a7e50_wrap_pyop2_kernel_prolong       4 0.0 1.1234e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee898f8b10_wrap_pyop2_kernel_prolong       4 0.0 7.5751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee885f0fd0_wrap_pyop2_kernel_prolong       4 0.0 1.3102e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537964a1990_wrap_pyop2_kernel_prolong       4 0.0 7.5304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537964df610_wrap_pyop2_kernel_prolong       4 0.0 1.0918e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483aaba9450_wrap_pyop2_kernel_prolong       4 0.0 7.5044e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483a8537b10_wrap_pyop2_kernel_prolong       4 0.0 1.2830e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1a4616b90_wrap_pyop2_kernel_prolong       4 0.0 7.5082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1a40f4410_wrap_pyop2_kernel_prolong       4 0.0 1.3054e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151549875e50_wrap_pyop2_kernel_prolong       4 0.0 7.5052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151549876590_wrap_pyop2_kernel_prolong       4 0.0 1.2380e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b878201750_wrap_pyop2_kernel_prolong       4 0.0 7.5818e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b878201410_wrap_pyop2_kernel_prolong       4 0.0 1.3624e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147aaee11710_wrap_pyop2_kernel_prolong       4 0.0 7.5147e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147aaedc56d0_wrap_pyop2_kernel_prolong       4 0.0 1.2228e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddaac49250_wrap_pyop2_kernel_prolong       4 0.0 7.5142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddaac21490_wrap_pyop2_kernel_prolong       4 0.0 1.3201e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b5ecb5410_wrap_pyop2_kernel_prolong       4 0.0 7.5021e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b5ecb6f50_wrap_pyop2_kernel_prolong       4 0.0 1.1750e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14825a609b10_wrap_pyop2_kernel_prolong       4 0.0 7.5102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14825a609ad0_wrap_pyop2_kernel_prolong       4 0.0 1.3041e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14930e5e3790_wrap_pyop2_kernel_prolong       4 0.0 7.5275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14930e4e1690_wrap_pyop2_kernel_prolong       4 0.0 1.0985e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1a5889f50_wrap_pyop2_kernel_prolong       4 0.0 7.5159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1a5866310_wrap_pyop2_kernel_prolong       4 0.0 1.4210e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15292de69010_wrap_pyop2_kernel_prolong       4 0.0 7.5283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15292e061e10_wrap_pyop2_kernel_prolong       4 0.0 1.3104e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513dde52250_wrap_pyop2_kernel_prolong       4 0.0 7.5058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513ddfabc90_wrap_pyop2_kernel_prolong       4 0.0 1.1532e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494d334d050_wrap_pyop2_kernel_prolong       4 0.0 7.5110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494d3323090_wrap_pyop2_kernel_prolong       4 0.0 1.3230e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edef391ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edef36b910_wrap_pyop2_kernel_prolong       4 0.0 1.2009e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521f3371cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521f3353a50_wrap_pyop2_kernel_prolong       4 0.0 1.2833e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8291d5650_wrap_pyop2_kernel_prolong       4 0.0 7.5134e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c82907d190_wrap_pyop2_kernel_prolong       4 0.0 1.3326e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150520c56650_wrap_pyop2_kernel_prolong       4 0.0 7.5019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150520301390_wrap_pyop2_kernel_prolong       4 0.0 1.1804e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499d8cf9f10_wrap_pyop2_kernel_prolong       4 0.0 7.5073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499d8cf9750_wrap_pyop2_kernel_prolong       4 0.0 1.2899e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b866d2bed0_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b866d28250_wrap_pyop2_kernel_prolong       4 0.0 1.1304e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15485e6ea850_wrap_pyop2_kernel_prolong       4 0.0 7.8369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15485e821710_wrap_pyop2_kernel_prolong       4 0.0 1.1290e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524dab76210_wrap_pyop2_kernel_prolong       4 0.0 7.8530e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524dab756d0_wrap_pyop2_kernel_prolong       4 0.0 1.0918e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14608ae5c310_wrap_pyop2_kernel_prolong       4 0.0 7.7637e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14608a655a50_wrap_pyop2_kernel_prolong       4 0.0 1.1140e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154acf79e350_wrap_pyop2_kernel_prolong       4 0.0 7.8219e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154acf795f90_wrap_pyop2_kernel_prolong       4 0.0 1.1324e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518b7f89e90_wrap_pyop2_kernel_prolong       4 0.0 7.8468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518b7f8b4d0_wrap_pyop2_kernel_prolong       4 0.0 1.1225e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b476a2ed0_wrap_pyop2_kernel_prolong       4 0.0 7.8474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b47699450_wrap_pyop2_kernel_prolong       4 0.0 1.1991e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4d8672d10_wrap_pyop2_kernel_prolong       4 0.0 7.8419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4d873a390_wrap_pyop2_kernel_prolong       4 0.0 1.2380e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd57483c90_wrap_pyop2_kernel_prolong       4 0.0 7.7823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd57481490_wrap_pyop2_kernel_prolong       4 0.0 1.2388e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5f22e8210_wrap_pyop2_kernel_prolong       4 0.0 7.8756e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5f22c3bd0_wrap_pyop2_kernel_prolong       4 0.0 1.2574e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f92b22a50_wrap_pyop2_kernel_prolong       4 0.0 7.7919e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f92d93d10_wrap_pyop2_kernel_prolong       4 0.0 1.2085e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147efcc5ac10_wrap_pyop2_kernel_prolong       4 0.0 7.8416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147efce8b910_wrap_pyop2_kernel_prolong       4 0.0 1.3080e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc8871ca90_wrap_pyop2_kernel_prolong       4 0.0 7.8299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc88763d90_wrap_pyop2_kernel_prolong       4 0.0 1.1514e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb23ada310_wrap_pyop2_kernel_prolong       4 0.0 7.8379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb23221e90_wrap_pyop2_kernel_prolong       4 0.0 1.5188e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480d7441ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480d7443e50_wrap_pyop2_kernel_prolong       4 0.0 1.1136e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9a608e0d0_wrap_pyop2_kernel_prolong       4 0.0 7.7420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9a5f45fd0_wrap_pyop2_kernel_prolong       4 0.0 1.1699e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac518c9b50_wrap_pyop2_kernel_prolong       4 0.0 7.7050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac518bd3d0_wrap_pyop2_kernel_prolong       4 0.0 1.2038e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155427a62fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155427a3bd50_wrap_pyop2_kernel_prolong       4 0.0 1.2480e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152085a1da90_wrap_pyop2_kernel_prolong       4 0.0 7.7527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152085a15810_wrap_pyop2_kernel_prolong       4 0.0 1.3247e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515c3a4e0d0_wrap_pyop2_kernel_prolong       4 0.0 7.7092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515c3a4dc10_wrap_pyop2_kernel_prolong       4 0.0 1.1926e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc26f8d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.7381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc26f8e310_wrap_pyop2_kernel_prolong       4 0.0 1.1253e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbe6e56090_wrap_pyop2_kernel_prolong       4 0.0 7.7467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbe6328650_wrap_pyop2_kernel_prolong       4 0.0 1.3029e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154499d9bbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7576e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154499fb4790_wrap_pyop2_kernel_prolong       4 0.0 1.2752e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495268a0e90_wrap_pyop2_kernel_prolong       4 0.0 7.7494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495268a24d0_wrap_pyop2_kernel_prolong       4 0.0 1.2008e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153366175bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15336691acd0_wrap_pyop2_kernel_prolong       4 0.0 1.2264e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f00cc1e50_wrap_pyop2_kernel_prolong       4 0.0 7.7102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f00cc2550_wrap_pyop2_kernel_prolong       4 0.0 1.3583e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbe07153d0_wrap_pyop2_kernel_prolong       4 0.0 7.7974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbe0715010_wrap_pyop2_kernel_prolong       4 0.0 1.4198e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d9c2c22d0_wrap_pyop2_kernel_prolong       4 0.0 7.7521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d9c2c3850_wrap_pyop2_kernel_prolong       4 0.0 1.0997e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7e58bd3d0_wrap_pyop2_kernel_prolong       4 0.0 7.7285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7e5859450_wrap_pyop2_kernel_prolong       4 0.0 1.2613e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c16029f10_wrap_pyop2_kernel_prolong       4 0.0 7.7039e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c16023dd0_wrap_pyop2_kernel_prolong       4 0.0 1.1348e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fab576b390_wrap_pyop2_kernel_prolong       4 0.0 7.7792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fab5769710_wrap_pyop2_kernel_prolong       4 0.0 1.2940e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4b1c580d0_wrap_pyop2_kernel_prolong       4 0.0 7.7259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4b1a2b350_wrap_pyop2_kernel_prolong       4 0.0 1.2229e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d70fa48310_wrap_pyop2_kernel_prolong       4 0.0 7.7306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d70fa1d190_wrap_pyop2_kernel_prolong       4 0.0 1.2902e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481a60b18d0_wrap_pyop2_kernel_prolong       4 0.0 7.7156e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481a5f41210_wrap_pyop2_kernel_prolong       4 0.0 1.2179e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ee7aaa490_wrap_pyop2_kernel_prolong       4 0.0 7.6935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ee7baba50_wrap_pyop2_kernel_prolong       4 0.0 1.2836e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483b0898710_wrap_pyop2_kernel_prolong       4 0.0 7.6887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483b08f9050_wrap_pyop2_kernel_prolong       4 0.0 1.2595e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d92ce2b490_wrap_pyop2_kernel_prolong       4 0.0 7.6961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d92ccfc3d0_wrap_pyop2_kernel_prolong       4 0.0 1.3248e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5e9dcdc90_wrap_pyop2_kernel_prolong       4 0.0 7.7271e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5e8a55f90_wrap_pyop2_kernel_prolong       4 0.0 1.4143e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c598149c10_wrap_pyop2_kernel_prolong       4 0.0 7.6930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5981493d0_wrap_pyop2_kernel_prolong       4 0.0 1.2662e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500c3681610_wrap_pyop2_kernel_prolong       4 0.0 7.7561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500c22f7bd0_wrap_pyop2_kernel_prolong       4 0.0 1.1605e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0d97c1890_wrap_pyop2_kernel_prolong       4 0.0 7.6852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0d953dc10_wrap_pyop2_kernel_prolong       4 0.0 1.1188e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b7325f90_wrap_pyop2_kernel_prolong       4 0.0 7.6933e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b7326310_wrap_pyop2_kernel_prolong       4 0.0 1.2350e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495a8641c10_wrap_pyop2_kernel_prolong       4 0.0 7.7110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495a85aaf90_wrap_pyop2_kernel_prolong       4 0.0 1.4534e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ba1899c90_wrap_pyop2_kernel_prolong       4 0.0 7.6894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ba189bc50_wrap_pyop2_kernel_prolong       4 0.0 1.1928e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472b89bbc10_wrap_pyop2_kernel_prolong       4 0.0 7.6942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472b8bc9d10_wrap_pyop2_kernel_prolong       4 0.0 1.3532e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbab847c50_wrap_pyop2_kernel_prolong       4 0.0 7.7009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbaba50f90_wrap_pyop2_kernel_prolong       4 0.0 1.4709e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149718d70cd0_wrap_pyop2_kernel_prolong       4 0.0 7.7093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149718d72810_wrap_pyop2_kernel_prolong       4 0.0 1.1336e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff7a94c750_wrap_pyop2_kernel_prolong       4 0.0 7.6956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff7a94eed0_wrap_pyop2_kernel_prolong       4 0.0 1.2880e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af13a66410_wrap_pyop2_kernel_prolong       4 0.0 7.7034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af13a64f90_wrap_pyop2_kernel_prolong       4 0.0 1.4808e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4a960fa10_wrap_pyop2_kernel_prolong       4 0.0 7.6907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4a960f290_wrap_pyop2_kernel_prolong       4 0.0 1.2090e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d62d27e10_wrap_pyop2_kernel_prolong       4 0.0 7.6969e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d62d1e110_wrap_pyop2_kernel_prolong       4 0.0 1.3581e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7357ee5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7356e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d734aae1d0_wrap_pyop2_kernel_prolong       4 0.0 1.2742e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd79603e90_wrap_pyop2_kernel_prolong       4 0.0 7.7305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd79600890_wrap_pyop2_kernel_prolong       4 0.0 1.4938e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccf97c6110_wrap_pyop2_kernel_prolong       4 0.0 7.6895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccf97c6290_wrap_pyop2_kernel_prolong       4 0.0 1.1225e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519a553e6d0_wrap_pyop2_kernel_prolong       4 0.0 7.7891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519a5d9e190_wrap_pyop2_kernel_prolong       4 0.0 1.1885e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458375d0e10_wrap_pyop2_kernel_prolong       4 0.0 7.7764e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145837668990_wrap_pyop2_kernel_prolong       4 0.0 1.3160e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14550adfa790_wrap_pyop2_kernel_prolong       4 0.0 7.7391e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14550ae01e90_wrap_pyop2_kernel_prolong       4 0.0 1.2926e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc60344d50_wrap_pyop2_kernel_prolong       4 0.0 7.7837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc60309450_wrap_pyop2_kernel_prolong       4 0.0 1.1384e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549402b0450_wrap_pyop2_kernel_prolong       4 0.0 7.7361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154940286bd0_wrap_pyop2_kernel_prolong       4 0.0 1.2843e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462e2788610_wrap_pyop2_kernel_prolong       4 0.0 7.7539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462e278de90_wrap_pyop2_kernel_prolong       4 0.0 1.0843e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519552a0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519547c14d0_wrap_pyop2_kernel_prolong       4 0.0 1.0608e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed6ad15910_wrap_pyop2_kernel_prolong       4 0.0 7.8030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed6ad16cd0_wrap_pyop2_kernel_prolong       4 0.0 1.2346e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee23ee9ed0_wrap_pyop2_kernel_prolong       4 0.0 7.7857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee23ef4710_wrap_pyop2_kernel_prolong       4 0.0 1.2340e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c1c583b50_wrap_pyop2_kernel_prolong       4 0.0 7.7858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c1c445250_wrap_pyop2_kernel_prolong       4 0.0 1.0857e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15406a3ca850_wrap_pyop2_kernel_prolong       4 0.0 7.7683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15406a3cd8d0_wrap_pyop2_kernel_prolong       4 0.0 1.2205e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15189edd8b10_wrap_pyop2_kernel_prolong       4 0.0 7.8404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15189edb1b50_wrap_pyop2_kernel_prolong       4 0.0 1.3736e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145943962610_wrap_pyop2_kernel_prolong       4 0.0 7.8177e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145943962d10_wrap_pyop2_kernel_prolong       4 0.0 1.1277e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ce277f510_wrap_pyop2_kernel_prolong       4 0.0 7.7923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ce28fd310_wrap_pyop2_kernel_prolong       4 0.0 1.1313e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0f03b1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8216e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0f03b3b90_wrap_pyop2_kernel_prolong       4 0.0 1.3110e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150eb3819c50_wrap_pyop2_kernel_prolong       4 0.0 7.7101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150eb38196d0_wrap_pyop2_kernel_prolong       4 0.0 1.2076e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e95cbc2910_wrap_pyop2_kernel_prolong       4 0.0 7.7139e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e95d532fd0_wrap_pyop2_kernel_prolong       4 0.0 1.2384e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0ead1e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7234e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0e978c6d0_wrap_pyop2_kernel_prolong       4 0.0 1.3422e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc2294cc90_wrap_pyop2_kernel_prolong       4 0.0 7.7969e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc22940710_wrap_pyop2_kernel_prolong       4 0.0 1.2529e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddd1f0ae10_wrap_pyop2_kernel_prolong       4 0.0 7.6994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddd1447010_wrap_pyop2_kernel_prolong       4 0.0 1.2019e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e49f8a090_wrap_pyop2_kernel_prolong       4 0.0 7.7659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e49f918d0_wrap_pyop2_kernel_prolong       4 0.0 1.2445e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b25ec66b10_wrap_pyop2_kernel_prolong       4 0.0 7.8070e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b25ec5dc10_wrap_pyop2_kernel_prolong       4 0.0 1.2294e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f42823a10_wrap_pyop2_kernel_prolong       4 0.0 7.7642e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f42781ed0_wrap_pyop2_kernel_prolong       4 0.0 1.3757e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0e3b41410_wrap_pyop2_kernel_prolong       4 0.0 7.7484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0e8146f90_wrap_pyop2_kernel_prolong       4 0.0 1.3773e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510da3b3dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510da27f3d0_wrap_pyop2_kernel_prolong       4 0.0 1.3399e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15331f0b3c50_wrap_pyop2_kernel_prolong       4 0.0 7.6910e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15331f0b1450_wrap_pyop2_kernel_prolong       4 0.0 1.0584e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152230e8a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.6913e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522305b5910_wrap_pyop2_kernel_prolong       4 0.0 1.1574e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530414fe310_wrap_pyop2_kernel_prolong       4 0.0 7.7614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530414fca50_wrap_pyop2_kernel_prolong       4 0.0 1.1412e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491b862bcd0_wrap_pyop2_kernel_prolong       4 0.0 7.7501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491b8629590_wrap_pyop2_kernel_prolong       4 0.0 1.3062e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147421150d50_wrap_pyop2_kernel_prolong       4 0.0 7.6945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147421150350_wrap_pyop2_kernel_prolong       4 0.0 1.1508e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154af3f6e910_wrap_pyop2_kernel_prolong       4 0.0 7.7447e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154af3739810_wrap_pyop2_kernel_prolong       4 0.0 1.3636e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15380d113b10_wrap_pyop2_kernel_prolong       4 0.0 7.7318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15380d109490_wrap_pyop2_kernel_prolong       4 0.0 1.1882e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc9c412250_wrap_pyop2_kernel_prolong       4 0.0 7.7734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc9c411d10_wrap_pyop2_kernel_prolong       4 0.0 1.1158e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148907223e10_wrap_pyop2_kernel_prolong       4 0.0 7.7606e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148907436690_wrap_pyop2_kernel_prolong       4 0.0 1.2938e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531cd8d1610_wrap_pyop2_kernel_prolong       4 0.0 7.7819e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531cd93b6d0_wrap_pyop2_kernel_prolong       4 0.0 1.2903e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551f4d59990_wrap_pyop2_kernel_prolong       4 0.0 7.7079e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551f5720950_wrap_pyop2_kernel_prolong       4 0.0 1.3821e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e8c2cd550_wrap_pyop2_kernel_prolong       4 0.0 7.7288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e8c2c5a50_wrap_pyop2_kernel_prolong       4 0.0 1.3950e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b315b79290_wrap_pyop2_kernel_prolong       4 0.0 7.8113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3159cd490_wrap_pyop2_kernel_prolong       4 0.0 1.3143e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed1c3b6190_wrap_pyop2_kernel_prolong       4 0.0 7.7646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed17b622d0_wrap_pyop2_kernel_prolong       4 0.0 1.1090e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149404cc5390_wrap_pyop2_kernel_prolong       4 0.0 7.7679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149404ca6bd0_wrap_pyop2_kernel_prolong       4 0.0 1.2445e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14884fb0fc10_wrap_pyop2_kernel_prolong       4 0.0 7.8454e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14884f1e41d0_wrap_pyop2_kernel_prolong       4 0.0 1.3476e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b268cfab50_wrap_pyop2_kernel_prolong       4 0.0 7.7123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b268cbad50_wrap_pyop2_kernel_prolong       4 0.0 1.2212e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be1628d650_wrap_pyop2_kernel_prolong       4 0.0 7.8073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be1628ff10_wrap_pyop2_kernel_prolong       4 0.0 1.3982e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a6befcd90_wrap_pyop2_kernel_prolong       4 0.0 7.7327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a6b550e90_wrap_pyop2_kernel_prolong       4 0.0 1.2944e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c74c17ba90_wrap_pyop2_kernel_prolong       4 0.0 7.8706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c747e5b850_wrap_pyop2_kernel_prolong       4 0.0 1.2684e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b175a86b10_wrap_pyop2_kernel_prolong       4 0.0 7.8054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b175a86150_wrap_pyop2_kernel_prolong       4 0.0 1.1633e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd5b44d990_wrap_pyop2_kernel_prolong       4 0.0 7.8529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd5b44fc50_wrap_pyop2_kernel_prolong       4 0.0 1.4978e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f45557110_wrap_pyop2_kernel_prolong       4 0.0 7.8592e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f4579ab90_wrap_pyop2_kernel_prolong       4 0.0 1.2136e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da69846d90_wrap_pyop2_kernel_prolong       4 0.0 7.8706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da69844410_wrap_pyop2_kernel_prolong       4 0.0 1.2847e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523f1904c50_wrap_pyop2_kernel_prolong       4 0.0 7.8432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523f1905090_wrap_pyop2_kernel_prolong       4 0.0 1.3010e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4ea6e8410_wrap_pyop2_kernel_prolong       4 0.0 7.8648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4ea6eb310_wrap_pyop2_kernel_prolong       4 0.0 1.3943e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1bc90fd10_wrap_pyop2_kernel_prolong       4 0.0 7.5858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1bc6d6c10_wrap_pyop2_kernel_prolong       4 0.0 1.0713e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528629057d0_wrap_pyop2_kernel_prolong       4 0.0 7.5841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152862925cd0_wrap_pyop2_kernel_prolong       4 0.0 1.1342e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503e0137b50_wrap_pyop2_kernel_prolong       4 0.0 7.5850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503e01358d0_wrap_pyop2_kernel_prolong       4 0.0 1.2209e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad7b43fcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad7b4099d0_wrap_pyop2_kernel_prolong       4 0.0 1.1924e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464e23ae110_wrap_pyop2_kernel_prolong       4 0.0 7.5839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464e224d710_wrap_pyop2_kernel_prolong       4 0.0 1.2488e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154874fab6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15487501f950_wrap_pyop2_kernel_prolong       4 0.0 1.1735e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccef92d810_wrap_pyop2_kernel_prolong       4 0.0 7.5684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccef92c6d0_wrap_pyop2_kernel_prolong       4 0.0 1.0740e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c18b173f50_wrap_pyop2_kernel_prolong       4 0.0 7.5715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c18b14ebd0_wrap_pyop2_kernel_prolong       4 0.0 1.1302e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2cd4a3410_wrap_pyop2_kernel_prolong       4 0.0 7.5921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2ccb80f10_wrap_pyop2_kernel_prolong       4 0.0 1.3045e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bf7d63e10_wrap_pyop2_kernel_prolong       4 0.0 7.5893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bf7e7b290_wrap_pyop2_kernel_prolong       4 0.0 1.1979e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f305049310_wrap_pyop2_kernel_prolong       4 0.0 7.5903e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f304edd390_wrap_pyop2_kernel_prolong       4 0.0 1.2435e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a263261ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2630dc1d0_wrap_pyop2_kernel_prolong       4 0.0 1.2587e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150eae1bea90_wrap_pyop2_kernel_prolong       4 0.0 7.5988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ead9b17d0_wrap_pyop2_kernel_prolong       4 0.0 1.3705e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e0a713f90_wrap_pyop2_kernel_prolong       4 0.0 7.5851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e0a7091d0_wrap_pyop2_kernel_prolong       4 0.0 1.0210e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152edc531e90_wrap_pyop2_kernel_prolong       4 0.0 7.5856e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152edc530d90_wrap_pyop2_kernel_prolong       4 0.0 1.0587e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fedad312d0_wrap_pyop2_kernel_prolong       4 0.0 7.5723e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fedb6fa550_wrap_pyop2_kernel_prolong       4 0.0 1.2366e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705de4de90_wrap_pyop2_kernel_prolong       4 0.0 7.5886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705de45050_wrap_pyop2_kernel_prolong       4 0.0 1.2594e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaadc1d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaadc1d1d0_wrap_pyop2_kernel_prolong       4 0.0 1.2023e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512cfb65310_wrap_pyop2_kernel_prolong       4 0.0 7.5892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512d424bb50_wrap_pyop2_kernel_prolong       4 0.0 1.1690e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a790a3ee10_wrap_pyop2_kernel_prolong       4 0.0 7.5907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a790a7db10_wrap_pyop2_kernel_prolong       4 0.0 1.2243e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462c2b07d90_wrap_pyop2_kernel_prolong       4 0.0 7.5967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462c2b04590_wrap_pyop2_kernel_prolong       4 0.0 1.3046e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e55730310_wrap_pyop2_kernel_prolong       4 0.0 7.5893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e543d0410_wrap_pyop2_kernel_prolong       4 0.0 1.1745e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaeeadb790_wrap_pyop2_kernel_prolong       4 0.0 7.5802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaee9a7310_wrap_pyop2_kernel_prolong       4 0.0 1.0988e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15405e2d9610_wrap_pyop2_kernel_prolong       4 0.0 7.5926e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15405e50c410_wrap_pyop2_kernel_prolong       4 0.0 1.3487e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483595196d0_wrap_pyop2_kernel_prolong       4 0.0 7.5874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14835951b010_wrap_pyop2_kernel_prolong       4 0.0 1.1962e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a40bd3450_wrap_pyop2_kernel_prolong       4 0.0 7.5974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a40992cd0_wrap_pyop2_kernel_prolong       4 0.0 1.3269e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8195bf210_wrap_pyop2_kernel_prolong       4 0.0 7.5848e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8195bff90_wrap_pyop2_kernel_prolong       4 0.0 1.1833e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c7c797c90_wrap_pyop2_kernel_prolong       4 0.0 7.5770e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c7c795810_wrap_pyop2_kernel_prolong       4 0.0 1.2778e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15249d0d2110_wrap_pyop2_kernel_prolong       4 0.0 7.5965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15249c62da50_wrap_pyop2_kernel_prolong       4 0.0 1.4175e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d713df8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5793e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d713dd650_wrap_pyop2_kernel_prolong       4 0.0 1.2199e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6d6091550_wrap_pyop2_kernel_prolong       4 0.0 7.5874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6d6091d90_wrap_pyop2_kernel_prolong       4 0.0 1.1918e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db2df31990_wrap_pyop2_kernel_prolong       4 0.0 7.5914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db2df30410_wrap_pyop2_kernel_prolong       4 0.0 1.3297e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffaefc3090_wrap_pyop2_kernel_prolong       4 0.0 7.5738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffaefc0c90_wrap_pyop2_kernel_prolong       4 0.0 1.1127e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c078c99bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c078ead3d0_wrap_pyop2_kernel_prolong       4 0.0 1.2598e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15408cac27d0_wrap_pyop2_kernel_prolong       4 0.0 7.5795e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15408cac2390_wrap_pyop2_kernel_prolong       4 0.0 1.2044e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15106725a5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151067259a90_wrap_pyop2_kernel_prolong       4 0.0 1.2809e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548485ecf90_wrap_pyop2_kernel_prolong       4 0.0 7.5878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15484888ce10_wrap_pyop2_kernel_prolong       4 0.0 1.2407e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb3ccdba10_wrap_pyop2_kernel_prolong       4 0.0 7.5726e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb3cb67350_wrap_pyop2_kernel_prolong       4 0.0 1.1987e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3856ba490_wrap_pyop2_kernel_prolong       4 0.0 7.5893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3857281d0_wrap_pyop2_kernel_prolong       4 0.0 1.3054e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14919ab60050_wrap_pyop2_kernel_prolong       4 0.0 7.5873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14919a9939d0_wrap_pyop2_kernel_prolong       4 0.0 1.1493e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a46365bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a4637e190_wrap_pyop2_kernel_prolong       4 0.0 1.3936e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b1ea78b90_wrap_pyop2_kernel_prolong       4 0.0 7.5779e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b1eb96890_wrap_pyop2_kernel_prolong       4 0.0 1.2785e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14582b9487d0_wrap_pyop2_kernel_prolong       4 0.0 7.5870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14582b948650_wrap_pyop2_kernel_prolong       4 0.0 1.1184e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149433f79910_wrap_pyop2_kernel_prolong       4 0.0 7.5919e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149433f7af50_wrap_pyop2_kernel_prolong       4 0.0 1.3364e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d42493a50_wrap_pyop2_kernel_prolong       4 0.0 7.6041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d411e62d0_wrap_pyop2_kernel_prolong       4 0.0 1.4750e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148194e41490_wrap_pyop2_kernel_prolong       4 0.0 7.5841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14818fef3450_wrap_pyop2_kernel_prolong       4 0.0 1.1738e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df6df954d0_wrap_pyop2_kernel_prolong       4 0.0 7.5907e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df6d27ad90_wrap_pyop2_kernel_prolong       4 0.0 1.1939e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd0f95d650_wrap_pyop2_kernel_prolong       4 0.0 7.5875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd0f8fb2d0_wrap_pyop2_kernel_prolong       4 0.0 1.3284e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0d1b8a350_wrap_pyop2_kernel_prolong       4 0.0 7.5769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0d1b8b190_wrap_pyop2_kernel_prolong       4 0.0 1.2857e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14798ced26d0_wrap_pyop2_kernel_prolong       4 0.0 7.5773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14798ced1e10_wrap_pyop2_kernel_prolong       4 0.0 1.2979e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548b57127d0_wrap_pyop2_kernel_prolong       4 0.0 7.5769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1548b5711f10_wrap_pyop2_kernel_prolong       4 0.0 1.3097e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c811fa0690_wrap_pyop2_kernel_prolong       4 0.0 7.6003e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c811dfeed0_wrap_pyop2_kernel_prolong       4 0.0 1.3624e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c71f8e9050_wrap_pyop2_kernel_prolong       4 0.0 7.5633e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c71f8c8290_wrap_pyop2_kernel_prolong       4 0.0 1.1654e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149074927ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149074b29450_wrap_pyop2_kernel_prolong       4 0.0 1.1104e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b7766f890_wrap_pyop2_kernel_prolong       4 0.0 7.5677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b7766d150_wrap_pyop2_kernel_prolong       4 0.0 1.1943e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14863dbf2b50_wrap_pyop2_kernel_prolong       4 0.0 7.5892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14863dbf1f90_wrap_pyop2_kernel_prolong       4 0.0 1.2874e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fea822ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fea822b50_wrap_pyop2_kernel_prolong       4 0.0 1.2001e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540575f0750_wrap_pyop2_kernel_prolong       4 0.0 7.5715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540575c7ed0_wrap_pyop2_kernel_prolong       4 0.0 1.3123e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508ae34bc90_wrap_pyop2_kernel_prolong       4 0.0 7.5780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508ae327cd0_wrap_pyop2_kernel_prolong       4 0.0 1.2211e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2bba70950_wrap_pyop2_kernel_prolong       4 0.0 7.5638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2bba48c90_wrap_pyop2_kernel_prolong       4 0.0 1.1096e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14697097e590_wrap_pyop2_kernel_prolong       4 0.0 7.5859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14697095e110_wrap_pyop2_kernel_prolong       4 0.0 1.2674e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149967a2d990_wrap_pyop2_kernel_prolong       4 0.0 7.5857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149967a2e150_wrap_pyop2_kernel_prolong       4 0.0 1.3277e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483b9d9bd50_wrap_pyop2_kernel_prolong       4 0.0 7.5684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483b9c6b850_wrap_pyop2_kernel_prolong       4 0.0 1.1595e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fefe08b990_wrap_pyop2_kernel_prolong       4 0.0 7.5845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fefe08b150_wrap_pyop2_kernel_prolong       4 0.0 1.2113e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccd0156010_wrap_pyop2_kernel_prolong       4 0.0 7.5833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccd0154490_wrap_pyop2_kernel_prolong       4 0.0 1.3485e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d1f22e490_wrap_pyop2_kernel_prolong       4 0.0 7.5823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d1dfa5f10_wrap_pyop2_kernel_prolong       4 0.0 1.2417e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b409ea6e10_wrap_pyop2_kernel_prolong       4 0.0 7.5732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b409e7ff10_wrap_pyop2_kernel_prolong       4 0.0 1.0685e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151657954d50_wrap_pyop2_kernel_prolong       4 0.0 7.5766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15165792cbd0_wrap_pyop2_kernel_prolong       4 0.0 1.3078e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9e4a73a50_wrap_pyop2_kernel_prolong       4 0.0 7.5732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9e4a723d0_wrap_pyop2_kernel_prolong       4 0.0 1.2230e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf28e7ed10_wrap_pyop2_kernel_prolong       4 0.0 7.5731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf28e9e590_wrap_pyop2_kernel_prolong       4 0.0 1.3361e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e05b92750_wrap_pyop2_kernel_prolong       4 0.0 7.5742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e05b91710_wrap_pyop2_kernel_prolong       4 0.0 1.4212e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155132237cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5826e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15513222ddd0_wrap_pyop2_kernel_prolong       4 0.0 1.3132e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508ce74f350_wrap_pyop2_kernel_prolong       4 0.0 7.5676e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508cde1a550_wrap_pyop2_kernel_prolong       4 0.0 1.1616e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475959e1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5834e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147595994d50_wrap_pyop2_kernel_prolong       4 0.0 1.2829e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543856dafd0_wrap_pyop2_kernel_prolong       4 0.0 7.5865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154386034410_wrap_pyop2_kernel_prolong       4 0.0 1.2866e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc1ff75850_wrap_pyop2_kernel_prolong       4 0.0 7.5778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc1ff755d0_wrap_pyop2_kernel_prolong       4 0.0 1.3622e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fda11a6190_wrap_pyop2_kernel_prolong       4 0.0 7.5780e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fda11a5d90_wrap_pyop2_kernel_prolong       4 0.0 1.3317e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15287a004c90_wrap_pyop2_kernel_prolong       4 0.0 7.5925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152879ffdd50_wrap_pyop2_kernel_prolong       4 0.0 1.4036e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f17667650_wrap_pyop2_kernel_prolong       4 0.0 7.5789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f1765dcd0_wrap_pyop2_kernel_prolong       4 0.0 1.1773e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479a3d5e690_wrap_pyop2_kernel_prolong       4 0.0 7.5675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479a3d5dd50_wrap_pyop2_kernel_prolong       4 0.0 1.1433e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a6b8c0ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a6b8c3550_wrap_pyop2_kernel_prolong       4 0.0 1.3533e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153917857c90_wrap_pyop2_kernel_prolong       4 0.0 7.5739e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153917855950_wrap_pyop2_kernel_prolong       4 0.0 1.0542e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd8ad15ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5709e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd89af1ad0_wrap_pyop2_kernel_prolong       4 0.0 1.1653e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505d90e6710_wrap_pyop2_kernel_prolong       4 0.0 7.5878e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505d90e5b90_wrap_pyop2_kernel_prolong       4 0.0 1.4452e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4bb6295d0_wrap_pyop2_kernel_prolong       4 0.0 7.5722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4bb700890_wrap_pyop2_kernel_prolong       4 0.0 1.3410e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485f0d1d3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485f0c18ad0_wrap_pyop2_kernel_prolong       4 0.0 1.2275e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14933f2e4d50_wrap_pyop2_kernel_prolong       4 0.0 7.5827e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14933e935450_wrap_pyop2_kernel_prolong       4 0.0 1.4053e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492d394bad0_wrap_pyop2_kernel_prolong       4 0.0 7.5794e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492d380b710_wrap_pyop2_kernel_prolong       4 0.0 1.2078e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d12d4d5dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d12d4a6c10_wrap_pyop2_kernel_prolong       4 0.0 1.2355e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15025ca73ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15025ca47050_wrap_pyop2_kernel_prolong       4 0.0 1.3872e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458bfa9e310_wrap_pyop2_kernel_prolong       4 0.0 7.5800e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458bf958f10_wrap_pyop2_kernel_prolong       4 0.0 1.2740e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d748fe0250_wrap_pyop2_kernel_prolong       4 0.0 7.5777e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d748fe0290_wrap_pyop2_kernel_prolong       4 0.0 1.1345e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483d90c4310_wrap_pyop2_kernel_prolong       4 0.0 7.5692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483d8f28210_wrap_pyop2_kernel_prolong       4 0.0 1.0866e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505226a9510_wrap_pyop2_kernel_prolong       4 0.0 7.5852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150522437d10_wrap_pyop2_kernel_prolong       4 0.0 1.3312e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dee721a50_wrap_pyop2_kernel_prolong       4 0.0 7.5758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154dee703950_wrap_pyop2_kernel_prolong       4 0.0 1.2555e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bcafb9c90_wrap_pyop2_kernel_prolong       4 0.0 7.5768e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bca834390_wrap_pyop2_kernel_prolong       4 0.0 1.2239e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0099fa3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a009c30d10_wrap_pyop2_kernel_prolong       4 0.0 1.2560e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9aa52a410_wrap_pyop2_kernel_prolong       4 0.0 7.5775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9aa529d10_wrap_pyop2_kernel_prolong       4 0.0 1.1821e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14621e312b50_wrap_pyop2_kernel_prolong       4 0.0 7.5659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14621d9fc410_wrap_pyop2_kernel_prolong       4 0.0 1.0009e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3ff205850_wrap_pyop2_kernel_prolong       4 0.0 7.5788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3ff0a1550_wrap_pyop2_kernel_prolong       4 0.0 1.4261e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472322283d0_wrap_pyop2_kernel_prolong       4 0.0 7.5825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147232229a50_wrap_pyop2_kernel_prolong       4 0.0 1.2002e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516d9321210_wrap_pyop2_kernel_prolong       4 0.0 7.5860e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516d9238f10_wrap_pyop2_kernel_prolong       4 0.0 1.2856e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15413375da90_wrap_pyop2_kernel_prolong       4 0.0 7.5754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15413375dad0_wrap_pyop2_kernel_prolong       4 0.0 1.3049e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478187fc6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478188ca150_wrap_pyop2_kernel_prolong       4 0.0 1.4244e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ea6ef4e50_wrap_pyop2_kernel_prolong       4 0.0 7.6924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ea6d022d0_wrap_pyop2_kernel_prolong       4 0.0 1.1381e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518775e3d10_wrap_pyop2_kernel_prolong       4 0.0 7.6888e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518775e0450_wrap_pyop2_kernel_prolong       4 0.0 1.0838e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15500237cfd0_wrap_pyop2_kernel_prolong       4 0.0 7.6980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155002162dd0_wrap_pyop2_kernel_prolong       4 0.0 1.2890e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c45c13cc90_wrap_pyop2_kernel_prolong       4 0.0 7.7101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4575c7c50_wrap_pyop2_kernel_prolong       4 0.0 1.2748e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a61b12bb10_wrap_pyop2_kernel_prolong       4 0.0 7.6821e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a61b129690_wrap_pyop2_kernel_prolong       4 0.0 1.1915e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a3b3cbd90_wrap_pyop2_kernel_prolong       4 0.0 7.6282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a3b3e3190_wrap_pyop2_kernel_prolong       4 0.0 1.3798e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15314fa6bad0_wrap_pyop2_kernel_prolong       4 0.0 7.7000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15314fa33450_wrap_pyop2_kernel_prolong       4 0.0 1.1488e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed5fdd5110_wrap_pyop2_kernel_prolong       4 0.0 7.6545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed5fdd4fd0_wrap_pyop2_kernel_prolong       4 0.0 1.1941e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d794d8f210_wrap_pyop2_kernel_prolong       4 0.0 7.6703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d79458ac90_wrap_pyop2_kernel_prolong       4 0.0 1.3418e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147385f0fa10_wrap_pyop2_kernel_prolong       4 0.0 7.7037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147385f0d890_wrap_pyop2_kernel_prolong       4 0.0 1.3210e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f2d0cd2d0_wrap_pyop2_kernel_prolong       4 0.0 7.7017e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f2d0dfc50_wrap_pyop2_kernel_prolong       4 0.0 1.1750e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaa1818d10_wrap_pyop2_kernel_prolong       4 0.0 7.7068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aaa1a49f10_wrap_pyop2_kernel_prolong       4 0.0 1.2754e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15338d033850_wrap_pyop2_kernel_prolong       4 0.0 7.6885e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15338d032150_wrap_pyop2_kernel_prolong       4 0.0 1.0897e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e2a31d190_wrap_pyop2_kernel_prolong       4 0.0 7.6360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e2a346d50_wrap_pyop2_kernel_prolong       4 0.0 1.2350e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15054584e210_wrap_pyop2_kernel_prolong       4 0.0 7.5629e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15054589c290_wrap_pyop2_kernel_prolong       4 0.0 1.0084e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f79f9e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f79f9d690_wrap_pyop2_kernel_prolong       4 0.0 1.2986e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d51afc8cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d51afaa110_wrap_pyop2_kernel_prolong       4 0.0 1.2239e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523d2616d90_wrap_pyop2_kernel_prolong       4 0.0 7.5631e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523d1b05210_wrap_pyop2_kernel_prolong       4 0.0 1.1196e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf2345db10_wrap_pyop2_kernel_prolong       4 0.0 7.6681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf2345d310_wrap_pyop2_kernel_prolong       4 0.0 1.3803e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a1bbb1650_wrap_pyop2_kernel_prolong       4 0.0 7.5651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a1bbb1c50_wrap_pyop2_kernel_prolong       4 0.0 1.1337e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e40b221e10_wrap_pyop2_kernel_prolong       4 0.0 7.6057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e409fc21d0_wrap_pyop2_kernel_prolong       4 0.0 1.1827e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba45e6b550_wrap_pyop2_kernel_prolong       4 0.0 7.5751e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba45e60110_wrap_pyop2_kernel_prolong       4 0.0 1.3851e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148174e09510_wrap_pyop2_kernel_prolong       4 0.0 7.5747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148174e45810_wrap_pyop2_kernel_prolong       4 0.0 1.2864e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec080922d0_wrap_pyop2_kernel_prolong       4 0.0 7.5761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec08091710_wrap_pyop2_kernel_prolong       4 0.0 1.4152e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147734c45cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147734c45990_wrap_pyop2_kernel_prolong       4 0.0 1.4038e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14936d1f2ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14936d1f9d10_wrap_pyop2_kernel_prolong       4 0.0 1.4015e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baa84fcc50_wrap_pyop2_kernel_prolong       4 0.0 7.5649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baa84d9850_wrap_pyop2_kernel_prolong       4 0.0 1.1692e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533d4909590_wrap_pyop2_kernel_prolong       4 0.0 7.5716e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533d4909a10_wrap_pyop2_kernel_prolong       4 0.0 1.2910e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154005132050_wrap_pyop2_kernel_prolong       4 0.0 7.6320e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540051a2090_wrap_pyop2_kernel_prolong       4 0.0 1.2601e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1ecb4fc10_wrap_pyop2_kernel_prolong       4 0.0 7.5853e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1ecd89d10_wrap_pyop2_kernel_prolong       4 0.0 1.3553e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b8382350_wrap_pyop2_kernel_prolong       4 0.0 7.5718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b8389cd0_wrap_pyop2_kernel_prolong       4 0.0 1.2104e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de0b13ee50_wrap_pyop2_kernel_prolong       4 0.0 7.6004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de0b2c02d0_wrap_pyop2_kernel_prolong       4 0.0 1.3894e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14933132ee90_wrap_pyop2_kernel_prolong       4 0.0 7.5725e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14933132e450_wrap_pyop2_kernel_prolong       4 0.0 1.2640e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe87639f90_wrap_pyop2_kernel_prolong       4 0.0 7.6550e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe874f92d0_wrap_pyop2_kernel_prolong       4 0.0 1.2382e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acac750d90_wrap_pyop2_kernel_prolong       4 0.0 7.5832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca7d19b10_wrap_pyop2_kernel_prolong       4 0.0 1.1505e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc18a84050_wrap_pyop2_kernel_prolong       4 0.0 7.6262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc1883d450_wrap_pyop2_kernel_prolong       4 0.0 1.3161e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c7d41da90_wrap_pyop2_kernel_prolong       4 0.0 7.6678e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c7d41e410_wrap_pyop2_kernel_prolong       4 0.0 1.3303e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15145629dc10_wrap_pyop2_kernel_prolong       4 0.0 7.6327e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15145629d590_wrap_pyop2_kernel_prolong       4 0.0 1.3445e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ce1d0e790_wrap_pyop2_kernel_prolong       4 0.0 7.6474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ce1d1fd10_wrap_pyop2_kernel_prolong       4 0.0 1.3842e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bb4d8ec10_wrap_pyop2_kernel_prolong       4 0.0 7.5618e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148bb43f6810_wrap_pyop2_kernel_prolong       4 0.0 1.0736e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148614939b10_wrap_pyop2_kernel_prolong       4 0.0 7.6470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14860fcf2d50_wrap_pyop2_kernel_prolong       4 0.0 1.2090e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b786776690_wrap_pyop2_kernel_prolong       4 0.0 7.5758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7867a4b50_wrap_pyop2_kernel_prolong       4 0.0 1.3159e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3f17a4f50_wrap_pyop2_kernel_prolong       4 0.0 7.6038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3f16c8f10_wrap_pyop2_kernel_prolong       4 0.0 1.3162e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153702039e50_wrap_pyop2_kernel_prolong       4 0.0 7.5707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15370203bf50_wrap_pyop2_kernel_prolong       4 0.0 1.3396e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9e0249a50_wrap_pyop2_kernel_prolong       4 0.0 7.5949e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9e0249090_wrap_pyop2_kernel_prolong       4 0.0 1.4824e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f9014790_wrap_pyop2_kernel_prolong       4 0.0 7.5671e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537f90161d0_wrap_pyop2_kernel_prolong       4 0.0 1.2499e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456cba6b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456cba6b990_wrap_pyop2_kernel_prolong       4 0.0 1.2038e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474da676690_wrap_pyop2_kernel_prolong       4 0.0 7.6515e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474da6761d0_wrap_pyop2_kernel_prolong       4 0.0 1.3332e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbfcc88f10_wrap_pyop2_kernel_prolong       4 0.0 7.6081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cbfc3717d0_wrap_pyop2_kernel_prolong       4 0.0 1.3256e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499ba049e90_wrap_pyop2_kernel_prolong       4 0.0 7.5949e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499ba04b390_wrap_pyop2_kernel_prolong       4 0.0 1.3259e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5194f2590_wrap_pyop2_kernel_prolong       4 0.0 7.6532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5194a5290_wrap_pyop2_kernel_prolong       4 0.0 1.3489e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed9867dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.6088e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed98681410_wrap_pyop2_kernel_prolong       4 0.0 1.2682e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14551326f010_wrap_pyop2_kernel_prolong       4 0.0 7.5645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14551326d110_wrap_pyop2_kernel_prolong       4 0.0 1.2343e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d7c41b850_wrap_pyop2_kernel_prolong       4 0.0 7.5701e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d7c4191d0_wrap_pyop2_kernel_prolong       4 0.0 1.2016e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcaa2d82d0_wrap_pyop2_kernel_prolong       4 0.0 7.6351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fca981d010_wrap_pyop2_kernel_prolong       4 0.0 1.1691e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2729203d0_wrap_pyop2_kernel_prolong       4 0.0 7.6303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b272969750_wrap_pyop2_kernel_prolong       4 0.0 1.1759e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e2961b910_wrap_pyop2_kernel_prolong       4 0.0 7.6824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e295178d0_wrap_pyop2_kernel_prolong       4 0.0 1.3295e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9ade82510_wrap_pyop2_kernel_prolong       4 0.0 7.5755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9ade834d0_wrap_pyop2_kernel_prolong       4 0.0 1.3960e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14730b9d9a90_wrap_pyop2_kernel_prolong       4 0.0 7.6087e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14730b9d8590_wrap_pyop2_kernel_prolong       4 0.0 1.1499e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3156a6f90_wrap_pyop2_kernel_prolong       4 0.0 7.6845e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3158d8390_wrap_pyop2_kernel_prolong       4 0.0 1.2169e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547216cc5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154720c64c50_wrap_pyop2_kernel_prolong       4 0.0 1.3552e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15270f259690_wrap_pyop2_kernel_prolong       4 0.0 7.6836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15270f25b710_wrap_pyop2_kernel_prolong       4 0.0 1.2217e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7f4855290_wrap_pyop2_kernel_prolong       4 0.0 7.5677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7f485e410_wrap_pyop2_kernel_prolong       4 0.0 1.2720e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150afc0fe350_wrap_pyop2_kernel_prolong       4 0.0 7.5980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150afc0fdc90_wrap_pyop2_kernel_prolong       4 0.0 1.2226e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ed9801710_wrap_pyop2_kernel_prolong       4 0.0 7.6127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ed98001d0_wrap_pyop2_kernel_prolong       4 0.0 1.1813e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f356ed690_wrap_pyop2_kernel_prolong       4 0.0 7.5864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f356dbfd0_wrap_pyop2_kernel_prolong       4 0.0 1.2070e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14918cbbd250_wrap_pyop2_kernel_prolong       4 0.0 7.5978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14918cbbe210_wrap_pyop2_kernel_prolong       4 0.0 1.3408e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535115739d0_wrap_pyop2_kernel_prolong       4 0.0 7.6279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15351148d0d0_wrap_pyop2_kernel_prolong       4 0.0 1.2204e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506ce203a10_wrap_pyop2_kernel_prolong       4 0.0 7.6891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506ce018910_wrap_pyop2_kernel_prolong       4 0.0 1.1665e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a332de8bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a332db1a10_wrap_pyop2_kernel_prolong       4 0.0 1.2265e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15436ff7fd50_wrap_pyop2_kernel_prolong       4 0.0 7.5677e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15436ff7ec90_wrap_pyop2_kernel_prolong       4 0.0 1.1516e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150011136a10_wrap_pyop2_kernel_prolong       4 0.0 7.6324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fff67df890_wrap_pyop2_kernel_prolong       4 0.0 1.1574e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512aba5e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512aba5c450_wrap_pyop2_kernel_prolong       4 0.0 1.0672e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b192adc310_wrap_pyop2_kernel_prolong       4 0.0 7.6634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b19208ff10_wrap_pyop2_kernel_prolong       4 0.0 1.3652e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504b1da7090_wrap_pyop2_kernel_prolong       4 0.0 7.5997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504b1da6750_wrap_pyop2_kernel_prolong       4 0.0 1.3243e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0f7645dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0f76473d0_wrap_pyop2_kernel_prolong       4 0.0 1.2883e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465fdc4fad0_wrap_pyop2_kernel_prolong       4 0.0 7.6915e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465fdc4f2d0_wrap_pyop2_kernel_prolong       4 0.0 1.4659e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492b13eca90_wrap_pyop2_kernel_prolong       4 0.0 7.5749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492b13ef110_wrap_pyop2_kernel_prolong       4 0.0 1.4248e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef2a2ddfd0_wrap_pyop2_kernel_prolong       4 0.0 7.6491e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef2a2dea50_wrap_pyop2_kernel_prolong       4 0.0 1.1767e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e48d93f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e48d9d3150_wrap_pyop2_kernel_prolong       4 0.0 1.1778e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4ace73d50_wrap_pyop2_kernel_prolong       4 0.0 7.6241e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4ace73310_wrap_pyop2_kernel_prolong       4 0.0 1.2906e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5cfa0a410_wrap_pyop2_kernel_prolong       4 0.0 7.5876e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5cf0c9fd0_wrap_pyop2_kernel_prolong       4 0.0 1.2885e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476d008d390_wrap_pyop2_kernel_prolong       4 0.0 7.6564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476d0086050_wrap_pyop2_kernel_prolong       4 0.0 1.1888e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d57c3cc250_wrap_pyop2_kernel_prolong       4 0.0 7.6329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d57c3aa210_wrap_pyop2_kernel_prolong       4 0.0 1.4553e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ca0158950_wrap_pyop2_kernel_prolong       4 0.0 7.5622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ca015bbd0_wrap_pyop2_kernel_prolong       4 0.0 1.0646e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1bb992450_wrap_pyop2_kernel_prolong       4 0.0 7.5662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1bb992350_wrap_pyop2_kernel_prolong       4 0.0 1.1626e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151318945b90_wrap_pyop2_kernel_prolong       4 0.0 7.6539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15131891c610_wrap_pyop2_kernel_prolong       4 0.0 1.2860e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1362f4410_wrap_pyop2_kernel_prolong       4 0.0 7.6262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c135993a50_wrap_pyop2_kernel_prolong       4 0.0 1.1519e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7df89dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7df64f10_wrap_pyop2_kernel_prolong       4 0.0 1.3543e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e917393d0_wrap_pyop2_kernel_prolong       4 0.0 7.5667e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e92390650_wrap_pyop2_kernel_prolong       4 0.0 1.2539e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fc15d2190_wrap_pyop2_kernel_prolong       4 0.0 7.5689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145fc159b090_wrap_pyop2_kernel_prolong       4 0.0 1.3139e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499173bcb10_wrap_pyop2_kernel_prolong       4 0.0 7.5710e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14991735e910_wrap_pyop2_kernel_prolong       4 0.0 1.2611e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491ae683810_wrap_pyop2_kernel_prolong       4 0.0 7.6744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491ae453210_wrap_pyop2_kernel_prolong       4 0.0 1.1943e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150035539f90_wrap_pyop2_kernel_prolong       4 0.0 7.6168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150035539910_wrap_pyop2_kernel_prolong       4 0.0 1.1599e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b94a6dc590_wrap_pyop2_kernel_prolong       4 0.0 7.6449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b94a6dc190_wrap_pyop2_kernel_prolong       4 0.0 1.2547e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bb98a2810_wrap_pyop2_kernel_prolong       4 0.0 7.5798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bb98a2bd0_wrap_pyop2_kernel_prolong       4 0.0 1.2509e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c28576150_wrap_pyop2_kernel_prolong       4 0.0 7.6181e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c28577b10_wrap_pyop2_kernel_prolong       4 0.0 1.2218e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152428be92d0_wrap_pyop2_kernel_prolong       4 0.0 7.6077e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152428df5190_wrap_pyop2_kernel_prolong       4 0.0 1.2255e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538f3546a90_wrap_pyop2_kernel_prolong       4 0.0 7.6425e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538f35457d0_wrap_pyop2_kernel_prolong       4 0.0 1.2747e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523c63fd790_wrap_pyop2_kernel_prolong       4 0.0 7.7058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523c5ac5f10_wrap_pyop2_kernel_prolong       4 0.0 1.3895e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5259df190_wrap_pyop2_kernel_prolong       4 0.0 7.5781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c525c4bd50_wrap_pyop2_kernel_prolong       4 0.0 1.2570e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daa76fe3d0_wrap_pyop2_kernel_prolong       4 0.0 7.6949e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daa76ff250_wrap_pyop2_kernel_prolong       4 0.0 1.3209e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bdf3a0550_wrap_pyop2_kernel_prolong       4 0.0 7.6815e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bdeb00990_wrap_pyop2_kernel_prolong       4 0.0 1.3100e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc0c8538d0_wrap_pyop2_kernel_prolong       4 0.0 7.5813e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc0c851150_wrap_pyop2_kernel_prolong       4 0.0 1.4572e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         76 1.0 3.0437e-02 5.3 0.00e+00 0.0 2.1e+05 4.0e+00 7.6e+01  0  0  0  0  1   0  0  1  0  2    -0
SFSetGraph            76 1.0 6.8282e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               76 1.0 3.7044e-02 2.8 0.00e+00 0.0 4.2e+05 4.1e+02 7.6e+01  0  0  1  0  1   0  0  1  0  2    -0
SFPack             19096 1.0 7.3920e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           19096 1.0 2.1920e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             8184 1.0 2.1289e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSet             10911 1.0 5.0986e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            16368 1.0 5.3786e+01 2.6 1.82e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 135742
VecAXPBYCZ          5456 1.0 2.1690e+01 1.6 2.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 420757
VecScatterBegin    19096 1.0 7.9603e+00 3.0 0.00e+00 0.0 3.2e+07 1.2e+05 0.0e+00  0  0 71 59  0   0  0 97 100  0    -0
VecScatterEnd      19096 1.0 1.5353e+02 21.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            10912 1.0 9.3591e+02 1.2 6.46e+11 1.1 2.5e+07 1.6e+05 0.0e+00 28 20 55 59  0  43 48 74 100  0 276324
MatMultAdd          2728 1.0 2.8154e+01 1.2 1.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 194494
MatMultTranspose    2728 1.0 2.3087e+01 2.3 1.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 237175
MatSolve           13640 1.0 1.0689e+03 1.2 6.35e+11 1.1 8.5e+06 1.5e+03 3.8e+02 33 20 19  0  3  50 47 26  0 12 236904
MatResidual         2728 1.0 2.5841e+02 1.3 1.64e+11 1.1 6.2e+06 1.6e+05 0.0e+00  7  5 14 15  0  11 12 19 25  0 253729
PCSetUpOnBlocks     5456 1.0 7.0184e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            13640 1.0 1.0691e+03 1.2 6.35e+11 1.1 8.5e+06 1.5e+03 3.8e+02 33 20 19  0  3  50 47 26  0 12 236854
PCApplyOnBlocks    10912 1.0 9.6968e+02 1.2 6.34e+11 1.1 0.0e+00 0.0e+00 0.0e+00 29 20  0  0  0  44 47  0  0  0 260659
KSPSolve            8184 1.0 1.7608e+03 1.1 1.16e+12 1.1 2.7e+07 1.1e+05 3.1e+03 56 36 60 44 23  86 86 81 75 100 262782
MGSmooth Level 0    2728 1.0 1.4974e+02 1.6 3.23e+09 7.4 8.5e+06 1.5e+03 3.1e+03  4  0 19  0 23   6  0 26  0 100  3133
MGSmooth Level 1    5456 1.0 1.6639e+03 1.1 1.16e+12 1.1 1.9e+07 1.6e+05 0.0e+00 53 36 41 44  0  81 86 56 75  0 277800
MGResid Level 1     2728 1.0 2.5842e+02 1.3 1.64e+11 1.1 6.2e+06 1.6e+05 0.0e+00  7  5 14 15  0  11 12 19 25  0 253717
MGInterp Level 1    5456 1.0 5.0473e+01 1.5 2.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 216979
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
           Index Set  2434           2434
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   368            444
              Vector   510            510
              Matrix   136            136
      Preconditioner     6              6
       Krylov Solver     5              5
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   110            110
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   165            165
           Weak Form   165            165
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8

--- Event Stage 1: MG Apply

           Index Set   152            152
   Star Forest Graph    76              0
              Vector    76             76
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 1.17712e-05
Average time for zero size MPI_Send(): 2.54441e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_strong/vlumping_inexact_snapshot_lag3/s4.profile # (source: code)
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

