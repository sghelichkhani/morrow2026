****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0469.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 23:39:48 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           6.195e+02     1.000   6.195e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.696e+11     1.277   5.157e+11  4.291e+14
Flops/sec:            9.194e+08     1.277   8.325e+08  6.927e+11
MPI Msg Count:        1.254e+05     5.132   5.674e+04  4.721e+07
MPI Msg Len (bytes):  1.319e+10     2.639   1.617e+05  7.635e+12
MPI Reductions:       1.092e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.0548e+02  65.5%  3.4387e+14  80.1%  2.121e+07  44.9%  2.361e+05       65.6%  8.946e+03  81.9%
 1:        MG Apply: 2.1402e+02  34.5%  8.5227e+13  19.9%  2.601e+07  55.1%  1.011e+05       34.4%  1.953e+03  17.9%

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

BuildTwoSided       1065 1.0 5.9795e+01 3.8 0.00e+00 0.0 5.9e+05 4.0e+00 1.1e+03  6  0  1  0 10  10  0  3  0 12    -0
BuildTwoSidedF      1026 1.0 6.0376e+01 3.0 0.00e+00 0.0 9.6e+05 1.8e+06 1.0e+03  7  0  2 23  9  10  0  5 35 11    -0
SFSetGraph            42 1.0 7.9336e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 4.8286e-02 2.3 0.00e+00 0.0 2.2e+05 3.7e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         677 1.0 4.2177e-01 2.9 0.00e+00 0.0 3.0e+06 1.3e+05 0.0e+00  0  0  6  5  0   0  0 14  8  0    -0
SFBcastEnd           677 1.0 1.4663e+01 102.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        290 1.0 9.2748e-02 26.7 0.00e+00 0.0 1.3e+06 1.5e+05 0.0e+00  0  0  3  3  0   0  0  6  4  0    -0
SFReduceEnd          290 1.0 2.5754e+00 37.5 4.22e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9533
SFFetchOpBegin         2 1.0 1.3115e-05 7.1 0.00e+00 0.0 7.3e+03 3.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.0441e-03 111.5 0.00e+00 0.0 7.3e+03 3.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.7639e-03 4.3 0.00e+00 0.0 5.7e+03 2.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.5774e-02 1.5 0.00e+00 0.0 1.8e+05 5.9e+01 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 9.9508e-03 9.3 0.00e+00 0.0 8.3e+04 3.4e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4146 1.0 1.6779e+00 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4148 1.0 2.5051e-01 12.3 4.22e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 98005
VecDot               204 1.0 7.9613e-01 9.3 8.23e+07 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2 82161
VecMDot             2973 1.0 3.0240e+01 5.3 5.59e+09 1.1 0.0e+00 0.0e+00 3.0e+03  3  1  0  0 27   4  1  0  0 33 147091
VecNorm             3864 1.0 1.0491e+01 3.6 1.56e+09 1.1 0.0e+00 0.0e+00 3.9e+03  1  0  0  0 35   1  0  0  0 43 118100
VecScale            3381 1.0 1.9309e-01 1.4 6.82e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 2807251
VecCopy             1653 1.0 9.0642e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               816 1.0 3.1019e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              408 1.0 2.0719e-01 1.4 1.65e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 631402
VecWAXPY             204 1.0 1.7126e-01 1.2 4.11e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 190974
VecMAXPY            3381 1.0 7.3516e+00 1.2 6.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 734710
VecScatterBegin     3177 1.0 1.4576e+00 3.0 0.00e+00 0.0 1.5e+07 1.5e+05 0.0e+00  0  0 31 29  0   0  0 69 45  0    -0
VecScatterEnd       3177 1.0 1.2358e+01 21.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       408 1.0 9.9149e-02 1.9 1.65e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1319460
VecReduceComm        204 1.0 1.3406e-01 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2244 1.0 7.5918e+00 4.6 1.36e+09 1.1 0.0e+00 0.0e+00 2.2e+03  1  0  0  0 21   1  0  0  0 25 142165
MatMult             3177 1.0 7.0879e+01 1.2 4.55e+10 1.2 1.5e+07 1.5e+05 0.0e+00 11  8 31 29  0  16 10 69 45  0 508475
MatSolve            2244 1.0 4.4354e+01 1.6 2.94e+10 1.2 0.0e+00 0.0e+00 0.0e+00  6  5  0  0  0   9  7  0  0  0 520418
MatLUFactorSym         1 1.0 1.2130e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       408 1.0 4.3225e+01 1.2 2.44e+10 1.3 0.0e+00 0.0e+00 0.0e+00  7  4  0  0  0  10  5  0  0  0 415460
MatILUFactorSym        1 1.0 6.0943e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1439 1.0 6.2409e+01 2.0 0.00e+00 0.0 9.6e+05 1.8e+06 1.0e+03  8  0  2 23  9  12  0  5 35 11    -0
MatAssemblyEnd      1439 1.0 2.2776e+01 4.9 3.26e+08 0.0 1.9e+04 1.9e+04 1.7e+01  2  0  0  0  0   3  0  0  0  0  4733
MatGetRowIJ            1 1.0 1.1377e-05 97.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 4.7009e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       408 1.0 3.4306e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 5.7991e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 6.1371e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        408 1.0 1.9724e+00 1.2 2.96e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 1188458
MatPtAPSymbolic        1 1.0 1.2401e-01 1.0 0.00e+00 0.0 1.4e+04 2.5e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       204 1.0 1.4145e+01 1.0 1.18e+10 1.2 9.5e+05 4.5e+05 2.1e+02  2  2  2  6  2   3  3  4  9  2 663469
MatGetLocalMat       204 1.0 8.0231e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        204 1.0 1.1647e+00 2.2 0.00e+00 0.0 9.6e+05 4.5e+05 0.0e+00  0  0  2  6  0   0  0  5  9  0    -0
PCSetUp              204 1.0 1.5902e+02 1.0 1.06e+11 1.2 1.0e+07 1.8e+05 4.7e+03 26 19 22 24 43  39 24 49 37 53 519200
PCApply              933 1.0 2.2077e+02 1.1 1.08e+11 1.2 2.6e+07 1.0e+05 2.0e+03 35 20 55 34 18 Multiple stages 386053
PCApplyOnBlocks     2244 1.0 4.4377e+01 1.6 2.94e+10 1.2 0.0e+00 0.0e+00 0.0e+00  6  5  0  0  0  10  7  0  0  0 520144
KSPSetUp             204 1.0 7.0496e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             204 1.0 2.4204e+02 1.0 1.25e+11 1.2 3.0e+07 1.1e+05 4.0e+03 39 23 64 43 37 Multiple stages 406645
KSPGMRESOrthog      2973 1.0 3.5749e+01 3.1 1.12e+10 1.1 0.0e+00 0.0e+00 3.0e+03  4  2  0  0 27   6  3  0  0 33 248847
DMPlexCreateGmsh       1 1.0 5.3315e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.0730e+01 198.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         2 1.0 3.6853e-01 1.0 0.00e+00 0.0 5.9e+04 5.7e+01 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.1324e-02 1.0 0.00e+00 0.0 2.1e+05 6.6e+01 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.0451e-02 2272.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 4.3947e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 9.7633e-03 4.0 0.00e+00 0.0 1.1e+04 5.0e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.0142e-03 4.1 0.00e+00 0.0 5.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 4.9484e-03 1.5 0.00e+00 0.0 6.6e+03 3.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.6904e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.9402e-01 1.0 0.00e+00 0.0 3.4e+04 3.3e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 5.8492e-03 1.1 0.00e+00 0.0 3.4e+04 1.2e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 2.1812e-02 1.0 0.00e+00 0.0 1.1e+05 6.9e+01 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 2.2791e-02 1.0 0.00e+00 0.0 2.4e+05 3.5e+01 8.0e+01  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 8.4019e-03 1.2 0.00e+00 0.0 5.1e+04 3.3e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.1762e-02 16.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9328e-03 322.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 5.5516e+02 1.0 5.70e+11 1.3 4.7e+07 1.6e+05 1.0e+04 90 100 99 100 96 Multiple stages 772883
SNESSetUp              1 1.0 5.0622e-05 6.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     279 1.0 2.1461e+01 1.2 1.35e+11 1.4 2.9e+06 1.5e+05 0.0e+00  3 23  6  6  0   5 28 14  9  0 4511856
SNESJacobianEval     204 1.0 1.2724e+02 1.0 2.05e+11 1.4 1.9e+06 9.9e+05 8.2e+02 21 35  4 24  7  31 43  9 37  9 1167566
SNESLineSearch       204 1.0 1.3457e+01 1.0 1.02e+11 1.4 2.8e+06 1.5e+05 8.2e+02  2 17  6  6  7   3 21 13  9  9 5459682
firedrake              1 1.0 6.1742e+02 1.0 5.70e+11 1.3 4.7e+07 1.6e+05 1.1e+04 100 100 100 100 100 Multiple stages 694990
firedrake.__init__       1 1.0 1.6988e+01 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
CreateMesh             1 1.0 1.1206e+01 21.1 0.00e+00 0.0 5.0e+05 5.8e+01 2.0e+02  1  0  1  0  2   1  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 1.0731e+01 198.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.3606e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 6.3270e-06 7.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.7535e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.9192e-04 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 1.4689e-01 7.8 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.1842e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 1.4543e-01 8.3 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 1.4424e-01 8.8 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 1.4417e-01 8.8 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 8.6014e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.0588e-03 1.4 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 5.4797e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.1563e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 3.3265e-02 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 3.3141e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.5284e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.7200e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.0934e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 3.3097e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 6.7008e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2223 1.0 1.0845e+02 1.3 3.40e+11 1.4 2.7e+06 1.5e+05 1.5e+01 15 57  6  5  0  23 71 13  8  0 2261601
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 3.2769e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4446 1.0 2.6105e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.2694e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.2321e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.5994e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.5251e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.5250e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 9.5990e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 9.4515e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2223 1.0 6.6162e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2223 1.0 6.3545e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 7.8990e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.9032e+00 1.0 3.41e+07 1.1 8.5e+04 6.4e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0  5526
firedrake.interpolation.interpolate      11 1.0 4.3469e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 6.0147e+00 1.0 3.53e+07 1.1 9.5e+04 5.7e+04 3.4e+01  1  0  0  0  0   1  0  0  0  0  4665
firedrake.formmanipulation.split_form      12 1.0 4.0741e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 3.8032e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.7152e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0270e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     572 1.0 4.7974e-01 2.5 0.00e+00 0.0 2.7e+06 1.5e+05 2.0e+00  0  0  6  5  0   0  0 13  8  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.5042e+00 1.0 3.53e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  5097
firedrake.halo.Halo.global_to_local_end     572 1.0 1.4473e+01 117.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 9.2711e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 8.4002e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.9311e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6859e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.1521e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 5.1337e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 3.2482e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 4.6927e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.3465e+00 1.0 0.00e+00 0.0 2.8e+04 6.1e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.5586e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.5180e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0414e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0414e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 2.2353e+00 1.2 0.00e+00 0.0 2.4e+04 3.5e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 2.9366e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 5.5531e+02 1.0 5.70e+11 1.3 4.7e+07 1.6e+05 1.1e+04 90 100 99 100 97 Multiple stages 772672
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2624e-01 1040.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0161e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2619e-01 1234.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2616e-01 1395.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     558 1.0 4.9280e+00 1.4 3.20e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 5160151
Parloop_Cells_wrap_form0_exterior_facet_top_integral     558 1.0 1.1521e+00 1.0 1.04e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   717
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     558 1.0 1.2626e+00 1.1 7.69e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 35748
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     558 1.0 3.4735e+00 1.1 3.08e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 7048747
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     558 1.0 7.0578e+00 1.5 7.20e+10 1.8 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   1 14  0  0  0 6637194
firedrake.halo.Halo.local_to_global_begin     279 1.0 9.9724e-02 11.0 0.00e+00 0.0 1.3e+06 1.5e+05 0.0e+00  0  0  3  3  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     279 1.0 2.5780e+00 35.3 4.22e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9523
Parloop_Cells_wrap_form00_cell_integral     408 1.0 1.5818e+01 1.6 4.36e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   3 10  0  0  0 2193371
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     408 1.0 1.9035e+00 1.7 5.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 17654
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     408 1.0 1.8714e+01 1.3 5.79e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 11  0  0  0   4 13  0  0  0 2458930
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     408 1.0 4.9299e+01 2.1 1.04e+11 1.8 0.0e+00 0.0e+00 0.0e+00  6 16  0  0  0   9 20  0  0  0 1373352
firedrake.dmhooks.get_function_space       1 1.0 1.2521e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.7023e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      204 1.0 2.7626e+01 1.0 5.67e+07 0.0 0.0e+00 0.0e+00 2.0e+00  4  0  0  0  0   7  0  0  0  0    67
MGSetup Level 1      204 1.0 1.1607e+02 1.0 9.43e+10 1.2 9.5e+06 1.5e+05 4.3e+03 19 17 20 19 39  29 21 45 29 48 630415
firedrake.constant.Constant.assign      75 1.0 3.3794e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        204 1.0 5.0207e-02 3.4 0.00e+00 0.0 9.1e+05 4.0e+00 2.0e+02  0  0  2  0  2   0  0  3  0 10    -0
SFSetGraph           204 1.0 1.2978e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              204 1.0 6.2791e-02 2.8 0.00e+00 0.0 1.8e+06 3.2e+01 2.0e+02  0  0  4  0  2   0  0  7  0 10    -0
SFPack              6531 1.0 1.6628e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFUnpack            6531 1.0 3.6232e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2799 1.0 1.1327e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              3731 1.0 3.6826e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             5598 1.0 2.9471e+00 1.7 1.50e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 406047
VecAXPBYCZ          1866 1.0 1.3344e+00 1.4 1.88e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 1120968
VecScatterBegin     6531 1.0 1.8118e+00 2.8 0.00e+00 0.0 2.1e+07 1.2e+05 0.0e+00  0  0 45 34  0   1  0 83 100  0    -0
VecScatterEnd       6531 1.0 2.5957e+01 20.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
MatMult             3732 1.0 9.6058e+01 1.4 5.34e+10 1.2 1.7e+07 1.5e+05 0.0e+00 13 10 37 34  0  37 50 67 100  0 440737
MatMultAdd           933 1.0 2.4989e+00 1.3 1.13e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 359159
MatMultTranspose     933 1.0 1.8521e+00 2.4 1.13e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 484569
MatSolve            4665 1.0 1.3843e+02 1.3 4.91e+10 1.2 8.7e+06 7.7e+01 1.0e+03 20  9 18  0  9  59 45 33  0 52 277418
MatResidual          933 1.0 2.6090e+01 1.6 1.35e+10 1.2 4.3e+06 1.5e+05 0.0e+00  3  3  9  9  0  10 13 17 25  0 411412
PCSetUpOnBlocks     1866 1.0 1.8082e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             4665 1.0 1.3850e+02 1.3 4.91e+10 1.2 8.7e+06 7.7e+01 1.0e+03 20  9 18  0  9  59 45 33  0 52 277279
PCApplyOnBlocks     3732 1.0 8.5323e+01 1.7 4.89e+10 1.2 0.0e+00 0.0e+00 0.0e+00 11  9  0  0  0  32 45  0  0  0 449919
KSPSolve            2799 1.0 1.9902e+02 1.1 9.23e+10 1.2 2.2e+07 9.1e+04 2.0e+03 31 17 46 26 18  89 85 83 75 100 365292
MGSmooth Level 0     933 1.0 6.0718e+01 1.1 4.89e+08 262.1 8.7e+06 7.7e+01 2.0e+03  9  0 18  0 18  26  0 33  0 100   249
MGSmooth Level 1    1866 1.0 1.4587e+02 1.2 9.21e+10 1.2 1.3e+07 1.5e+05 0.0e+00 22 17 27 26  0  62 85 50 75  0 498281
MGResid Level 1      933 1.0 2.6093e+01 1.6 1.35e+10 1.2 4.3e+06 1.5e+05 0.0e+00  3  3  9  9  0  10 13 17 25  0 411359
MGInterp Level 1    1866 1.0 4.3032e+00 1.5 2.26e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 417122
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set  2683           2683
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            286
              Vector   905            905
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
Average time for MPI_Barrier(): 7.575e-06
Average time for zero size MPI_Send(): 2.181e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_inexact/large.profile # (source: code)
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

