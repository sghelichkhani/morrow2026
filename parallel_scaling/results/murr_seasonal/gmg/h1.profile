****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0072.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 28 06:33:50 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.809e+03     1.000   5.809e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                4.382e+12     1.176   4.170e+12  4.337e+14
Flops/sec:            7.544e+08     1.176   7.179e+08  7.466e+10
MPI Msg Count:        2.100e+06     3.500   1.512e+06  1.572e+08
MPI Msg Len (bytes):  9.635e+10     3.000   4.480e+04  7.044e+12
MPI Reductions:       4.712e+05     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.8089e+03 100.0%  4.3367e+14 100.0%  1.572e+08 100.0%  4.480e+04      100.0%  4.712e+05 100.0%

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

BuildTwoSided       3189 1.0 9.6459e+01 7.1 0.00e+00 0.0 2.4e+05 4.0e+00 3.2e+03  1  0  0  0  1   1  0  0  0  1    -0
BuildTwoSidedF      3090 1.0 9.6270e+01 5.2 0.00e+00 0.0 4.1e+05 8.5e+05 3.1e+03  1  0  0  5  1   1  0  0  5  1    -0
SFSetGraph           106 1.0 1.0534e-02 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               99 1.0 3.8095e+00 97.2 0.00e+00 0.0 7.3e+04 1.7e+03 9.9e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin       18785 1.0 2.5536e+00 3.0 0.00e+00 0.0 9.8e+06 4.9e+04 0.0e+00  0  0  6  7  0   0  0  6  7  0    -0
SFBcastEnd         18785 1.0 3.5039e+01 8.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin      18279 1.0 2.2315e+00 8.6 0.00e+00 0.0 9.6e+06 4.7e+04 0.0e+00  0  0  6  6  0   0  0  6  6  0    -0
SFReduceEnd        18279 1.0 1.7999e+02 68.3 7.71e+08 3.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   313
SFFetchOpBegin         6 1.0 2.6017e-05 4.0 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.0733e-04 6.2 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 7.9099e-04 1.3 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.7844e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           51 1.0 3.0975e-03 1.7 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFRemoteOff            2 1.0 8.3792e-05 2.7 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack            299192 1.0 3.0049e+01 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack          299198 1.0 3.0666e+00 6.3 7.71e+08 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 18383
VecDot               257 1.0 9.9846e-01 5.1 2.22e+08 1.2 0.0e+00 0.0e+00 2.6e+02  0  0  0  0  0   0  0  0  0  0 22298
VecMDot           228391 1.0 4.3038e+02 2.1 2.70e+11 1.2 0.0e+00 0.0e+00 2.3e+05  5  6  0  0 48   5  6  0  0 48 62904
VecNorm           238387 1.0 1.2600e+02 7.6 2.33e+10 1.2 0.0e+00 0.0e+00 2.4e+05  1  1  0  0 51   1  1  0  0 51 18542
VecScale          237652 1.0 5.2450e+00 1.2 1.13e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 216648
VecCopy           111895 1.0 5.2925e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSet             35026 1.0 1.0720e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY            25917 1.0 1.5303e+01 2.6 1.01e+10 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 66068
VecAYPX            66624 1.0 5.8443e+01 1.9 2.70e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 46293
VecWAXPY             607 1.0 1.3248e+00 1.2 3.43e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 25993
VecMAXPY          237652 1.0 2.4309e+02 1.2 2.92e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4  7  0  0  0   4  7  0  0  0 120271
VecReciprocal          2 1.0 2.7108e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecScatterBegin   262122 1.0 3.1197e+01 2.5 0.00e+00 0.0 1.4e+08 4.2e+04 0.0e+00  0  0 87 82  0   0  0 87 82  0    -0
VecScatterEnd     262122 1.0 4.4430e+02 30.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       514 1.0 4.5572e-01 2.0 4.44e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 97709
VecReduceComm        257 1.0 5.7950e-01 79.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.6e+02  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize      228905 1.0 1.0369e+02 8.7 2.27e+10 1.2 0.0e+00 0.0e+00 2.3e+05  1  1  0  0 49   1  1  0  0 49 21916
MatMult           262636 1.0 2.1132e+03 1.2 1.42e+12 1.2 1.4e+08 4.2e+04 4.0e+00 33 33 88 82  0  33 33 88 82  0 66783
MatMultAdd         16656 1.0 5.9530e+02 1.2 8.99e+09 1.2 8.7e+06 4.5e+04 4.0e+00 10  0  6  6  0  10  0  6  6  0  1515
MatMultTranspose   16658 1.0 7.4126e+02 1.2 6.89e+08 2.9 8.7e+06 4.5e+04 1.0e+01 11  0  6  6  0  11  0  6  6  0    69
MatSolve          262217 1.0 1.5778e+03 1.3 1.11e+12 1.2 0.0e+00 0.0e+00 0.0e+00 25 25  0  0  0  25 25  0  0  0 68956
MatLUFactorNum       771 1.0 6.0774e+01 1.5 9.12e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 145103
MatILUFactorSym        3 1.0 2.1032e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatResidual        16656 1.0 5.4387e+02 1.4 3.23e+11 1.2 8.7e+06 9.1e+04 0.0e+00  8  7  6 11  0   8  7  6 11  0 59417
MatAssemblyBegin    3134 1.0 9.6318e+01 2.5 0.00e+00 0.0 4.1e+05 8.5e+05 3.1e+03  1  0  0  5  1   1  0  0  5  1    -0
MatAssemblyEnd      3134 1.0 2.7774e+01 5.0 5.05e+08 0.0 3.1e+03 1.8e+04 1.8e+01  0  0  0  0  0   0  0  0  0  0   770
MatGetRowIJ            3 1.0 5.0730e-06 7.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         3 1.0 8.6595e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       771 1.0 1.3911e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO       32 1.0 5.6100e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.4412e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              257 1.0 5.1204e+02 1.0 4.94e+11 1.2 4.1e+06 1.1e+05 1.3e+04  9 11  3  6  3   9 11  3  6  3 94335
PCSetUpOnBlocks    41640 1.0 2.4035e+00 1.6 3.98e+09 1.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 145334
PCApply             8328 1.0 4.4158e+03 1.0 2.45e+12 1.2 1.5e+08 3.9e+04 4.4e+05 75 56 94 82 93  75 56 94 82 93 55007
PCApplyOnBlocks   262217 1.0 1.5806e+03 1.3 1.11e+12 1.2 0.0e+00 0.0e+00 0.0e+00 25 25  0  0  0  25 25  0  0  0 68833
KSPSetUp             257 1.0 2.0894e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             257 1.0 4.9559e+03 1.0 2.91e+12 1.2 1.5e+08 4.1e+04 4.6e+05 85 67 97 89 97  85 67 97 89 97 58295
KSPGMRESOrthog    228391 1.0 6.2418e+02 1.5 5.40e+11 1.2 0.0e+00 0.0e+00 2.3e+05  9 12  0  0 48   9 12  0  0 48 86746
DMCoarsen              2 1.0 3.2350e+00 1.0 4.86e+05 3.0 1.4e+04 3.9e+04 3.2e+01  0  0  0  0  0   0  0  0  0  0    11
DMRefine               2 1.0 2.2254e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     1
DMCreateInterp         2 1.0 8.9103e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMCreateInject         2 1.0 4.2907e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCreateGmsh       1 1.0 1.5403e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.7881e+00 109.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 4.7504e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 1.2245e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 1.5857e-03 693.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 8.3625e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.3205e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.7271e-03 1.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 9.6483e-04 2.2 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 6.1548e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.1410e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.5749e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.9854e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        3 1.0 9.7624e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        7 1.0 2.3732e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.8716e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.2850e-04 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0199e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.9785e-03 1.7 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1308e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 2.9903e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.4006e-04 2.1 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.1607e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.2390e-04 1.8 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             33 1.0 5.7406e+03 1.0 4.38e+12 1.2 1.6e+08 4.5e+04 4.7e+05 99 100 100 100 100  99 100 100 100 100 75544
SNESSetUp              1 1.0 5.3159e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     478 1.0 4.6413e+01 1.1 4.65e+11 1.2 5.2e+05 1.2e+05 0.0e+00  1 10  0  1  0   1 10  0  1  0 967717
SNESJacobianEval     257 1.0 2.1275e+02 1.0 5.22e+11 1.2 2.7e+05 7.9e+05 1.0e+03  4 12  0  3  0   4 12  0  3  0 237825
SNESLineSearch       257 1.0 4.7852e+01 1.0 4.42e+11 1.2 6.0e+05 1.2e+05 1.2e+03  1 10  0  1  0   1 10  0  1  0 893504
DualSpaceSetUp         8 1.0 5.0588e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.9158e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 5.8057e+03 1.0 4.38e+12 1.2 1.6e+08 4.5e+04 4.7e+05 100 100 100 100 100 100 100 100 100 100 74698
firedrake.__init__       1 1.0 1.2804e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             3 1.0 1.9567e+00 10.6 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._from_gmsh       1 1.0 1.7892e+00 108.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.2037e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.5230e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.5409e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 8.7903e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 9.2846e-02 1.0 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.6856e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      29 1.0 9.3956e-02 1.0 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      26 1.0 9.0513e-02 1.0 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      26 1.0 9.0359e-02 1.0 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      52 1.0 7.4776e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 5.3552e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 1.1508e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      22 1.0 2.3579e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__     105 1.0 2.1233e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.9145e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.3180e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9112e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       6 1.0 1.6712e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.9080e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map    2750 1.0 2.9780e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute     39911 1.0 1.5440e+03 1.1 1.16e+12 1.2 9.9e+06 4.8e+04 4.0e+01 25 26  6  7  0  25 26  6  7  0 72091
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.8661e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   79822 1.0 4.3685e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      23 1.0 1.8969e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate loopy      23 0.0 2.4750e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      23 0.0 1.3374e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      23 1.0 2.0732e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.load      23 1.0 2.0731e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      23 1.0 1.3571e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      23 1.0 1.3338e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin   39911 1.0 7.3578e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd     39911 1.0 1.5408e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.7727e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong   16660 1.0 5.8356e+02 1.1 1.46e+07 1.2 8.7e+06 4.5e+04 1.3e+01 10  0  6  6  0  10  0  6  6  0     3
firedrake.interpolation.interpolate      14 1.0 4.9882e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      14 1.0 5.7403e+00 1.0 1.03e+08 1.2 1.2e+04 4.6e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0  1792
firedrake.formmanipulation.split_form      17 1.0 5.2139e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      17 1.0 2.2500e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      15 1.0 4.4830e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0857e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin   18514 1.0 6.8639e+00 3.6 0.00e+00 0.0 9.7e+06 5.0e+04 4.0e+00  0  0  6  7  0   0  0  6  7  0    -0
Parloop_Cells_wrap_expression_kernel      28 1.0 5.4054e+00 1.0 1.03e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1903
firedrake.halo.Halo.global_to_local_end   18514 1.0 3.3177e+01 11.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       3 1.0 2.3794e+00 12.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478db5d7c50_wrap_pyop2_kernel_prolong       4 0.0 7.4669e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478db5c8e50_wrap_pyop2_kernel_prolong       4 0.0 5.5388e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8870e+00 1.0 7.34e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0  1894
firedrake.function.Function.assign    1248 1.0 1.0928e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     145 1.0 8.3319e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       4 1.0 2.6382e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      70 1.0 8.8430e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       5 1.0 8.8985e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       3 1.0 2.8351e-01 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       4 1.0 4.7005e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       3 1.0 2.7658e-01 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2518e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       3 1.0 1.7519e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       5 1.0 4.5423e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       5 1.0 8.4459e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       5 1.0 8.4459e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         3 1.0 4.9874e+00 1.1 0.00e+00 0.0 4.9e+03 2.7e+05 2.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         3 1.0 7.7005e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      33 1.0 5.7407e+03 1.0 4.38e+12 1.2 1.6e+08 4.5e+04 4.7e+05 99 100 100 100 100  99 100 100 100 100 75542
firedrake.mesh.AbstractMeshTopology.measure_set      17 1.0 3.8508e-01 605.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       9 1.0 2.0956e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set      13 1.0 3.8499e-01 685.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       4 1.0 3.8492e-01 751.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     956 1.0 1.2221e+01 1.4 1.19e+11 1.2 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 973272
Parloop_Cells_wrap_form0_exterior_facet_top_integral     956 1.0 1.0016e+00 1.0 1.53e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1527
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     956 1.0 1.2791e+00 1.1 1.14e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15781
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     956 1.0 8.0760e+00 1.2 1.13e+11 1.2 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 1399806
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     956 1.0 1.7810e+01 1.3 2.33e+11 1.3 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   0  5  0  0  0 1217847
firedrake.halo.Halo.local_to_global_begin   18238 1.0 2.8006e+00 3.9 0.00e+00 0.0 9.6e+06 4.7e+04 2.0e+00  0  0  6  6  0   0  0  6  6  0    -0
firedrake.halo.Halo.local_to_global_end   18238 1.0 1.8013e+02 65.1 7.71e+08 3.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   313
Parloop_Cells_wrap_form00_cell_integral    1542 1.0 4.5190e+01 1.4 1.55e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 344927
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral    1542 1.0 2.8058e+00 2.5 1.08e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6810
Parloop_Cells_wrap_form00_interior_facet_horiz_integral    1542 1.0 5.6827e+01 1.2 2.05e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 360847
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral    1542 1.0 1.3634e+02 1.5 3.33e+11 1.4 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 221670
firedrake.dmhooks.coarsen       2 1.0 3.2334e+00 1.0 4.86e+05 3.0 1.4e+04 3.9e+04 3.2e+01  0  0  0  0  0   0  0  0  0  0    11
firedrake.dmhooks.get_function_space       2 1.0 1.1445e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.embedded.TransferManager.op   20782 1.0 6.0112e+02 1.1 4.46e+07 3.0 9.7e+06 4.7e+04 2.4e+01 10  0  6  6  0  10  0  6  6  0     5
firedrake.mg.interface.inject    1168 1.0 2.2747e+01 1.1 4.46e+07 3.0 1.0e+06 6.0e+04 2.0e+00  0  0  1  1  0   0  0  1  1  0   143
firedrake.ufl_expr.TrialFunction       1 1.0 1.0961e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.slate.slac.compiler.compile_expression       1 1.0 2.9157e-01 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_pyop2_kernel_injection_dg    2204 1.0 1.9398e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Log_Event_slate_wrapper 12397500 1.2 1.0711e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Log_Event_inits_slate_wrapper 12397500 1.2 6.9617e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_memcpy     12397500 1.2 6.8400e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_getrf      12397500 1.2 2.8624e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
solve_getrs      12397500 1.2 1.5949e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.restrict   16658 1.0 7.2260e+02 1.2 6.89e+08 2.9 8.7e+06 4.5e+04 6.0e+00 11  0  6  6  0  11  0  6  6  0    70
firedrake.cofunction.Cofunction.assign   16658 1.0 5.9491e+00 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478b566a510_wrap_pyop2_kernel_restrict   16658 0.0 4.8332e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478ab7e3190_wrap_pyop2_kernel_restrict   16658 0.0 1.1805e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478ab7e3190_wrap_pyop2_kernel_prolong   16656 0.0 1.1378e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1478b566a510_wrap_pyop2_kernel_prolong   16656 0.0 4.3953e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.assign      33 1.0 1.6049e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15278a107550_wrap_pyop2_kernel_prolong       4 0.0 7.4660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152789529c50_wrap_pyop2_kernel_prolong       4 0.0 5.1820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527892fb950_wrap_pyop2_kernel_restrict   16658 0.0 4.7969e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15277342a150_wrap_pyop2_kernel_restrict   16658 0.0 1.1654e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15277342a150_wrap_pyop2_kernel_prolong   16656 0.0 1.1306e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527892fb950_wrap_pyop2_kernel_prolong   16656 0.0 4.3895e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1c24db610_wrap_pyop2_kernel_prolong       4 0.0 7.5082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1c24d9450_wrap_pyop2_kernel_prolong       4 0.0 6.7868e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1c0110690_wrap_pyop2_kernel_restrict   16658 0.0 4.8090e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1ad5c5250_wrap_pyop2_kernel_restrict   16658 0.0 1.1745e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1ad5c5250_wrap_pyop2_kernel_prolong   16656 0.0 1.1291e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1c0110690_wrap_pyop2_kernel_prolong   16656 0.0 4.3637e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e12a29e910_wrap_pyop2_kernel_prolong       4 0.0 7.4687e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e12bb85210_wrap_pyop2_kernel_prolong       4 0.0 6.3892e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e12a3b3d10_wrap_pyop2_kernel_restrict   16658 0.0 4.7837e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1167bc210_wrap_pyop2_kernel_restrict   16658 0.0 1.1642e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1167bc210_wrap_pyop2_kernel_prolong   16656 0.0 1.1365e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e12a3b3d10_wrap_pyop2_kernel_prolong   16656 0.0 4.3683e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507d1cc0c10_wrap_pyop2_kernel_prolong       4 0.0 7.4881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507d1ce9dd0_wrap_pyop2_kernel_prolong       4 0.0 6.8666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507d1df2350_wrap_pyop2_kernel_restrict   16658 0.0 5.6980e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507b5ee9a90_wrap_pyop2_kernel_restrict   16658 0.0 1.1732e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507b5ee9a90_wrap_pyop2_kernel_prolong   16656 0.0 1.1302e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507d1df2350_wrap_pyop2_kernel_prolong   16656 0.0 4.3692e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f50f4dc4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f50f2cebd0_wrap_pyop2_kernel_prolong       4 0.0 7.6548e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f50f616cd0_wrap_pyop2_kernel_restrict   16658 0.0 4.8223e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4feac3810_wrap_pyop2_kernel_restrict   16658 0.0 1.0966e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4feac3810_wrap_pyop2_kernel_prolong   16656 0.0 1.0571e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f50f616cd0_wrap_pyop2_kernel_prolong   16656 0.0 4.0854e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d557e8990_wrap_pyop2_kernel_prolong       4 0.0 7.4797e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d54e3d9d0_wrap_pyop2_kernel_prolong       4 0.0 6.2764e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d54fc9e10_wrap_pyop2_kernel_restrict   16658 0.0 4.5226e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d403bcdd0_wrap_pyop2_kernel_restrict   16658 0.0 1.0953e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d403bcdd0_wrap_pyop2_kernel_prolong   16656 0.0 1.0597e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d54fc9e10_wrap_pyop2_kernel_prolong   16656 0.0 4.0822e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e69264990_wrap_pyop2_kernel_prolong       4 0.0 7.4658e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e69433190_wrap_pyop2_kernel_prolong       4 0.0 5.0427e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e695cda90_wrap_pyop2_kernel_restrict   16658 0.0 4.4762e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e53387c50_wrap_pyop2_kernel_restrict   16658 0.0 1.0904e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e53387c50_wrap_pyop2_kernel_prolong   16656 0.0 1.0604e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e695cda90_wrap_pyop2_kernel_prolong   16656 0.0 4.0853e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8500b0650_wrap_pyop2_kernel_prolong       4 0.0 7.4722e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8500e1890_wrap_pyop2_kernel_prolong       4 0.0 6.7501e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8501d3010_wrap_pyop2_kernel_restrict   16658 0.0 4.8021e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e83b2a27d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1671e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e83b2a27d0_wrap_pyop2_kernel_prolong   16656 0.0 1.1298e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8501d3010_wrap_pyop2_kernel_prolong   16656 0.0 4.3946e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2b9e490d0_wrap_pyop2_kernel_prolong       4 0.0 7.4652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2b98111d0_wrap_pyop2_kernel_prolong       4 0.0 5.0797e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2b96860d0_wrap_pyop2_kernel_restrict   16658 0.0 4.4880e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2a3b0afd0_wrap_pyop2_kernel_restrict   16658 0.0 1.0898e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2a3b0afd0_wrap_pyop2_kernel_prolong   16656 0.0 1.0556e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2b96860d0_wrap_pyop2_kernel_prolong   16656 0.0 4.1036e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd25f69b10_wrap_pyop2_kernel_prolong       4 0.0 7.4972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd255c83d0_wrap_pyop2_kernel_prolong       4 0.0 7.2194e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd25594490_wrap_pyop2_kernel_restrict   16658 0.0 4.5027e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd1120bc10_wrap_pyop2_kernel_restrict   16658 0.0 1.0967e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd1120bc10_wrap_pyop2_kernel_prolong   16656 0.0 1.0567e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd25594490_wrap_pyop2_kernel_prolong   16656 0.0 4.0830e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b418002a10_wrap_pyop2_kernel_prolong       4 0.0 7.4683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b416f3a110_wrap_pyop2_kernel_prolong       4 0.0 6.3462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b416e3a3d0_wrap_pyop2_kernel_restrict   16658 0.0 4.7842e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b401fb46d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1668e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b401fb46d0_wrap_pyop2_kernel_prolong   16656 0.0 1.1375e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b416e3a3d0_wrap_pyop2_kernel_prolong   16656 0.0 4.3663e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdf965a4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdf9659d90_wrap_pyop2_kernel_prolong       4 0.0 6.8401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bde605a010_wrap_pyop2_kernel_restrict   16658 0.0 4.8125e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bde2c0b690_wrap_pyop2_kernel_restrict   16658 0.0 1.1748e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bde2c0b690_wrap_pyop2_kernel_prolong   16656 0.0 1.1315e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bde605a010_wrap_pyop2_kernel_prolong   16656 0.0 4.3665e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469658fff90_wrap_pyop2_kernel_prolong       4 0.0 7.4842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14696595a090_wrap_pyop2_kernel_prolong       4 0.0 5.3091e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469526fda50_wrap_pyop2_kernel_restrict   16658 0.0 4.8053e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14694f70a4d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1752e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14694f70a4d0_wrap_pyop2_kernel_prolong   16656 0.0 1.1286e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469526fda50_wrap_pyop2_kernel_prolong   16656 0.0 4.3679e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152242063190_wrap_pyop2_kernel_prolong       4 0.0 7.5123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152242045190_wrap_pyop2_kernel_prolong       4 0.0 6.4731e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152241e2e590_wrap_pyop2_kernel_restrict   16658 0.0 4.4865e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15222cec2590_wrap_pyop2_kernel_restrict   16658 0.0 1.0925e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15222cec2590_wrap_pyop2_kernel_prolong   16656 0.0 1.0622e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152241e2e590_wrap_pyop2_kernel_prolong   16656 0.0 4.0839e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21419e4d0_wrap_pyop2_kernel_prolong       4 0.0 7.4823e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a20fff9510_wrap_pyop2_kernel_prolong       4 0.0 6.5993e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a201a71010_wrap_pyop2_kernel_restrict   16658 0.0 4.7998e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1ff295810_wrap_pyop2_kernel_restrict   16658 0.0 1.1678e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1ff295810_wrap_pyop2_kernel_prolong   16656 0.0 1.1303e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a201a71010_wrap_pyop2_kernel_prolong   16656 0.0 4.3917e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad8e0089d0_wrap_pyop2_kernel_prolong       4 0.0 7.5048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad8e171d50_wrap_pyop2_kernel_prolong       4 0.0 5.1766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad8e10fb10_wrap_pyop2_kernel_restrict   16658 0.0 4.4872e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad77ca7090_wrap_pyop2_kernel_restrict   16658 0.0 1.0897e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad77ca7090_wrap_pyop2_kernel_prolong   16656 0.0 1.0580e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad8e10fb10_wrap_pyop2_kernel_prolong   16656 0.0 4.1054e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14769a63f6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14769a63d450_wrap_pyop2_kernel_prolong       4 0.0 6.8113e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14769a71ff10_wrap_pyop2_kernel_restrict   16658 0.0 4.7971e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147684705610_wrap_pyop2_kernel_restrict   16658 0.0 1.1673e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147684705610_wrap_pyop2_kernel_prolong   16656 0.0 1.1299e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14769a71ff10_wrap_pyop2_kernel_prolong   16656 0.0 4.3920e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148adda0db50_wrap_pyop2_kernel_prolong       4 0.0 7.4704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148addc216d0_wrap_pyop2_kernel_prolong       4 0.0 6.4708e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148adda6fc50_wrap_pyop2_kernel_restrict   16658 0.0 4.4733e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ac7d76810_wrap_pyop2_kernel_restrict   16658 0.0 1.0911e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ac7d76810_wrap_pyop2_kernel_prolong   16656 0.0 1.0584e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148adda6fc50_wrap_pyop2_kernel_prolong   16656 0.0 4.1029e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0dbe55190_wrap_pyop2_kernel_prolong       4 0.0 7.4644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0dbe7e090_wrap_pyop2_kernel_prolong       4 0.0 6.1831e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0e08e9290_wrap_pyop2_kernel_restrict   16658 0.0 4.8185e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0ca5f3350_wrap_pyop2_kernel_restrict   16658 0.0 1.1756e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0ca5f3350_wrap_pyop2_kernel_prolong   16656 0.0 1.1335e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0e08e9290_wrap_pyop2_kernel_prolong   16656 0.0 4.3698e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e65370390_wrap_pyop2_kernel_prolong       4 0.0 7.4615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e653b9d10_wrap_pyop2_kernel_prolong       4 0.0 6.2100e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e524d6e50_wrap_pyop2_kernel_restrict   16658 0.0 4.1961e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e4f35a750_wrap_pyop2_kernel_restrict   16658 0.0 1.0234e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e4f35a750_wrap_pyop2_kernel_prolong   16656 0.0 9.9323e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e524d6e50_wrap_pyop2_kernel_prolong   16656 0.0 3.8027e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153eb791dad0_wrap_pyop2_kernel_prolong       4 0.0 7.4738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153eb791d1d0_wrap_pyop2_kernel_prolong       4 0.0 8.2067e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153eb7922410_wrap_pyop2_kernel_restrict   16658 0.0 4.7917e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ea5abba50_wrap_pyop2_kernel_restrict   16658 0.0 1.1691e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ea5abba50_wrap_pyop2_kernel_prolong   16656 0.0 1.1329e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153eb7922410_wrap_pyop2_kernel_prolong   16656 0.0 4.3927e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e342b85210_wrap_pyop2_kernel_prolong       4 0.0 7.4692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e342bb59d0_wrap_pyop2_kernel_prolong       4 0.0 6.9537e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e33054a650_wrap_pyop2_kernel_restrict   16658 0.0 4.8267e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e32ec20a10_wrap_pyop2_kernel_restrict   16658 0.0 1.1733e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e32ec20a10_wrap_pyop2_kernel_prolong   16656 0.0 1.1325e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e33054a650_wrap_pyop2_kernel_prolong   16656 0.0 4.3687e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b545adb1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4773e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b545ad8a10_wrap_pyop2_kernel_prolong       4 0.0 6.2885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b54598e190_wrap_pyop2_kernel_restrict   16658 0.0 4.4867e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5321fef90_wrap_pyop2_kernel_restrict   16658 0.0 1.0916e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5321fef90_wrap_pyop2_kernel_prolong   16656 0.0 1.0598e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b54598e190_wrap_pyop2_kernel_prolong   16656 0.0 4.1045e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1f18be90_wrap_pyop2_kernel_prolong       4 0.0 7.4717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1f165bd0_wrap_pyop2_kernel_prolong       4 0.0 7.0170e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1f0437d0_wrap_pyop2_kernel_restrict   16658 0.0 4.7881e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce0ac914d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1658e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce0ac914d0_wrap_pyop2_kernel_prolong   16656 0.0 1.1309e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1f0437d0_wrap_pyop2_kernel_prolong   16656 0.0 4.3913e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149738d69fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149738591f50_wrap_pyop2_kernel_prolong       4 0.0 8.1633e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149738314d90_wrap_pyop2_kernel_restrict   16658 0.0 4.7783e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149722ab7150_wrap_pyop2_kernel_restrict   16658 0.0 1.1644e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149722ab7150_wrap_pyop2_kernel_prolong   16656 0.0 1.1369e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149738314d90_wrap_pyop2_kernel_prolong   16656 0.0 4.3696e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e837548950_wrap_pyop2_kernel_prolong       4 0.0 7.4656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8372ddc50_wrap_pyop2_kernel_prolong       4 0.0 5.3082e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e828e70410_wrap_pyop2_kernel_restrict   16658 0.0 4.2296e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e825c2b350_wrap_pyop2_kernel_restrict   16658 0.0 1.0211e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e825c2b350_wrap_pyop2_kernel_prolong   16656 0.0 9.9221e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e828e70410_wrap_pyop2_kernel_prolong   16656 0.0 3.8016e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cc8ccdc50_wrap_pyop2_kernel_prolong       4 0.0 7.4583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cc8ccd710_wrap_pyop2_kernel_prolong       4 0.0 5.6125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cb5631e90_wrap_pyop2_kernel_restrict   16658 0.0 4.7992e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cb1a41890_wrap_pyop2_kernel_restrict   16658 0.0 1.1676e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cb1a41890_wrap_pyop2_kernel_prolong   16656 0.0 1.1303e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cb5631e90_wrap_pyop2_kernel_prolong   16656 0.0 4.3920e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154314aeec90_wrap_pyop2_kernel_prolong       4 0.0 7.4670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154314b2ab10_wrap_pyop2_kernel_prolong       4 0.0 6.6965e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154314a4aa90_wrap_pyop2_kernel_restrict   16658 0.0 4.8273e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542ff95f150_wrap_pyop2_kernel_restrict   16658 0.0 1.1763e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542ff95f150_wrap_pyop2_kernel_prolong   16656 0.0 1.1297e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154314a4aa90_wrap_pyop2_kernel_prolong   16656 0.0 4.3727e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e199fadfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e199f65390_wrap_pyop2_kernel_prolong       4 0.0 6.0485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e199f05ed0_wrap_pyop2_kernel_restrict   16658 0.0 4.4889e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e184081f50_wrap_pyop2_kernel_restrict   16658 0.0 1.0915e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e184081f50_wrap_pyop2_kernel_prolong   16656 0.0 1.0567e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e199f05ed0_wrap_pyop2_kernel_prolong   16656 0.0 4.1059e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbec4ae410_wrap_pyop2_kernel_prolong       4 0.0 7.4881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbec4add90_wrap_pyop2_kernel_prolong       4 0.0 7.2088e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbec2ab050_wrap_pyop2_kernel_restrict   16658 0.0 5.0260e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbd6700990_wrap_pyop2_kernel_restrict   16658 0.0 1.2556e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbd6700990_wrap_pyop2_kernel_prolong   16656 0.0 1.1384e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbec2ab050_wrap_pyop2_kernel_prolong   16656 0.0 4.3684e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c569678550_wrap_pyop2_kernel_prolong       4 0.0 7.5131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c568757a90_wrap_pyop2_kernel_prolong       4 0.0 6.1707e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5682db8d0_wrap_pyop2_kernel_restrict   16658 0.0 4.2036e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c55385d050_wrap_pyop2_kernel_restrict   16658 0.0 1.0213e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c55385d050_wrap_pyop2_kernel_prolong   16656 0.0 9.9351e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5682db8d0_wrap_pyop2_kernel_prolong   16656 0.0 3.8066e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d96ccdb6d0_wrap_pyop2_kernel_prolong       4 0.0 7.4647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d96cecdf50_wrap_pyop2_kernel_prolong       4 0.0 5.7079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d959d5f690_wrap_pyop2_kernel_restrict   16658 0.0 4.8298e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d95686fd10_wrap_pyop2_kernel_restrict   16658 0.0 1.1693e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d95686fd10_wrap_pyop2_kernel_prolong   16656 0.0 1.1290e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d959d5f690_wrap_pyop2_kernel_prolong   16656 0.0 4.3665e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14667a6104d0_wrap_pyop2_kernel_prolong       4 0.0 7.5000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14667a6138d0_wrap_pyop2_kernel_prolong       4 0.0 5.9638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466674d0590_wrap_pyop2_kernel_restrict   16658 0.0 4.7871e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14666488a510_wrap_pyop2_kernel_restrict   16658 0.0 1.1633e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14666488a510_wrap_pyop2_kernel_prolong   16656 0.0 1.1293e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466674d0590_wrap_pyop2_kernel_prolong   16656 0.0 4.3897e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154edc931d10_wrap_pyop2_kernel_prolong       4 0.0 7.4866e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ede2299d0_wrap_pyop2_kernel_prolong       4 0.0 5.9627e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154edc77f2d0_wrap_pyop2_kernel_restrict   16658 0.0 4.1698e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ec7400d50_wrap_pyop2_kernel_restrict   16658 0.0 1.0159e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ec7400d50_wrap_pyop2_kernel_prolong   16656 0.0 9.8277e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154edc77f2d0_wrap_pyop2_kernel_prolong   16656 0.0 3.8173e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145669dcbe50_wrap_pyop2_kernel_prolong       4 0.0 7.4951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14566a248950_wrap_pyop2_kernel_prolong       4 0.0 7.0585e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14566a0e9710_wrap_pyop2_kernel_restrict   16658 0.0 4.8252e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145653ed7c10_wrap_pyop2_kernel_restrict   16658 0.0 1.1790e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145653ed7c10_wrap_pyop2_kernel_prolong   16656 0.0 1.1327e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14566a0e9710_wrap_pyop2_kernel_prolong   16656 0.0 4.3749e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a0821ee10_wrap_pyop2_kernel_prolong       4 0.0 7.4752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a0821df50_wrap_pyop2_kernel_prolong       4 0.0 7.2664e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a081e8050_wrap_pyop2_kernel_restrict   16658 0.0 4.7902e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499f3cfb690_wrap_pyop2_kernel_restrict   16658 0.0 1.1711e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499f3cfb690_wrap_pyop2_kernel_prolong   16656 0.0 1.1392e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a081e8050_wrap_pyop2_kernel_prolong   16656 0.0 4.3785e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e74184ba10_wrap_pyop2_kernel_prolong       4 0.0 7.5103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7417a3a50_wrap_pyop2_kernel_prolong       4 0.0 7.2245e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7418f6290_wrap_pyop2_kernel_restrict   16658 0.0 4.8006e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e72b509a10_wrap_pyop2_kernel_restrict   16658 0.0 1.1691e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e72b509a10_wrap_pyop2_kernel_prolong   16656 0.0 1.1331e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7418f6290_wrap_pyop2_kernel_prolong   16656 0.0 4.3962e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef4fe4dd50_wrap_pyop2_kernel_prolong       4 0.0 7.5019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef4fe4f910_wrap_pyop2_kernel_prolong       4 0.0 7.9590e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef4ffe6b90_wrap_pyop2_kernel_restrict   16658 0.0 4.8119e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef3eb9b0d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1764e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef3eb9b0d0_wrap_pyop2_kernel_prolong   16656 0.0 1.1330e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef4ffe6b90_wrap_pyop2_kernel_prolong   16656 0.0 4.3768e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a04190250_wrap_pyop2_kernel_prolong       4 0.0 7.4646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a04192c90_wrap_pyop2_kernel_prolong       4 0.0 5.2728e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479fffd1ed0_wrap_pyop2_kernel_restrict   16658 0.0 4.4935e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479e6e51cd0_wrap_pyop2_kernel_restrict   16658 0.0 1.0943e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479e6e51cd0_wrap_pyop2_kernel_prolong   16656 0.0 1.0563e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479fffd1ed0_wrap_pyop2_kernel_prolong   16656 0.0 4.0815e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aded516d50_wrap_pyop2_kernel_prolong       4 0.0 7.4748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aded516450_wrap_pyop2_kernel_prolong       4 0.0 5.9306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adda95ac90_wrap_pyop2_kernel_restrict   16658 0.0 4.7995e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14add7c794d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1636e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14add7c794d0_wrap_pyop2_kernel_prolong   16656 0.0 1.1356e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adda95ac90_wrap_pyop2_kernel_prolong   16656 0.0 4.3689e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14993036ef50_wrap_pyop2_kernel_prolong       4 0.0 7.4988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499303cf990_wrap_pyop2_kernel_prolong       4 0.0 6.8419e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14993034ebd0_wrap_pyop2_kernel_restrict   16658 0.0 4.4879e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14991cb4d750_wrap_pyop2_kernel_restrict   16658 0.0 1.0887e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14991cb4d750_wrap_pyop2_kernel_prolong   16656 0.0 1.0621e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14993034ebd0_wrap_pyop2_kernel_prolong   16656 0.0 4.0839e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d733b52110_wrap_pyop2_kernel_prolong       4 0.0 7.5051e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d733b51290_wrap_pyop2_kernel_prolong       4 0.0 5.6323e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d724f68390_wrap_pyop2_kernel_restrict   16658 0.0 4.4947e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d72323e4d0_wrap_pyop2_kernel_restrict   16658 0.0 1.0956e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d72323e4d0_wrap_pyop2_kernel_prolong   16656 0.0 1.0559e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d724f68390_wrap_pyop2_kernel_prolong   16656 0.0 4.0820e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d60e3a1a50_wrap_pyop2_kernel_prolong       4 0.0 7.4979e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d60e3a3e90_wrap_pyop2_kernel_prolong       4 0.0 6.5734e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d60e115b50_wrap_pyop2_kernel_restrict   16658 0.0 5.6857e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5f8f24c50_wrap_pyop2_kernel_restrict   16658 0.0 1.1723e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5f8f24c50_wrap_pyop2_kernel_prolong   16656 0.0 1.1297e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d60e115b50_wrap_pyop2_kernel_prolong   16656 0.0 4.3668e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd14fbd6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5159e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd15753bd0_wrap_pyop2_kernel_prolong       4 0.0 6.7448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd156f1a50_wrap_pyop2_kernel_restrict   16658 0.0 4.8174e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccffc1a810_wrap_pyop2_kernel_restrict   16658 0.0 1.1693e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccffc1a810_wrap_pyop2_kernel_prolong   16656 0.0 1.1298e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd156f1a50_wrap_pyop2_kernel_prolong   16656 0.0 4.3677e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1cad1d90_wrap_pyop2_kernel_prolong       4 0.0 7.5204e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1cad1b50_wrap_pyop2_kernel_prolong       4 0.0 7.2729e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1c8bbf50_wrap_pyop2_kernel_restrict   16658 0.0 4.8230e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce07256310_wrap_pyop2_kernel_restrict   16658 0.0 1.1760e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce07256310_wrap_pyop2_kernel_prolong   16656 0.0 1.1327e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1c8bbf50_wrap_pyop2_kernel_prolong   16656 0.0 4.3750e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15419032dad0_wrap_pyop2_kernel_prolong       4 0.0 7.4721e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15419032f6d0_wrap_pyop2_kernel_prolong       4 0.0 6.7414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541903e8590_wrap_pyop2_kernel_restrict   16658 0.0 4.8177e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15417b8ed750_wrap_pyop2_kernel_restrict   16658 0.0 1.1690e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15417b8ed750_wrap_pyop2_kernel_prolong   16656 0.0 1.1297e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1541903e8590_wrap_pyop2_kernel_prolong   16656 0.0 4.3663e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0601102d0_wrap_pyop2_kernel_prolong       4 0.0 7.4688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0603ae650_wrap_pyop2_kernel_prolong       4 0.0 6.7469e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e060197d10_wrap_pyop2_kernel_restrict   16658 0.0 4.4983e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e04b056890_wrap_pyop2_kernel_restrict   16658 0.0 1.0964e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e04b056890_wrap_pyop2_kernel_prolong   16656 0.0 1.0571e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e060197d10_wrap_pyop2_kernel_prolong   16656 0.0 4.0854e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b50f7b8a50_wrap_pyop2_kernel_prolong       4 0.0 7.4704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b50f57f4d0_wrap_pyop2_kernel_prolong       4 0.0 6.6265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b50f31e150_wrap_pyop2_kernel_restrict   16658 0.0 4.7831e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4fe284cd0_wrap_pyop2_kernel_restrict   16658 0.0 1.1635e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4fe284cd0_wrap_pyop2_kernel_prolong   16656 0.0 1.1298e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b50f31e150_wrap_pyop2_kernel_prolong   16656 0.0 4.3904e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461de506250_wrap_pyop2_kernel_prolong       4 0.0 7.4792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461de504190_wrap_pyop2_kernel_prolong       4 0.0 7.1519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461de64bdd0_wrap_pyop2_kernel_restrict   16658 0.0 4.4952e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461cb4e39d0_wrap_pyop2_kernel_restrict   16658 0.0 1.0877e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461cb4e39d0_wrap_pyop2_kernel_prolong   16656 0.0 1.0562e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461de64bdd0_wrap_pyop2_kernel_prolong   16656 0.0 4.1038e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e08ea010_wrap_pyop2_kernel_prolong       4 0.0 7.4673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e08e9290_wrap_pyop2_kernel_prolong       4 0.0 7.2306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e0a02610_wrap_pyop2_kernel_restrict   16658 0.0 4.8259e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497cb651d90_wrap_pyop2_kernel_restrict   16658 0.0 1.1715e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497cb651d90_wrap_pyop2_kernel_prolong   16656 0.0 1.1326e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e0a02610_wrap_pyop2_kernel_prolong   16656 0.0 4.3764e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468e8e09910_wrap_pyop2_kernel_prolong       4 0.0 7.4732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468e844a190_wrap_pyop2_kernel_prolong       4 0.0 6.9025e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468e8284a50_wrap_pyop2_kernel_restrict   16658 0.0 4.1992e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468d346a7d0_wrap_pyop2_kernel_restrict   16658 0.0 1.0197e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468d346a7d0_wrap_pyop2_kernel_prolong   16656 0.0 9.8359e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468e8284a50_wrap_pyop2_kernel_prolong   16656 0.0 3.8007e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147167743510_wrap_pyop2_kernel_prolong       4 0.0 7.4670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147167741e90_wrap_pyop2_kernel_prolong       4 0.0 5.5958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147167865c90_wrap_pyop2_kernel_restrict   16658 0.0 4.7994e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147155eb03d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1518e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147155eb03d0_wrap_pyop2_kernel_prolong   16656 0.0 1.1248e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147167865c90_wrap_pyop2_kernel_prolong   16656 0.0 4.3622e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e11c5fa50_wrap_pyop2_kernel_prolong       4 0.0 7.4659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e11c5c2d0_wrap_pyop2_kernel_prolong       4 0.0 6.3347e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dff604e50_wrap_pyop2_kernel_restrict   16658 0.0 4.8150e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dfc9ca390_wrap_pyop2_kernel_restrict   16658 0.0 1.1495e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dfc9ca390_wrap_pyop2_kernel_prolong   16656 0.0 1.1254e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dff604e50_wrap_pyop2_kernel_prolong   16656 0.0 4.3623e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f5de6b2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f5de692d0_wrap_pyop2_kernel_prolong       4 0.0 7.6656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f5dec4390_wrap_pyop2_kernel_restrict   16658 0.0 4.7879e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f4b9aa710_wrap_pyop2_kernel_restrict   16658 0.0 1.1452e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f4b9aa710_wrap_pyop2_kernel_prolong   16656 0.0 1.1260e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f5dec4390_wrap_pyop2_kernel_prolong   16656 0.0 4.3893e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15211dc4b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15211dc4b310_wrap_pyop2_kernel_prolong       4 0.0 6.8213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15211dcb7390_wrap_pyop2_kernel_restrict   16658 0.0 4.7834e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521091c8c90_wrap_pyop2_kernel_restrict   16658 0.0 1.1449e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521091c8c90_wrap_pyop2_kernel_prolong   16656 0.0 1.1363e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15211dcb7390_wrap_pyop2_kernel_prolong   16656 0.0 4.3622e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c88152f950_wrap_pyop2_kernel_prolong       4 0.0 7.4547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c88178df10_wrap_pyop2_kernel_prolong       4 0.0 6.5000e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c881546050_wrap_pyop2_kernel_restrict   16658 0.0 4.7799e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c86b4b75d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1437e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c86b4b75d0_wrap_pyop2_kernel_prolong   16656 0.0 1.1239e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c881546050_wrap_pyop2_kernel_prolong   16656 0.0 4.3842e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473e48fe790_wrap_pyop2_kernel_prolong       4 0.0 7.4549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473e48fc1d0_wrap_pyop2_kernel_prolong       4 0.0 5.8690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473d17d5150_wrap_pyop2_kernel_restrict   16658 0.0 4.5010e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473cee36410_wrap_pyop2_kernel_restrict   16658 0.0 1.0689e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473cee36410_wrap_pyop2_kernel_prolong   16656 0.0 1.0580e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473d17d5150_wrap_pyop2_kernel_prolong   16656 0.0 4.0812e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd1f1dec90_wrap_pyop2_kernel_prolong       4 0.0 7.4545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd1f195e50_wrap_pyop2_kernel_prolong       4 0.0 5.4233e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd1eecff90_wrap_pyop2_kernel_restrict   16658 0.0 4.4782e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd092c7f90_wrap_pyop2_kernel_restrict   16658 0.0 1.0691e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd092c7f90_wrap_pyop2_kernel_prolong   16656 0.0 1.0576e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd1eecff90_wrap_pyop2_kernel_prolong   16656 0.0 4.0777e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149510d61c50_wrap_pyop2_kernel_prolong       4 0.0 7.4607e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149510d60c50_wrap_pyop2_kernel_prolong       4 0.0 5.3887e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149510cae110_wrap_pyop2_kernel_restrict   16658 0.0 4.7797e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494f9f5aa90_wrap_pyop2_kernel_restrict   16658 0.0 1.1435e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494f9f5aa90_wrap_pyop2_kernel_prolong   16656 0.0 1.1386e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149510cae110_wrap_pyop2_kernel_prolong   16656 0.0 4.3854e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456d1b25c50_wrap_pyop2_kernel_prolong       4 0.0 7.4557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456d1aae850_wrap_pyop2_kernel_prolong       4 0.0 6.1713e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456d1a4d310_wrap_pyop2_kernel_restrict   16658 0.0 4.4813e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456bd70ad50_wrap_pyop2_kernel_restrict   16658 0.0 1.0018e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456bd70ad50_wrap_pyop2_kernel_prolong   16656 0.0 9.8167e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456d1a4d310_wrap_pyop2_kernel_prolong   16656 0.0 3.7986e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a14a3c29d0_wrap_pyop2_kernel_prolong       4 0.0 7.4622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a14acf2150_wrap_pyop2_kernel_prolong       4 0.0 7.2913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a14a44a0d0_wrap_pyop2_kernel_restrict   16658 0.0 4.7858e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a135ebe550_wrap_pyop2_kernel_restrict   16658 0.0 1.1440e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a135ebe550_wrap_pyop2_kernel_prolong   16656 0.0 1.1280e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a14a44a0d0_wrap_pyop2_kernel_prolong   16656 0.0 4.3849e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149994167510_wrap_pyop2_kernel_prolong       4 0.0 7.4558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14999439bd90_wrap_pyop2_kernel_prolong       4 0.0 6.5588e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14998198bf50_wrap_pyop2_kernel_restrict   16658 0.0 4.4793e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14997f4cc110_wrap_pyop2_kernel_restrict   16658 0.0 1.0683e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14997f4cc110_wrap_pyop2_kernel_prolong   16656 0.0 1.0656e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14998198bf50_wrap_pyop2_kernel_prolong   16656 0.0 4.0982e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e9871b10_wrap_pyop2_kernel_prolong       4 0.0 7.4632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505e9870c10_wrap_pyop2_kernel_prolong       4 0.0 7.3461e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505d6150490_wrap_pyop2_kernel_restrict   16658 0.0 4.8131e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505d3df9550_wrap_pyop2_kernel_restrict   16658 0.0 1.0771e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505d3df9550_wrap_pyop2_kernel_prolong   16656 0.0 1.0558e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505d6150490_wrap_pyop2_kernel_prolong   16656 0.0 4.0819e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b38c23710_wrap_pyop2_kernel_prolong       4 0.0 7.4740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b38c51250_wrap_pyop2_kernel_prolong       4 0.0 8.1686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b38b645d0_wrap_pyop2_kernel_restrict   16658 0.0 4.8253e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b2479f810_wrap_pyop2_kernel_restrict   16658 0.0 1.1534e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b2479f810_wrap_pyop2_kernel_prolong   16656 0.0 1.1329e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b38b645d0_wrap_pyop2_kernel_prolong   16656 0.0 4.3734e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e82697250_wrap_pyop2_kernel_prolong       4 0.0 7.4543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e82695b10_wrap_pyop2_kernel_prolong       4 0.0 5.6110e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e82841b50_wrap_pyop2_kernel_restrict   16658 0.0 4.8085e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e6b6ba9d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1520e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e6b6ba9d0_wrap_pyop2_kernel_prolong   16656 0.0 1.1300e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e82841b50_wrap_pyop2_kernel_prolong   16656 0.0 4.3619e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f77f292410_wrap_pyop2_kernel_prolong       4 0.0 7.4608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f77f292c10_wrap_pyop2_kernel_prolong       4 0.0 6.1994e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f77f39cf50_wrap_pyop2_kernel_restrict   16658 0.0 4.7788e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f76e1d5cd0_wrap_pyop2_kernel_restrict   16658 0.0 1.1444e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f76e1d5cd0_wrap_pyop2_kernel_prolong   16656 0.0 1.1298e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f77f39cf50_wrap_pyop2_kernel_prolong   16656 0.0 4.3605e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14669d614e90_wrap_pyop2_kernel_prolong       4 0.0 7.4575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14669cca31d0_wrap_pyop2_kernel_prolong       4 0.0 5.4331e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14669cc16810_wrap_pyop2_kernel_restrict   16658 0.0 4.4725e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14668a141750_wrap_pyop2_kernel_restrict   16658 0.0 1.0701e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14668a141750_wrap_pyop2_kernel_prolong   16656 0.0 1.0565e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14669cc16810_wrap_pyop2_kernel_prolong   16656 0.0 4.0779e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6a7971cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6a7973390_wrap_pyop2_kernel_prolong       4 0.0 6.4693e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6a7a0a450_wrap_pyop2_kernel_restrict   16658 0.0 4.4972e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c695c6f8d0_wrap_pyop2_kernel_restrict   16658 0.0 1.0743e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c695c6f8d0_wrap_pyop2_kernel_prolong   16656 0.0 1.0568e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c6a7a0a450_wrap_pyop2_kernel_prolong   16656 0.0 4.0796e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14801610e8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4582e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14801610ded0_wrap_pyop2_kernel_prolong       4 0.0 6.0484e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148016b4f8d0_wrap_pyop2_kernel_restrict   16658 0.0 4.5001e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480002916d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1213e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480002916d0_wrap_pyop2_kernel_prolong   16656 0.0 1.0586e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148016b4f8d0_wrap_pyop2_kernel_prolong   16656 0.0 4.0786e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cc381bb10_wrap_pyop2_kernel_prolong       4 0.0 7.4743e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cc3842110_wrap_pyop2_kernel_prolong       4 0.0 7.9053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cc37d5f90_wrap_pyop2_kernel_restrict   16658 0.0 4.4843e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cb1928350_wrap_pyop2_kernel_restrict   16658 0.0 1.0699e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cb1928350_wrap_pyop2_kernel_prolong   16656 0.0 1.0538e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cc37d5f90_wrap_pyop2_kernel_prolong   16656 0.0 4.1118e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455f8cb2d10_wrap_pyop2_kernel_prolong       4 0.0 7.4583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455f8d01c10_wrap_pyop2_kernel_prolong       4 0.0 5.9977e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455e5be5f90_wrap_pyop2_kernel_restrict   16658 0.0 4.1929e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455e35a4190_wrap_pyop2_kernel_restrict   16658 0.0 1.0014e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455e35a4190_wrap_pyop2_kernel_prolong   16656 0.0 9.7963e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455e5be5f90_wrap_pyop2_kernel_prolong   16656 0.0 3.7973e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bba355f250_wrap_pyop2_kernel_prolong       4 0.0 7.4642e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bba3777150_wrap_pyop2_kernel_prolong       4 0.0 6.7150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb94604390_wrap_pyop2_kernel_restrict   16658 0.0 4.8029e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb91d22e10_wrap_pyop2_kernel_restrict   16658 0.0 1.1529e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb91d22e10_wrap_pyop2_kernel_prolong   16656 0.0 1.1307e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb94604390_wrap_pyop2_kernel_prolong   16656 0.0 4.3652e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f300563ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2fb8975d0_wrap_pyop2_kernel_prolong       4 0.0 7.8863e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3001b5f10_wrap_pyop2_kernel_restrict   16658 0.0 4.8223e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2ea25c490_wrap_pyop2_kernel_restrict   16658 0.0 1.1511e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2ea25c490_wrap_pyop2_kernel_prolong   16656 0.0 1.1262e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3001b5f10_wrap_pyop2_kernel_prolong   16656 0.0 4.3716e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150abe5aca90_wrap_pyop2_kernel_prolong       4 0.0 7.4525e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150abe3f6c10_wrap_pyop2_kernel_prolong       4 0.0 5.9951e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150abe306d10_wrap_pyop2_kernel_restrict   16658 0.0 4.7828e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150aa93a8210_wrap_pyop2_kernel_restrict   16658 0.0 1.1439e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150aa93a8210_wrap_pyop2_kernel_prolong   16656 0.0 1.1241e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150abe306d10_wrap_pyop2_kernel_prolong   16656 0.0 4.3862e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a683b65d0_wrap_pyop2_kernel_prolong       4 0.0 7.4589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a683b5e10_wrap_pyop2_kernel_prolong       4 0.0 7.0661e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a682a3b50_wrap_pyop2_kernel_restrict   16658 0.0 4.7900e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a540a9250_wrap_pyop2_kernel_restrict   16658 0.0 1.1455e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a540a9250_wrap_pyop2_kernel_prolong   16656 0.0 1.1297e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a682a3b50_wrap_pyop2_kernel_prolong   16656 0.0 4.3889e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b30a7590_wrap_pyop2_kernel_prolong       4 0.0 7.4694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b30a6b90_wrap_pyop2_kernel_prolong       4 0.0 7.2435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b2e0ced0_wrap_pyop2_kernel_restrict   16658 0.0 4.8228e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d89e900a90_wrap_pyop2_kernel_restrict   16658 0.0 1.1498e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d89e900a90_wrap_pyop2_kernel_prolong   16656 0.0 1.1284e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8b2e0ced0_wrap_pyop2_kernel_prolong   16656 0.0 4.3639e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a22440c310_wrap_pyop2_kernel_prolong       4 0.0 7.4634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a224436390_wrap_pyop2_kernel_prolong       4 0.0 6.4413e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21126af10_wrap_pyop2_kernel_restrict   16658 0.0 4.1672e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a20ea29050_wrap_pyop2_kernel_restrict   16658 0.0 9.9503e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a20ea29050_wrap_pyop2_kernel_prolong   16656 0.0 9.8395e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a21126af10_wrap_pyop2_kernel_prolong   16656 0.0 3.7970e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493332edbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4543e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149332706150_wrap_pyop2_kernel_prolong       4 0.0 5.1630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14931fced3d0_wrap_pyop2_kernel_restrict   16658 0.0 4.1726e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14931c545850_wrap_pyop2_kernel_restrict   16658 0.0 9.9426e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14931c545850_wrap_pyop2_kernel_prolong   16656 0.0 9.8279e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14931fced3d0_wrap_pyop2_kernel_prolong   16656 0.0 3.8147e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bbf064c10_wrap_pyop2_kernel_prolong       4 0.0 7.4681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bbee5ba50_wrap_pyop2_kernel_prolong       4 0.0 7.0112e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bbef9c210_wrap_pyop2_kernel_restrict   16658 0.0 4.7879e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ba9294210_wrap_pyop2_kernel_restrict   16658 0.0 1.1460e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ba9294210_wrap_pyop2_kernel_prolong   16656 0.0 1.1307e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bbef9c210_wrap_pyop2_kernel_prolong   16656 0.0 4.3657e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ce5e16890_wrap_pyop2_kernel_prolong       4 0.0 7.4597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ce5e47b90_wrap_pyop2_kernel_prolong       4 0.0 7.0304e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ce5b8d710_wrap_pyop2_kernel_restrict   16658 0.0 4.7798e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cd069d410_wrap_pyop2_kernel_restrict   16658 0.0 1.1462e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cd069d410_wrap_pyop2_kernel_prolong   16656 0.0 1.1320e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ce5b8d710_wrap_pyop2_kernel_prolong   16656 0.0 4.3693e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0a8fcd510_wrap_pyop2_kernel_prolong       4 0.0 7.4624e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0a8ff4090_wrap_pyop2_kernel_prolong       4 0.0 6.5527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a096677d90_wrap_pyop2_kernel_restrict   16658 0.0 4.4899e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a096777610_wrap_pyop2_kernel_restrict   16658 0.0 1.0721e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a096777610_wrap_pyop2_kernel_prolong   16656 0.0 1.0562e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a096677d90_wrap_pyop2_kernel_prolong   16656 0.0 4.1015e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b03dc30d0_wrap_pyop2_kernel_prolong       4 0.0 7.4675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b03b58690_wrap_pyop2_kernel_prolong       4 0.0 6.6073e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b03b3f3d0_wrap_pyop2_kernel_restrict   16658 0.0 4.2081e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148af34ae250_wrap_pyop2_kernel_restrict   16658 0.0 1.0007e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148af34ae250_wrap_pyop2_kernel_prolong   16656 0.0 9.7879e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b03b3f3d0_wrap_pyop2_kernel_prolong   16656 0.0 3.7964e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f891d0b110_wrap_pyop2_kernel_prolong       4 0.0 7.4562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f89138a310_wrap_pyop2_kernel_prolong       4 0.0 6.9810e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f89110d950_wrap_pyop2_kernel_restrict   16658 0.0 4.8170e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f87c283850_wrap_pyop2_kernel_restrict   16658 0.0 1.1522e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f87c283850_wrap_pyop2_kernel_prolong   16656 0.0 1.1251e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f89110d950_wrap_pyop2_kernel_prolong   16656 0.0 4.3658e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8ca79e050_wrap_pyop2_kernel_prolong       4 0.0 7.4527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8ca6bbf90_wrap_pyop2_kernel_prolong       4 0.0 5.7680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8ca71c490_wrap_pyop2_kernel_restrict   16658 0.0 4.2029e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8b70402d0_wrap_pyop2_kernel_restrict   16658 0.0 9.9917e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8b70402d0_wrap_pyop2_kernel_prolong   16656 0.0 9.7849e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8ca71c490_wrap_pyop2_kernel_prolong   16656 0.0 3.7953e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6a5957b50_wrap_pyop2_kernel_prolong       4 0.0 7.4616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6a5931f10_wrap_pyop2_kernel_prolong       4 0.0 6.5974e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6a57280d0_wrap_pyop2_kernel_restrict   16658 0.0 4.7728e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a68f32fd50_wrap_pyop2_kernel_restrict   16658 0.0 1.1446e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a68f32fd50_wrap_pyop2_kernel_prolong   16656 0.0 1.1313e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6a57280d0_wrap_pyop2_kernel_prolong   16656 0.0 4.3615e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ef5de2210_wrap_pyop2_kernel_prolong       4 0.0 7.4561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ef5de1a50_wrap_pyop2_kernel_prolong       4 0.0 6.3443e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ef5e7f150_wrap_pyop2_kernel_restrict   16658 0.0 4.8200e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146edf74f150_wrap_pyop2_kernel_restrict   16658 0.0 1.1497e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146edf74f150_wrap_pyop2_kernel_prolong   16656 0.0 1.1250e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ef5e7f150_wrap_pyop2_kernel_prolong   16656 0.0 4.3618e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c13a46efd0_wrap_pyop2_kernel_prolong       4 0.0 7.4603e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c139adb310_wrap_pyop2_kernel_prolong       4 0.0 6.4260e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c139a757d0_wrap_pyop2_kernel_restrict   16658 0.0 4.1779e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c123dbe310_wrap_pyop2_kernel_restrict   16658 0.0 9.9587e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c123dbe310_wrap_pyop2_kernel_prolong   16656 0.0 9.8220e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c139a757d0_wrap_pyop2_kernel_prolong   16656 0.0 3.8240e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483e0b27e10_wrap_pyop2_kernel_prolong       4 0.0 7.4622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483e09b9290_wrap_pyop2_kernel_prolong       4 0.0 7.4072e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483e091d190_wrap_pyop2_kernel_restrict   16658 0.0 4.8149e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483cb84a410_wrap_pyop2_kernel_restrict   16658 0.0 1.1541e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483cb84a410_wrap_pyop2_kernel_prolong   16656 0.0 1.1261e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1483e091d190_wrap_pyop2_kernel_prolong   16656 0.0 4.3694e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535a0ceb990_wrap_pyop2_kernel_prolong       4 0.0 7.4643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535a0f2d7d0_wrap_pyop2_kernel_prolong       4 0.0 6.3118e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535a0ff9110_wrap_pyop2_kernel_restrict   16658 0.0 4.4756e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15358c6dc310_wrap_pyop2_kernel_restrict   16658 0.0 1.0698e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15358c6dc310_wrap_pyop2_kernel_prolong   16656 0.0 1.0568e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535a0ff9110_wrap_pyop2_kernel_prolong   16656 0.0 4.0787e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8f5ee34d0_wrap_pyop2_kernel_prolong       4 0.0 7.4586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8f6164cd0_wrap_pyop2_kernel_prolong       4 0.0 6.3485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8f5e2ca10_wrap_pyop2_kernel_restrict   16658 0.0 4.8208e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8e027f010_wrap_pyop2_kernel_restrict   16658 0.0 1.1509e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8e027f010_wrap_pyop2_kernel_prolong   16656 0.0 1.1263e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d8f5e2ca10_wrap_pyop2_kernel_prolong   16656 0.0 4.3642e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e549b5b10_wrap_pyop2_kernel_prolong       4 0.0 7.4562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e549b5410_wrap_pyop2_kernel_prolong       4 0.0 5.1702e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e41321f50_wrap_pyop2_kernel_restrict   16658 0.0 4.5074e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e3f42d6d0_wrap_pyop2_kernel_restrict   16658 0.0 1.0732e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e3f42d6d0_wrap_pyop2_kernel_prolong   16656 0.0 1.0509e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e41321f50_wrap_pyop2_kernel_prolong   16656 0.0 4.0771e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1c8ce3d10_wrap_pyop2_kernel_prolong       4 0.0 7.4651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1c3f55690_wrap_pyop2_kernel_prolong       4 0.0 7.4771e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1c8183ad0_wrap_pyop2_kernel_restrict   16658 0.0 4.7886e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1b22b5410_wrap_pyop2_kernel_restrict   16658 0.0 1.1471e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1b22b5410_wrap_pyop2_kernel_prolong   16656 0.0 1.1280e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1c8183ad0_wrap_pyop2_kernel_prolong   16656 0.0 4.3950e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd95fbfe90_wrap_pyop2_kernel_prolong       4 0.0 7.4600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd95fe6b10_wrap_pyop2_kernel_prolong       4 0.0 5.9629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd95e4b7d0_wrap_pyop2_kernel_restrict   16658 0.0 4.1613e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd8080f950_wrap_pyop2_kernel_restrict   16658 0.0 9.9297e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd8080f950_wrap_pyop2_kernel_prolong   16656 0.0 9.7791e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd95e4b7d0_wrap_pyop2_kernel_prolong   16656 0.0 3.8125e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503241fe410_wrap_pyop2_kernel_prolong       4 0.0 7.4702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503241fedd0_wrap_pyop2_kernel_prolong       4 0.0 7.2288e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15032428f850_wrap_pyop2_kernel_restrict   16658 0.0 4.7822e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15030e806810_wrap_pyop2_kernel_restrict   16658 0.0 1.1480e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15030e806810_wrap_pyop2_kernel_prolong   16656 0.0 1.1323e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15032428f850_wrap_pyop2_kernel_prolong   16656 0.0 4.3678e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495345bb790_wrap_pyop2_kernel_prolong       4 0.0 7.4666e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14952f5bfd50_wrap_pyop2_kernel_prolong       4 0.0 6.8567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14952f450650_wrap_pyop2_kernel_restrict   16658 0.0 4.1918e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14951d1de6d0_wrap_pyop2_kernel_restrict   16658 0.0 1.0026e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14951d1de6d0_wrap_pyop2_kernel_prolong   16656 0.0 9.8430e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14952f450650_wrap_pyop2_kernel_prolong   16656 0.0 3.8025e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8c2681650_wrap_pyop2_kernel_prolong       4 0.0 7.4600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8c26a9b10_wrap_pyop2_kernel_prolong       4 0.0 7.2092e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8c2796d10_wrap_pyop2_kernel_restrict   16658 0.0 4.8267e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8ac19e350_wrap_pyop2_kernel_restrict   16658 0.0 1.1523e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8ac19e350_wrap_pyop2_kernel_prolong   16656 0.0 1.1272e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8c2796d10_wrap_pyop2_kernel_prolong   16656 0.0 4.3703e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ac9a13d50_wrap_pyop2_kernel_prolong       4 0.0 7.4639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ac98eebd0_wrap_pyop2_kernel_prolong       4 0.0 7.1231e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ac96f2290_wrap_pyop2_kernel_restrict   16658 0.0 4.8191e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ab3f51650_wrap_pyop2_kernel_restrict   16658 0.0 1.1499e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ab3f51650_wrap_pyop2_kernel_prolong   16656 0.0 1.1242e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150ac96f2290_wrap_pyop2_kernel_prolong   16656 0.0 4.3636e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b3a4c82d0_wrap_pyop2_kernel_prolong       4 0.0 7.4621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b39d81cd0_wrap_pyop2_kernel_prolong       4 0.0 5.3407e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b39ab02d0_wrap_pyop2_kernel_restrict   16658 0.0 4.5035e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b24c882d0_wrap_pyop2_kernel_restrict   16658 0.0 1.0741e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b24c882d0_wrap_pyop2_kernel_prolong   16656 0.0 1.0504e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b39ab02d0_wrap_pyop2_kernel_prolong   16656 0.0 4.0768e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150529c18810_wrap_pyop2_kernel_prolong       4 0.0 7.4682e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150529be9a50_wrap_pyop2_kernel_prolong       4 0.0 7.9975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150529b53bd0_wrap_pyop2_kernel_restrict   16658 0.0 4.8035e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150514cebc10_wrap_pyop2_kernel_restrict   16658 0.0 1.1536e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150514cebc10_wrap_pyop2_kernel_prolong   16656 0.0 1.1270e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150529b53bd0_wrap_pyop2_kernel_prolong   16656 0.0 4.3714e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abdf80a490_wrap_pyop2_kernel_prolong       4 0.0 7.4514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abdf80bb50_wrap_pyop2_kernel_prolong       4 0.0 6.4268e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abdf705b50_wrap_pyop2_kernel_restrict   16658 0.0 4.7805e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abc58e3450_wrap_pyop2_kernel_restrict   16658 0.0 1.1451e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abc58e3450_wrap_pyop2_kernel_prolong   16656 0.0 1.1255e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abdf705b50_wrap_pyop2_kernel_prolong   16656 0.0 4.3891e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151adaeb7310_wrap_pyop2_kernel_prolong       4 0.0 7.4648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151adaee5990_wrap_pyop2_kernel_prolong       4 0.0 8.1976e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151adaf9de50_wrap_pyop2_kernel_restrict   16658 0.0 4.7914e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ac4d34cd0_wrap_pyop2_kernel_restrict   16658 0.0 1.1464e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ac4d34cd0_wrap_pyop2_kernel_prolong   16656 0.0 1.1279e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151adaf9de50_wrap_pyop2_kernel_prolong   16656 0.0 4.3927e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b253ec8550_wrap_pyop2_kernel_prolong       4 0.0 7.4614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b253fdb650_wrap_pyop2_kernel_prolong       4 0.0 7.5109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b253f7d3d0_wrap_pyop2_kernel_restrict   16658 0.0 4.7826e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2428532d0_wrap_pyop2_kernel_restrict   16658 0.0 1.1451e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2428532d0_wrap_pyop2_kernel_prolong   16656 0.0 1.1245e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b253f7d3d0_wrap_pyop2_kernel_prolong   16656 0.0 4.3884e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15537220ea50_wrap_pyop2_kernel_prolong       4 0.0 7.4698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155372436310_wrap_pyop2_kernel_prolong       4 0.0 7.6731e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155372338b90_wrap_pyop2_kernel_restrict   16658 0.0 4.5015e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15535d1f1350_wrap_pyop2_kernel_restrict   16658 0.0 1.0782e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15535d1f1350_wrap_pyop2_kernel_prolong   16656 0.0 1.0533e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155372338b90_wrap_pyop2_kernel_prolong   16656 0.0 4.0845e+02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   141            141
              Viewer     3              3
           Index Set  1528           1528
   IS L to G Mapping   208            208
             Section   476            476
   Star Forest Graph   387            387
              Vector  1848           1836
              Matrix   136            136
      Preconditioner     9              9
       Krylov Solver     9              9
     DMKSP interface     4              4
                SNES     1              1
              DMSNES     3              3
      SNESLineSearch     1              1
    Distributed Mesh   116            116
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   171            171
           Weak Form   171            171
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8
========================================================================================================================
Average time to get PetscTime(): 2.68e-08
Average time for MPI_Barrier(): 4.3122e-06
Average time for zero size MPI_Send(): 2.54913e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly3/gmg/h1.profile # (source: code)
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

