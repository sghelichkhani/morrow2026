****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0217.gadi.nci.org.au with 208 processes, by sg8812 on Fri Aug 21 23:33:32 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.530e+02     1.000   7.530e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.069e+12     1.136   1.022e+12  2.127e+14
Flops/sec:            1.420e+09     1.136   1.358e+09  2.824e+11
MPI Msg Count:        4.651e+04     3.970   3.046e+04  6.336e+06
MPI Msg Len (bytes):  8.205e+09     3.600   1.583e+05  1.003e+12
MPI Reductions:       1.105e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.5299e+02 100.0%  2.1266e+14 100.0%  6.336e+06 100.0%  1.583e+05      100.0%  1.103e+04  99.8%

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

BuildTwoSided        997 1.0 5.5943e+01 3.5 0.00e+00 0.0 1.9e+05 4.0e+00 1.0e+03  5  0  3  0  9   5  0  3  0  9    -0
BuildTwoSidedF       902 1.0 5.4015e+01 2.7 0.00e+00 0.0 2.5e+05 1.4e+06 9.0e+02  5  0  4 34  8   5  0  4 34  8    -0
SFSetGraph           102 1.0 8.3105e-03 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               95 1.0 2.6687e+00 95.0 0.00e+00 0.0 1.4e+05 1.1e+03 9.5e+01  0  0  2  0  1   0  0  2  0  1    -0
SFBcastBegin         886 1.0 4.4653e-01 4.3 0.00e+00 0.0 9.1e+05 8.5e+04 0.0e+00  0  0 14  8  0   0  0 14  8  0    -0
SFBcastEnd           886 1.0 1.5835e+01 79.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        341 1.0 8.9809e-02 5.3 0.00e+00 0.0 3.6e+05 1.0e+05 0.0e+00  0  0  6  4  0   0  0  6  4  0    -0
SFReduceEnd          341 1.0 3.2830e+00 55.8 3.89e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1446
SFFetchOpBegin         6 1.0 2.9448e-05 4.1 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 1.0358e-03 21.1 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.9578e-03 3.4 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 7.5150e-03 1.4 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  2  0  1   0  0  2  0  1    -0
SFSectionSF           51 1.0 5.2741e-03 3.6 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  1  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 9.3766e-05 2.7 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              5511 1.0 2.3237e+00 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            5517 1.0 2.0591e-01 5.5 3.89e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23057
VecDot               225 1.0 9.3854e-01 7.2 1.81e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2 39299
VecMDot             4053 1.0 6.7710e+01 2.1 3.33e+10 1.1 0.0e+00 0.0e+00 4.1e+03  6  3  0  0 37   6  3  0  0 37 99863
VecNorm             4803 1.0 2.0638e+01 2.7 3.87e+09 1.1 0.0e+00 0.0e+00 4.8e+03  2  0  0  0 43   2  0  0  0 44 38150
VecScale            4278 1.0 1.2855e+00 1.2 1.72e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 272772
VecCopy             2027 1.0 2.3472e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               450 1.0 3.2589e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              225 1.0 3.4134e-01 2.6 1.81e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 108057
VecWAXPY             225 1.0 4.3834e-01 1.1 9.07e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 42072
VecMAXPY            4278 1.0 4.5272e+01 1.1 3.65e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  3  0  0  0   6  3  0  0  0 164035
VecScatterBegin     4278 1.0 2.0776e+00 3.4 0.00e+00 0.0 4.7e+06 1.2e+05 0.0e+00  0  0 74 54  0   0  0 74 54  0    -0
VecScatterEnd       4278 1.0 4.6845e+01 85.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       450 1.0 2.5228e-01 2.6 3.63e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 292410
VecReduceComm        225 1.0 2.6346e+00 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        4278 1.0 1.7434e+01 2.4 5.17e+09 1.1 0.0e+00 0.0e+00 4.3e+03  2  0  0  0 39   2  0  0  0 39 60339
MatMult             4278 1.0 1.9487e+02 1.3 1.22e+11 1.1 4.7e+06 1.2e+05 0.0e+00 22 12 74 54  0  22 12 74 54  0 127338
MatSolve            4278 1.0 1.9067e+02 1.3 1.19e+11 1.1 0.0e+00 0.0e+00 0.0e+00 22 11  0  0  0  22 11  0  0  0 125861
MatLUFactorNum       225 1.0 3.6083e+01 1.3 5.75e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   4  5  0  0  0 314200
MatILUFactorSym        1 1.0 1.5680e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     946 1.0 5.7910e+01 2.1 0.00e+00 0.0 2.5e+05 1.4e+06 9.0e+02  5  0  4 34  8   5  0  4 34  8    -0
MatAssemblyEnd       946 1.0 1.3080e+01 5.2 2.50e+08 0.0 2.2e+03 2.9e+04 6.0e+00  1  0  0  0  0   1  0  0  0  0  1637
MatGetRowIJ            1 1.0 5.2280e-06 48.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 4.2288e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       225 1.0 7.7185e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatSetPreallCOO       32 1.0 6.9628e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.0756e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              225 1.0 4.2208e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks      225 1.0 3.6230e+01 1.3 5.75e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   4  5  0  0  0 312930
PCApply             4278 1.0 1.9073e+02 1.3 1.19e+11 1.1 0.0e+00 0.0e+00 0.0e+00 22 11  0  0  0  22 11  0  0  0 125818
PCApplyOnBlocks     4278 1.0 1.9072e+02 1.3 1.19e+11 1.1 0.0e+00 0.0e+00 0.0e+00 22 11  0  0  0  22 11  0  0  0 125830
KSPSetUp             225 1.0 7.8820e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 4.2622e+02 1.0 3.10e+11 1.1 4.4e+06 1.2e+05 8.3e+03 56 30 70 51 75  56 30 70 51 76 147303
KSPGMRESOrthog      4053 1.0 1.0534e+02 1.5 6.65e+10 1.1 0.0e+00 0.0e+00 4.1e+03 11  6  0  0 37  11  6  0  0 37 128380
DMRefine               2 1.0 2.6295e-02 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1    17
DMPlexCreateGmsh       1 1.0 1.5372e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.3068e+00 318.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 7.9031e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  1  0  0   0  0  1  0  0    -0
Mesh Migration         4 1.0 1.8906e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  2  0  2   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 2.0743e-03 762.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 2.3265e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.7544e-03 1.2 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.1708e-03 4.4 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.8882e-03 2.8 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 6.9442e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.3965e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 2.3937e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 6.8234e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 2.6188e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  3  0  2   0  0  3  0  2    -0
DMPlexDistField        7 1.0 4.5511e-03 1.3 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  1  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 4.5435e-03 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.2474e-04 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.0979e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.3706e-03 1.5 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1969e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.0233e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 4.0127e-04 2.0 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.0929e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 1.0046e-03 2.2 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 6.8751e+02 1.0 1.07e+12 1.1 5.9e+06 1.7e+05 1.0e+04 91 100 93 100 92  91 100 93 100 93 309288
SNESSetUp              1 1.0 5.6512e-05 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.2109e+01 1.2 2.71e+11 1.2 7.4e+05 1.2e+05 0.0e+00  4 25 12  9  0   4 25 12  9  0 1657793
SNESJacobianEval     225 1.0 1.8775e+02 1.0 4.26e+11 1.2 4.9e+05 7.6e+05 9.0e+02 25 39  8 37  8  25 39  8 37  8 446169
SNESLineSearch       225 1.0 2.9741e+01 1.1 2.11e+11 1.2 7.4e+05 1.2e+05 9.0e+02  4 19 12  9  8   4 19 12  9  8 1393015
DualSpaceSetUp         8 1.0 5.3230e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.0255e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 7.5089e+02 1.0 1.07e+12 1.1 6.3e+06 1.6e+05 1.1e+04 100 100 100 100 100 100 100 100 100 100 283205
firedrake.__init__       1 1.0 1.0555e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             3 1.0 5.4482e+00 34.8 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  0  0  5  0  4   0  0  5  0  4    -0
firedrake.mesh._from_gmsh       1 1.0 5.3076e+00 317.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.5782e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.7550e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.8674e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0890e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      13 1.0 2.6113e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      17 1.0 1.1465e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      17 1.0 2.4890e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      16 1.0 2.2802e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      16 1.0 2.2703e-02 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      32 1.0 1.0173e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 4.7228e-03 1.2 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.4716e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3217e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.9948e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.7309e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.2658e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.5607e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0913e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.6654e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     642 1.0 9.6974e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2419 1.0 1.8041e+02 1.2 6.98e+11 1.2 6.8e+05 1.1e+05 3.2e+01 22 64 11  8  0  22 64 11  8  0 759341
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.2557e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4838 1.0 2.3838e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0518e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.5380e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.3134e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3103e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3102e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.5980e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.4577e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2419 1.0 7.9932e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2419 1.0 6.3766e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.6192e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.5040e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  1  0  0  0  0   1  0  0  0  0   325
firedrake.interpolation.interpolate      12 1.0 4.5594e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      12 1.0 4.9297e+00 1.0 8.17e+07 1.1 2.6e+04 4.4e+04 1.5e+01  1  0  0  0  0   1  0  0  0  0  3371
firedrake.formmanipulation.split_form      14 1.0 4.9816e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.6658e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      12 1.0 1.4491e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 9.7206e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     621 1.0 4.2588e+00 14.6 0.00e+00 0.0 6.9e+05 1.1e+05 4.0e+00  0  0 11  8  0   0  0 11  8  0    -0
Parloop_Cells_wrap_expression_kernel      24 1.0 4.6239e+00 1.0 8.17e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  3594
firedrake.halo.Halo.global_to_local_end     621 1.0 1.4500e+01 146.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.6507e+00 74.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea890bb550_wrap_pyop2_kernel_prolong       4 0.0 7.5018e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea89fb1790_wrap_pyop2_kernel_prolong       4 0.0 5.0023e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9858e+00 1.0 6.81e+07 1.1 1.7e+04 5.8e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0  3475
firedrake.function.Function.assign     314 1.0 1.7175e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.6452e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2808e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.7574e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.9994e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4221e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9238e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1685e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.4702e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.4597e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6795e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1788e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1788e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 3.9646e+00 1.1 0.00e+00 0.0 3.4e+03 4.5e+05 8.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         1 1.0 5.4374e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 6.8779e+02 1.0 1.07e+12 1.1 5.9e+06 1.7e+05 1.0e+04 91 100 93 100 94  91 100 93 100 94 309165
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.8294e-01 1007.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.6200e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.8289e-01 1228.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.8286e-01 1413.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 9.2034e+00 1.5 6.88e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 1518901
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 9.9582e-01 1.0 8.94e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1825
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2724e+00 1.1 7.08e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13549
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.5050e+00 1.2 6.60e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 2438857
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.1774e+01 1.3 1.37e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1 12  0  0  0   1 12  0  0  0 2191262
firedrake.halo.Halo.local_to_global_begin     300 1.0 9.8086e-02 4.2 0.00e+00 0.0 3.3e+05 1.2e+05 0.0e+00  0  0  5  4  0   0  0  5  4  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 3.2856e+00 53.7 3.89e+07 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1445
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.2468e+01 1.6 9.62e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   3  9  0  0  0 602566
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 1.9800e+00 1.8 5.41e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6649
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 3.8116e+01 1.3 1.27e+11 1.1 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   4 12  0  0  0 679065
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 8.1056e+01 1.4 2.03e+11 1.3 0.0e+00 0.0e+00 0.0e+00  9 18  0  0  0   9 18  0  0  0 472376
firedrake.constant.Constant.assign      75 1.0 3.1505e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ec987a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ec987b610_wrap_pyop2_kernel_prolong       4 0.0 4.8881e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d0d782a90_wrap_pyop2_kernel_prolong       4 0.0 7.5085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d0d9fa0d0_wrap_pyop2_kernel_prolong       4 0.0 6.5052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506feebf4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5042e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506feeb5ad0_wrap_pyop2_kernel_prolong       4 0.0 5.8725e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458e47c5810_wrap_pyop2_kernel_prolong       4 0.0 7.5076e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458e47c7390_wrap_pyop2_kernel_prolong       4 0.0 6.9535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1047ade90_wrap_pyop2_kernel_prolong       4 0.0 7.5089e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1047ad610_wrap_pyop2_kernel_prolong       4 0.0 6.2774e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538f012de10_wrap_pyop2_kernel_prolong       4 0.0 7.5025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538f012fb90_wrap_pyop2_kernel_prolong       4 0.0 5.3052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14956e083c90_wrap_pyop2_kernel_prolong       4 0.0 7.5004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14956e28aad0_wrap_pyop2_kernel_prolong       4 0.0 5.0667e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab89957110_wrap_pyop2_kernel_prolong       4 0.0 7.4883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab8980d310_wrap_pyop2_kernel_prolong       4 0.0 5.5803e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15350edc7d90_wrap_pyop2_kernel_prolong       4 0.0 7.5055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15350edc5490_wrap_pyop2_kernel_prolong       4 0.0 5.6108e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14562ce67190_wrap_pyop2_kernel_prolong       4 0.0 7.5040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14562ce65a50_wrap_pyop2_kernel_prolong       4 0.0 6.4810e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b02cea1350_wrap_pyop2_kernel_prolong       4 0.0 7.5068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b02c574d50_wrap_pyop2_kernel_prolong       4 0.0 6.1450e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a65d147c10_wrap_pyop2_kernel_prolong       4 0.0 7.5095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a65d197690_wrap_pyop2_kernel_prolong       4 0.0 7.0907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528139e3290_wrap_pyop2_kernel_prolong       4 0.0 7.4991e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528136f1390_wrap_pyop2_kernel_prolong       4 0.0 5.7372e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456e7a50d90_wrap_pyop2_kernel_prolong       4 0.0 7.5049e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456e7a52d10_wrap_pyop2_kernel_prolong       4 0.0 5.9816e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abb6f75450_wrap_pyop2_kernel_prolong       4 0.0 7.5072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abb6544bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7342e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fe2bdef90_wrap_pyop2_kernel_prolong       4 0.0 7.4972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fe232cf90_wrap_pyop2_kernel_prolong       4 0.0 4.8233e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb61e0c3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5020e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb61e0dc50_wrap_pyop2_kernel_prolong       4 0.0 5.9687e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484a295e510_wrap_pyop2_kernel_prolong       4 0.0 7.5083e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484a295dd90_wrap_pyop2_kernel_prolong       4 0.0 7.1513e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e444917750_wrap_pyop2_kernel_prolong       4 0.0 7.5031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e444915110_wrap_pyop2_kernel_prolong       4 0.0 5.6432e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bd27a5890_wrap_pyop2_kernel_prolong       4 0.0 7.4986e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145bd2851790_wrap_pyop2_kernel_prolong       4 0.0 4.9315e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509a43b6090_wrap_pyop2_kernel_prolong       4 0.0 7.5047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1509a43b5b90_wrap_pyop2_kernel_prolong       4 0.0 5.6109e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bebd006490_wrap_pyop2_kernel_prolong       4 0.0 7.5048e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bebd007d90_wrap_pyop2_kernel_prolong       4 0.0 6.4946e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15539c6b3f10_wrap_pyop2_kernel_prolong       4 0.0 7.5094e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15539c6b3850_wrap_pyop2_kernel_prolong       4 0.0 7.2401e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d81193fed0_wrap_pyop2_kernel_prolong       4 0.0 7.5061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d81192d390_wrap_pyop2_kernel_prolong       4 0.0 5.9546e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe77d41410_wrap_pyop2_kernel_prolong       4 0.0 7.5085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe77d43f90_wrap_pyop2_kernel_prolong       4 0.0 7.7188e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e623682550_wrap_pyop2_kernel_prolong       4 0.0 7.5000e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e623683d10_wrap_pyop2_kernel_prolong       4 0.0 5.5940e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532c92c07d0_wrap_pyop2_kernel_prolong       4 0.0 7.5017e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532c92bcf10_wrap_pyop2_kernel_prolong       4 0.0 5.4072e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154929cd4190_wrap_pyop2_kernel_prolong       4 0.0 7.5075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154929cd78d0_wrap_pyop2_kernel_prolong       4 0.0 6.1651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc395dc050_wrap_pyop2_kernel_prolong       4 0.0 7.5027e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc3965da90_wrap_pyop2_kernel_prolong       4 0.0 6.2970e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d4ddd5f10_wrap_pyop2_kernel_prolong       4 0.0 7.4998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d4dd94850_wrap_pyop2_kernel_prolong       4 0.0 6.3339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2a58a3ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2a5788d50_wrap_pyop2_kernel_prolong       4 0.0 5.7139e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b040c4050_wrap_pyop2_kernel_prolong       4 0.0 7.5027e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b043022d0_wrap_pyop2_kernel_prolong       4 0.0 5.7160e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462e00e4490_wrap_pyop2_kernel_prolong       4 0.0 7.5042e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462e00d1b10_wrap_pyop2_kernel_prolong       4 0.0 5.8396e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147031662ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147031660390_wrap_pyop2_kernel_prolong       4 0.0 6.3211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c251a84d0_wrap_pyop2_kernel_prolong       4 0.0 7.4891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c25199210_wrap_pyop2_kernel_prolong       4 0.0 5.6829e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff7ae2a750_wrap_pyop2_kernel_prolong       4 0.0 7.4988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff7ae281d0_wrap_pyop2_kernel_prolong       4 0.0 7.0022e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519cfbaed10_wrap_pyop2_kernel_prolong       4 0.0 7.5093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519cfa88310_wrap_pyop2_kernel_prolong       4 0.0 6.4728e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498766ff450_wrap_pyop2_kernel_prolong       4 0.0 7.5038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14987601e210_wrap_pyop2_kernel_prolong       4 0.0 7.7237e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e553ea2410_wrap_pyop2_kernel_prolong       4 0.0 7.4927e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e553eb6490_wrap_pyop2_kernel_prolong       4 0.0 5.8147e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f688da3110_wrap_pyop2_kernel_prolong       4 0.0 7.5041e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f68396f950_wrap_pyop2_kernel_prolong       4 0.0 6.0403e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4404c6890_wrap_pyop2_kernel_prolong       4 0.0 7.5025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4404c53d0_wrap_pyop2_kernel_prolong       4 0.0 6.2879e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542bc49bed0_wrap_pyop2_kernel_prolong       4 0.0 7.4923e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542bc4aa890_wrap_pyop2_kernel_prolong       4 0.0 6.0485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dcf85ffd0_wrap_pyop2_kernel_prolong       4 0.0 7.4896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148dcf85f710_wrap_pyop2_kernel_prolong       4 0.0 5.5578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155061146690_wrap_pyop2_kernel_prolong       4 0.0 7.5057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155061145c50_wrap_pyop2_kernel_prolong       4 0.0 7.4188e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e861a50f10_wrap_pyop2_kernel_prolong       4 0.0 7.5007e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e8618ef450_wrap_pyop2_kernel_prolong       4 0.0 5.9544e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2f0a41310_wrap_pyop2_kernel_prolong       4 0.0 7.5063e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2f0a40b50_wrap_pyop2_kernel_prolong       4 0.0 7.3079e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9c10cc10_wrap_pyop2_kernel_prolong       4 0.0 7.5047e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9c22da50_wrap_pyop2_kernel_prolong       4 0.0 6.8611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e606239750_wrap_pyop2_kernel_prolong       4 0.0 7.4909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6062bbbd0_wrap_pyop2_kernel_prolong       4 0.0 6.1228e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15277d943d10_wrap_pyop2_kernel_prolong       4 0.0 7.4976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15277d940a50_wrap_pyop2_kernel_prolong       4 0.0 7.1702e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbb1207390_wrap_pyop2_kernel_prolong       4 0.0 7.4963e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbb112c150_wrap_pyop2_kernel_prolong       4 0.0 6.4563e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486df5cd910_wrap_pyop2_kernel_prolong       4 0.0 7.5085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486decded90_wrap_pyop2_kernel_prolong       4 0.0 7.6997e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fee7eda050_wrap_pyop2_kernel_prolong       4 0.0 7.4825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fee7d9d790_wrap_pyop2_kernel_prolong       4 0.0 5.3139e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14895e9d9410_wrap_pyop2_kernel_prolong       4 0.0 7.4822e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14895e9d9490_wrap_pyop2_kernel_prolong       4 0.0 5.3500e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c48d1d950_wrap_pyop2_kernel_prolong       4 0.0 7.4886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c48d1c810_wrap_pyop2_kernel_prolong       4 0.0 6.0179e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147048144190_wrap_pyop2_kernel_prolong       4 0.0 7.4868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147048140890_wrap_pyop2_kernel_prolong       4 0.0 5.2138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db7eb128d0_wrap_pyop2_kernel_prolong       4 0.0 7.4977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db7eb13d50_wrap_pyop2_kernel_prolong       4 0.0 6.1300e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa1c5624d0_wrap_pyop2_kernel_prolong       4 0.0 7.4993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa1c560950_wrap_pyop2_kernel_prolong       4 0.0 6.4117e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e25f712450_wrap_pyop2_kernel_prolong       4 0.0 7.4908e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e25f711c10_wrap_pyop2_kernel_prolong       4 0.0 4.6085e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a0b164d50_wrap_pyop2_kernel_prolong       4 0.0 7.4951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a0afa1610_wrap_pyop2_kernel_prolong       4 0.0 5.9230e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9f2a70c10_wrap_pyop2_kernel_prolong       4 0.0 7.4825e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9f23381d0_wrap_pyop2_kernel_prolong       4 0.0 5.7318e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148add95b410_wrap_pyop2_kernel_prolong       4 0.0 7.4909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148addbb4810_wrap_pyop2_kernel_prolong       4 0.0 5.4527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fbd133e10_wrap_pyop2_kernel_prolong       4 0.0 7.4879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fbcfccd50_wrap_pyop2_kernel_prolong       4 0.0 6.0490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e721646c90_wrap_pyop2_kernel_prolong       4 0.0 7.4980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7215fbbd0_wrap_pyop2_kernel_prolong       4 0.0 6.9578e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545e740a990_wrap_pyop2_kernel_prolong       4 0.0 7.5030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545e73ea350_wrap_pyop2_kernel_prolong       4 0.0 7.5595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470ed079dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470ed07ad90_wrap_pyop2_kernel_prolong       4 0.0 5.5276e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e088e40d0_wrap_pyop2_kernel_prolong       4 0.0 7.4911e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e088e7050_wrap_pyop2_kernel_prolong       4 0.0 6.2894e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15221d347090_wrap_pyop2_kernel_prolong       4 0.0 7.4987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15221d1cdd90_wrap_pyop2_kernel_prolong       4 0.0 6.4593e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15104b85f610_wrap_pyop2_kernel_prolong       4 0.0 7.4951e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15104afae0d0_wrap_pyop2_kernel_prolong       4 0.0 6.0987e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15281ec92090_wrap_pyop2_kernel_prolong       4 0.0 7.4941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15281ecc9710_wrap_pyop2_kernel_prolong       4 0.0 5.9995e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b5e055cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5016e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b5e0553d0_wrap_pyop2_kernel_prolong       4 0.0 6.7713e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bc9fe56d0_wrap_pyop2_kernel_prolong       4 0.0 7.4880e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154bc9fe7cd0_wrap_pyop2_kernel_prolong       4 0.0 6.3740e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c956917310_wrap_pyop2_kernel_prolong       4 0.0 7.4890e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c956132350_wrap_pyop2_kernel_prolong       4 0.0 5.1697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cc66d56d0_wrap_pyop2_kernel_prolong       4 0.0 7.5025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cc5e79e90_wrap_pyop2_kernel_prolong       4 0.0 6.6239e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bad2dfe850_wrap_pyop2_kernel_prolong       4 0.0 7.4838e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bad1ceb790_wrap_pyop2_kernel_prolong       4 0.0 5.8623e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534f54d61d0_wrap_pyop2_kernel_prolong       4 0.0 7.4914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1534f54d4550_wrap_pyop2_kernel_prolong       4 0.0 6.3735e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525b06bb750_wrap_pyop2_kernel_prolong       4 0.0 7.4935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525abe56e90_wrap_pyop2_kernel_prolong       4 0.0 7.2448e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c496d18650_wrap_pyop2_kernel_prolong       4 0.0 7.4983e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c496d11390_wrap_pyop2_kernel_prolong       4 0.0 7.5205e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4176bd590_wrap_pyop2_kernel_prolong       4 0.0 7.4962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a41632dad0_wrap_pyop2_kernel_prolong       4 0.0 6.1942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26f552550_wrap_pyop2_kernel_prolong       4 0.0 7.4976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26f550350_wrap_pyop2_kernel_prolong       4 0.0 6.1592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a29af285d0_wrap_pyop2_kernel_prolong       4 0.0 7.4913e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a29af2a050_wrap_pyop2_kernel_prolong       4 0.0 6.2437e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542defbcb50_wrap_pyop2_kernel_prolong       4 0.0 7.4972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542de7b4b90_wrap_pyop2_kernel_prolong       4 0.0 6.2922e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497206b1c50_wrap_pyop2_kernel_prolong       4 0.0 7.4946e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14972086bd50_wrap_pyop2_kernel_prolong       4 0.0 5.4904e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fcfa59cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4914e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fcfa59410_wrap_pyop2_kernel_prolong       4 0.0 7.4421e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eef16c1610_wrap_pyop2_kernel_prolong       4 0.0 7.4881e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eef16c0590_wrap_pyop2_kernel_prolong       4 0.0 5.0622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14915aa69e90_wrap_pyop2_kernel_prolong       4 0.0 7.4841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14915aa6aad0_wrap_pyop2_kernel_prolong       4 0.0 5.7211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b47dbf40d0_wrap_pyop2_kernel_prolong       4 0.0 7.4864e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b47dc01790_wrap_pyop2_kernel_prolong       4 0.0 5.9055e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1d5af2e90_wrap_pyop2_kernel_prolong       4 0.0 7.4903e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1d5d5bf10_wrap_pyop2_kernel_prolong       4 0.0 6.8377e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b71d085e10_wrap_pyop2_kernel_prolong       4 0.0 7.4840e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b71c6f7650_wrap_pyop2_kernel_prolong       4 0.0 5.9057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505fa86de90_wrap_pyop2_kernel_prolong       4 0.0 7.5001e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505fa86d490_wrap_pyop2_kernel_prolong       4 0.0 6.7327e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508a457da50_wrap_pyop2_kernel_prolong       4 0.0 7.4955e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508a482b9d0_wrap_pyop2_kernel_prolong       4 0.0 7.2438e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26ba931d0_wrap_pyop2_kernel_prolong       4 0.0 7.4861e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f26b98eb50_wrap_pyop2_kernel_prolong       4 0.0 6.3595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14680a7ca450_wrap_pyop2_kernel_prolong       4 0.0 7.4828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14680a7c8590_wrap_pyop2_kernel_prolong       4 0.0 5.7519e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c340709e10_wrap_pyop2_kernel_prolong       4 0.0 7.4936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c34015abd0_wrap_pyop2_kernel_prolong       4 0.0 7.0297e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490a856d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5067e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490a3b5ff10_wrap_pyop2_kernel_prolong       4 0.0 5.6999e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0ffbc63d0_wrap_pyop2_kernel_prolong       4 0.0 7.4937e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0ffbc6cd0_wrap_pyop2_kernel_prolong       4 0.0 7.0837e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523e8f0da50_wrap_pyop2_kernel_prolong       4 0.0 7.4935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523e8e04750_wrap_pyop2_kernel_prolong       4 0.0 7.2263e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd8a9d2250_wrap_pyop2_kernel_prolong       4 0.0 7.4884e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd8a9d11d0_wrap_pyop2_kernel_prolong       4 0.0 6.1734e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ef5204a50_wrap_pyop2_kernel_prolong       4 0.0 7.4883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145ef5ca6410_wrap_pyop2_kernel_prolong       4 0.0 6.4032e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be93745ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be92acc750_wrap_pyop2_kernel_prolong       4 0.0 7.2986e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151322f24990_wrap_pyop2_kernel_prolong       4 0.0 7.5025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151322ebebd0_wrap_pyop2_kernel_prolong       4 0.0 6.5391e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d0f3ab8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5008e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d0f56bad0_wrap_pyop2_kernel_prolong       4 0.0 6.5388e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6cec36410_wrap_pyop2_kernel_prolong       4 0.0 7.4916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6cec14450_wrap_pyop2_kernel_prolong       4 0.0 6.5077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145548a596d0_wrap_pyop2_kernel_prolong       4 0.0 7.5035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455480dfc90_wrap_pyop2_kernel_prolong       4 0.0 7.5306e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f63ba3010_wrap_pyop2_kernel_prolong       4 0.0 7.6142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f63b90ed0_wrap_pyop2_kernel_prolong       4 0.0 5.4361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bbc2aa750_wrap_pyop2_kernel_prolong       4 0.0 7.6146e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146bbc2bed50_wrap_pyop2_kernel_prolong       4 0.0 5.5382e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe6c2d4450_wrap_pyop2_kernel_prolong       4 0.0 7.6141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe6c162bd0_wrap_pyop2_kernel_prolong       4 0.0 5.7693e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c36c13a50_wrap_pyop2_kernel_prolong       4 0.0 7.6187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c36c19c10_wrap_pyop2_kernel_prolong       4 0.0 6.1117e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9770cb590_wrap_pyop2_kernel_prolong       4 0.0 7.6179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d976efb550_wrap_pyop2_kernel_prolong       4 0.0 6.3653e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b949932750_wrap_pyop2_kernel_prolong       4 0.0 7.6221e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b949931690_wrap_pyop2_kernel_prolong       4 0.0 7.5143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a6014e2d0_wrap_pyop2_kernel_prolong       4 0.0 7.6124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a60151f90_wrap_pyop2_kernel_prolong       4 0.0 5.7111e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151eff770050_wrap_pyop2_kernel_prolong       4 0.0 7.6155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151efedb6e10_wrap_pyop2_kernel_prolong       4 0.0 6.1312e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d916566fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6146e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d9165617d0_wrap_pyop2_kernel_prolong       4 0.0 5.9875e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ee716fad0_wrap_pyop2_kernel_prolong       4 0.0 7.6139e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ee672bbd0_wrap_pyop2_kernel_prolong       4 0.0 6.0675e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b5431360d0_wrap_pyop2_kernel_prolong       4 0.0 7.6190e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b542f8ea10_wrap_pyop2_kernel_prolong       4 0.0 6.5370e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9f6f8ead0_wrap_pyop2_kernel_prolong       4 0.0 7.6200e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e9f6f8e050_wrap_pyop2_kernel_prolong       4 0.0 6.8213e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1c9f28750_wrap_pyop2_kernel_prolong       4 0.0 7.6191e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b1c9f1a410_wrap_pyop2_kernel_prolong       4 0.0 6.9257e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469fa388290_wrap_pyop2_kernel_prolong       4 0.0 7.6084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469fa36a950_wrap_pyop2_kernel_prolong       4 0.0 5.1291e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d66011c150_wrap_pyop2_kernel_prolong       4 0.0 7.6113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d66010e250_wrap_pyop2_kernel_prolong       4 0.0 5.7184e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eeded5e4d0_wrap_pyop2_kernel_prolong       4 0.0 7.6173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eede48a510_wrap_pyop2_kernel_prolong       4 0.0 6.4264e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476f44e61d0_wrap_pyop2_kernel_prolong       4 0.0 7.6118e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476f44e4f90_wrap_pyop2_kernel_prolong       4 0.0 5.7504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536ed2de1d0_wrap_pyop2_kernel_prolong       4 0.0 7.6154e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536ed2dd790_wrap_pyop2_kernel_prolong       4 0.0 5.8807e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529a8e42810_wrap_pyop2_kernel_prolong       4 0.0 7.6101e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529a909ef90_wrap_pyop2_kernel_prolong       4 0.0 6.1770e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15527ba2a390_wrap_pyop2_kernel_prolong       4 0.0 7.6064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552800bd450_wrap_pyop2_kernel_prolong       4 0.0 5.5093e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a055238c50_wrap_pyop2_kernel_prolong       4 0.0 7.6030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0552388d0_wrap_pyop2_kernel_prolong       4 0.0 5.0039e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15415ff65cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6119e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15416493e010_wrap_pyop2_kernel_prolong       4 0.0 6.0511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adc8b4c790_wrap_pyop2_kernel_prolong       4 0.0 7.6092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adc8cefb10_wrap_pyop2_kernel_prolong       4 0.0 5.8036e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4ef93c6d0_wrap_pyop2_kernel_prolong       4 0.0 7.6126e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4ef9a3810_wrap_pyop2_kernel_prolong       4 0.0 7.2054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f90b78650_wrap_pyop2_kernel_prolong       4 0.0 7.6084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f90c85110_wrap_pyop2_kernel_prolong       4 0.0 5.5597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475e176e750_wrap_pyop2_kernel_prolong       4 0.0 7.6145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475e176fb90_wrap_pyop2_kernel_prolong       4 0.0 7.2535e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fcf439bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6097e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fcf415f90_wrap_pyop2_kernel_prolong       4 0.0 5.3622e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503d1290dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503d1176250_wrap_pyop2_kernel_prolong       4 0.0 5.8375e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14856c1aa290_wrap_pyop2_kernel_prolong       4 0.0 7.6105e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485677f29d0_wrap_pyop2_kernel_prolong       4 0.0 6.8309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b22e57a50_wrap_pyop2_kernel_prolong       4 0.0 7.6090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b22e5fbd0_wrap_pyop2_kernel_prolong       4 0.0 5.7445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb2c415fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb2c417f90_wrap_pyop2_kernel_prolong       4 0.0 6.6384e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5dc7ff890_wrap_pyop2_kernel_prolong       4 0.0 7.6124e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5dc7fe950_wrap_pyop2_kernel_prolong       4 0.0 6.7267e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e00ce4bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5997e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152e00cee010_wrap_pyop2_kernel_prolong       4 0.0 5.4035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15455a49b710_wrap_pyop2_kernel_prolong       4 0.0 7.6183e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15455a5083d0_wrap_pyop2_kernel_prolong       4 0.0 6.7766e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530e8b73510_wrap_pyop2_kernel_prolong       4 0.0 7.6114e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530e8b724d0_wrap_pyop2_kernel_prolong       4 0.0 5.6786e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495a9b8de10_wrap_pyop2_kernel_prolong       4 0.0 7.5947e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1495a9b8f590_wrap_pyop2_kernel_prolong       4 0.0 6.1688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8ebff8550_wrap_pyop2_kernel_prolong       4 0.0 7.6152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8ebffb650_wrap_pyop2_kernel_prolong       4 0.0 6.9987e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c15d49fd50_wrap_pyop2_kernel_prolong       4 0.0 7.6157e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c15d4a6bd0_wrap_pyop2_kernel_prolong       4 0.0 6.2971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc6e136910_wrap_pyop2_kernel_prolong       4 0.0 7.6131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc6e136a50_wrap_pyop2_kernel_prolong       4 0.0 6.6119e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c41dc5ca50_wrap_pyop2_kernel_prolong       4 0.0 7.5953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c41de6c910_wrap_pyop2_kernel_prolong       4 0.0 6.1599e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b968f3510_wrap_pyop2_kernel_prolong       4 0.0 7.6035e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b968f1cd0_wrap_pyop2_kernel_prolong       4 0.0 6.6234e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a26174050_wrap_pyop2_kernel_prolong       4 0.0 7.6123e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149a26169e50_wrap_pyop2_kernel_prolong       4 0.0 5.9673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149af1ec3950_wrap_pyop2_kernel_prolong       4 0.0 7.6109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149af1ec16d0_wrap_pyop2_kernel_prolong       4 0.0 6.0077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af111b8650_wrap_pyop2_kernel_prolong       4 0.0 7.5969e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af11b2c810_wrap_pyop2_kernel_prolong       4 0.0 6.5068e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edd4ba8750_wrap_pyop2_kernel_prolong       4 0.0 7.6169e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edd5e0b650_wrap_pyop2_kernel_prolong       4 0.0 7.1738e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4f1b1e990_wrap_pyop2_kernel_prolong       4 0.0 7.6148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4f1d667d0_wrap_pyop2_kernel_prolong       4 0.0 6.1164e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b51a510e90_wrap_pyop2_kernel_prolong       4 0.0 7.5999e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b51a3d0a10_wrap_pyop2_kernel_prolong       4 0.0 6.6329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f1c646b50_wrap_pyop2_kernel_prolong       4 0.0 7.6150e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145f1d053e50_wrap_pyop2_kernel_prolong       4 0.0 6.0714e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df76a5c990_wrap_pyop2_kernel_prolong       4 0.0 7.6006e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df768dd890_wrap_pyop2_kernel_prolong       4 0.0 6.5143e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e26da25d50_wrap_pyop2_kernel_prolong       4 0.0 7.6195e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e26da27810_wrap_pyop2_kernel_prolong       4 0.0 7.5019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492dd859a10_wrap_pyop2_kernel_prolong       4 0.0 7.6137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1492ddace750_wrap_pyop2_kernel_prolong       4 0.0 7.0638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e53babc910_wrap_pyop2_kernel_prolong       4 0.0 7.6046e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e53b8f7710_wrap_pyop2_kernel_prolong       4 0.0 7.1894e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553b1f6ab10_wrap_pyop2_kernel_prolong       4 0.0 7.5922e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553b1f26610_wrap_pyop2_kernel_prolong       4 0.0 5.7335e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce5d8fb6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5989e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce5d6ddf50_wrap_pyop2_kernel_prolong       4 0.0 6.4334e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154525b92690_wrap_pyop2_kernel_prolong       4 0.0 7.5966e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154525dedad0_wrap_pyop2_kernel_prolong       4 0.0 6.8569e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da30148f10_wrap_pyop2_kernel_prolong       4 0.0 7.5936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da30150550_wrap_pyop2_kernel_prolong       4 0.0 5.9205e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489d7b6ae10_wrap_pyop2_kernel_prolong       4 0.0 7.6025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489d62a6e90_wrap_pyop2_kernel_prolong       4 0.0 6.2583e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486d7b4d310_wrap_pyop2_kernel_prolong       4 0.0 7.5934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486d70bac90_wrap_pyop2_kernel_prolong       4 0.0 5.4351e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c14961890_wrap_pyop2_kernel_prolong       4 0.0 7.5902e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c1492fc90_wrap_pyop2_kernel_prolong       4 0.0 4.8765e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee4300a690_wrap_pyop2_kernel_prolong       4 0.0 7.5981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee430098d0_wrap_pyop2_kernel_prolong       4 0.0 5.7691e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b910b99c50_wrap_pyop2_kernel_prolong       4 0.0 7.6034e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b910b99110_wrap_pyop2_kernel_prolong       4 0.0 6.5514e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8149d7e90_wrap_pyop2_kernel_prolong       4 0.0 7.5965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8149d5510_wrap_pyop2_kernel_prolong       4 0.0 6.3506e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2f101fed0_wrap_pyop2_kernel_prolong       4 0.0 7.6103e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d2f0fe0bd0_wrap_pyop2_kernel_prolong       4 0.0 7.2608e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5ad94e290_wrap_pyop2_kernel_prolong       4 0.0 7.6054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5ad94f6d0_wrap_pyop2_kernel_prolong       4 0.0 5.9133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d47faee50_wrap_pyop2_kernel_prolong       4 0.0 7.6093e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d47ff83d0_wrap_pyop2_kernel_prolong       4 0.0 7.2882e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146065146e50_wrap_pyop2_kernel_prolong       4 0.0 7.6005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14606513dad0_wrap_pyop2_kernel_prolong       4 0.0 6.1933e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edcd028e10_wrap_pyop2_kernel_prolong       4 0.0 7.6037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14edcc6ae250_wrap_pyop2_kernel_prolong       4 0.0 5.8995e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3d1004810_wrap_pyop2_kernel_prolong       4 0.0 7.6145e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3d05df2d0_wrap_pyop2_kernel_prolong       4 0.0 7.0404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544eae53dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544eb0740d0_wrap_pyop2_kernel_prolong       4 0.0 6.8108e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148346d5be50_wrap_pyop2_kernel_prolong       4 0.0 7.6065e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148346fcb510_wrap_pyop2_kernel_prolong       4 0.0 6.2990e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5e4049d90_wrap_pyop2_kernel_prolong       4 0.0 7.6118e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5e4049590_wrap_pyop2_kernel_prolong       4 0.0 7.2211e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466dacf6650_wrap_pyop2_kernel_prolong       4 0.0 7.5998e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1466da450150_wrap_pyop2_kernel_prolong       4 0.0 5.0405e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb52ef290_wrap_pyop2_kernel_prolong       4 0.0 7.6032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152bb52e0f10_wrap_pyop2_kernel_prolong       4 0.0 6.1870e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5775415d0_wrap_pyop2_kernel_prolong       4 0.0 7.6019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e577541150_wrap_pyop2_kernel_prolong       4 0.0 6.6449e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbda453610_wrap_pyop2_kernel_prolong       4 0.0 7.6050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbda327750_wrap_pyop2_kernel_prolong       4 0.0 5.5633e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df49ffbe90_wrap_pyop2_kernel_prolong       4 0.0 7.6155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df4a033390_wrap_pyop2_kernel_prolong       4 0.0 7.2035e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bed5d10d0_wrap_pyop2_kernel_prolong       4 0.0 7.6117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bed5ab690_wrap_pyop2_kernel_prolong       4 0.0 6.5329e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f62e0a5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6085e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f62f33b90_wrap_pyop2_kernel_prolong       4 0.0 7.8175e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea38cc0cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6025e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea38cc2690_wrap_pyop2_kernel_prolong       4 0.0 6.2099e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484f9242e10_wrap_pyop2_kernel_prolong       4 0.0 7.6017e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484f92409d0_wrap_pyop2_kernel_prolong       4 0.0 5.4193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbbadc7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6043e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bbbb0453d0_wrap_pyop2_kernel_prolong       4 0.0 5.9367e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149cf0097090_wrap_pyop2_kernel_prolong       4 0.0 7.6026e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ceb7b8f90_wrap_pyop2_kernel_prolong       4 0.0 5.5955e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147090662d10_wrap_pyop2_kernel_prolong       4 0.0 7.6090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14709061f310_wrap_pyop2_kernel_prolong       4 0.0 6.6483e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c90e4551d0_wrap_pyop2_kernel_prolong       4 0.0 7.6096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c90e457410_wrap_pyop2_kernel_prolong       4 0.0 7.1462e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eac4da110_wrap_pyop2_kernel_prolong       4 0.0 7.6164e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eac4a3c10_wrap_pyop2_kernel_prolong       4 0.0 5.7494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f90b01ec10_wrap_pyop2_kernel_prolong       4 0.0 7.5980e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f90b01e1d0_wrap_pyop2_kernel_prolong       4 0.0 6.5634e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4ec413050_wrap_pyop2_kernel_prolong       4 0.0 7.6019e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4ec603090_wrap_pyop2_kernel_prolong       4 0.0 6.7522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15301db18210_wrap_pyop2_kernel_prolong       4 0.0 7.6030e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15301d870ed0_wrap_pyop2_kernel_prolong       4 0.0 6.5396e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153874a1e090_wrap_pyop2_kernel_prolong       4 0.0 7.6115e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153874a24410_wrap_pyop2_kernel_prolong       4 0.0 7.5796e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456a30aabd0_wrap_pyop2_kernel_prolong       4 0.0 7.6055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456a30a1b10_wrap_pyop2_kernel_prolong       4 0.0 6.3282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f7624cfd0_wrap_pyop2_kernel_prolong       4 0.0 7.6076e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f762560d0_wrap_pyop2_kernel_prolong       4 0.0 7.8027e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149482b51a90_wrap_pyop2_kernel_prolong       4 0.0 7.5941e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149482b50950_wrap_pyop2_kernel_prolong       4 0.0 5.7889e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac0ddee6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5938e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac0dded790_wrap_pyop2_kernel_prolong       4 0.0 5.7999e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9333fa190_wrap_pyop2_kernel_prolong       4 0.0 7.6040e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c932964f90_wrap_pyop2_kernel_prolong       4 0.0 7.2113e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1df4646d0_wrap_pyop2_kernel_prolong       4 0.0 7.6055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e1df467e10_wrap_pyop2_kernel_prolong       4 0.0 6.6117e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2e075fd10_wrap_pyop2_kernel_prolong       4 0.0 7.6033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2e110cad0_wrap_pyop2_kernel_prolong       4 0.0 6.8050e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153330241f50_wrap_pyop2_kernel_prolong       4 0.0 7.6021e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15333012dc90_wrap_pyop2_kernel_prolong       4 0.0 6.8404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bb0131c90_wrap_pyop2_kernel_prolong       4 0.0 7.5945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bca8d9390_wrap_pyop2_kernel_prolong       4 0.0 6.0439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fc60e6010_wrap_pyop2_kernel_prolong       4 0.0 7.6052e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147fc60e5990_wrap_pyop2_kernel_prolong       4 0.0 6.1720e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7cb6a1ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6089e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7ca344290_wrap_pyop2_kernel_prolong       4 0.0 7.2351e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de44bcf690_wrap_pyop2_kernel_prolong       4 0.0 7.6099e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de44b6f750_wrap_pyop2_kernel_prolong       4 0.0 6.3202e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd8be8d7d0_wrap_pyop2_kernel_prolong       4 0.0 7.6109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd8be8cdd0_wrap_pyop2_kernel_prolong       4 0.0 7.0387e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db99eaf410_wrap_pyop2_kernel_prolong       4 0.0 7.6082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14db99ead190_wrap_pyop2_kernel_prolong       4 0.0 7.0913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503eb345a10_wrap_pyop2_kernel_prolong       4 0.0 7.6054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503eaa6b450_wrap_pyop2_kernel_prolong       4 0.0 7.5630e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   225            225
              Viewer     3              3
           Index Set  1815           1815
   IS L to G Mapping   206            206
             Section   468            468
   Star Forest Graph   361            361
              Vector   138            138
              Matrix   116            116
      Preconditioner     2              2
       Krylov Solver     2              2
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   108            108
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   163            163
           Weak Form   163            163
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 7.42e-06
Average time for zero size MPI_Send(): 2.58223e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/bjacobi/h2.profile # (source: code)
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

