****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0504.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:34:02 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.587e+02     1.000   5.587e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.313e+11     1.191   5.970e+11  6.208e+13
Flops/sec:            1.130e+09     1.191   1.069e+09  1.111e+11
MPI Msg Count:        8.261e+04     2.921   6.020e+04  6.261e+06
MPI Msg Len (bytes):  5.042e+09     2.993   5.910e+04  3.700e+11
MPI Reductions:       1.194e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.6621e+02  65.5%  4.8759e+13  78.5%  2.662e+06  42.5%  8.881e+04       63.9%  9.818e+03  82.2%
 1:        MG Apply: 1.9247e+02  34.5%  1.3324e+13  21.5%  3.599e+06  57.5%  3.712e+04       36.1%  2.108e+03  17.6%

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

BuildTwoSided       1163 1.0 2.9469e+01 5.4 0.00e+00 0.0 9.1e+04 4.0e+00 1.2e+03  3  0  1  0 10   5  0  3  0 12    -0
BuildTwoSidedF      1066 1.0 2.9436e+01 4.1 0.00e+00 0.0 1.1e+05 7.3e+05 1.1e+03  3  0  2 22  9   5  0  4 34 11    -0
SFSetGraph           104 1.0 3.6833e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               97 1.0 1.1789e+00 77.3 0.00e+00 0.0 6.9e+04 5.9e+02 9.7e+01  0  0  1  0  1   0  0  3  0  1    -0
SFBcastBegin         862 1.0 2.1002e-01 3.6 0.00e+00 0.0 4.2e+05 4.4e+04 0.0e+00  0  0  7  5  0   0  0 16  8  0    -0
SFBcastEnd           862 1.0 9.1828e+00 75.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        328 1.0 3.7143e-02 8.7 0.00e+00 0.0 1.7e+05 5.4e+04 0.0e+00  0  0  3  2  0   0  0  6  4  0    -0
SFReduceEnd          328 1.0 1.7659e+00 50.6 1.55e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   644
SFFetchOpBegin         6 1.0 2.9306e-05 4.9 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.2449e-04 7.2 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 6.3006e-04 1.2 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.5180e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  1  0  0   0  0  2  0  1    -0
SFSectionSF           51 1.0 2.9417e-03 2.0 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
SFRemoteOff            2 1.0 7.6223e-05 2.4 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4576 1.0 6.8011e-01 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4582 1.0 7.7765e-02 8.6 1.55e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14615
VecDot               212 1.0 4.0443e-01 5.0 9.16e+07 1.2 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  2   0  0  0  0  2 22705
VecMDot             3168 1.0 2.1994e+01 4.4 6.42e+09 1.2 0.0e+00 0.0e+00 3.2e+03  2  1  0  0 27   4  1  0  0 32 29279
VecNorm             4091 1.0 7.7681e+00 3.6 1.77e+09 1.2 0.0e+00 0.0e+00 4.1e+03  1  0  0  0 34   1  0  0  0 42 22812
VecScale            3592 1.0 2.3224e-01 1.3 7.76e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 334977
VecCopy             1711 1.0 9.7463e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               848 1.0 3.3680e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              424 1.0 2.3229e-01 1.3 1.83e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 79065
VecWAXPY             212 1.0 1.9879e-01 1.2 4.58e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23097
VecMAXPY            3592 1.0 8.7952e+00 1.2 7.79e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 88819
VecScatterBegin     3380 1.0 5.8595e-01 2.9 0.00e+00 0.0 1.8e+06 6.0e+04 0.0e+00  0  0 28 29  0   0  0 67 45  0    -0
VecScatterEnd       3380 1.0 1.3616e+01 34.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       424 1.0 1.0567e-01 1.5 1.83e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 173804
VecReduceComm        212 1.0 1.2020e-01 31.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2332 1.0 5.7649e+00 3.5 1.51e+09 1.2 0.0e+00 0.0e+00 2.3e+03  1  0  0  0 20   1  0  0  0 24 26283
MatMult             3380 1.0 7.4674e+01 1.1 5.17e+10 1.2 1.8e+06 6.0e+04 0.0e+00 12  8 28 29  0  19 11 67 45  0 69237
MatSolve            2332 1.0 5.0544e+01 1.3 3.48e+10 1.2 0.0e+00 0.0e+00 0.0e+00  8  6  0  0  0  13  7  0  0  0 68378
MatLUFactorSym         1 1.0 2.3629e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       424 1.0 2.5030e+01 1.2 2.89e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   6  6  0  0  0 112905
MatILUFactorSym        1 1.0 7.6529e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1539 1.0 3.1305e+01 2.6 0.00e+00 0.0 1.1e+05 7.3e+05 1.1e+03  4  0  2 22  9   6  0  4 34 11    -0
MatAssemblyEnd      1539 1.0 1.0082e+01 4.2 1.19e+08 0.0 2.1e+03 7.6e+03 1.7e+01  1  0  0  0  0   1  0  0  0  0   500
MatGetRowIJ            1 1.0 5.8010e-06 43.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.0765e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       424 1.0 3.6930e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 6.3232e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 6.3596e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        424 1.0 1.9565e+00 1.1 3.30e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 168319
MatPtAPSymbolic        1 1.0 9.8111e-02 1.0 0.00e+00 0.0 1.6e+03 1.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       212 1.0 1.2816e+01 1.0 1.32e+10 1.2 1.1e+05 1.8e+05 2.2e+02  2  2  2  5  2   3  3  4  8  2 102697
MatGetLocalMat       212 1.0 8.9872e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        212 1.0 4.2354e-01 1.8 0.00e+00 0.0 1.1e+05 1.8e+05 0.0e+00  0  0  2  5  0   0  0  4  9  0    -0
MatSetPreallCOO       32 1.0 6.0383e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.8908e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              212 1.0 1.4606e+02 1.0 1.22e+11 1.2 1.2e+06 7.1e+04 4.9e+03 26 19 20 24 41  40 25 46 37 50 82871
PCApply             1048 1.0 1.9689e+02 1.1 1.34e+11 1.2 3.6e+06 3.7e+04 2.1e+03 34 21 57 36 18 Multiple stages 67673
PCApplyOnBlocks     2332 1.0 5.0566e+01 1.3 3.48e+10 1.2 0.0e+00 0.0e+00 0.0e+00  8  6  0  0  0  13  7  0  0  0 68349
KSPSetUp             212 1.0 8.7534e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             212 1.0 2.2101e+02 1.0 1.54e+11 1.2 4.1e+06 4.0e+04 4.4e+03 40 25 66 45 37 Multiple stages 69418
KSPGMRESOrthog      3168 1.0 2.8207e+01 2.4 1.28e+10 1.2 0.0e+00 0.0e+00 3.2e+03  4  2  0  0 27   5  3  0  0 32 45660
DMRefine               2 1.0 2.4242e-02 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     9
DMPlexCreateGmsh       1 1.0 1.0419e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.1394e+00 534.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 5.2427e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  0  0  0   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.1027e-02 1.0 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  1  0  2   0  0  3  0  2    -0
DMPlexPartSelf         1 1.0 1.2012e-03 561.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 5.4891e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.3317e-03 1.2 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 5.2895e-04 2.8 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 8.6992e-04 3.0 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 4.6283e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.5889e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.4119e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 4.4977e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  1   0  0  1  0  2    -0
DMPlexDistOvrlp        3 1.0 8.7444e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  1  0  2   0  0  3  0  2    -0
DMPlexDistField        7 1.0 2.1103e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  0  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 3.1149e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.9670e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1055e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.7470e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1615e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.4721e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.3826e-04 2.0 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.5128e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.5164e-04 2.1 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.9659e+02 1.0 6.31e+11 1.2 6.0e+06 6.1e+04 1.1e+04 89 100 97 100 93 Multiple stages 125011
SNESSetUp              1 1.0 5.5119e-05 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     287 1.0 2.1180e+01 1.1 1.39e+11 1.2 3.4e+05 6.0e+04 0.0e+00  4 22  5  6  0   6 28 13  9  0 634337
SNESJacobianEval     212 1.0 1.0293e+02 1.0 2.15e+11 1.2 2.2e+05 3.9e+05 8.5e+02 18 34  4 24  7  28 43  8 37  9 202273
SNESLineSearch       212 1.0 1.3415e+01 1.0 1.06e+11 1.2 3.3e+05 6.0e+04 8.5e+02  2 17  5  5  7   4 21 13  9  9 767749
DualSpaceSetUp         8 1.0 5.6665e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 9.7069e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 5.5658e+02 1.0 6.31e+11 1.2 6.3e+06 5.9e+04 1.2e+04 100 100 100 100 100 Multiple stages 111545
firedrake.__init__       1 1.0 1.0609e+01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 6.2388e+00 56.5 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  1  0  3  0  4   1  0  6  0  5    -0
firedrake.mesh._from_gmsh       1 1.0 6.1401e+00 533.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.2409e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.4120e-06 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.3917e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.5964e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      15 1.0 2.7233e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      19 1.0 1.7717e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      19 1.0 2.5729e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      18 1.0 2.3501e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      18 1.0 2.3397e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      36 1.0 8.6346e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.1450e-03 1.2 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.2389e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.2233e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 1.5480e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.5042e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.1074e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9892e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       5 1.0 1.2568e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.4396e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     646 1.0 8.9277e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2303 1.0 1.0729e+02 1.2 3.54e+11 1.2 3.1e+05 5.9e+04 3.2e+01 18 55  5  5  0  27 70 12  8  0 319254
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.0143e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4606 1.0 2.4335e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      17 1.0 1.0476e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      17 0.0 1.5303e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      17 0.0 8.4116e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      17 1.0 1.3697e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      17 1.0 1.3697e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      17 1.0 8.9471e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      17 1.0 8.7493e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2303 1.0 6.3188e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2303 1.0 5.3390e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.2239e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 7.8302e+00 1.0 7.29e+06 1.2 8.9e+03 6.7e+03 1.3e+01  1  0  0  0  0   2  0  0  0  0    93
firedrake.interpolation.interpolate      13 1.0 4.7671e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      13 1.0 5.7357e+00 1.0 4.51e+07 1.2 1.4e+04 2.1e+04 3.7e+01  1  0  0  0  0   2  0  1  0  0   788
firedrake.formmanipulation.split_form      14 1.0 4.8986e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.4470e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      13 1.0 1.5525e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0218e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     595 1.0 3.0803e+00 29.5 0.00e+00 0.0 3.2e+05 5.8e+04 4.0e+00  0  0  5  5  0   0  0 12  8  0    -0
Parloop_Cells_wrap_expression_kernel      26 1.0 5.4016e+00 1.0 4.51e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   837
firedrake.halo.Halo.global_to_local_end     595 1.0 7.1650e+00 86.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.4675e+00 70.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454ea30f2d0_wrap_pyop2_kernel_prolong       4 0.0 7.7133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454ea6ce990_wrap_pyop2_kernel_prolong       4 0.0 3.1056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8857e+00 1.0 3.65e+07 1.2 8.1e+03 3.0e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0   942
firedrake.function.Function.assign     314 1.0 9.4866e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 8.7385e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.0359e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.4453e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.1644e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4263e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9489e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1760e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9563e+00 1.0 0.00e+00 0.0 3.2e+03 2.4e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.0590e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1354e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1163e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1163e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 1.7663e+00 1.2 0.00e+00 0.0 2.7e+03 1.4e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 2.9355e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.9674e+02 1.0 6.31e+11 1.2 6.0e+06 6.1e+04 1.1e+04 89 100 97 100 94 Multiple stages 124973
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.8637e-01 960.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.9630e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.8632e-01 1158.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.8629e-01 1298.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     574 1.0 4.7742e+00 1.3 3.52e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 740158
Parloop_Cells_wrap_form0_exterior_facet_top_integral     574 1.0 9.7722e-01 1.0 9.16e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   940
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     574 1.0 1.3617e+00 1.0 3.39e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4397
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     574 1.0 3.5022e+00 1.1 3.37e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  7  0  0  0 965822
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     574 1.0 7.1548e+00 1.2 7.00e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   2 13  0  0  0 910064
firedrake.halo.Halo.local_to_global_begin     287 1.0 4.3161e-02 4.2 0.00e+00 0.0 1.5e+05 6.0e+04 0.0e+00  0  0  2  2  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     287 1.0 1.7676e+00 48.1 1.55e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   643
Parloop_Cells_wrap_form00_cell_integral     424 1.0 1.7743e+01 1.5 4.86e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   4 10  0  0  0 274519
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     424 1.0 1.5402e+00 1.4 2.55e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2924
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     424 1.0 2.0523e+01 1.3 6.41e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 13  0  0  0 312943
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     424 1.0 4.4561e+01 1.4 1.02e+11 1.3 0.0e+00 0.0e+00 0.0e+00  7 15  0  0  0  10 20  0  0  0 213585
firedrake.dmhooks.get_function_space       1 1.0 1.1851e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1737e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      212 1.0 8.2262e+00 1.0 7.66e+07 8.4 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   257
MGSetup Level 1      212 1.0 1.2406e+02 1.0 1.09e+11 1.2 1.1e+06 6.0e+04 4.5e+03 22 17 18 18 37  34 22 42 28 45 86934
firedrake.constant.Constant.assign      75 1.0 2.8790e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd96be6790_wrap_pyop2_kernel_prolong       4 0.0 7.7707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd96174090_wrap_pyop2_kernel_prolong       4 0.0 2.8277e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495da63dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7262e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495da6cb910_wrap_pyop2_kernel_prolong       4 0.0 3.5588e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcecf9e910_wrap_pyop2_kernel_prolong       4 0.0 7.7582e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fcecea2950_wrap_pyop2_kernel_prolong       4 0.0 3.3520e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2f70c1110_wrap_pyop2_kernel_prolong       4 0.0 7.7571e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2f6f7da10_wrap_pyop2_kernel_prolong       4 0.0 3.5668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daadcb9e90_wrap_pyop2_kernel_prolong       4 0.0 7.7649e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14daada80450_wrap_pyop2_kernel_prolong       4 0.0 3.9607e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14599a612890_wrap_pyop2_kernel_prolong       4 0.0 7.7530e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14599b060a90_wrap_pyop2_kernel_prolong       4 0.0 3.3058e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a7cffa990_wrap_pyop2_kernel_prolong       4 0.0 7.7441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a7cffa110_wrap_pyop2_kernel_prolong       4 0.0 2.7527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5c7968bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7247e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c5c777c450_wrap_pyop2_kernel_prolong       4 0.0 3.6746e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146120eb5a90_wrap_pyop2_kernel_prolong       4 0.0 7.7354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146120eb55d0_wrap_pyop2_kernel_prolong       4 0.0 2.7450e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4b75f2cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6520e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4b74afe10_wrap_pyop2_kernel_prolong       4 0.0 3.9428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a8d964450_wrap_pyop2_kernel_prolong       4 0.0 7.7364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a8d8941d0_wrap_pyop2_kernel_prolong       4 0.0 3.4517e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ffe237610_wrap_pyop2_kernel_prolong       4 0.0 7.6928e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ffd70fc10_wrap_pyop2_kernel_prolong       4 0.0 3.5935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b99d3a0590_wrap_pyop2_kernel_prolong       4 0.0 7.6423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b99d16de90_wrap_pyop2_kernel_prolong       4 0.0 2.8886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461173e3e10_wrap_pyop2_kernel_prolong       4 0.0 7.6514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1461175046d0_wrap_pyop2_kernel_prolong       4 0.0 3.6697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531a080c2d0_wrap_pyop2_kernel_prolong       4 0.0 7.7286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15319be6d550_wrap_pyop2_kernel_prolong       4 0.0 3.5746e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154972eb5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154972eb76d0_wrap_pyop2_kernel_prolong       4 0.0 2.8307e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482531c3a50_wrap_pyop2_kernel_prolong       4 0.0 7.7229e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148253678810_wrap_pyop2_kernel_prolong       4 0.0 3.6824e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14980dbab850_wrap_pyop2_kernel_prolong       4 0.0 7.6463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14980da2f9d0_wrap_pyop2_kernel_prolong       4 0.0 3.3815e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e6fa3cf50_wrap_pyop2_kernel_prolong       4 0.0 7.6708e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e740e4050_wrap_pyop2_kernel_prolong       4 0.0 3.2409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14567462a690_wrap_pyop2_kernel_prolong       4 0.0 7.6641e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145674629450_wrap_pyop2_kernel_prolong       4 0.0 3.2485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ad1b2e650_wrap_pyop2_kernel_prolong       4 0.0 7.7110e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148ad12a1390_wrap_pyop2_kernel_prolong       4 0.0 4.2505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f34e07bd50_wrap_pyop2_kernel_prolong       4 0.0 7.6598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f34d9a5810_wrap_pyop2_kernel_prolong       4 0.0 3.8133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e3815f2d0_wrap_pyop2_kernel_prolong       4 0.0 7.6958e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e33b51a90_wrap_pyop2_kernel_prolong       4 0.0 3.3947e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491dbf89f90_wrap_pyop2_kernel_prolong       4 0.0 7.6609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491dbf8a0d0_wrap_pyop2_kernel_prolong       4 0.0 3.7917e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148489b23010_wrap_pyop2_kernel_prolong       4 0.0 7.6908e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148489aed1d0_wrap_pyop2_kernel_prolong       4 0.0 4.2634e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d171d9150_wrap_pyop2_kernel_prolong       4 0.0 7.6419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d170b4e10_wrap_pyop2_kernel_prolong       4 0.0 2.7624e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf75cfc350_wrap_pyop2_kernel_prolong       4 0.0 7.7295e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf75ce3310_wrap_pyop2_kernel_prolong       4 0.0 2.9195e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c77f5f610_wrap_pyop2_kernel_prolong       4 0.0 7.6484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c77f86110_wrap_pyop2_kernel_prolong       4 0.0 3.5792e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bd236eb10_wrap_pyop2_kernel_prolong       4 0.0 7.7325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151bd236e150_wrap_pyop2_kernel_prolong       4 0.0 3.1339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e077bd4a10_wrap_pyop2_kernel_prolong       4 0.0 7.6494e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0779af490_wrap_pyop2_kernel_prolong       4 0.0 3.7877e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507bf7e7650_wrap_pyop2_kernel_prolong       4 0.0 7.7047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507bf7e4b10_wrap_pyop2_kernel_prolong       4 0.0 3.2411e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc2f1a9450_wrap_pyop2_kernel_prolong       4 0.0 7.6526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc2f20f150_wrap_pyop2_kernel_prolong       4 0.0 3.0011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510dee41d50_wrap_pyop2_kernel_prolong       4 0.0 7.6884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510dee41190_wrap_pyop2_kernel_prolong       4 0.0 3.2142e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da09ab7290_wrap_pyop2_kernel_prolong       4 0.0 7.6453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da0a92bb50_wrap_pyop2_kernel_prolong       4 0.0 3.1081e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf4193d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf40ee2f50_wrap_pyop2_kernel_prolong       4 0.0 3.6582e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffabb34150_wrap_pyop2_kernel_prolong       4 0.0 7.6470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffabb2a5d0_wrap_pyop2_kernel_prolong       4 0.0 3.8112e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15284d24fe50_wrap_pyop2_kernel_prolong       4 0.0 7.6476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15284d0d9910_wrap_pyop2_kernel_prolong       4 0.0 3.9157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c2835fc90_wrap_pyop2_kernel_prolong       4 0.0 7.6517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c2820f110_wrap_pyop2_kernel_prolong       4 0.0 4.1634e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2ba170710_wrap_pyop2_kernel_prolong       4 0.0 7.6533e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2ba173450_wrap_pyop2_kernel_prolong       4 0.0 2.7656e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fb4c0d390_wrap_pyop2_kernel_prolong       4 0.0 7.6420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151fb4d820d0_wrap_pyop2_kernel_prolong       4 0.0 3.1111e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b70851d0_wrap_pyop2_kernel_prolong       4 0.0 7.6541e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538b70dced0_wrap_pyop2_kernel_prolong       4 0.0 3.5909e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15169ae1bf50_wrap_pyop2_kernel_prolong       4 0.0 7.6462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15169ae197d0_wrap_pyop2_kernel_prolong       4 0.0 2.9524e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa2babae90_wrap_pyop2_kernel_prolong       4 0.0 7.6435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa2b9b45d0_wrap_pyop2_kernel_prolong       4 0.0 3.4383e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de472b5f10_wrap_pyop2_kernel_prolong       4 0.0 7.6939e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de468a4290_wrap_pyop2_kernel_prolong       4 0.0 3.5797e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151266b1d290_wrap_pyop2_kernel_prolong       4 0.0 7.6990e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151266959250_wrap_pyop2_kernel_prolong       4 0.0 3.8084e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e59194fd10_wrap_pyop2_kernel_prolong       4 0.0 7.6616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5916e4810_wrap_pyop2_kernel_prolong       4 0.0 3.5755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8aa6db750_wrap_pyop2_kernel_prolong       4 0.0 7.6453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8aa6d9950_wrap_pyop2_kernel_prolong       4 0.0 3.4935e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147de1b9f0d0_wrap_pyop2_kernel_prolong       4 0.0 7.7290e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147de0f91690_wrap_pyop2_kernel_prolong       4 0.0 3.4566e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf16aa5e50_wrap_pyop2_kernel_prolong       4 0.0 7.6466e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf169c44d0_wrap_pyop2_kernel_prolong       4 0.0 3.7141e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cee7af4f10_wrap_pyop2_kernel_prolong       4 0.0 7.7036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cee7109710_wrap_pyop2_kernel_prolong       4 0.0 3.7648e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9660e9150_wrap_pyop2_kernel_prolong       4 0.0 7.6706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9660f6ed0_wrap_pyop2_kernel_prolong       4 0.0 3.6107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2aaddc890_wrap_pyop2_kernel_prolong       4 0.0 7.6432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2aa4293d0_wrap_pyop2_kernel_prolong       4 0.0 2.8309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c3e435e10_wrap_pyop2_kernel_prolong       4 0.0 7.7734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c3e4357d0_wrap_pyop2_kernel_prolong       4 0.0 3.2026e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da681ac390_wrap_pyop2_kernel_prolong       4 0.0 7.6507e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da681dd590_wrap_pyop2_kernel_prolong       4 0.0 4.0149e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed4563edd0_wrap_pyop2_kernel_prolong       4 0.0 7.7089e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed4562a7d0_wrap_pyop2_kernel_prolong       4 0.0 3.4542e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eae99f7810_wrap_pyop2_kernel_prolong       4 0.0 7.6594e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eae99d5450_wrap_pyop2_kernel_prolong       4 0.0 3.2428e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1d574fcd0_wrap_pyop2_kernel_prolong       4 0.0 7.6620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1d574e350_wrap_pyop2_kernel_prolong       4 0.0 3.2113e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153df8e58050_wrap_pyop2_kernel_prolong       4 0.0 7.7609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153df8e820d0_wrap_pyop2_kernel_prolong       4 0.0 2.7453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153938b40290_wrap_pyop2_kernel_prolong       4 0.0 7.6784e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153938d8d810_wrap_pyop2_kernel_prolong       4 0.0 2.8499e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15510f059a10_wrap_pyop2_kernel_prolong       4 0.0 7.7687e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15510f05b510_wrap_pyop2_kernel_prolong       4 0.0 3.1016e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3ddb33d10_wrap_pyop2_kernel_prolong       4 0.0 7.7463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3dee49ad0_wrap_pyop2_kernel_prolong       4 0.0 3.6758e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d214566250_wrap_pyop2_kernel_prolong       4 0.0 7.7488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2143ded90_wrap_pyop2_kernel_prolong       4 0.0 3.2938e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db3026ee10_wrap_pyop2_kernel_prolong       4 0.0 7.6488e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db2bfcaf50_wrap_pyop2_kernel_prolong       4 0.0 3.6984e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db74315710_wrap_pyop2_kernel_prolong       4 0.0 7.7450e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db7449b990_wrap_pyop2_kernel_prolong       4 0.0 4.1595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f110ad3750_wrap_pyop2_kernel_prolong       4 0.0 7.7199e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f110abd010_wrap_pyop2_kernel_prolong       4 0.0 2.8488e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9f11359d0_wrap_pyop2_kernel_prolong       4 0.0 7.6698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9f111bad0_wrap_pyop2_kernel_prolong       4 0.0 3.3864e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f99c20590_wrap_pyop2_kernel_prolong       4 0.0 7.6440e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f9997dad0_wrap_pyop2_kernel_prolong       4 0.0 2.7433e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e21935f10_wrap_pyop2_kernel_prolong       4 0.0 7.7419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e21935690_wrap_pyop2_kernel_prolong       4 0.0 3.2534e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493d23da650_wrap_pyop2_kernel_prolong       4 0.0 7.7085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493d1173d10_wrap_pyop2_kernel_prolong       4 0.0 3.0292e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552ced0ecd0_wrap_pyop2_kernel_prolong       4 0.0 7.7507e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552ce407a50_wrap_pyop2_kernel_prolong       4 0.0 3.9799e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148eb24c6e50_wrap_pyop2_kernel_prolong       4 0.0 7.6866e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148eb24b1150_wrap_pyop2_kernel_prolong       4 0.0 3.0254e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee1ef31c10_wrap_pyop2_kernel_prolong       4 0.0 7.7672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee1ef317d0_wrap_pyop2_kernel_prolong       4 0.0 3.3580e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146809cc7750_wrap_pyop2_kernel_prolong       4 0.0 7.7073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146809cd3250_wrap_pyop2_kernel_prolong       4 0.0 4.0182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b94d7de5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6438e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b94cff8390_wrap_pyop2_kernel_prolong       4 0.0 3.0136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fb6274e90_wrap_pyop2_kernel_prolong       4 0.0 7.6829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fb6277510_wrap_pyop2_kernel_prolong       4 0.0 3.5569e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b28f2fa10_wrap_pyop2_kernel_prolong       4 0.0 7.6502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b28f73d50_wrap_pyop2_kernel_prolong       4 0.0 3.6567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c11be6590_wrap_pyop2_kernel_prolong       4 0.0 7.7578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c11be5bd0_wrap_pyop2_kernel_prolong       4 0.0 3.2466e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b98817e50_wrap_pyop2_kernel_prolong       4 0.0 7.6648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b9886bc90_wrap_pyop2_kernel_prolong       4 0.0 2.5810e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458c0f4e010_wrap_pyop2_kernel_prolong       4 0.0 7.7067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458c0f4d650_wrap_pyop2_kernel_prolong       4 0.0 3.5857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15289277abd0_wrap_pyop2_kernel_prolong       4 0.0 7.6503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528927d5850_wrap_pyop2_kernel_prolong       4 0.0 3.5662e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553cd9e7850_wrap_pyop2_kernel_prolong       4 0.0 7.7274e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553cd79f750_wrap_pyop2_kernel_prolong       4 0.0 3.3069e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4550ed7d0_wrap_pyop2_kernel_prolong       4 0.0 7.6802e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4550ed390_wrap_pyop2_kernel_prolong       4 0.0 3.3429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0dc1f5690_wrap_pyop2_kernel_prolong       4 0.0 7.6680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0dc1f6010_wrap_pyop2_kernel_prolong       4 0.0 3.5640e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14946b0ebbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14946afad750_wrap_pyop2_kernel_prolong       4 0.0 2.9121e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebf1003190_wrap_pyop2_kernel_prolong       4 0.0 7.6842e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebf11d50d0_wrap_pyop2_kernel_prolong       4 0.0 3.3457e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc1896cc50_wrap_pyop2_kernel_prolong       4 0.0 7.6484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc18a4ced0_wrap_pyop2_kernel_prolong       4 0.0 3.2136e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff2b00a710_wrap_pyop2_kernel_prolong       4 0.0 7.7729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff2a61f850_wrap_pyop2_kernel_prolong       4 0.0 3.2423e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3e0c775d0_wrap_pyop2_kernel_prolong       4 0.0 7.6759e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3e0ccafd0_wrap_pyop2_kernel_prolong       4 0.0 3.6915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f215f30550_wrap_pyop2_kernel_prolong       4 0.0 7.6829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f215eaba90_wrap_pyop2_kernel_prolong       4 0.0 3.1916e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550cb8c3910_wrap_pyop2_kernel_prolong       4 0.0 7.7647e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1550cb8b3b50_wrap_pyop2_kernel_prolong       4 0.0 3.2301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149eb555fd90_wrap_pyop2_kernel_prolong       4 0.0 7.7128e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149eb53de950_wrap_pyop2_kernel_prolong       4 0.0 2.7518e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519b3ea9690_wrap_pyop2_kernel_prolong       4 0.0 7.7155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519b3ea8710_wrap_pyop2_kernel_prolong       4 0.0 3.7925e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148746267550_wrap_pyop2_kernel_prolong       4 0.0 7.7602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487460db290_wrap_pyop2_kernel_prolong       4 0.0 3.1300e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482bacaff10_wrap_pyop2_kernel_prolong       4 0.0 7.7380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482babcc390_wrap_pyop2_kernel_prolong       4 0.0 3.6924e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bcccf5790_wrap_pyop2_kernel_prolong       4 0.0 7.7404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bccc61890_wrap_pyop2_kernel_prolong       4 0.0 3.4458e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14605b8142d0_wrap_pyop2_kernel_prolong       4 0.0 7.7643e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14605b8336d0_wrap_pyop2_kernel_prolong       4 0.0 3.6483e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c3da77950_wrap_pyop2_kernel_prolong       4 0.0 7.6727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c3da75d50_wrap_pyop2_kernel_prolong       4 0.0 3.3330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14556cc80150_wrap_pyop2_kernel_prolong       4 0.0 7.7096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14556cc839d0_wrap_pyop2_kernel_prolong       4 0.0 2.8151e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b3137db10_wrap_pyop2_kernel_prolong       4 0.0 7.7796e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b3137d050_wrap_pyop2_kernel_prolong       4 0.0 4.0460e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532730268d0_wrap_pyop2_kernel_prolong       4 0.0 7.6755e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153272669750_wrap_pyop2_kernel_prolong       4 0.0 3.2299e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bae4741710_wrap_pyop2_kernel_prolong       4 0.0 7.7010e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bae47ef550_wrap_pyop2_kernel_prolong       4 0.0 4.0843e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14573aea9dd0_wrap_pyop2_kernel_prolong       4 0.0 7.7545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14573a463e90_wrap_pyop2_kernel_prolong       4 0.0 3.7570e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145de7e71050_wrap_pyop2_kernel_prolong       4 0.0 7.7414e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145de71db250_wrap_pyop2_kernel_prolong       4 0.0 3.8822e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        212 1.0 1.9758e-02 5.6 0.00e+00 0.0 1.4e+05 4.0e+00 2.1e+02  0  0  2  0  2   0  0  4  0 10    -0
SFSetGraph           212 1.0 9.5237e-03 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              212 1.0 2.6200e-02 2.4 0.00e+00 0.0 2.8e+05 2.2e+02 2.1e+02  0  0  5  0  2   0  0  8  0 10    -0
SFPack              7336 1.0 7.6068e-01 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            7336 1.0 5.4864e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             3144 1.0 1.4368e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              4191 1.0 4.4524e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             6288 1.0 3.8358e+00 2.1 1.81e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 47338
VecAXPBYCZ          2096 1.0 1.8393e+00 1.8 2.26e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 123404
VecScatterBegin     7336 1.0 9.1401e-01 3.1 0.00e+00 0.0 2.9e+06 4.6e+04 0.0e+00  0  0 46 36  0   0  0 80 100  0    -0
VecScatterEnd       7336 1.0 2.3588e+01 35.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
MatMult             4192 1.0 1.0299e+02 1.3 6.41e+10 1.2 2.2e+06 6.0e+04 0.0e+00 16 10 35 36  0  46 48 61 99  0 62259
MatMultAdd          1048 1.0 2.8752e+00 1.3 1.36e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 47364
MatMultTranspose    1048 1.0 2.2926e+00 1.8 1.36e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 59400
MatSolve            5240 1.0 1.0613e+02 1.4 6.27e+10 1.2 1.4e+06 5.6e+02 1.1e+03 17 10 22  0  9  49 47 39  1 50 58712
MatResidual         1048 1.0 2.8202e+01 1.4 1.63e+10 1.2 5.5e+05 6.0e+04 0.0e+00  4  3  9  9  0  12 12 15 25  0 57647
PCSetUpOnBlocks     2096 1.0 1.8966e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             5240 1.0 1.0621e+02 1.4 6.27e+10 1.2 1.4e+06 5.6e+02 1.1e+03 17 10 22  0  9  49 47 39  1 50 58670
PCApplyOnBlocks     4192 1.0 1.0185e+02 1.5 6.25e+10 1.2 0.0e+00 0.0e+00 0.0e+00 16 10  0  0  0  46 47  0  0  0 60997
KSPSolve            3144 1.0 1.7193e+02 1.1 1.15e+11 1.2 3.0e+06 3.3e+04 2.1e+03 29 18 49 27 18  86 86 85 75 100 66459
MGSmooth Level 0    1048 1.0 8.8831e+00 2.2 7.49e+08 10.8 1.4e+06 5.6e+02 2.1e+03  1  0 22  0 18   3  0 39  1 100  2078
MGSmooth Level 1    2096 1.0 1.6760e+02 1.1 1.14e+11 1.2 1.6e+06 6.0e+04 0.0e+00 28 18 26 27  0  83 86 46 75  0 68067
MGResid Level 1     1048 1.0 2.8206e+01 1.4 1.63e+10 1.2 5.5e+05 6.0e+04 0.0e+00  4  3  9  9  0  12 12 15 25  0 57639
MGInterp Level 1    2096 1.0 5.0141e+00 1.4 2.72e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 54320
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   229            229
              Viewer     3              3
           Index Set  1515           1515
   IS L to G Mapping   207            207
             Section   472            472
   Star Forest Graph   368            580
              Vector  1018           1018
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

           Index Set   424            424
   Star Forest Graph   212              0
              Vector   212            212
========================================================================================================================
Average time to get PetscTime(): 2.69e-08
Average time for MPI_Barrier(): 4.148e-06
Average time for zero size MPI_Send(): 2.22668e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_inexact/smoke.profile # (source: code)
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

