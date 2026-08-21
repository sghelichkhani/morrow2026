****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0276.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 23:47:18 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.010e+02     1.000   5.010e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.749e+11     1.127   5.469e+11  5.688e+13
Flops/sec:            1.148e+09     1.127   1.092e+09  1.135e+11
MPI Msg Count:        8.373e+04     3.652   5.850e+04  6.084e+06
MPI Msg Len (bytes):  4.637e+09     2.541   5.571e+04  3.389e+11
MPI Reductions:       1.144e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.2996e+02  65.9%  4.4868e+13  78.9%  2.557e+06  42.0%  8.523e+04       64.3%  9.346e+03  81.7%
 1:        MG Apply: 1.7103e+02  34.1%  1.2009e+13  21.1%  3.526e+06  58.0%  3.431e+04       35.7%  2.076e+03  18.1%

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

BuildTwoSided       1100 1.0 2.2020e+01 6.0 0.00e+00 0.0 7.0e+04 4.0e+00 1.1e+03  3  0  1  0 10   4  0  3  0 12    -0
BuildTwoSidedF      1061 1.0 2.2623e+01 3.0 0.00e+00 0.0 1.1e+05 6.6e+05 1.1e+03  3  0  2 22  9   4  0  4 35 11    -0
SFSetGraph            42 1.0 2.7024e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 1.8690e-02 1.6 0.00e+00 0.0 2.5e+04 1.4e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         691 1.0 1.4475e-01 2.4 0.00e+00 0.0 3.5e+05 4.8e+04 0.0e+00  0  0  6  5  0   0  0 14  8  0    -0
SFBcastEnd           691 1.0 7.2342e+00 130.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        297 1.0 3.3558e-02 10.0 0.00e+00 0.0 1.6e+05 5.3e+04 0.0e+00  0  0  3  2  0   0  0  6  4  0    -0
SFReduceEnd          297 1.0 1.3531e+00 46.4 1.44e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   778
SFFetchOpBegin         2 1.0 1.6443e-05 5.6 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 3.0565e-04 19.5 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.0153e-03 1.6 0.00e+00 0.0 6.4e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 9.1311e-03 1.3 0.00e+00 0.0 2.1e+04 2.8e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 3.8121e-03 3.5 0.00e+00 0.0 9.9e+03 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4332 1.0 5.9548e-01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4334 1.0 6.6226e-02 10.9 1.44e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15897
VecDot               211 1.0 2.7888e-01 4.7 8.51e+07 1.1 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  2   0  0  0  0  2 30324
VecMDot             3131 1.0 1.9920e+01 3.5 5.90e+09 1.1 0.0e+00 0.0e+00 3.1e+03  2  1  0  0 27   4  1  0  0 34 29458
VecNorm             4050 1.0 6.5064e+00 3.6 1.63e+09 1.1 0.0e+00 0.0e+00 4.0e+03  1  0  0  0 35   1  0  0  0 43 24949
VecScale            3553 1.0 2.1643e-01 1.3 7.16e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 328983
VecCopy             1702 1.0 8.8432e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               844 1.0 3.0002e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              422 1.0 2.0276e-01 1.2 1.70e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 83417
VecWAXPY             211 1.0 1.7565e-01 1.1 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 24074
VecMAXPY            3553 1.0 7.6229e+00 1.1 7.17e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 93443
VecScatterBegin     3342 1.0 5.7961e-01 2.4 0.00e+00 0.0 1.8e+06 5.5e+04 0.0e+00  0  0 29 29  0   0  0 70 45  0    -0
VecScatterEnd       3342 1.0 9.1028e+00 13.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       422 1.0 9.1431e-02 2.3 1.70e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 184992
VecReduceComm        211 1.0 1.3115e-01 48.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2321 1.0 4.4620e+00 3.2 1.40e+09 1.1 0.0e+00 0.0e+00 2.3e+03  0  0  0  0 20   1  0  0  0 25 31273
MatMult             3342 1.0 6.5984e+01 1.1 4.75e+10 1.1 1.8e+06 5.5e+04 0.0e+00 12  8 29 29  0  19 11 70 45  0 71679
MatSolve            2321 1.0 4.5783e+01 1.3 3.20e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  6  0  0  0  13  7  0  0  0 69506
MatLUFactorSym         1 1.0 2.5409e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       422 1.0 2.2884e+01 1.2 2.65e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   7  6  0  0  0 113684
MatILUFactorSym        1 1.0 6.0415e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1488 1.0 2.3724e+01 2.9 0.00e+00 0.0 1.1e+05 6.6e+05 1.1e+03  3  0  2 22  9   5  0  4 35 11    -0
MatAssemblyEnd      1488 1.0 8.7861e+00 4.1 1.07e+08 0.0 2.1e+03 6.9e+03 1.7e+01  1  0  0  0  0   2  0  0  0  0   530
MatGetRowIJ            1 1.0 7.0760e-06 55.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.8887e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       422 1.0 3.4359e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 6.1074e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 6.1054e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        422 1.0 1.8993e+00 1.1 3.04e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 159644
MatPtAPSymbolic        1 1.0 9.8632e-02 1.0 0.00e+00 0.0 1.6e+03 9.2e+04 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       211 1.0 1.2578e+01 1.0 1.22e+10 1.1 1.1e+05 1.6e+05 2.2e+02  3  2  2  5  2   4  3  4  9  2 96354
MatGetLocalMat       211 1.0 8.1124e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        211 1.0 4.0621e-01 2.0 0.00e+00 0.0 1.1e+05 1.6e+05 0.0e+00  0  0  2  6  0   0  0  4  9  0    -0
PCSetUp              211 1.0 1.3348e+02 1.0 1.12e+11 1.1 1.2e+06 6.5e+04 4.9e+03 27 20 21 24 43  40 25 49 37 52 83496
PCApply             1021 1.0 1.7434e+02 1.1 1.21e+11 1.1 3.5e+06 3.4e+04 2.1e+03 34 21 58 36 18 Multiple stages 68885
PCApplyOnBlocks     2321 1.0 4.5806e+01 1.3 3.20e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  6  0  0  0  13  7  0  0  0 69471
KSPSetUp             211 1.0 6.9183e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             211 1.0 1.9658e+02 1.0 1.39e+11 1.1 4.1e+06 3.7e+04 4.3e+03 39 24 67 45 38 Multiple stages 70307
KSPGMRESOrthog      3131 1.0 2.5813e+01 2.2 1.18e+10 1.1 0.0e+00 0.0e+00 3.1e+03  4  2  0  0 27   5  3  0  0 34 45467
DMPlexCreateGmsh       1 1.0 5.6202e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.2454e+00 91.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         2 1.0 8.7696e-02 1.0 0.00e+00 0.0 6.7e+03 2.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.2506e-02 1.1 0.00e+00 0.0 2.4e+04 3.7e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 7.7554e-03 3449.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1643e-02 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.4672e-03 1.2 0.00e+00 0.0 1.3e+03 2.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.3751e-03 2.1 0.00e+00 0.0 6.4e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.1483e-03 1.3 0.00e+00 0.0 7.5e+02 2.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.7164e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.1025e-01 1.0 0.00e+00 0.0 4.4e+03 2.2e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.9966e-03 1.0 0.00e+00 0.0 3.8e+03 7.1e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.2780e-02 1.0 0.00e+00 0.0 1.3e+04 3.9e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 4.9323e-03 1.1 0.00e+00 0.0 2.7e+04 9.9e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 3.3912e-03 1.2 0.00e+00 0.0 5.8e+03 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.2357e-02 16.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 2.0853e-03 74.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.4687e+02 1.0 5.75e+11 1.1 6.0e+06 5.6e+04 1.1e+04 89 100 99 100 96 Multiple stages 127272
SNESSetUp              1 1.0 3.5746e-05 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     286 1.0 2.0425e+01 1.1 1.27e+11 1.1 3.5e+05 5.5e+04 0.0e+00  4 22  6  6  0   6 28 14  9  0 606499
SNESJacobianEval     211 1.0 9.1600e+01 1.0 1.96e+11 1.1 2.3e+05 3.6e+05 8.4e+02 18 34  4 24  7  28 43  9 37  9 209304
SNESLineSearch       211 1.0 1.2359e+01 1.0 9.68e+10 1.1 3.4e+05 5.5e+04 8.4e+02  2 17  6  5  7   4 21 13  9  9 767378
firedrake              1 1.0 4.9896e+02 1.0 5.75e+11 1.1 6.1e+06 5.6e+04 1.1e+04 100 100 100 100 100 Multiple stages 113991
firedrake.__init__       1 1.0 1.0697e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateMesh             1 1.0 5.3937e+00 26.3 0.00e+00 0.0 5.6e+04 2.7e+02 2.0e+02  1  0  1  0  2   1  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 5.2464e+00 91.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.3145e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.7610e-06 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.1400e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.2240e-04 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.0014e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.1788e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 1.8556e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 1.7388e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 1.7323e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 8.0809e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.8319e-03 1.2 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 5.0296e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 8.9944e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.3575e-02 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.4364e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.5126e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8044e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.7046e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.3915e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 8.6529e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2286 1.0 9.7685e+01 1.1 3.22e+11 1.1 3.2e+05 5.4e+04 1.5e+01 18 55  5  5  0  28 70 12  8  0 323055
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.0569e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4572 1.0 2.3609e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0453e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.2426e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.7561e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.2965e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.2964e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.5179e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.3648e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    2286 1.0 6.4608e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2286 1.0 5.3574e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 6.1322e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.6943e+00 1.0 3.41e+07 1.1 9.7e+03 2.3e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0   721
firedrake.interpolation.interpolate      11 1.0 3.8750e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.6393e+00 1.0 3.53e+07 1.1 1.1e+04 2.1e+04 3.4e+01  1  0  0  0  0   2  0  0  0  0   622
firedrake.formmanipulation.split_form      12 1.0 3.5661e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.2194e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5518e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0086e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     586 1.0 1.7846e-01 2.0 0.00e+00 0.0 3.2e+05 5.4e+04 2.0e+00  0  0  5  5  0   0  0 12  8  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.3354e+00 1.0 3.53e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0   657
firedrake.halo.Halo.global_to_local_end     586 1.0 7.2039e+00 143.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 8.7580e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.9853e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.4733e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.2832e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.6669e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3727e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8952e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1264e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9111e+00 1.0 0.00e+00 0.0 3.2e+03 2.2e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.0158e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.0743e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0377e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0377e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 1.8600e+00 1.2 0.00e+00 0.0 2.7e+03 1.3e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 2.6538e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.4701e+02 1.0 5.75e+11 1.1 6.0e+06 5.6e+04 1.1e+04 89 100 99 100 97 Multiple stages 127230
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.6305e-01 822.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.8210e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.6299e-01 983.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.6296e-01 1103.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     572 1.0 5.0937e+00 1.4 3.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 639681
Parloop_Cells_wrap_form0_exterior_facet_top_integral     572 1.0 1.1153e+00 1.0 8.52e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   759
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     572 1.0 1.2141e+00 1.0 3.10e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4764
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     572 1.0 3.5478e+00 1.1 3.14e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  7  0  0  0 879131
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     572 1.0 6.6003e+00 1.2 6.33e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 13  0  0  0 909419
firedrake.halo.Halo.local_to_global_begin     286 1.0 4.0251e-02 4.4 0.00e+00 0.0 1.5e+05 5.5e+04 0.0e+00  0  0  3  2  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     286 1.0 1.3547e+00 45.9 1.44e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   777
Parloop_Cells_wrap_form00_cell_integral     422 1.0 1.6008e+01 1.4 4.51e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   4 10  0  0  0 280227
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     422 1.0 1.5364e+00 1.4 2.33e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2828
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     422 1.0 1.8716e+01 1.2 5.95e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 13  0  0  0 316034
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     422 1.0 3.9453e+01 1.3 9.24e+10 1.2 0.0e+00 0.0e+00 0.0e+00  7 15  0  0  0  11 20  0  0  0 222105
firedrake.dmhooks.get_function_space       1 1.0 1.0164e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.0804e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      211 1.0 7.6034e+00 1.0 6.87e+07 11.9 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   2  0  0  0  0   256
MGSetup Level 1      211 1.0 1.1230e+02 1.0 1.00e+11 1.1 1.1e+06 5.5e+04 4.4e+03 22 17 19 18 39  34 22 44 29 47 88432
firedrake.constant.Constant.assign      75 1.0 3.0578e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        211 1.0 1.6134e-02 4.5 0.00e+00 0.0 1.4e+05 4.0e+00 2.1e+02  0  0  2  0  2   0  0  4  0 10    -0
SFSetGraph           211 1.0 8.8563e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              211 1.0 2.2292e-02 2.2 0.00e+00 0.0 2.7e+05 2.1e+02 2.1e+02  0  0  4  0  2   0  0  8  0 10    -0
SFPack              7147 1.0 6.7843e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            7147 1.0 4.8169e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             3063 1.0 1.1586e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              4083 1.0 3.8073e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             6126 1.0 2.9355e+00 1.4 1.65e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 55762
VecAXPBYCZ          2042 1.0 1.3753e+00 1.3 2.06e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 148780
VecScatterBegin     7147 1.0 8.4977e-01 2.4 0.00e+00 0.0 2.8e+06 4.2e+04 0.0e+00  0  0 47 36  0   0  0 81 100  0    -0
VecScatterEnd       7147 1.0 1.6988e+01 12.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
MatMult             4084 1.0 8.8239e+01 1.2 5.81e+10 1.1 2.2e+06 5.5e+04 0.0e+00 16 10 36 35  0  46 48 62 99  0 65501
MatMultAdd          1021 1.0 2.4488e+00 1.3 1.24e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 50134
MatMultTranspose    1021 1.0 1.8509e+00 1.7 1.24e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 66328
MatSolve            5105 1.0 9.2135e+01 1.3 5.66e+10 1.1 1.3e+06 5.3e+02 1.1e+03 17 10 22  0  9  49 47 38  1 51 60953
MatResidual         1021 1.0 2.4113e+01 1.3 1.47e+10 1.1 5.5e+05 5.5e+04 0.0e+00  4  3  9  9  0  12 12 16 25  0 60773
PCSetUpOnBlocks     2042 1.0 1.7818e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             5105 1.0 9.2208e+01 1.3 5.66e+10 1.1 1.3e+06 5.3e+02 1.1e+03 17 10 22  0  9  49 47 38  1 51 60904
PCApplyOnBlocks     4084 1.0 8.7314e+01 1.4 5.64e+10 1.1 0.0e+00 0.0e+00 0.0e+00 16 10  0  0  0  46 47  0  0  0 64129
KSPSolve            3063 1.0 1.5163e+02 1.1 1.04e+11 1.1 3.0e+06 3.1e+04 2.1e+03 29 18 49 27 18  86 86 84 75 100 67919
MGSmooth Level 0    1021 1.0 7.4110e+00 1.7 6.41e+08 15.4 1.3e+06 5.3e+02 2.1e+03  1  0 22  0 18   3  0 38  1 100  2227
MGSmooth Level 1    2042 1.0 1.4718e+02 1.1 1.03e+11 1.1 1.6e+06 5.5e+04 0.0e+00 28 18 27 27  0  82 86 47 75  0 69860
MGResid Level 1     1021 1.0 2.4116e+01 1.3 1.47e+10 1.1 5.5e+05 5.5e+04 0.0e+00  4  3  9  9  0  12 12 16 25  0 60764
MGInterp Level 1    2042 1.0 4.1845e+00 1.3 2.47e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 58677
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set   487            487
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            293
              Vector   933            933
              Matrix    24             24
      Preconditioner     6              6
       Krylov Solver     5              5
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    16             16
            DM Label    51             51
    GraphPartitioner     4              4
     Discrete System    24             24
           Weak Form    24             24

--- Event Stage 1: MG Apply

           Index Set   422            422
   Star Forest Graph   211              0
              Vector   211            211
========================================================================================================================
Average time to get PetscTime(): 2.62e-08
Average time for MPI_Barrier(): 3.8668e-06
Average time for zero size MPI_Send(): 2.02364e-06
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

