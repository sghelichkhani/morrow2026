****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0637.gadi.nci.org.au with 416 processes, by sg8812 on Thu Aug 20 23:38:30 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.300e+02     1.000   5.300e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.716e+11     1.190   5.275e+11  2.194e+14
Flops/sec:            1.078e+09     1.190   9.951e+08  4.140e+11
MPI Msg Count:        1.011e+05     4.157   5.974e+04  2.485e+07
MPI Msg Len (bytes):  8.678e+09     2.454   1.092e+05  2.715e+12
MPI Reductions:       1.111e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.4544e+02  65.2%  1.7328e+14  79.0%  1.066e+07  42.9%  1.637e+05       64.3%  9.072e+03  81.7%
 1:        MG Apply: 1.8459e+02  34.8%  4.6140e+13  21.0%  1.419e+07  57.1%  6.833e+04       35.7%  2.016e+03  18.2%

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

BuildTwoSided       1065 1.0 3.7956e+01 3.3 0.00e+00 0.0 2.9e+05 4.0e+00 1.1e+03  4  0  1  0 10   7  0  3  0 12    -0
BuildTwoSidedF      1026 1.0 3.7945e+01 3.3 0.00e+00 0.0 4.7e+05 1.3e+06 1.0e+03  4  0  2 22  9   7  0  4 34 11    -0
SFSetGraph            42 1.0 5.2383e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 3.1396e-02 1.7 0.00e+00 0.0 1.1e+05 2.6e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         677 1.0 2.7535e-01 2.3 0.00e+00 0.0 1.5e+06 9.3e+04 0.0e+00  0  0  6  5  0   0  0 14  8  0    -0
SFBcastEnd           677 1.0 9.8518e+00 104.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        290 1.0 7.6380e-02 21.9 0.00e+00 0.0 6.6e+05 1.0e+05 0.0e+00  0  0  3  3  0   0  0  6  4  0    -0
SFReduceEnd          290 1.0 1.6488e+00 33.5 2.71e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5145
SFFetchOpBegin         2 1.0 1.5996e-05 8.2 0.00e+00 0.0 3.5e+03 5.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 7.8582e-04 62.8 0.00e+00 0.0 3.5e+03 5.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.6326e-03 2.6 0.00e+00 0.0 2.8e+03 4.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.1390e-02 1.3 0.00e+00 0.0 8.9e+04 9.6e+01 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 4.5396e-03 5.4 0.00e+00 0.0 4.1e+04 5.5e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4209 1.0 1.2184e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4211 1.0 1.5611e-01 12.9 2.71e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 54341
VecDot               204 1.0 6.1296e-01 11.4 8.23e+07 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2 53357
VecMDot             3036 1.0 1.9609e+01 3.2 5.74e+09 1.1 0.0e+00 0.0e+00 3.0e+03  2  1  0  0 27   3  1  0  0 33 116427
VecNorm             3927 1.0 6.4558e+00 3.4 1.58e+09 1.1 0.0e+00 0.0e+00 3.9e+03  1  0  0  0 35   1  0  0  0 43 97523
VecScale            3444 1.0 1.6944e-01 1.2 6.94e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1629344
VecCopy             1653 1.0 9.2447e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               816 1.0 3.1188e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              408 1.0 2.0396e-01 1.3 1.65e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 320711
VecWAXPY             204 1.0 1.7287e-01 1.2 4.11e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 94594
VecMAXPY            3444 1.0 7.6176e+00 1.2 6.97e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 363595
VecScatterBegin     3240 1.0 1.0506e+00 2.3 0.00e+00 0.0 7.5e+06 1.1e+05 0.0e+00  0  0 30 29  0   0  0 70 45  0    -0
VecScatterEnd       3240 1.0 7.8532e+00 24.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       408 1.0 9.2607e-02 1.6 1.65e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 706330
VecReduceComm        204 1.0 1.1830e-01 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2244 1.0 4.0018e+00 3.3 1.36e+09 1.1 0.0e+00 0.0e+00 2.2e+03  0  0  0  0 20   1  0  0  0 25 134852
MatMult             3240 1.0 6.6868e+01 1.1 4.63e+10 1.1 7.5e+06 1.1e+05 0.0e+00 12  8 30 29  0  18 11 70 45  0 274757
MatSolve            2244 1.0 4.3595e+01 1.2 3.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  5  0  0  0  12  7  0  0  0 273102
MatLUFactorSym         1 1.0 3.9481e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       408 1.0 2.5277e+01 1.1 2.50e+10 1.2 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0   7  5  0  0  0 375831
MatILUFactorSym        1 1.0 5.6944e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1439 1.0 3.9090e+01 2.2 0.00e+00 0.0 4.7e+05 1.3e+06 1.0e+03  5  0  2 22  9   8  0  4 34 11    -0
MatAssemblyEnd      1439 1.0 1.0379e+01 13.5 2.20e+08 0.0 9.2e+03 1.3e+04 1.7e+01  1  0  0  0  0   2  0  0  0  0  3586
MatGetRowIJ            1 1.0 1.0803e-05 93.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.8660e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       408 1.0 3.3947e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 6.0457e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 6.0437e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        408 1.0 1.8477e+00 1.2 2.96e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 634388
MatPtAPSymbolic        1 1.0 1.1896e-01 1.0 0.00e+00 0.0 6.9e+03 1.8e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       204 1.0 1.6359e+01 1.0 1.18e+10 1.1 4.7e+05 3.1e+05 2.1e+02  3  2  2  5  2   5  3  4  8  2 286796
MatGetLocalMat       204 1.0 7.3669e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        204 1.0 7.2847e-01 1.9 0.00e+00 0.0 4.7e+05 3.2e+05 0.0e+00  0  0  2  6  0   0  0  4  9  0    -0
PCSetUp              204 1.0 1.3833e+02 1.0 1.08e+11 1.1 5.2e+06 1.2e+05 4.7e+03 26 19 21 24 43  40 24 49 37 52 304794
PCApply              996 1.0 1.8743e+02 1.0 1.17e+11 1.1 1.4e+07 6.8e+04 2.0e+03 35 21 57 36 18 Multiple stages 246172
PCApplyOnBlocks     2244 1.0 4.3625e+01 1.2 3.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  5  0  0  0  12  7  0  0  0 272911
KSPSetUp             204 1.0 6.9300e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             204 1.0 2.1115e+02 1.0 1.35e+11 1.1 1.6e+07 7.4e+04 4.2e+03 40 24 66 45 38 Multiple stages 252126
KSPGMRESOrthog      3036 1.0 2.5264e+01 2.1 1.15e+10 1.1 0.0e+00 0.0e+00 3.0e+03  3  2  0  0 27   5  3  0  0 33 180731
DMPlexCreateGmsh       1 1.0 5.5397e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.2031e+00 74.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         2 1.0 2.1438e-01 1.0 0.00e+00 0.0 2.9e+04 9.4e+01 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.8444e-02 1.0 0.00e+00 0.0 1.0e+05 1.1e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 9.0079e-03 2660.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 2.7128e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.6616e-03 1.5 0.00e+00 0.0 5.5e+03 8.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.6723e-03 3.3 0.00e+00 0.0 2.8e+03 3.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 4.4873e-03 1.5 0.00e+00 0.0 3.2e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.7797e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.3480e-01 1.0 0.00e+00 0.0 1.7e+04 6.1e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 3.6083e-03 1.1 0.00e+00 0.0 1.6e+04 2.1e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.5177e-02 1.0 0.00e+00 0.0 5.3e+04 1.2e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 1.2565e-02 1.0 0.00e+00 0.0 1.2e+05 4.9e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 5.3923e-03 1.3 0.00e+00 0.0 2.5e+04 5.1e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.2264e-02 16.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9977e-03 208.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.7085e+02 1.0 5.72e+11 1.2 2.5e+07 1.1e+05 1.1e+04 89 100 99 100 96 Multiple stages 465987
SNESSetUp              1 1.0 5.2673e-05 7.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     279 1.0 2.0929e+01 1.1 1.30e+11 1.3 1.5e+06 1.1e+05 0.0e+00  4 22  6  6  0   6 28 14  9  0 2312643
SNESJacobianEval     204 1.0 9.5419e+01 1.0 1.98e+11 1.3 9.4e+05 6.9e+05 8.2e+02 18 34  4 24  7  28 43  9 37  9 778255
SNESLineSearch       204 1.0 1.2775e+01 1.0 9.83e+10 1.3 1.4e+06 1.1e+05 8.2e+02  2 17  6  5  7   4 21 13  9  9 2874894
firedrake              1 1.0 5.2792e+02 1.0 5.72e+11 1.2 2.5e+07 1.1e+05 1.1e+04 100 100 100 100 100 Multiple stages 415638
firedrake.__init__       1 1.0 1.3881e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
CreateMesh             1 1.0 4.4863e+00 13.2 0.00e+00 0.0 2.4e+05 9.4e+01 2.0e+02  0  0  1  0  2   1  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 4.2040e+00 74.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2715e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.9150e-06 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.7589e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.5140e-04 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 1.4787e-01 7.6 0.00e+00 0.0 4.7e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.1525e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 1.4646e-01 8.1 0.00e+00 0.0 4.7e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 1.4530e-01 8.6 0.00e+00 0.0 4.7e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 1.4523e-01 8.6 0.00e+00 0.0 4.7e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 9.3288e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.1660e-03 1.5 0.00e+00 0.0 4.7e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.0971e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.2704e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.7160e-02 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.7030e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.7302e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.1434e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.8573e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.6588e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 7.2901e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2223 1.0 9.7779e+01 1.2 3.28e+11 1.3 1.3e+06 1.0e+05 1.5e+01 17 56  5  5  0  26 71 12  8  0 1254144
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.3429e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4446 1.0 2.3774e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0437e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.2349e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.5800e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3181e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3180e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.6906e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.5275e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2223 1.0 6.5701e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2223 1.0 5.8739e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 8.5241e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8820e+00 1.0 3.41e+07 1.1 4.2e+04 4.5e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0  2775
firedrake.interpolation.interpolate      11 1.0 4.1980e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.9483e+00 1.0 3.53e+07 1.1 4.6e+04 4.0e+04 3.4e+01  1  0  0  0  0   2  0  0  0  0  2358
firedrake.formmanipulation.split_form      12 1.0 4.4689e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 4.2880e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.6692e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0309e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     572 1.0 3.2641e-01 2.0 0.00e+00 0.0 1.3e+06 1.0e+05 2.0e+00  0  0  5  5  0   0  0 12  8  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.4657e+00 1.0 3.53e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  2567
firedrake.halo.Halo.global_to_local_end     572 1.0 9.6408e+00 208.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 7.8428e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.1827e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1721e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 9.8851e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.8308e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3982e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.1898e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1473e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.1440e+00 1.0 0.00e+00 0.0 1.4e+04 4.3e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.3342e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1778e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1173e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1173e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 2.1906e+00 1.2 0.00e+00 0.0 1.2e+04 2.5e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 2.8065e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.7099e+02 1.0 5.72e+11 1.2 2.5e+07 1.1e+05 1.1e+04 89 100 99 100 97 Multiple stages 465845
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 4.0141e-01 1345.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0422e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 4.0136e-01 1610.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 4.0133e-01 1813.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     558 1.0 4.4822e+00 1.2 3.20e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 2836638
Parloop_Cells_wrap_form0_exterior_facet_top_integral     558 1.0 1.1295e+00 1.0 2.08e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   732
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     558 1.0 1.2318e+00 1.0 5.49e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 18320
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     558 1.0 3.4563e+00 1.1 3.08e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 3539048
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     558 1.0 6.9042e+00 1.3 6.77e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 14  0  0  0 3392444
firedrake.halo.Halo.local_to_global_begin     279 1.0 8.5137e-02 9.3 0.00e+00 0.0 6.4e+05 1.1e+05 0.0e+00  0  0  3  2  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     279 1.0 1.6500e+00 31.5 2.71e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5141
Parloop_Cells_wrap_form00_cell_integral     408 1.0 1.5118e+01 1.4 4.36e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   4 10  0  0  0 1147467
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     408 1.0 1.7526e+00 1.6 4.09e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9587
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     408 1.0 1.7351e+01 1.1 5.78e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 13  0  0  0 1324977
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     408 1.0 4.1620e+01 1.5 9.78e+10 1.5 0.0e+00 0.0e+00 0.0e+00  6 15  0  0  0  10 20  0  0  0 813766
firedrake.dmhooks.get_function_space       1 1.0 1.0168e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.4455e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      204 1.0 1.0067e+01 1.0 5.78e+07 88.4 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   3  0  0  0  0   188
MGSetup Level 1      204 1.0 1.1078e+02 1.0 9.57e+10 1.1 4.7e+06 1.1e+05 4.3e+03 21 17 19 18 39  32 22 44 28 47 338231
firedrake.constant.Constant.assign      75 1.0 2.4909e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        204 1.0 3.4259e-02 3.4 0.00e+00 0.0 5.1e+05 4.0e+00 2.0e+02  0  0  2  0  2   0  0  4  0 10    -0
SFSetGraph           204 1.0 2.2440e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              204 1.0 5.0074e-02 2.4 0.00e+00 0.0 1.0e+06 5.6e+01 2.0e+02  0  0  4  0  2   0  0  7  0 10    -0
SFPack              6972 1.0 1.3859e+00 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFUnpack            6972 1.0 3.7931e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2988 1.0 1.3294e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              3983 1.0 3.8287e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             5976 1.0 3.6799e+00 2.2 1.61e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 173569
VecAXPBYCZ          1992 1.0 1.7475e+00 1.5 2.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 456878
VecScatterBegin     6972 1.0 1.5589e+00 2.4 0.00e+00 0.0 1.2e+07 8.3e+04 0.0e+00  0  0 47 36  0   1  0 82 100  0    -0
VecScatterEnd       6972 1.0 1.2399e+01 25.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult             3984 1.0 8.6567e+01 1.2 5.70e+10 1.1 9.2e+06 1.1e+05 0.0e+00 15 10 37 36  0  43 49 65 100  0 260968
MatMultAdd           996 1.0 2.5648e+00 1.2 1.20e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 186773
MatMultTranspose     996 1.0 1.9966e+00 2.6 1.20e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 239926
MatSolve            4980 1.0 1.0084e+02 1.1 5.41e+10 1.1 5.0e+06 1.4e+02 1.0e+03 18 10 20  0  9  52 46 35  0 51 209777
MatResidual          996 1.0 2.2631e+01 1.2 1.44e+10 1.1 2.3e+06 1.1e+05 0.0e+00  4  3  9  9  0  11 12 16 25  0 253091
PCSetUpOnBlocks     1992 1.0 2.0054e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             4980 1.0 1.0092e+02 1.1 5.41e+10 1.1 5.0e+06 1.4e+02 1.0e+03 18 10 20  0  9  52 46 35  0 51 209614
PCApplyOnBlocks     3984 1.0 8.0169e+01 1.2 5.36e+10 1.1 0.0e+00 0.0e+00 0.0e+00 14 10  0  0  0  40 46  0  0  0 263664
KSPSolve            2988 1.0 1.6414e+02 1.1 1.00e+11 1.1 1.2e+07 6.1e+04 2.0e+03 30 18 48 27 18  87 86 84 75 100 240366
MGSmooth Level 0     996 1.0 2.5318e+01 1.3 5.42e+08 71.0 5.0e+06 1.4e+02 2.0e+03  4  0 20  0 18  11  0 35  0 100   634
MGSmooth Level 1    1992 1.0 1.4400e+02 1.1 9.97e+10 1.1 6.9e+06 1.1e+05 0.0e+00 26 18 28 27  0  75 85 48 75  0 273881
MGResid Level 1      996 1.0 2.2635e+01 1.2 1.44e+10 1.1 2.3e+06 1.1e+05 0.0e+00  4  3  9  9  0  11 12 16 25  0 253041
MGInterp Level 1    1992 1.0 4.3755e+00 1.4 2.41e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 218968
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set  1423           1423
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            286
              Vector   925            925
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

           Index Set   408            408
   Star Forest Graph   204              0
              Vector   204            204
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 1.18592e-05
Average time for zero size MPI_Send(): 2.27879e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_inexact/medium.profile # (source: code)
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

