****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0502.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 27 13:04:21 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           3.413e+02     1.000   3.413e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.618e+11     1.191   3.420e+11  3.557e+13
Flops/sec:            1.060e+09     1.191   1.002e+09  1.042e+11
MPI Msg Count:        2.543e+04     2.713   1.810e+04  1.883e+06
MPI Msg Len (bytes):  2.866e+09     2.996   1.117e+05  2.103e+11
MPI Reductions:       3.938e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.3929e+02  70.1%  2.8371e+13  79.8%  9.186e+05  48.8%  1.506e+05       65.8%  3.326e+03  84.5%
 1:        MG Apply: 1.0205e+02  29.9%  7.1990e+12  20.2%  9.641e+05  51.2%  7.462e+04       34.2%  5.930e+02  15.1%

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

BuildTwoSided        413 1.0 1.3635e+01 6.3 0.00e+00 0.0 5.1e+04 4.0e+00 4.1e+02  2  0  3  0 10   3  0  6  0 12    -0
BuildTwoSidedF       316 1.0 1.3575e+01 6.6 0.00e+00 0.0 3.4e+04 1.5e+06 3.2e+02  2  0  2 23  8   3  0  4 35 10    -0
SFSetGraph           104 1.0 7.1440e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 2.1212e+00 105.3 0.00e+00 0.0 6.9e+04 1.1e+03 9.7e+01  0  0  4  0  2   0  0  8  0  3    -0
SFBcastBegin         454 1.0 1.2458e-01 3.4 0.00e+00 0.0 2.1e+05 5.3e+04 0.0e+00  0  0 11  5  0   0  0 23  8  0    -0
SFBcastEnd           454 1.0 8.2535e+00 74.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        124 1.0 1.9465e-02 11.7 0.00e+00 0.0 6.1e+04 8.6e+04 0.0e+00  0  0  3  3  0   0  0  7  4  0    -0
SFReduceEnd          124 1.0 9.2229e-01 55.2 8.96e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   713
SFFetchOpBegin         6 1.0 2.6040e-05 4.2 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.2285e-04 8.6 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.5956e-04 1.2 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.4956e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  3  0  1   0  0  6  0  2    -0
SFSectionSF           51 1.0 2.9658e-03 1.9 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  2  0  1   0  0  3  0  2    -0
SFRemoteOff            2 1.0 8.1675e-05 2.2 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              1549 1.0 4.6912e-01 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1555 1.0 5.4953e-02 10.5 8.96e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11962
VecDot                62 1.0 2.6044e-01 5.9 5.36e+07 1.2 0.0e+00 0.0e+00 6.2e+01  0  0  0  0  2   0  0  0  0  2 20623
VecMDot              903 1.0 9.7593e+00 3.9 3.67e+09 1.2 0.0e+00 0.0e+00 9.0e+02  1  1  0  0 23   2  1  0  0 27 37690
VecNorm             1172 1.0 4.1173e+00 4.5 1.01e+09 1.2 0.0e+00 0.0e+00 1.2e+03  1  0  0  0 30   1  0  0  0 35 24659
VecScale            1027 1.0 3.9361e-01 1.3 4.44e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 113017
VecCopy              499 1.0 6.8581e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               248 1.0 2.1437e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              124 1.0 2.2799e-01 1.2 1.07e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47116
VecWAXPY              62 1.0 1.3119e-01 1.2 2.68e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 20471
VecMAXPY            1027 1.0 5.8822e+00 1.2 4.45e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   2  2  0  0  0 75832
VecScatterBegin      965 1.0 3.8882e-01 2.9 0.00e+00 0.0 5.1e+05 1.2e+05 0.0e+00  0  0 27 29  0   0  0 55 44  0    -0
VecScatterEnd        965 1.0 5.9294e+00 41.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       124 1.0 1.0789e-01 1.6 1.07e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 99563
VecReduceComm         62 1.0 7.7773e-02 25.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.2e+01  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize         682 1.0 3.2501e+00 4.2 8.84e+08 1.2 0.0e+00 0.0e+00 6.8e+02  0  0  0  0 17   1  0  0  0 21 27268
MatMult              965 1.0 4.1275e+01 1.1 2.96e+10 1.2 5.1e+05 1.2e+05 0.0e+00 11  8 27 29  0  16 10 55 44  0 71607
MatSolve             682 1.0 2.8952e+01 1.2 2.04e+10 1.2 0.0e+00 0.0e+00 0.0e+00  8  6  0  0  0  11  7  0  0  0 69905
MatLUFactorSym         1 1.0 3.4672e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       124 1.0 1.3091e+01 1.2 1.69e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   5  6  0  0  0 126450
MatILUFactorSym        1 1.0 2.4737e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     489 1.0 1.3582e+01 3.7 0.00e+00 0.0 3.4e+04 1.5e+06 3.2e+02  2  0  2 23  8   3  0  4 35 10    -0
MatAssemblyEnd       489 1.0 3.4589e+00 7.4 6.96e+07 0.0 2.1e+03 1.5e+04 1.7e+01  1  0  0  0  0   1  0  0  0  1   853
MatGetRowIJ            1 1.0 1.2290e-06 9.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.6756e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       124 1.0 2.2483e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.4911e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.3149e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        124 1.0 1.0702e+00 1.1 1.93e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 179936
MatPtAPSymbolic        1 1.0 3.1228e-01 1.0 0.00e+00 0.0 1.6e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        62 1.0 6.7483e+00 1.0 7.71e+09 1.2 3.3e+04 3.5e+05 6.7e+01  2  2  2  6  2   3  3  4  8  2 114153
MatGetLocalMat        62 1.0 4.8998e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         62 1.0 2.4858e-01 1.9 0.00e+00 0.0 3.4e+04 3.6e+05 0.0e+00  0  0  2  6  0   0  0  4  9  0    -0
MatSetPreallCOO       32 1.0 5.6262e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.5611e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               62 1.0 8.3487e+01 1.0 7.14e+10 1.2 3.6e+05 1.4e+05 1.5e+03 24 20 19 24 37  35 25 39 37 44 84891
PCApply              283 1.0 1.0321e+02 1.0 7.22e+10 1.2 9.6e+05 7.5e+04 5.9e+02 30 20 51 34 15 Multiple stages 69751
PCApplyOnBlocks      682 1.0 2.8960e+01 1.2 2.04e+10 1.2 0.0e+00 0.0e+00 0.0e+00  8  6  0  0  0  11  7  0  0  0 69884
KSPSetUp              62 1.0 2.0674e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              62 1.0 1.1727e+02 1.0 8.30e+10 1.2 1.1e+06 8.1e+04 1.2e+03 34 23 59 43 31 Multiple stages 70654
KSPGMRESOrthog       903 1.0 1.3803e+01 1.9 7.34e+09 1.2 0.0e+00 0.0e+00 9.0e+02  3  2  0  0 23   4  3  0  0 27 53296
DMRefine               2 1.0 2.2759e-01 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  2   0  0  1  0  2     1
DMPlexCreateGmsh       1 1.0 1.1644e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.0394e+00 401.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 4.5809e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  1  0  1   0  0  2  0  2    -0
Mesh Migration         4 1.0 1.1169e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  4  0  6   0  0  7  0  7    -0
DMPlexPartSelf         1 1.0 1.2166e-03 602.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 6.5444e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 4.2850e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.7203e-03 1.3 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.0531e-03 1.6 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 4.7083e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.0145e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  2   0  0  0  0  2    -0
DMPlexDistCones        4 1.0 1.4115e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 4.7132e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  2  0  4   0  0  4  0  5    -0
DMPlexDistOvrlp        3 1.0 8.3303e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  4  0  6   0  0  9  0  7    -0
DMPlexDistField        7 1.0 2.1545e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  1  0  1   0  0  2  0  1    -0
DMPlexStratify        41 1.0 4.2808e-03 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9666e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0848e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.7106e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexTrSizes          2 1.0 1.1416e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.0722e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.3262e-04 2.1 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.0763e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 6.7351e-04 1.7 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             21 1.0 2.7601e+02 1.0 3.62e+11 1.2 1.7e+06 1.2e+05 3.2e+03 81 100 89 99 81 Multiple stages 128843
SNESSetUp              1 1.0 5.7347e-05 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      83 1.0 1.6300e+01 1.1 8.05e+10 1.2 9.9e+04 1.2e+05 0.0e+00  5 22  5  6  0   7 27 11  9  0 477126
SNESJacobianEval      62 1.0 5.5793e+01 1.0 1.26e+11 1.2 6.5e+04 7.9e+05 2.5e+02 16 34  3 24  6  23 43  7 37  7 218492
SNESLineSearch        62 1.0 7.8377e+00 1.0 6.23e+10 1.2 9.7e+04 1.2e+05 2.5e+02  2 17  5  6  6   3 21 11  9  7 769231
DualSpaceSetUp         8 1.0 5.3805e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.9402e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 3.3909e+02 1.0 3.62e+11 1.2 1.9e+06 1.1e+05 3.9e+03 99 100 100 100 99 Multiple stages 104899
firedrake.__init__       1 1.0 1.1533e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
CreateMesh             3 1.0 5.1358e+00 47.3 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  0  0  9  0 11   1  0 18  0 13    -0
firedrake.mesh._from_gmsh       1 1.0 5.0400e+00 400.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 8.8559e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.4910e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.2885e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.6917e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 3.1292e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.5891e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 2.9418e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.7203e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.7089e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 1.2488e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.5885e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.2675e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3291e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.7373e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 1.7407e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.0858e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9287e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2333e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 1.7342e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     322 1.0 5.2948e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       683 1.0 6.8839e+01 1.1 2.06e+11 1.2 1.0e+05 1.1e+05 3.2e+01 19 56  5  5  1  27 70 11  8  1 290143
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 1.6937e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    1366 1.0 2.4796e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  7  0  0  0  0  10  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0332e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.2292e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.5531e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.4452e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.4451e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 9.1407e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.9874e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
ParLoopRednBegin     683 1.0 2.3287e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       683 1.0 1.7454e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.3293e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.6937e+00 1.0 1.46e+07 1.2 8.9e+03 1.3e+04 1.3e+01  3  0  0  0  0   4  0  1  0  0   168
firedrake.interpolation.interpolate      13 1.0 4.9062e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.8543e+00 1.0 9.02e+07 1.2 1.4e+04 4.2e+04 3.7e+01  2  0  1  0  1   2  0  1  0  1  1545
firedrake.formmanipulation.split_form      14 1.0 5.0050e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.4353e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 2.4982e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 2.0507e-01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     187 1.0 4.9607e+00 46.9 0.00e+00 0.0 1.0e+05 1.1e+05 4.0e+00  1  0  6  5  0   1  0 11  8  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.2648e+00 1.0 9.02e+07 1.2 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0  1717
firedrake.halo.Halo.global_to_local_end     187 1.0 3.6887e+00 115.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 5.2465e-01 8.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155182567690_wrap_pyop2_kernel_prolong       4 0.0 7.6009e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551825a9a90_wrap_pyop2_kernel_prolong       4 0.0 5.9046e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8835e+00 1.0 7.30e+07 1.2 8.1e+03 6.1e+04 1.1e+01  1  0  0  0  0   2  0  1  0  0  1885
firedrake.function.Function.assign      98 1.0 6.2669e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      97 1.0 5.9821e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.3266e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      46 1.0 5.0877e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.4436e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3757e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9144e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1258e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.0210e+00 1.0 0.00e+00 0.0 3.2e+03 4.9e+05 2.3e+01  2  0  0  1  1   3  0  0  1  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.4350e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8278e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0294e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0293e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         2 1.0 3.7333e+00 1.1 0.00e+00 0.0 2.7e+03 2.8e+05 1.8e+01  1  0  0  0  0   1  0  0  1  1    -0
MatZeroInitial         2 1.0 5.7729e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      21 1.0 2.7609e+02 1.0 3.62e+11 1.2 1.7e+06 1.2e+05 3.2e+03 81 100 89 99 82 Multiple stages 128807
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.8987e-01 1159.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.1150e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.8982e-01 1413.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.8978e-01 1629.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     166 1.0 3.3106e+00 1.2 2.04e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 617361
Parloop_Cells_wrap_form0_exterior_facet_top_integral     166 1.0 9.6380e-01 1.0 2.65e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   276
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     166 1.0 1.3205e+00 1.0 1.96e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2622
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     166 1.0 2.6870e+00 1.1 1.96e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 730556
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     166 1.0 5.1835e+00 1.2 4.05e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 13  0  0  0 726564
firedrake.halo.Halo.local_to_global_begin      83 1.0 2.1361e-02 6.7 0.00e+00 0.0 4.3e+04 1.2e+05 0.0e+00  0  0  2  3  0   0  0  5  4  0    -0
firedrake.halo.Halo.local_to_global_end      83 1.0 9.2296e-01 55.4 8.96e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   712
Parloop_Cells_wrap_form00_cell_integral     124 1.0 1.0001e+01 1.3 2.84e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   4 10  0  0  0 284853
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     124 1.0 1.4790e+00 1.2 1.49e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  1781
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     124 1.0 1.2051e+01 1.2 3.76e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3 11  0  0  0   5 13  0  0  0 312769
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     124 1.0 2.4973e+01 1.3 5.98e+10 1.3 0.0e+00 0.0e+00 0.0e+00  7 16  0  0  0   9 20  0  0  0 222919
firedrake.dmhooks.get_function_space       1 1.0 1.5500e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1567e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       62 1.0 3.4120e+00 1.0 2.30e+07 9.3 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   184
MGSetup Level 1       62 1.0 7.2081e+01 1.0 6.37e+10 1.2 3.2e+05 1.2e+05 1.3e+03 21 18 17 19 33  30 22 35 28 39 87624
firedrake.constant.Constant.assign      21 1.0 1.0392e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c717b3ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c715661d0_wrap_pyop2_kernel_prolong       4 0.0 5.1484e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e935996f10_wrap_pyop2_kernel_prolong       4 0.0 7.5789e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9358bf4d0_wrap_pyop2_kernel_prolong       4 0.0 6.7678e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8cd344390_wrap_pyop2_kernel_prolong       4 0.0 7.5962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8cd27ecd0_wrap_pyop2_kernel_prolong       4 0.0 6.4133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dad127e6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dad127d610_wrap_pyop2_kernel_prolong       4 0.0 6.8114e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153883fee210_wrap_pyop2_kernel_prolong       4 0.0 7.5694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153883fed310_wrap_pyop2_kernel_prolong       4 0.0 7.6388e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6cd9b2a90_wrap_pyop2_kernel_prolong       4 0.0 7.5703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6cd989d90_wrap_pyop2_kernel_prolong       4 0.0 6.2770e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a03c2d3810_wrap_pyop2_kernel_prolong       4 0.0 7.5191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a03c08f790_wrap_pyop2_kernel_prolong       4 0.0 5.0254e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480aedcc4d0_wrap_pyop2_kernel_prolong       4 0.0 7.6018e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1480aeace4d0_wrap_pyop2_kernel_prolong       4 0.0 6.9781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521a1617a50_wrap_pyop2_kernel_prolong       4 0.0 7.5984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1521a1726250_wrap_pyop2_kernel_prolong       4 0.0 5.2880e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14932988fdd0_wrap_pyop2_kernel_prolong       4 0.0 7.6013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149327a299d0_wrap_pyop2_kernel_prolong       4 0.0 7.5001e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15135e422190_wrap_pyop2_kernel_prolong       4 0.0 7.5903e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15135e641bd0_wrap_pyop2_kernel_prolong       4 0.0 6.5971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e0c93e750_wrap_pyop2_kernel_prolong       4 0.0 7.5762e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151e0c93f190_wrap_pyop2_kernel_prolong       4 0.0 6.6020e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dffa337250_wrap_pyop2_kernel_prolong       4 0.0 7.5616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dffa32ba90_wrap_pyop2_kernel_prolong       4 0.0 5.5640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530cebc2d10_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530ceba2350_wrap_pyop2_kernel_prolong       4 0.0 6.2829e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14921cbedbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5736e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14921c9dcad0_wrap_pyop2_kernel_prolong       4 0.0 6.8323e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151905f14550_wrap_pyop2_kernel_prolong       4 0.0 7.5225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151905eeb810_wrap_pyop2_kernel_prolong       4 0.0 5.3901e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3901203d0_wrap_pyop2_kernel_prolong       4 0.0 7.5900e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d39036c450_wrap_pyop2_kernel_prolong       4 0.0 6.9844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d974ee350_wrap_pyop2_kernel_prolong       4 0.0 7.5322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d96b50cd0_wrap_pyop2_kernel_prolong       4 0.0 6.4582e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2f55333d0_wrap_pyop2_kernel_prolong       4 0.0 7.5310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2f4dd7090_wrap_pyop2_kernel_prolong       4 0.0 5.9595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152823187c50_wrap_pyop2_kernel_prolong       4 0.0 7.5263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528231840d0_wrap_pyop2_kernel_prolong       4 0.0 6.1761e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dba5d2750_wrap_pyop2_kernel_prolong       4 0.0 7.5842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dba5d1e90_wrap_pyop2_kernel_prolong       4 0.0 8.1583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c73de99d0_wrap_pyop2_kernel_prolong       4 0.0 7.5332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c73de9110_wrap_pyop2_kernel_prolong       4 0.0 7.2395e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15370f408bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5445e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15370f40a850_wrap_pyop2_kernel_prolong       4 0.0 6.5241e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519b04c7510_wrap_pyop2_kernel_prolong       4 0.0 7.5351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519b04c4150_wrap_pyop2_kernel_prolong       4 0.0 7.2540e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cae98c93d0_wrap_pyop2_kernel_prolong       4 0.0 7.5695e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cae97f8610_wrap_pyop2_kernel_prolong       4 0.0 8.1783e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d19b3ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5495e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3d1beda10_wrap_pyop2_kernel_prolong       4 0.0 5.3369e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbd527ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.5871e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbd529d210_wrap_pyop2_kernel_prolong       4 0.0 5.5274e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f44903390_wrap_pyop2_kernel_prolong       4 0.0 7.6099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f448f2dd0_wrap_pyop2_kernel_prolong       4 0.0 6.7690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f49d9ac390_wrap_pyop2_kernel_prolong       4 0.0 7.5296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f49d194310_wrap_pyop2_kernel_prolong       4 0.0 5.9958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3db53b190_wrap_pyop2_kernel_prolong       4 0.0 7.5352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a3db539550_wrap_pyop2_kernel_prolong       4 0.0 7.2629e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482a09c75d0_wrap_pyop2_kernel_prolong       4 0.0 7.5345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482a09a8f50_wrap_pyop2_kernel_prolong       4 0.0 6.1780e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3beb755d0_wrap_pyop2_kernel_prolong       4 0.0 7.5293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3bea29090_wrap_pyop2_kernel_prolong       4 0.0 5.7470e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be031e6950_wrap_pyop2_kernel_prolong       4 0.0 7.5322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be03408f50_wrap_pyop2_kernel_prolong       4 0.0 6.1893e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad67c82f90_wrap_pyop2_kernel_prolong       4 0.0 7.5817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad67345a50_wrap_pyop2_kernel_prolong       4 0.0 5.8864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab5efb7350_wrap_pyop2_kernel_prolong       4 0.0 7.5838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab5ee41ed0_wrap_pyop2_kernel_prolong       4 0.0 7.0116e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e65b621d0_wrap_pyop2_kernel_prolong       4 0.0 7.5518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e65b8ab10_wrap_pyop2_kernel_prolong       4 0.0 7.2756e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d88b7c8310_wrap_pyop2_kernel_prolong       4 0.0 7.5354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d88be153d0_wrap_pyop2_kernel_prolong       4 0.0 7.4125e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f8872f710_wrap_pyop2_kernel_prolong       4 0.0 7.5930e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f8850d310_wrap_pyop2_kernel_prolong       4 0.0 7.9371e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccdb1a37d0_wrap_pyop2_kernel_prolong       4 0.0 7.5597e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccdaf291d0_wrap_pyop2_kernel_prolong       4 0.0 5.2800e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477df02b110_wrap_pyop2_kernel_prolong       4 0.0 7.5653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1477df0296d0_wrap_pyop2_kernel_prolong       4 0.0 5.9848e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac140b7750_wrap_pyop2_kernel_prolong       4 0.0 7.5600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac0ff4e410_wrap_pyop2_kernel_prolong       4 0.0 6.8517e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146398353c10_wrap_pyop2_kernel_prolong       4 0.0 7.5255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146398353a10_wrap_pyop2_kernel_prolong       4 0.0 5.6381e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e3dadbf90_wrap_pyop2_kernel_prolong       4 0.0 7.5355e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e3dad9110_wrap_pyop2_kernel_prolong       4 0.0 6.5333e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15303dabe7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5285e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15303e43c590_wrap_pyop2_kernel_prolong       4 0.0 6.7802e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb7ca57bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bb7d29cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7878e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145731dce010_wrap_pyop2_kernel_prolong       4 0.0 7.5331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14573145f610_wrap_pyop2_kernel_prolong       4 0.0 6.7751e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1112b1710_wrap_pyop2_kernel_prolong       4 0.0 7.5532e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e10bd5c550_wrap_pyop2_kernel_prolong       4 0.0 6.7322e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2b12ce5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2b12ce190_wrap_pyop2_kernel_prolong       4 0.0 6.5878e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504afdde010_wrap_pyop2_kernel_prolong       4 0.0 7.5635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504afdfc8d0_wrap_pyop2_kernel_prolong       4 0.0 7.1353e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccdb8088d0_wrap_pyop2_kernel_prolong       4 0.0 7.5434e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccdb9088d0_wrap_pyop2_kernel_prolong       4 0.0 7.2743e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f059371910_wrap_pyop2_kernel_prolong       4 0.0 7.5384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f059352b10_wrap_pyop2_kernel_prolong       4 0.0 6.8881e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d90604acd0_wrap_pyop2_kernel_prolong       4 0.0 7.5257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d905f2df50_wrap_pyop2_kernel_prolong       4 0.0 5.5547e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c807c1290_wrap_pyop2_kernel_prolong       4 0.0 7.5210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c807edf10_wrap_pyop2_kernel_prolong       4 0.0 6.3393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15287571e790_wrap_pyop2_kernel_prolong       4 0.0 7.5635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152875580bd0_wrap_pyop2_kernel_prolong       4 0.0 7.8500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505d191c590_wrap_pyop2_kernel_prolong       4 0.0 7.5235e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505d191f7d0_wrap_pyop2_kernel_prolong       4 0.0 6.8292e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf474fbc10_wrap_pyop2_kernel_prolong       4 0.0 7.5251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf474fb990_wrap_pyop2_kernel_prolong       4 0.0 6.3271e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466100b1750_wrap_pyop2_kernel_prolong       4 0.0 7.5212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14661009f450_wrap_pyop2_kernel_prolong       4 0.0 5.8648e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3e8e07050_wrap_pyop2_kernel_prolong       4 0.0 7.5269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3e9010c10_wrap_pyop2_kernel_prolong       4 0.0 5.3917e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f89470f350_wrap_pyop2_kernel_prolong       4 0.0 7.5403e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f894591750_wrap_pyop2_kernel_prolong       4 0.0 5.5758e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9d6aead90_wrap_pyop2_kernel_prolong       4 0.0 7.5227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9d610d450_wrap_pyop2_kernel_prolong       4 0.0 6.0901e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec1da879d0_wrap_pyop2_kernel_prolong       4 0.0 7.5255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec1da4ad50_wrap_pyop2_kernel_prolong       4 0.0 6.9820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d9cfb1010_wrap_pyop2_kernel_prolong       4 0.0 7.5348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154d9cce7d10_wrap_pyop2_kernel_prolong       4 0.0 6.4764e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bf01c8210_wrap_pyop2_kernel_prolong       4 0.0 7.5354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151beb929150_wrap_pyop2_kernel_prolong       4 0.0 7.3068e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152710c07f10_wrap_pyop2_kernel_prolong       4 0.0 7.5416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152710c2d750_wrap_pyop2_kernel_prolong       4 0.0 8.1704e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3c434c410_wrap_pyop2_kernel_prolong       4 0.0 7.5190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3bf969790_wrap_pyop2_kernel_prolong       4 0.0 5.5393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ae2a3b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ae2a13250_wrap_pyop2_kernel_prolong       4 0.0 6.1384e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15297ad6db50_wrap_pyop2_kernel_prolong       4 0.0 7.5269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15297ad6c910_wrap_pyop2_kernel_prolong       4 0.0 5.4160e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2a3105a90_wrap_pyop2_kernel_prolong       4 0.0 7.5269e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2a305d690_wrap_pyop2_kernel_prolong       4 0.0 6.4229e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151aea1e4f50_wrap_pyop2_kernel_prolong       4 0.0 7.5225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ae9f8e990_wrap_pyop2_kernel_prolong       4 0.0 6.0178e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14901070d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5349e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490105473d0_wrap_pyop2_kernel_prolong       4 0.0 7.8529e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d34c844a90_wrap_pyop2_kernel_prolong       4 0.0 7.5302e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d34c846f90_wrap_pyop2_kernel_prolong       4 0.0 5.9690e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e771ebb810_wrap_pyop2_kernel_prolong       4 0.0 7.5266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7716d37d0_wrap_pyop2_kernel_prolong       4 0.0 6.5896e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526dec76750_wrap_pyop2_kernel_prolong       4 0.0 7.5281e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1526decb6010_wrap_pyop2_kernel_prolong       4 0.0 7.9158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c69f75610_wrap_pyop2_kernel_prolong       4 0.0 7.5351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c6a063390_wrap_pyop2_kernel_prolong       4 0.0 5.9277e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473c2709c50_wrap_pyop2_kernel_prolong       4 0.0 7.5520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473c2708290_wrap_pyop2_kernel_prolong       4 0.0 6.9894e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523c830c690_wrap_pyop2_kernel_prolong       4 0.0 7.5331e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523c8339910_wrap_pyop2_kernel_prolong       4 0.0 7.1885e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab1d919e50_wrap_pyop2_kernel_prolong       4 0.0 7.5328e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab1d8ed090_wrap_pyop2_kernel_prolong       4 0.0 6.3941e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528766c6c90_wrap_pyop2_kernel_prolong       4 0.0 7.5240e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528766927d0_wrap_pyop2_kernel_prolong       4 0.0 5.4834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145af4d0b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145af4d0a950_wrap_pyop2_kernel_prolong       4 0.0 7.0082e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe39b8e110_wrap_pyop2_kernel_prolong       4 0.0 7.5280e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe39b4eed0_wrap_pyop2_kernel_prolong       4 0.0 6.9734e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a648cbbb90_wrap_pyop2_kernel_prolong       4 0.0 7.5370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a648301890_wrap_pyop2_kernel_prolong       4 0.0 6.4847e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcfc405a10_wrap_pyop2_kernel_prolong       4 0.0 7.5208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bcfcb1a450_wrap_pyop2_kernel_prolong       4 0.0 6.5935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5ec140a90_wrap_pyop2_kernel_prolong       4 0.0 7.5322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5ec089d10_wrap_pyop2_kernel_prolong       4 0.0 7.0112e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520ff7bf050_wrap_pyop2_kernel_prolong       4 0.0 7.5233e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152104194dd0_wrap_pyop2_kernel_prolong       4 0.0 5.7359e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15102dab1550_wrap_pyop2_kernel_prolong       4 0.0 7.5242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15102dabfbd0_wrap_pyop2_kernel_prolong       4 0.0 6.5607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705d55af90_wrap_pyop2_kernel_prolong       4 0.0 7.5223e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14705d41b090_wrap_pyop2_kernel_prolong       4 0.0 6.3942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14821b5effd0_wrap_pyop2_kernel_prolong       4 0.0 7.5300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14821b665790_wrap_pyop2_kernel_prolong       4 0.0 6.3765e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5624df3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5276e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5612258d0_wrap_pyop2_kernel_prolong       4 0.0 7.3415e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce274a9850_wrap_pyop2_kernel_prolong       4 0.0 7.5317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce27707790_wrap_pyop2_kernel_prolong       4 0.0 6.0428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1162465d0_wrap_pyop2_kernel_prolong       4 0.0 7.5240e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d11626f290_wrap_pyop2_kernel_prolong       4 0.0 6.3717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a10ed82f50_wrap_pyop2_kernel_prolong       4 0.0 7.5213e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a10edb7710_wrap_pyop2_kernel_prolong       4 0.0 5.4193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151403290e90_wrap_pyop2_kernel_prolong       4 0.0 7.5357e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151403149750_wrap_pyop2_kernel_prolong       4 0.0 7.4556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ac28160d0_wrap_pyop2_kernel_prolong       4 0.0 7.5527e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ac283a550_wrap_pyop2_kernel_prolong       4 0.0 5.9581e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7953a2010_wrap_pyop2_kernel_prolong       4 0.0 7.5282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a792d15e90_wrap_pyop2_kernel_prolong       4 0.0 7.2056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de5d40d310_wrap_pyop2_kernel_prolong       4 0.0 7.5268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de5d40db50_wrap_pyop2_kernel_prolong       4 0.0 6.7839e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a4444cb90_wrap_pyop2_kernel_prolong       4 0.0 7.5326e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a44339650_wrap_pyop2_kernel_prolong       4 0.0 7.1471e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15541ec6e710_wrap_pyop2_kernel_prolong       4 0.0 7.5482e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15541db5a9d0_wrap_pyop2_kernel_prolong       4 0.0 6.6471e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ff0e82110_wrap_pyop2_kernel_prolong       4 0.0 7.5542e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ff0e81a90_wrap_pyop2_kernel_prolong       4 0.0 5.5575e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e16ffe6d90_wrap_pyop2_kernel_prolong       4 0.0 7.5436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e16fe4e290_wrap_pyop2_kernel_prolong       4 0.0 7.9874e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476ef3d2690_wrap_pyop2_kernel_prolong       4 0.0 7.5279e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476ef3d1e50_wrap_pyop2_kernel_prolong       4 0.0 6.3782e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15006b03e250_wrap_pyop2_kernel_prolong       4 0.0 7.5355e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15006b03d710_wrap_pyop2_kernel_prolong       4 0.0 8.1174e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2c211e6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5395e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2c49afbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4351e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14defd6da2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14defd6da350_wrap_pyop2_kernel_prolong       4 0.0 7.6518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         62 1.0 4.1457e-03 4.7 0.00e+00 0.0 3.9e+04 4.0e+00 6.2e+01  0  0  2  0  2   0  0  4  0 10    -0
SFSetGraph            62 1.0 2.7791e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               62 1.0 5.8505e-03 1.9 0.00e+00 0.0 7.7e+04 2.3e+02 6.2e+01  0  0  4  0  2   0  0  8  0 10    -0
SFPack              1981 1.0 4.7145e-01 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1981 1.0 1.6234e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy              849 1.0 1.0679e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              1131 1.0 2.6021e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             1698 1.0 2.6018e+00 2.2 9.78e+08 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 37691
VecAXPBYCZ           566 1.0 1.1190e+00 1.6 1.22e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 109543
VecScatterBegin     1981 1.0 5.2285e-01 3.2 0.00e+00 0.0 7.7e+05 9.3e+04 0.0e+00  0  0 41 34  0   0  0 80 100  0    -0
VecScatterEnd       1981 1.0 9.5837e+00 59.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             1132 1.0 5.1704e+01 1.2 3.47e+10 1.2 5.9e+05 1.2e+05 0.0e+00 14 10 32 34  0  45 48 62 100  0 67056
MatMultAdd           283 1.0 1.4636e+00 1.2 7.34e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 50251
MatMultTranspose     283 1.0 1.3540e+00 2.4 7.34e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 54320
MatSolve            1415 1.0 5.1985e+01 1.2 3.38e+10 1.2 3.7e+05 5.8e+02 3.1e+02 14  9 20  0  8  48 47 38  0 52 64716
MatResidual          283 1.0 1.3989e+01 1.3 8.79e+09 1.2 1.5e+05 1.2e+05 0.0e+00  4  2  8  9  0  12 12 15 25  0 62838
PCSetUpOnBlocks      566 1.0 6.8460e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             1415 1.0 5.2009e+01 1.2 3.38e+10 1.2 3.7e+05 5.8e+02 3.1e+02 14  9 20  0  8  48 47 38  0 52 64686
PCApplyOnBlocks     1132 1.0 4.9842e+01 1.2 3.38e+10 1.2 0.0e+00 0.0e+00 0.0e+00 14  9  0  0  0  46 47  0  0  0 67399
KSPSolve             849 1.0 8.8948e+01 1.1 6.19e+10 1.2 8.2e+05 6.6e+04 5.9e+02 26 17 43 26 15  85 86 85 75 100 69399
MGSmooth Level 0     283 1.0 3.7057e+00 2.9 2.04e+08 14.7 3.7e+05 5.8e+02 5.9e+02  1  0 20  0 15   2  0 38  0 100  1348
MGSmooth Level 1     566 1.0 8.7457e+01 1.1 6.19e+10 1.2 4.4e+05 1.2e+05 0.0e+00 25 17 24 26  0  84 86 46 75  0 70525
MGResid Level 1      283 1.0 1.3990e+01 1.3 8.79e+09 1.2 1.5e+05 1.2e+05 0.0e+00  4  2  8  9  0  12 12 15 25  0 62831
MGInterp Level 1     566 1.0 2.7976e+00 1.4 1.47e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 52580
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   121            121
              Viewer     3              3
           Index Set  1515           1515
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   368            430
              Vector   418            418
              Matrix   132            132
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

           Index Set   124            124
   Star Forest Graph    62              0
              Vector    62             62
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 4.302e-06
Average time for zero size MPI_Send(): 2.31363e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly/vlumping_inexact/h1.profile # (source: code)
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

