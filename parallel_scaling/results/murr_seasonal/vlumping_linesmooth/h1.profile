****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0108.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 28 05:14:04 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.022e+03     1.000   1.022e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.478e+12     1.205   1.389e+12  1.444e+14
Flops/sec:            1.445e+09     1.205   1.358e+09  1.412e+11
MPI Msg Count:        1.044e+05     2.859   6.818e+04  7.091e+06
MPI Msg Len (bytes):  1.123e+10     2.995   1.162e+05  8.237e+11
MPI Reductions:       1.590e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.6409e+02  74.7%  1.2940e+14  89.6%  3.556e+06  50.1%  1.775e+05       76.6%  1.301e+04  81.8%
 1:        MG Apply: 2.5838e+02  25.3%  1.5022e+13  10.4%  3.535e+06  49.9%  5.444e+04       23.4%  2.875e+03  18.1%

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

BuildTwoSided       1709 1.0 6.1688e+01 7.3 0.00e+00 0.0 1.1e+05 4.0e+00 1.5e+03  3  0  2  0  9   5  0  3  0 11    -0
BuildTwoSidedF      1371 1.0 6.0545e+01 8.4 0.00e+00 0.0 1.4e+05 1.5e+06 1.4e+03  3  0  2 25  9   4  0  4 33 11    -0
SFSetGraph           345 1.1 1.5760e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              338 1.1 2.9204e+00 101.4 0.00e+00 0.0 6.9e+04 1.1e+03 9.8e+01  0  0  1  0  1   0  0  2  0  1    -0
SFBcastBegin        1097 1.0 5.3409e-01 3.3 0.00e+00 0.0 5.5e+05 9.5e+04 0.0e+00  0  0  8  6  0   0  0 15  8  0    -0
SFBcastEnd          1097 1.0 1.7733e+01 115.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        544 1.0 1.0959e-01 17.3 0.00e+00 0.0 2.8e+05 1.1e+05 0.0e+00  0  0  4  4  0   0  0  8  5  0    -0
SFReduceEnd          544 1.0 5.7987e+00 60.4 5.43e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   687
SFFetchOpBegin         6 1.0 2.2578e-05 3.5 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.1970e-04 8.7 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.5162e-04 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.6286e-03 1.4 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  0   0  0  2  0  0    -0
SFSectionSF           51 1.0 3.2256e-03 2.3 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 8.1256e-05 2.7 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack           1453606 1.2 2.4232e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1453612 1.2 3.3064e-01 4.3 5.43e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12049
VecDot               273 1.0 1.1188e+00 5.4 2.36e+08 1.2 0.0e+00 0.0e+00 2.7e+02  0  0  0  0  2   0  0  0  0  2 21140
VecMDot             4240 1.0 4.0635e+01 3.1 1.76e+10 1.2 0.0e+00 0.0e+00 4.2e+03  2  1  0  0 27   3  1  0  0 33 43521
VecNorm             5562 1.0 2.2875e+01 5.5 4.81e+09 1.2 0.0e+00 0.0e+00 5.6e+03  1  0  0  0 35   1  0  0  0 43 21064
VecScale            4786 1.0 1.8784e+00 1.3 2.07e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110365
VecCopy             2406 1.0 3.5830e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              7098 1.0 6.2464e+00 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAXPY              546 1.0 9.3497e-01 1.2 4.72e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 50590
VecWAXPY             470 1.0 1.0398e+00 1.2 2.88e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 27787
VecMAXPY            4786 1.0 2.8181e+01 1.2 2.13e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  1  0  0  0   4  2  0  0  0 75787
VecScatterBegin  1451959 1.2 1.9070e+01 1.4 0.00e+00 0.0 2.4e+06 1.2e+05 0.0e+00  2  0 33 35  0   2  0 67 45  0    -0
VecScatterEnd    1451959 1.2 2.9323e+01 33.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       546 1.0 4.9924e-01 1.8 4.72e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 94744
VecReduceComm        273 1.0 3.3878e-01 23.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.7e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        3003 1.0 1.5339e+01 4.7 3.89e+09 1.2 0.0e+00 0.0e+00 3.0e+03  1  0  0  0 19   1  0  0  0 23 25440
MatMult             4513 1.0 1.9260e+02 1.1 1.38e+11 1.2 2.4e+06 1.2e+05 0.0e+00 18 10 33 35  0  24 11 67 45  0 71767
MatSolve          720720 1.2 7.3580e+01 1.2 4.53e+10 1.2 0.0e+00 0.0e+00 0.0e+00  7  3  0  0  0   9  4  0  0  0 61732
MatLUFactorSym       241 1.2 4.6639e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum     65793 1.2 2.4864e+01 1.1 1.89e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  1  0  0  0 75750
MatAssemblyBegin   67486 1.1 6.0588e+01 3.1 0.00e+00 0.0 1.4e+05 1.5e+06 1.4e+03  4  0  2 25  9   5  0  4 33 11    -0
MatAssemblyEnd     67486 1.1 1.4827e+01 17.1 3.07e+08 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0   876
MatGetRowIJ          240 1.2 3.3254e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats     273 1.0 3.7005e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  3  0  0  0  2   4  0  0  0  2    -0
MatGetOrdering       240 1.2 4.1520e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       546 1.0 1.0830e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.4694e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3202e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        546 1.0 4.6584e+00 1.1 8.49e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 182015
MatPtAPSymbolic        1 1.0 2.0813e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       273 1.0 2.9597e+01 1.0 3.39e+10 1.2 1.4e+05 3.6e+05 2.8e+02  3  2  2  6  2   4  3  4  8  2 114607
MatGetLocalMat       273 1.0 2.1134e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        273 1.0 1.0507e+00 1.9 0.00e+00 0.0 1.4e+05 3.6e+05 0.0e+00  0  0  2  6  0   0  0  4  8  0    -0
MatSetPreallCOO       32 1.0 6.8212e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.6087e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              273 1.0 3.3827e+02 1.0 2.14e+11 1.2 1.6e+06 1.4e+05 6.6e+03 33 15 22 27 41  44 17 44 36 50 63356
PCApply             1510 1.0 2.6317e+02 1.1 1.51e+11 1.2 3.5e+06 5.4e+04 2.9e+03 25 10 50 23 18  34 12 99 30 22 57078
PCApplyOnBlocks   720720 1.2 9.1067e+01 1.2 6.41e+10 1.2 0.0e+00 0.0e+00 0.0e+00  8  4  0  0  0  11  5  0  0  0 70529
KSPSetUp             273 1.0 2.0943e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             273 1.0 3.3871e+02 1.0 2.10e+11 1.2 4.3e+06 6.7e+04 6.2e+03 33 15 61 35 39 Multiple stages 61906
KSPGMRESOrthog      4240 1.0 6.1147e+01 1.7 3.53e+10 1.2 0.0e+00 0.0e+00 4.2e+03  4  2  0  0 27   6  3  0  0 33 57844
DMRefine               2 1.0 2.1581e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0     1
DMPlexCreateGmsh       1 1.0 1.2193e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 2.0575e+00 154.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 4.7284e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  1  0  0    -0
Mesh Migration         4 1.0 1.1325e-02 1.1 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 1.1573e-03 538.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 7.6256e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.1712e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.5892e-03 1.3 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 9.0363e-04 3.1 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.2725e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.1443e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 1.4077e-03 1.1 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.8722e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 8.3586e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  2   0  0  2  0  2    -0
DMPlexDistField        7 1.0 2.0198e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 4.4024e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.0376e-04 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0710e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.9023e-03 1.7 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1483e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.3484e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.2972e-04 1.9 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.9933e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 6.8800e-04 2.0 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             33 1.0 9.5585e+02 1.0 1.48e+12 1.2 6.9e+06 1.2e+05 1.5e+04 93 100 97 100 95 Multiple stages 151084
SNESSetUp              1 1.0 6.0939e-05 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     503 1.0 4.7423e+01 1.1 4.89e+11 1.2 5.5e+05 1.2e+05 0.0e+00  4 33  8  8  0   6 37 15 10  0 996636
SNESJacobianEval     273 1.0 2.1718e+02 1.0 5.55e+11 1.2 2.9e+05 7.9e+05 1.1e+03 21 37  4 27  7  28 42  8 36  8 247483
SNESLineSearch       273 1.0 4.9504e+01 1.0 4.67e+11 1.2 6.4e+05 1.2e+05 1.3e+03  5 31  9  9  8   6 35 18 12 10 912321
DualSpaceSetUp         8 1.0 5.0954e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.8298e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.0202e+03 1.0 1.48e+12 1.2 7.1e+06 1.2e+05 1.6e+04 100 100 100 100 100 Multiple stages 141559
firedrake.__init__       1 1.0 1.2798e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 2.1542e+00 19.7 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  2  0  3   0  0  5  0  3    -0
firedrake.mesh._from_gmsh       1 1.0 2.0583e+00 154.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 8.7538e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.2060e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.3801e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.7915e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      16 1.0 3.2811e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      20 1.0 1.9237e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      20 1.0 3.0462e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      19 1.0 2.7792e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      19 1.0 2.7644e-02 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      38 1.0 1.3287e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.1415e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.3226e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      12 1.0 1.5379e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.0640e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.9360e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2871e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9403e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2454e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.9296e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     394 1.0 6.9416e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      3627 1.0 2.2624e+02 1.2 1.04e+12 1.2 4.4e+05 1.2e+05 3.2e+01 21 70  6  6  0  27 78 12  8  0 446454
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.8901e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    7254 1.0 2.5088e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0317e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.2038e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5563e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.4438e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.4437e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.2871e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 9.0920e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    3627 1.0 1.1549e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      3627 1.0 1.1428e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.1312e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.1333e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   180
firedrake.interpolation.interpolate      13 1.0 6.3010e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.8062e+00 1.0 9.06e+07 1.2 1.4e+04 4.2e+04 3.7e+01  1  0  0  0  0   1  0  0  0  0  1565
firedrake.formmanipulation.split_form      14 1.0 4.7522e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.9065e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5254e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0254e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     830 1.0 4.5368e+00 11.5 0.00e+00 0.0 4.4e+05 1.2e+05 4.0e+00  0  0  6  6  0   0  0 12  8  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.3166e+00 1.0 9.06e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1709
firedrake.halo.Halo.global_to_local_end     830 1.0 1.6619e+01 129.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 2.9911e+00 47.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15178a21c0d0_wrap_pyop2_kernel_prolong       4 0.0 7.2956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15178a21eb90_wrap_pyop2_kernel_prolong       4 0.0 5.5562e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8419e+00 1.0 7.34e+07 1.2 8.1e+03 6.1e+04 1.1e+01  0  0  0  0  0   1  0  0  0  0  1917
firedrake.function.Function.assign     146 1.0 8.8050e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     145 1.0 8.3762e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.7513e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      70 1.0 8.9062e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 7.3873e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4646e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9443e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2208e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.1856e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.3885e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.9622e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2246e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2246e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 3.7038e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 6.0230e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      33 1.0 9.5597e+02 1.0 1.48e+12 1.2 6.9e+06 1.2e+05 1.5e+04 93 100 97 100 96 Multiple stages 151065
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.9530e-01 1069.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.2950e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.9525e-01 1282.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.9522e-01 1467.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    1006 1.0 1.2380e+01 1.4 1.25e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1 10  0  0  0 1011033
Parloop_Cells_wrap_form0_exterior_facet_top_integral    1006 1.0 1.0072e+00 1.0 1.61e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1598
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    1006 1.0 1.3206e+00 1.1 1.20e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16086
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    1006 1.0 8.2742e+00 1.2 1.19e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1  9  0  0  0 1437745
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    1006 1.0 1.8378e+01 1.3 2.46e+11 1.3 0.0e+00 0.0e+00 0.0e+00  2 16  0  0  0   2 18  0  0  0 1241901
firedrake.halo.Halo.local_to_global_begin     503 1.0 1.2212e-01 7.1 0.00e+00 0.0 2.6e+05 1.2e+05 0.0e+00  0  0  4  4  0   0  0  7  5  0    -0
firedrake.halo.Halo.local_to_global_end     503 1.0 5.8034e+00 57.4 5.43e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   686
Parloop_Cells_wrap_form00_cell_integral     546 1.0 3.5409e+01 1.4 1.26e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   4 10  0  0  0 356275
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     546 1.0 2.1024e+00 1.9 6.57e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5517
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     546 1.0 4.4519e+01 1.2 1.66e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4 11  0  0  0   5 13  0  0  0 372788
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     546 1.0 1.0007e+02 1.3 2.64e+11 1.3 0.0e+00 0.0e+00 0.0e+00  8 17  0  0  0  11 19  0  0  0 244952
firedrake.dmhooks.get_function_space       2 1.0 2.3255e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.0707e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      273 1.0 1.0592e+01 1.1 9.63e+07 10.1 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   266
MGSetup Level 1      273 1.0 2.9740e+02 1.0 1.80e+11 1.2 1.4e+06 1.2e+05 6.0e+03 29 12 20 21 38  39 14 40 27 46 60645
firedrake.constant.Constant.assign      33 1.0 1.7146e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f27e661d0_wrap_pyop2_kernel_prolong       4 0.0 7.2951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f27e65ad0_wrap_pyop2_kernel_prolong       4 0.0 5.3809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c31114bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c308ffd90_wrap_pyop2_kernel_prolong       4 0.0 6.7846e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15495d627050_wrap_pyop2_kernel_prolong       4 0.0 7.2951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15495d625690_wrap_pyop2_kernel_prolong       4 0.0 6.4546e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15146e73a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.2910e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15146e739f10_wrap_pyop2_kernel_prolong       4 0.0 6.5671e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e57aecddd0_wrap_pyop2_kernel_prolong       4 0.0 7.2939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e578807150_wrap_pyop2_kernel_prolong       4 0.0 7.6592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ff2adf5d0_wrap_pyop2_kernel_prolong       4 0.0 7.2981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ff2adfb10_wrap_pyop2_kernel_prolong       4 0.0 6.0480e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540d8aa2a50_wrap_pyop2_kernel_prolong       4 0.0 7.2961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540d8cb55d0_wrap_pyop2_kernel_prolong       4 0.0 5.2559e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec8bb3d390_wrap_pyop2_kernel_prolong       4 0.0 7.2970e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec8bb66650_wrap_pyop2_kernel_prolong       4 0.0 7.0204e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e09a17b650_wrap_pyop2_kernel_prolong       4 0.0 7.2940e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0997f5b50_wrap_pyop2_kernel_prolong       4 0.0 5.3370e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adc6e9ce50_wrap_pyop2_kernel_prolong       4 0.0 7.2924e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adc6e9ed90_wrap_pyop2_kernel_prolong       4 0.0 7.6080e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14644fab6850_wrap_pyop2_kernel_prolong       4 0.0 7.2833e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14644fa93d90_wrap_pyop2_kernel_prolong       4 0.0 6.3943e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a7af0bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.2992e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154a7ae47d90_wrap_pyop2_kernel_prolong       4 0.0 6.8743e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef7d2ea250_wrap_pyop2_kernel_prolong       4 0.0 7.2747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef7d2e2c10_wrap_pyop2_kernel_prolong       4 0.0 5.3349e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153dd6619b10_wrap_pyop2_kernel_prolong       4 0.0 7.2941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153dd5c79710_wrap_pyop2_kernel_prolong       4 0.0 6.5639e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b96a2e850_wrap_pyop2_kernel_prolong       4 0.0 7.2825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b96a2e2d0_wrap_pyop2_kernel_prolong       4 0.0 6.5772e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14827cc4d790_wrap_pyop2_kernel_prolong       4 0.0 7.2944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14827ca83c10_wrap_pyop2_kernel_prolong       4 0.0 5.1453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14927b3a5310_wrap_pyop2_kernel_prolong       4 0.0 7.2867e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14927b160b10_wrap_pyop2_kernel_prolong       4 0.0 6.8202e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff706ab510_wrap_pyop2_kernel_prolong       4 0.0 7.2901e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff706d21d0_wrap_pyop2_kernel_prolong       4 0.0 6.5265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526cf407d50_wrap_pyop2_kernel_prolong       4 0.0 7.2749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526cf196210_wrap_pyop2_kernel_prolong       4 0.0 6.2262e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c98016e7d0_wrap_pyop2_kernel_prolong       4 0.0 7.2788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c980382210_wrap_pyop2_kernel_prolong       4 0.0 6.2762e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e54e82950_wrap_pyop2_kernel_prolong       4 0.0 7.2959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e54d74650_wrap_pyop2_kernel_prolong       4 0.0 8.2565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500aea29a50_wrap_pyop2_kernel_prolong       4 0.0 7.3004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500aea29290_wrap_pyop2_kernel_prolong       4 0.0 7.2496e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469515a3190_wrap_pyop2_kernel_prolong       4 0.0 7.2978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146951359310_wrap_pyop2_kernel_prolong       4 0.0 6.5844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb1faa2f50_wrap_pyop2_kernel_prolong       4 0.0 7.2803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb1faa0110_wrap_pyop2_kernel_prolong       4 0.0 7.0239e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bee7012e90_wrap_pyop2_kernel_prolong       4 0.0 7.2863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bee7073dd0_wrap_pyop2_kernel_prolong       4 0.0 7.8684e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14873e0bc690_wrap_pyop2_kernel_prolong       4 0.0 7.2766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14873e11a510_wrap_pyop2_kernel_prolong       4 0.0 5.1086e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e85915a50_wrap_pyop2_kernel_prolong       4 0.0 7.2703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e859153d0_wrap_pyop2_kernel_prolong       4 0.0 5.6090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3c46b4bd0_wrap_pyop2_kernel_prolong       4 0.0 7.2942e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3c466bcd0_wrap_pyop2_kernel_prolong       4 0.0 6.8878e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f609258d0_wrap_pyop2_kernel_prolong       4 0.0 7.2989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f60967d10_wrap_pyop2_kernel_prolong       4 0.0 6.0966e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d04df446d0_wrap_pyop2_kernel_prolong       4 0.0 7.2885e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d04d4a8490_wrap_pyop2_kernel_prolong       4 0.0 7.3408e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1676d4790_wrap_pyop2_kernel_prolong       4 0.0 7.2778e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c166485410_wrap_pyop2_kernel_prolong       4 0.0 6.2680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15302396e490_wrap_pyop2_kernel_prolong       4 0.0 7.2956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15302373d410_wrap_pyop2_kernel_prolong       4 0.0 5.8075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d64f9b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.2732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d65211210_wrap_pyop2_kernel_prolong       4 0.0 6.2051e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecb0d57810_wrap_pyop2_kernel_prolong       4 0.0 7.2932e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecb0d55110_wrap_pyop2_kernel_prolong       4 0.0 5.9494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b814a95cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3026e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b814adabd0_wrap_pyop2_kernel_prolong       4 0.0 7.0970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6966e7950_wrap_pyop2_kernel_prolong       4 0.0 7.2836e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e695e0c290_wrap_pyop2_kernel_prolong       4 0.0 7.2697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ce2b69490_wrap_pyop2_kernel_prolong       4 0.0 7.2938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ce2b6b410_wrap_pyop2_kernel_prolong       4 0.0 7.4210e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4f93f9450_wrap_pyop2_kernel_prolong       4 0.0 7.2851e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4f9d93250_wrap_pyop2_kernel_prolong       4 0.0 7.9850e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab318cb810_wrap_pyop2_kernel_prolong       4 0.0 7.2704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab318a9990_wrap_pyop2_kernel_prolong       4 0.0 5.2940e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb1d560450_wrap_pyop2_kernel_prolong       4 0.0 7.2842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb1c361410_wrap_pyop2_kernel_prolong       4 0.0 5.7717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150274891290_wrap_pyop2_kernel_prolong       4 0.0 7.2944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15027410e1d0_wrap_pyop2_kernel_prolong       4 0.0 6.9054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149315446650_wrap_pyop2_kernel_prolong       4 0.0 7.2742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149315445fd0_wrap_pyop2_kernel_prolong       4 0.0 5.6916e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e7d8c3250_wrap_pyop2_kernel_prolong       4 0.0 7.2788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e7d9085d0_wrap_pyop2_kernel_prolong       4 0.0 6.5677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8e3cf6ed0_wrap_pyop2_kernel_prolong       4 0.0 7.2981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8e29d1b10_wrap_pyop2_kernel_prolong       4 0.0 6.7919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468cea61d10_wrap_pyop2_kernel_prolong       4 0.0 7.2936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1468cea615d0_wrap_pyop2_kernel_prolong       4 0.0 7.2840e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f5b71590_wrap_pyop2_kernel_prolong       4 0.0 7.2864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1543f5015990_wrap_pyop2_kernel_prolong       4 0.0 6.8394e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458f6410d90_wrap_pyop2_kernel_prolong       4 0.0 7.2900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458f6117b50_wrap_pyop2_kernel_prolong       4 0.0 6.7312e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544d99be790_wrap_pyop2_kernel_prolong       4 0.0 7.2995e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544d99bde90_wrap_pyop2_kernel_prolong       4 0.0 6.6214e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493ebe70290_wrap_pyop2_kernel_prolong       4 0.0 7.2877e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493eb638310_wrap_pyop2_kernel_prolong       4 0.0 7.1987e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2c4a79e90_wrap_pyop2_kernel_prolong       4 0.0 7.2788e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2c4a795d0_wrap_pyop2_kernel_prolong       4 0.0 7.2782e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148671f9f910_wrap_pyop2_kernel_prolong       4 0.0 7.3059e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148671f97710_wrap_pyop2_kernel_prolong       4 0.0 7.4664e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c6172cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.2740e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c61770250_wrap_pyop2_kernel_prolong       4 0.0 5.5362e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abda6f3c50_wrap_pyop2_kernel_prolong       4 0.0 7.2843e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abda6f2310_wrap_pyop2_kernel_prolong       4 0.0 6.3011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490734e78d0_wrap_pyop2_kernel_prolong       4 0.0 7.2870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490732a8210_wrap_pyop2_kernel_prolong       4 0.0 7.8647e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15349437b290_wrap_pyop2_kernel_prolong       4 0.0 7.2943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534945b5ed0_wrap_pyop2_kernel_prolong       4 0.0 6.5316e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8ef392810_wrap_pyop2_kernel_prolong       4 0.0 7.2755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8ef392150_wrap_pyop2_kernel_prolong       4 0.0 6.4124e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1b25d1610_wrap_pyop2_kernel_prolong       4 0.0 7.2872e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1b25fe150_wrap_pyop2_kernel_prolong       4 0.0 5.8093e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bd331a8d0_wrap_pyop2_kernel_prolong       4 0.0 7.2760e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bd331bc90_wrap_pyop2_kernel_prolong       4 0.0 5.4695e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536300c6750_wrap_pyop2_kernel_prolong       4 0.0 7.2904e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536307d0850_wrap_pyop2_kernel_prolong       4 0.0 5.3689e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536f62d8090_wrap_pyop2_kernel_prolong       4 0.0 7.2824e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536f631e8d0_wrap_pyop2_kernel_prolong       4 0.0 6.1298e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c5f28edd0_wrap_pyop2_kernel_prolong       4 0.0 7.2921e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c5f28d490_wrap_pyop2_kernel_prolong       4 0.0 7.0162e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c386fd9050_wrap_pyop2_kernel_prolong       4 0.0 7.2959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c386ffc5d0_wrap_pyop2_kernel_prolong       4 0.0 6.5319e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c42585f10_wrap_pyop2_kernel_prolong       4 0.0 7.2910e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c425856d0_wrap_pyop2_kernel_prolong       4 0.0 7.3136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d57e3b0c90_wrap_pyop2_kernel_prolong       4 0.0 7.2964e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d57e1c5a10_wrap_pyop2_kernel_prolong       4 0.0 8.1835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd54777990_wrap_pyop2_kernel_prolong       4 0.0 7.2748e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd4fe591d0_wrap_pyop2_kernel_prolong       4 0.0 5.5842e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fbbed3d50_wrap_pyop2_kernel_prolong       4 0.0 7.2891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fbbfdfe50_wrap_pyop2_kernel_prolong       4 0.0 6.1571e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f98ee32810_wrap_pyop2_kernel_prolong       4 0.0 7.2703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f98de28e90_wrap_pyop2_kernel_prolong       4 0.0 5.4215e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15261ef51410_wrap_pyop2_kernel_prolong       4 0.0 7.2887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15261efa45d0_wrap_pyop2_kernel_prolong       4 0.0 6.4584e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152489ba2550_wrap_pyop2_kernel_prolong       4 0.0 7.2968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152489ba28d0_wrap_pyop2_kernel_prolong       4 0.0 6.0167e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b97f80590_wrap_pyop2_kernel_prolong       4 0.0 7.3036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b97f833d0_wrap_pyop2_kernel_prolong       4 0.0 7.8696e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153faee3dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.2957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153faebdaf90_wrap_pyop2_kernel_prolong       4 0.0 5.9655e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cf6041ad0_wrap_pyop2_kernel_prolong       4 0.0 7.2969e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cf5f60410_wrap_pyop2_kernel_prolong       4 0.0 6.5975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a4562a6d0_wrap_pyop2_kernel_prolong       4 0.0 7.2852e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145a4562a010_wrap_pyop2_kernel_prolong       4 0.0 7.9073e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f74b8eb490_wrap_pyop2_kernel_prolong       4 0.0 7.2931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f74b8e9c10_wrap_pyop2_kernel_prolong       4 0.0 5.9606e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14726250e210_wrap_pyop2_kernel_prolong       4 0.0 7.2859e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147262ccd950_wrap_pyop2_kernel_prolong       4 0.0 6.7507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a2973210_wrap_pyop2_kernel_prolong       4 0.0 7.2957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522a29963d0_wrap_pyop2_kernel_prolong       4 0.0 7.2618e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528458e69d0_wrap_pyop2_kernel_prolong       4 0.0 7.2758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152845b32a50_wrap_pyop2_kernel_prolong       4 0.0 6.3758e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcb0d432d0_wrap_pyop2_kernel_prolong       4 0.0 7.2698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcb0f7abd0_wrap_pyop2_kernel_prolong       4 0.0 4.8622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493bb57a750_wrap_pyop2_kernel_prolong       4 0.0 7.2873e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493bb4ba310_wrap_pyop2_kernel_prolong       4 0.0 6.9677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5ade6e510_wrap_pyop2_kernel_prolong       4 0.0 7.2882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5aded2090_wrap_pyop2_kernel_prolong       4 0.0 7.0020e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150702df15d0_wrap_pyop2_kernel_prolong       4 0.0 7.2899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150702e21b10_wrap_pyop2_kernel_prolong       4 0.0 6.4678e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f233776d90_wrap_pyop2_kernel_prolong       4 0.0 7.2869e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2337dcfd0_wrap_pyop2_kernel_prolong       4 0.0 6.6356e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f618b0850_wrap_pyop2_kernel_prolong       4 0.0 7.2945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f618e1510_wrap_pyop2_kernel_prolong       4 0.0 7.0200e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3357d6fd0_wrap_pyop2_kernel_prolong       4 0.0 7.2814e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3357d79d0_wrap_pyop2_kernel_prolong       4 0.0 5.7536e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149acec32090_wrap_pyop2_kernel_prolong       4 0.0 7.2817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149acec03810_wrap_pyop2_kernel_prolong       4 0.0 6.5870e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bba52a9090_wrap_pyop2_kernel_prolong       4 0.0 7.2810e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bba52fabd0_wrap_pyop2_kernel_prolong       4 0.0 6.3922e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e4dd9d910_wrap_pyop2_kernel_prolong       4 0.0 7.2767e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e4db8ccd0_wrap_pyop2_kernel_prolong       4 0.0 6.3569e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fc4a37ad0_wrap_pyop2_kernel_prolong       4 0.0 7.2944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fc4c71450_wrap_pyop2_kernel_prolong       4 0.0 7.3206e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152184f71ad0_wrap_pyop2_kernel_prolong       4 0.0 7.2832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152184f71050_wrap_pyop2_kernel_prolong       4 0.0 6.2220e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f644b3f50_wrap_pyop2_kernel_prolong       4 0.0 7.2971e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f6436d5d0_wrap_pyop2_kernel_prolong       4 0.0 6.3180e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493225f8750_wrap_pyop2_kernel_prolong       4 0.0 7.2829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149323002f90_wrap_pyop2_kernel_prolong       4 0.0 5.2172e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154efb803490_wrap_pyop2_kernel_prolong       4 0.0 7.2858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154efb7a0710_wrap_pyop2_kernel_prolong       4 0.0 7.4324e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f93b3fe90_wrap_pyop2_kernel_prolong       4 0.0 7.2883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f985b8bd0_wrap_pyop2_kernel_prolong       4 0.0 5.9583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e8d255810_wrap_pyop2_kernel_prolong       4 0.0 7.2951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e8d255a50_wrap_pyop2_kernel_prolong       4 0.0 7.0795e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a6c8e7190_wrap_pyop2_kernel_prolong       4 0.0 7.3001e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a6cb612d0_wrap_pyop2_kernel_prolong       4 0.0 6.8234e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e66d3fc50_wrap_pyop2_kernel_prolong       4 0.0 7.2870e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e66f6dad0_wrap_pyop2_kernel_prolong       4 0.0 7.2898e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e868b10390_wrap_pyop2_kernel_prolong       4 0.0 7.2914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e868c19550_wrap_pyop2_kernel_prolong       4 0.0 6.5454e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e99eb76550_wrap_pyop2_kernel_prolong       4 0.0 7.2865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e99c50f710_wrap_pyop2_kernel_prolong       4 0.0 5.6554e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9c6045050_wrap_pyop2_kernel_prolong       4 0.0 7.2868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9c56eab90_wrap_pyop2_kernel_prolong       4 0.0 7.9800e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553482ec050_wrap_pyop2_kernel_prolong       4 0.0 7.2766e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553482ede90_wrap_pyop2_kernel_prolong       4 0.0 6.3678e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9fdf792d0_wrap_pyop2_kernel_prolong       4 0.0 7.2905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9fde15750_wrap_pyop2_kernel_prolong       4 0.0 8.0825e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474b8caebd0_wrap_pyop2_kernel_prolong       4 0.0 7.2978e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474b8c7cb90_wrap_pyop2_kernel_prolong       4 0.0 7.4730e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15097f66aa10_wrap_pyop2_kernel_prolong       4 0.0 7.2928e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15097f6eb290_wrap_pyop2_kernel_prolong       4 0.0 7.6619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        273 1.0 1.8212e-02 3.9 0.00e+00 0.0 1.9e+05 4.0e+00 2.7e+02  0  0  3  0  2   0  0  5  0  9    -0
SFSetGraph           273 1.0 1.2000e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              273 1.0 2.5982e-02 1.9 0.00e+00 0.0 3.7e+05 2.1e+02 2.7e+02  0  0  5  0  2   0  0 10  0  9    -0
SFPack           1463190 1.2 1.5192e+00 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         1463190 1.2 7.5477e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             4530 1.0 5.9336e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   2  0  0  0  0    -0
VecSet             12079 1.0 6.8123e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAYPX             6040 1.0 1.0276e+01 2.2 3.91e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 38189
VecScatterBegin  1463190 1.2 1.9108e+01 1.2 0.00e+00 0.0 2.6e+06 7.4e+04 0.0e+00  2  0 37 23  0   7  0 74 100  0    -0
VecScatterEnd    1463190 1.2 2.2141e+01 28.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult             3020 1.0 1.3240e+02 1.1 9.25e+10 1.2 1.6e+06 1.2e+05 0.0e+00 12  6 22 23  0  47 62 45 99  0 69863
MatMultAdd          1510 1.0 7.7796e+00 1.2 3.91e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  3  0  0  0 50445
MatMultTranspose    1510 1.0 7.0869e+00 2.0 3.91e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  3  0  0  0 55375
MatSolve          726310 1.2 9.0233e+01 1.2 4.66e+10 1.2 2.0e+06 5.7e+02 1.4e+03  8  3 28  0  9  32 31 55  1 47 50921
MatResidual         1510 1.0 7.2696e+01 1.2 4.69e+10 1.2 7.9e+05 1.2e+05 0.0e+00  6  3 11 12  0  25 31 22 50  0 64518
PCApply             4530 1.0 1.1378e+02 1.2 4.66e+10 1.2 2.0e+06 5.7e+02 1.4e+03 11  3 28  0  9  42 31 55  1 47 40383
PCApplyOnBlocks   724800 1.2 8.2036e+01 1.2 4.56e+10 1.2 0.0e+00 0.0e+00 0.0e+00  8  3  0  0  0  30 30  0  0  0 55682
KSPSolve            4530 1.0 1.8651e+02 1.1 9.61e+10 1.2 2.7e+06 3.5e+04 2.9e+03 18  7 39 12 18  70 64 78 50 100 51186
MGSmooth Level 0    1510 1.0 1.5694e+01 3.0 1.06e+09 17.3 2.0e+06 5.7e+02 2.9e+03  1  0 28  0 18   3  0 55  1 100  1704
MGSmooth Level 1    3020 1.0 1.8002e+02 1.1 9.51e+10 1.2 7.9e+05 1.2e+05 0.0e+00 17  7 11 12  0  67 63 22 50  0 52883
MGResid Level 1     1510 1.0 7.2704e+01 1.2 4.69e+10 1.2 7.9e+05 1.2e+05 0.0e+00  6  3 11 12  0  25 31 22 50  0 64511
MGInterp Level 1    3020 1.0 1.4827e+01 1.4 7.83e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   5  5  0  0  0 52935
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   145            145
              Viewer     3              3
           Index Set  3673           3673
   IS L to G Mapping   447            447
             Section   472            472
   Star Forest Graph   610            883
              Vector  1983           1983
              Matrix  1328           1328
      Preconditioner   246            246
       Krylov Solver   244            244
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

           Index Set   546            546
   Star Forest Graph   273              0
              Vector   273            273
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 3.6684e-06
Average time for zero size MPI_Send(): 2.26778e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly3/vlumping_linesmooth/h1.profile # (source: code)
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

