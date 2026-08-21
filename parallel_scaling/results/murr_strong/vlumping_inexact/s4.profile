****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0653.gadi.nci.org.au with 416 processes, by sg8812 on Fri Aug 21 00:21:42 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           3.122e+03     1.000   3.122e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.267e+12     1.126   3.087e+12  1.284e+15
Flops/sec:            1.047e+09     1.126   9.888e+08  4.114e+11
MPI Msg Count:        2.251e+05     5.019   1.143e+05  4.755e+07
MPI Msg Len (bytes):  2.435e+10     2.691   1.431e+05  6.806e+12
MPI Reductions:       1.622e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.4126e+03  45.2%  8.1897e+14  63.8%  1.493e+07  31.4%  2.212e+05       48.5%  1.263e+04  77.9%
 1:        MG Apply: 1.7095e+03  54.8%  4.6534e+14  36.2%  3.262e+07  68.6%  1.074e+05       51.5%  3.565e+03  22.0%

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

BuildTwoSided       1170 1.0 8.3664e+01 6.2 0.00e+00 0.0 3.2e+05 4.0e+00 1.2e+03  2  0  1  0  7   3  0  2  0  9    -0
BuildTwoSidedF      1131 1.0 8.3643e+01 6.0 0.00e+00 0.0 5.3e+05 1.8e+06 1.1e+03  2  0  1 14  7   3  0  4 30  9    -0
SFSetGraph            42 1.0 9.0875e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 5.1895e-02 2.3 0.00e+00 0.0 1.1e+05 4.0e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         719 1.0 5.2248e-01 3.3 0.00e+00 0.0 1.6e+06 1.4e+05 0.0e+00  0  0  3  3  0   0  0 11  7  0    -0
SFBcastEnd           719 1.0 2.2317e+01 108.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        311 1.0 1.3025e-01 28.9 0.00e+00 0.0 7.2e+05 1.5e+05 0.0e+00  0  0  2  2  0   0  0  5  3  0    -0
SFReduceEnd          311 1.0 3.8174e+00 48.4 4.81e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3515
SFFetchOpBegin         2 1.0 3.0047e-05 7.0 0.00e+00 0.0 3.5e+03 1.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.3944e-03 48.3 0.00e+00 0.0 3.5e+03 1.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.2072e-03 3.0 0.00e+00 0.0 2.7e+03 2.5e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 3.6176e-02 1.5 0.00e+00 0.0 8.8e+04 4.8e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 1.2456e-02 4.3 0.00e+00 0.0 4.1e+04 3.0e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              5947 1.0 3.6925e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            5949 1.0 2.9225e-01 10.6 4.81e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 45913
VecDot               225 1.0 1.7576e+00 3.8 3.66e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2 82677
VecMDot             4690 1.0 1.3933e+02 3.1 4.45e+10 1.1 0.0e+00 0.0e+00 4.7e+03  3  1  0  0 29   6  2  0  0 37 126892
VecNorm             5665 1.0 3.9815e+01 2.8 9.22e+09 1.1 0.0e+00 0.0e+00 5.7e+03  1  0  0  0 35   2  0  0  0 45 91889
VecScale            5140 1.0 9.2895e+00 1.1 4.18e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 178672
VecCopy             1800 1.0 5.1639e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               900 1.0 1.7123e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              450 1.0 1.7376e+00 1.1 7.32e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 167250
VecWAXPY             225 1.0 9.3735e-01 1.2 1.83e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 77512
VecMAXPY            5140 1.0 6.9494e+01 1.1 5.22e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  3  0  0  0 297996
VecScatterBegin     4915 1.0 3.3300e+00 2.8 0.00e+00 0.0 1.1e+07 1.5e+05 0.0e+00  0  0 24 26  0   0  0 77 53  0    -0
VecScatterEnd       4915 1.0 4.9350e+01 35.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       450 1.0 7.0892e-01 1.7 7.32e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 409949
VecReduceComm        225 1.0 4.1492e-01 17.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        2475 1.0 3.3207e+01 3.2 6.04e+09 1.1 0.0e+00 0.0e+00 2.5e+03  1  0  0  0 15   1  0  0  0 20 72202
MatMult             4915 1.0 3.9752e+02 1.1 2.84e+11 1.1 1.1e+07 1.5e+05 0.0e+00 12  9 24 26  0  26 14 77 53  0 282841
MatSolve            2475 1.0 2.0663e+02 1.4 1.40e+11 1.1 0.0e+00 0.0e+00 0.0e+00  6  4  0  0  0  13  7  0  0  0 267570
MatLUFactorSym         1 1.0 2.2553e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       450 1.0 1.6744e+02 1.2 1.16e+11 1.1 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0  11  6  0  0  0 272306
MatILUFactorSym        1 1.0 3.0225e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1586 1.0 8.3669e+01 3.4 0.00e+00 0.0 5.3e+05 1.8e+06 1.1e+03  2  0  1 14  7   4  0  4 30  9    -0
MatAssemblyEnd      1586 1.0 1.8645e+01 11.3 3.60e+08 0.0 9.3e+03 1.9e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  3238
MatGetRowIJ            1 1.0 7.1870e-06 81.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.3174e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       450 1.0 1.6573e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 2.8209e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 2.4177e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        450 1.0 8.2337e+00 1.2 1.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 634483
MatPtAPSymbolic        1 1.0 4.3126e-01 1.0 0.00e+00 0.0 7.0e+03 2.6e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       225 1.0 6.3308e+01 1.0 5.27e+10 1.1 5.3e+05 4.6e+05 2.3e+02  2  2  1  4  1   4  3  4  7  2 329892
MatGetLocalMat       225 1.0 3.7152e+00 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        225 1.0 1.2826e+00 2.1 0.00e+00 0.0 5.3e+05 4.6e+05 0.0e+00  0  0  1  4  0   0  0  4  7  0    -0
PCSetUp              225 1.0 6.7098e+02 1.0 4.88e+11 1.1 5.8e+06 1.8e+05 5.2e+03 21 15 12 15 32  47 24 39 32 41 287971
PCApply             2440 1.0 1.7419e+03 1.0 1.17e+12 1.1 3.3e+07 1.1e+05 3.6e+03 55 36 69 51 22 Multiple stages 267139
PCApplyOnBlocks     2475 1.0 2.0666e+02 1.4 1.40e+11 1.1 0.0e+00 0.0e+00 0.0e+00  6  4  0  0  0  13  7  0  0  0 267538
KSPSetUp             225 1.0 5.8803e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 1.9932e+03 1.0 1.37e+12 1.1 3.8e+07 1.1e+05 8.7e+03 64 42 81 64 53 Multiple stages 273338
KSPGMRESOrthog      4690 1.0 1.9473e+02 1.9 8.91e+10 1.1 0.0e+00 0.0e+00 4.7e+03  5  3  0  0 29  10  4  0  0 37 181585
DMPlexCreateGmsh       1 1.0 4.1142e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.1789e+00 15.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 4.1755e-01 1.0 0.00e+00 0.0 2.9e+04 5.0e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 1.0499e-01 1.0 0.00e+00 0.0 1.0e+05 6.5e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 7.8208e-02 22409.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 9.5489e-02 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.3453e-03 1.7 0.00e+00 0.0 5.5e+03 5.0e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 7.8198e-03 1.5 0.00e+00 0.0 2.7e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 2.8536e-02 1.1 0.00e+00 0.0 3.2e+03 3.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.2617e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.3525e-01 1.0 0.00e+00 0.0 1.7e+04 4.5e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 1.6344e-02 1.1 0.00e+00 0.0 1.6e+04 1.3e+03 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 7.3214e-02 1.0 0.00e+00 0.0 5.3e+04 7.0e+02 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 1.6533e-02 1.0 0.00e+00 0.0 1.2e+05 1.4e+02 8.0e+01  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        3 1.0 9.4669e-03 1.2 0.00e+00 0.0 2.5e+04 2.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 1.8559e-01 21.0 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.8379e-02 343.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 3.0489e+03 1.0 3.27e+12 1.1 4.7e+07 1.4e+05 1.6e+04 98 100 99 100 97 Multiple stages 421219
SNESSetUp              1 1.0 5.7988e-05 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 5.1846e+01 1.1 5.41e+11 1.2 1.6e+06 1.5e+05 0.0e+00  2 16  3  4  0   3 26 11  7  0 4048140
SNESJacobianEval     225 1.0 3.1121e+02 1.0 8.50e+11 1.2 1.0e+06 1.0e+06 9.0e+02 10 26  2 15  6  22 40  7 32  7 1061420
SNESLineSearch       225 1.0 5.3410e+01 1.0 4.20e+11 1.2 1.6e+06 1.5e+05 9.0e+02  2 13  3  4  6   4 20 11  7  7 3058533
firedrake              1 1.0 3.1198e+03 1.0 3.27e+12 1.1 4.8e+07 1.4e+05 1.6e+04 100 100 100 100 100 Multiple stages 411660
firedrake.__init__       1 1.0 1.4529e+01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 6.8143e+00 6.5 0.00e+00 0.0 2.4e+05 4.7e+02 2.0e+02  0  0  1  0  1   0  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 6.1796e+00 15.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 9.0001e-04 36.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 3.1000e-06 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 4.5175e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 7.9132e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.3259e-02 1.2 0.00e+00 0.0 4.7e+03 2.0e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.2784e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 2.1371e-02 1.2 0.00e+00 0.0 4.7e+03 2.0e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 1.9980e-02 1.2 0.00e+00 0.0 4.7e+03 2.0e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 1.9898e-02 1.2 0.00e+00 0.0 4.7e+03 2.0e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 8.5717e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.4472e-03 1.3 0.00e+00 0.0 4.7e+03 2.0e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.1227e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0409e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 5.1670e-02 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.8230e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.6904e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.1765e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 9.5677e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.7754e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 1.0718e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2412 1.0 3.2239e+02 1.2 1.39e+12 1.2 1.4e+06 1.5e+05 1.5e+01 10 42  3  3  0  21 66 10  7  0 1675584
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.4535e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4824 1.0 2.4625e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.1262e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.5136e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.9731e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3288e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3287e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.7425e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.5900e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2412 1.0 9.2340e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2412 1.0 7.1658e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 9.3690e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 5.0025e+00 1.0 1.37e+08 1.1 4.2e+04 6.5e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0 10909
firedrake.interpolation.interpolate      11 1.0 4.6697e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 6.3175e+00 1.0 1.42e+08 1.1 4.7e+04 5.8e+04 3.4e+01  0  0  0  0  0   0  0  0  0  0  8945
firedrake.formmanipulation.split_form      12 1.0 4.6734e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.0498e-03 7.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5994e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.1231e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     614 1.0 5.9546e-01 2.7 0.00e+00 0.0 1.4e+06 1.5e+05 2.0e+00  0  0  3  3  0   0  0 10  7  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.5110e+00 1.0 1.42e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10254
firedrake.halo.Halo.global_to_local_end     614 1.0 2.2250e+01 183.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 3.6044e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 3.5241e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.3114e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 2.3386e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.8289e-05 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4482e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9317e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1925e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 1.1449e+01 1.0 0.00e+00 0.0 1.4e+04 6.3e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.4986e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.3568e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.3528e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.3528e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 7.7947e+00 1.1 0.00e+00 0.0 1.2e+04 3.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 1.1244e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 3.0494e+03 1.0 3.27e+12 1.1 4.7e+07 1.4e+05 1.6e+04 98 100 99 100 98 Multiple stages 421152
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.7767e-01 915.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.4740e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.7761e-01 1072.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.7758e-01 1271.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 1.4327e+01 1.4 1.39e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  7  0  0  0 3843894
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0444e+00 1.0 1.80e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6854
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.3017e+00 1.1 7.68e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 26488
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 9.4058e+00 1.2 1.33e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  6  0  0  0 5623551
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 2.0369e+01 1.2 2.69e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1 12  0  0  0 5000640
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.4261e-01 11.7 0.00e+00 0.0 7.0e+05 1.5e+05 0.0e+00  0  0  1  2  0   0  0  5  3  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 3.8188e+00 47.2 4.81e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3514
Parloop_Cells_wrap_form00_cell_integral     450 1.0 5.7822e+01 1.4 1.94e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   3  9  0  0  0 1332973
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 2.1414e+00 1.9 5.86e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12297
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 6.8304e+01 1.2 2.57e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   4 12  0  0  0 1492890
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 1.4418e+02 1.2 3.99e+11 1.2 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   9 18  0  0  0 1048603
firedrake.dmhooks.get_function_space       1 1.0 1.6747e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 1.2260e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 9.0931e+01 1.0 2.21e+08 9.1 0.0e+00 0.0e+00 2.0e+00  3  0  0  0  0   6  0  0  0  0   284
MGSetup Level 1      225 1.0 5.1538e+02 1.0 4.35e+11 1.1 5.2e+06 1.5e+05 4.7e+03 17 13 11 12 29  36 21 35 24 37 334337
firedrake.constant.Constant.assign      75 1.0 3.5579e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 8.4344e-02 5.9 0.00e+00 0.0 6.2e+05 4.0e+00 2.2e+02  0  0  1  0  1   0  0  2  0  6    -0
SFSetGraph           225 1.0 1.9145e-02 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 1.2199e-01 3.6 0.00e+00 0.0 1.2e+06 3.9e+02 2.2e+02  0  0  3  0  1   0  0  4  0  6    -0
SFPack             17080 1.0 6.2489e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           17080 1.0 1.9166e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             7320 1.0 1.7849e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSet              9759 1.0 4.5612e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            14640 1.0 4.1742e+01 2.4 1.59e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 151006
VecAXPBYCZ          4880 1.0 1.7343e+01 1.5 1.99e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  2  0  0  0 454305
VecScatterBegin    17080 1.0 6.7026e+00 3.5 0.00e+00 0.0 2.9e+07 1.2e+05 0.0e+00  0  0 62 51  0   0  0 90 100  0    -0
VecScatterEnd      17080 1.0 1.2831e+02 42.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult             9760 1.0 8.2704e+02 1.2 5.63e+11 1.1 2.3e+07 1.5e+05 0.0e+00 24 17 48 51  0  43 48 70 100  0 269960
MatMultAdd          2440 1.0 2.4318e+01 1.2 1.19e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 194399
MatMultTranspose    2440 1.0 2.0425e+01 2.4 1.19e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 231457
MatSolve           12200 1.0 9.3291e+02 1.2 5.52e+11 1.1 9.9e+06 1.2e+03 1.1e+03 28 17 21  0  7  51 47 30  0 32 234138
MatResidual         2440 1.0 2.2385e+02 1.3 1.43e+11 1.1 5.7e+06 1.5e+05 0.0e+00  6  4 12 13  0  11 12 17 25  0 252871
PCSetUpOnBlocks     4880 1.0 6.5301e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            12200 1.0 9.3313e+02 1.2 5.52e+11 1.1 9.9e+06 1.2e+03 1.1e+03 28 17 21  0  7  51 47 30  0 32 234084
PCApplyOnBlocks     9760 1.0 8.3953e+02 1.3 5.51e+11 1.1 0.0e+00 0.0e+00 0.0e+00 24 17  0  0  0  45 47  0  0  0 259703
KSPSolve            7320 1.0 1.5194e+03 1.1 1.01e+12 1.1 2.7e+07 9.8e+04 3.6e+03 47 31 57 39 22  86 86 83 75 100 262790
MGSmooth Level 0    2440 1.0 1.3283e+02 1.6 3.40e+09 9.9 9.9e+06 1.2e+03 3.6e+03  3  0 21  0 22   6  0 30  0 100  3024
MGSmooth Level 1    4880 1.0 1.4329e+03 1.1 1.01e+12 1.1 1.7e+07 1.5e+05 0.0e+00 44 31 36 38  0  80 86 52 75  0 278366
MGResid Level 1     2440 1.0 2.2386e+02 1.3 1.43e+11 1.1 5.7e+06 1.5e+05 0.0e+00  6  4 12 13  0  11 12 17 25  0 252858
MGInterp Level 1    4880 1.0 4.3842e+01 1.4 2.38e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 215658
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set  1429           1429
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            307
              Vector  1009           1009
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

           Index Set   450            450
   Star Forest Graph   225              0
              Vector   225            225
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 1.17222e-05
Average time for zero size MPI_Send(): 2.05791e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_strong/vlumping_inexact/s4.profile # (source: code)
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

