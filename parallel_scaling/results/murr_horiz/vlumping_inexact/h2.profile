****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0072.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 23:49:02 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.159e+03     1.000   1.159e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.311e+12     1.121   1.241e+12  2.581e+14
Flops/sec:            1.132e+09     1.121   1.071e+09  2.227e+11
MPI Msg Count:        1.120e+05     3.127   7.585e+04  1.578e+07
MPI Msg Len (bytes):  1.111e+10     2.942   1.063e+05  1.676e+12
MPI Reductions:       1.307e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 6.7586e+02  58.3%  1.9220e+14  74.5%  6.066e+06  38.4%  1.636e+05       59.2%  1.052e+04  80.6%
 1:        MG Apply: 4.8277e+02  41.7%  6.5873e+13  25.5%  9.710e+06  61.6%  7.044e+04       40.8%  2.522e+03  19.3%

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

BuildTwoSided       1165 1.0 5.9745e+01 3.1 0.00e+00 0.0 1.5e+05 4.0e+00 1.2e+03  4  0  1  0  9   6  0  3  0 11    -0
BuildTwoSidedF      1126 1.0 6.2955e+01 2.4 0.00e+00 0.0 2.6e+05 1.3e+06 1.1e+03  4  0  2 20  9   7  0  4 33 11    -0
SFSetGraph            42 1.0 6.0267e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 3.0006e-02 1.8 0.00e+00 0.0 5.2e+04 2.7e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         717 1.0 3.4377e-01 3.1 0.00e+00 0.0 7.7e+05 9.5e+04 0.0e+00  0  0  5  4  0   0  0 13  7  0    -0
SFBcastEnd           717 1.0 1.4444e+01 151.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        310 1.0 7.4481e-02 15.3 0.00e+00 0.0 3.5e+05 1.0e+05 0.0e+00  0  0  2  2  0   0  0  6  4  0    -0
SFReduceEnd          310 1.0 2.2292e+00 36.9 3.01e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2039
SFFetchOpBegin         2 1.0 2.0567e-05 6.0 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.2406e-03 59.5 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.7554e-03 2.8 0.00e+00 0.0 1.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.3580e-02 1.3 0.00e+00 0.0 4.3e+04 2.7e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 5.4650e-03 5.6 0.00e+00 0.0 2.0e+04 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4895 1.0 1.3897e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4897 1.0 1.7994e-01 7.9 3.01e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 25265
VecDot               224 1.0 7.1869e-01 4.8 1.80e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2 49859
VecMDot             3642 1.0 4.9410e+01 3.2 1.41e+10 1.1 0.0e+00 0.0e+00 3.6e+03  3  1  0  0 28   5  1  0  0 35 56858
VecNorm             4613 1.0 1.6063e+01 2.5 3.70e+09 1.1 0.0e+00 0.0e+00 4.6e+03  1  0  0  0 35   2  0  0  0 44 45939
VecScale            4090 1.0 1.1526e+00 1.2 1.64e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 283831
VecCopy             1793 1.0 2.2929e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               896 1.0 7.1579e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              448 1.0 7.8837e-01 1.3 3.60e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 90904
VecWAXPY             224 1.0 4.2599e-01 1.1 8.99e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 42058
VecMAXPY            4090 1.0 2.1648e+01 1.1 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  2  0  0  0 156690
VecScatterBegin     3866 1.0 1.2656e+00 2.6 0.00e+00 0.0 4.4e+06 1.1e+05 0.0e+00  0  0 28 28  0   0  0 72 47  0    -0
VecScatterEnd       3866 1.0 2.1320e+01 12.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       448 1.0 3.0093e-01 1.4 3.60e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 238150
VecReduceComm        224 1.0 1.8907e-01 12.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2464 1.0 1.3439e+01 3.3 2.97e+09 1.1 0.0e+00 0.0e+00 2.5e+03  1  0  0  0 19   1  0  0  0 23 43993
MatMult             3866 1.0 1.5769e+02 1.2 1.10e+11 1.1 4.4e+06 1.1e+05 0.0e+00 13  8 28 28  0  22 11 72 47  0 138762
MatSolve            2464 1.0 9.9434e+01 1.4 6.80e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  5  0  0  0  13  7  0  0  0 135734
MatLUFactorSym         1 1.0 4.9338e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       448 1.0 5.6342e+01 1.2 5.64e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   8  6  0  0  0 196071
MatILUFactorSym        1 1.0 1.4927e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1579 1.0 6.6235e+01 2.3 0.00e+00 0.0 2.6e+05 1.3e+06 1.1e+03  4  0  2 20  9   7  0  4 33 11    -0
MatAssemblyEnd      1579 1.0 1.8963e+01 8.9 2.13e+08 0.0 4.5e+03 1.3e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0  1078
MatGetRowIJ            1 1.0 5.2070e-06 42.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.0667e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       448 1.0 7.5642e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.4639e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2208e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        448 1.0 4.6749e+00 1.4 6.48e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 275117
MatPtAPSymbolic        1 1.0 2.0115e-01 1.0 0.00e+00 0.0 3.4e+03 1.8e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       224 1.0 3.5756e+01 1.0 2.59e+10 1.1 2.5e+05 3.2e+05 2.3e+02  3  2  2  5  2   5  3  4  8  2 143857
MatGetLocalMat       224 1.0 1.7593e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        224 1.0 8.2608e-01 2.0 0.00e+00 0.0 2.6e+05 3.2e+05 0.0e+00  0  0  2  5  0   0  0  4  8  0    -0
PCSetUp              224 1.0 3.0694e+02 1.0 2.39e+11 1.1 2.8e+06 1.3e+05 5.2e+03 26 18 18 21 40  45 25 46 36 49 154079
PCApply             1402 1.0 4.9999e+02 1.1 3.31e+11 1.1 9.7e+06 7.0e+04 2.5e+03 42 26 62 41 19 Multiple stages 131748
PCApplyOnBlocks     2464 1.0 9.9458e+01 1.4 6.80e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  5  0  0  0  13  7  0  0  0 135702
KSPSetUp             224 1.0 1.3304e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             224 1.0 5.6117e+02 1.0 3.83e+11 1.1 1.1e+07 7.6e+04 5.6e+03 48 30 72 51 42 Multiple stages 135672
KSPGMRESOrthog      3642 1.0 6.6091e+01 2.0 2.82e+10 1.1 0.0e+00 0.0e+00 3.6e+03  4  2  0  0 28   8  3  0  0 35 85016
DMPlexCreateGmsh       1 1.0 1.0122e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.6597e+00 35.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 1.4712e-01 1.0 0.00e+00 0.0 1.4e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.4694e-02 1.0 0.00e+00 0.0 5.0e+04 3.6e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.5843e-02 4862.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 2.5334e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.5994e-03 1.1 0.00e+00 0.0 2.7e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.8025e-03 2.0 0.00e+00 0.0 1.3e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 8.4662e-03 1.2 0.00e+00 0.0 1.5e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 5.2280e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.8021e-01 1.0 0.00e+00 0.0 8.6e+03 2.3e+03 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 4.1282e-03 1.0 0.00e+00 0.0 8.0e+03 6.9e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 2.1159e-02 1.0 0.00e+00 0.0 2.6e+04 3.8e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 1.0018e-02 1.0 0.00e+00 0.0 5.7e+04 9.8e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 5.2956e-03 1.4 0.00e+00 0.0 1.2e+04 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 4.2868e-02 17.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 4.1190e-03 147.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 1.0967e+03 1.0 1.31e+12 1.1 1.6e+07 1.1e+05 1.3e+04 95 100 99 100 96 Multiple stages 235311
SNESSetUp              1 1.0 4.9326e-05 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     299 1.0 3.1100e+01 1.1 2.67e+11 1.2 7.6e+05 1.1e+05 0.0e+00  3 20  5  5  0   4 27 13  8  0 1664602
SNESJacobianEval     224 1.0 1.8709e+02 1.0 4.19e+11 1.1 5.1e+05 7.0e+05 9.0e+02 16 32  3 21  7  28 42  8 36  9 434982
SNESLineSearch       224 1.0 2.6033e+01 1.0 2.08e+11 1.2 7.6e+05 1.1e+05 9.0e+02  2 16  5  5  7   4 21 13  8  9 1546048
firedrake              1 1.0 1.1559e+03 1.0 1.31e+12 1.1 1.6e+07 1.1e+05 1.3e+04 100 100 100 100 100 Multiple stages 223257
firedrake.__init__       1 1.0 1.2118e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             1 1.0 3.8904e+00 11.7 0.00e+00 0.0 1.2e+05 2.7e+02 2.0e+02  0  0  1  0  2   0  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 3.6610e+00 35.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.4859e-03 38.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7140e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.3237e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.8934e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.0850e-02 1.2 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.1934e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 1.9105e-02 1.2 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 1.7863e-02 1.2 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 1.7787e-02 1.2 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 8.1942e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.6979e-03 1.3 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.0288e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.7233e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.2144e-02 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.1445e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.4850e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8785e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.6396e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.1403e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 8.7172e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2403 1.0 1.7714e+02 1.2 6.87e+11 1.2 7.0e+05 1.1e+05 1.5e+01 14 52  4  4  0  24 69 12  7  0 751592
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.0210e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4806 1.0 2.4329e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0931e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.4894e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.8546e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3190e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3189e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.6470e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.4832e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2403 1.0 7.2601e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2403 1.0 6.5746e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 6.6443e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 5.1333e+00 1.0 6.78e+07 1.1 2.0e+04 4.5e+04 1.2e+01  0  0  0  0  0   1  0  0  0  0  2633
firedrake.interpolation.interpolate      11 1.0 4.0633e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 6.1636e+00 1.0 7.02e+07 1.1 2.3e+04 4.1e+04 3.4e+01  1  0  0  0  0   1  0  0  0  0  2271
firedrake.formmanipulation.split_form      12 1.0 4.4324e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.2377e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 2.8154e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 2.2788e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     612 1.0 3.9420e-01 2.6 0.00e+00 0.0 7.0e+05 1.1e+05 2.0e+00  0  0  4  4  0   0  0 12  7  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.4073e+00 1.0 7.02e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2589
firedrake.halo.Halo.global_to_local_end     612 1.0 1.4431e+01 200.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 1.7590e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.6835e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.3461e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.7438e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.5084e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 1.6125e-01 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8802e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 1.5877e-01 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.3859e+00 1.0 0.00e+00 0.0 6.8e+03 4.4e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.3251e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4653e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1381e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1381e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.0638e+00 1.1 0.00e+00 0.0 5.7e+03 2.6e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.4163e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 1.0969e+03 1.0 1.31e+12 1.1 1.6e+07 1.1e+05 1.3e+04 95 100 99 100 98 Multiple stages 235253
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.5408e-01 821.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0635e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.5403e-01 966.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.5400e-01 1081.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     598 1.0 7.9574e+00 1.3 6.82e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  7  0  0  0 1708584
Parloop_Cells_wrap_form0_exterior_facet_top_integral     598 1.0 1.0289e+00 1.0 8.87e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1718
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     598 1.0 1.2620e+00 1.1 6.18e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13522
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     598 1.0 5.3548e+00 1.1 6.55e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  7  0  0  0 2438559
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     598 1.0 1.1312e+01 1.2 1.34e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 10  0  0  0   2 13  0  0  0 2218199
firedrake.halo.Halo.local_to_global_begin     299 1.0 8.7755e-02 8.7 0.00e+00 0.0 3.4e+05 1.1e+05 0.0e+00  0  0  2  2  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     299 1.0 2.2316e+00 35.3 3.01e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2037
Parloop_Cells_wrap_form00_cell_integral     448 1.0 3.2422e+01 1.5 9.54e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   4 10  0  0  0 586230
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     448 1.0 1.9221e+00 1.7 4.71e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6773
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     448 1.0 3.5589e+01 1.2 1.26e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 13  0  0  0 706555
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     448 1.0 7.9806e+01 1.3 1.99e+11 1.2 0.0e+00 0.0e+00 0.0e+00  6 14  0  0  0  10 19  0  0  0 466075
firedrake.dmhooks.get_function_space       1 1.0 1.1922e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1605e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      224 1.0 2.0621e+01 1.0 1.66e+08 23.7 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   3  0  0  0  0   230
MGSetup Level 1      224 1.0 2.4963e+02 1.0 2.13e+11 1.1 2.5e+06 1.1e+05 4.7e+03 22 16 16 16 36  37 22 42 27 45 168825
firedrake.constant.Constant.assign      75 1.0 3.5335e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        224 1.0 3.6276e-02 7.0 0.00e+00 0.0 3.0e+05 4.0e+00 2.2e+02  0  0  2  0  2   0  0  3  0  9    -0
SFSetGraph           224 1.0 9.7019e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              224 1.0 4.7669e-02 4.3 0.00e+00 0.0 6.0e+05 2.0e+02 2.2e+02  0  0  4  0  2   0  0  6  0  9    -0
SFPack              9814 1.0 1.8811e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            9814 1.0 6.9550e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             4206 1.0 4.6252e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              5607 1.0 1.1552e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             8412 1.0 9.9476e+00 1.7 4.50e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 90184
VecAXPBYCZ          2804 1.0 4.4761e+00 1.5 5.63e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 250529
VecScatterBegin     9814 1.0 2.1090e+00 2.6 0.00e+00 0.0 8.2e+06 8.3e+04 0.0e+00  0  0 52 41  0   0  0 85 100  0    -0
VecScatterEnd       9814 1.0 5.0195e+01 12.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
MatMult             5608 1.0 2.4869e+02 1.3 1.60e+11 1.1 6.3e+06 1.1e+05 0.0e+00 19 12 40 41  0  45 48 65 100  0 127635
MatMultAdd          1402 1.0 7.0226e+00 1.2 3.38e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 95809
MatMultTranspose    1402 1.0 4.7274e+00 1.8 3.38e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 142326
MatSolve            7010 1.0 2.7187e+02 1.4 1.55e+11 1.1 3.4e+06 5.5e+02 1.1e+03 20 12 21  0  9  49 47 35  0 44 113167
MatResidual         1402 1.0 6.9311e+01 1.5 4.05e+10 1.1 1.6e+06 1.1e+05 0.0e+00  5  3 10 10  0  12 12 16 25  0 116106
PCSetUpOnBlocks     2804 1.0 3.2456e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             7010 1.0 2.7199e+02 1.4 1.55e+11 1.1 3.4e+06 5.5e+02 1.1e+03 20 12 21  0  9  49 47 35  0 44 113119
PCApplyOnBlocks     5608 1.0 2.5347e+02 1.4 1.55e+11 1.1 0.0e+00 0.0e+00 0.0e+00 18 12  0  0  0  44 47  0  0  0 121189
KSPSolve            4206 1.0 4.4191e+02 1.1 2.84e+11 1.1 8.1e+06 6.3e+04 2.5e+03 36 22 51 31 19  86 86 84 75 100 127807
MGSmooth Level 0    1402 1.0 3.2591e+01 1.8 1.93e+09 45.3 3.4e+06 5.5e+02 2.5e+03  2  0 21  0 19   5  0 35  0 100  1510
MGSmooth Level 1    2804 1.0 4.2337e+02 1.2 2.84e+11 1.1 4.8e+06 1.1e+05 0.0e+00 34 22 30 31  0  81 86 49 75  0 133288
MGResid Level 1     1402 1.0 6.9317e+01 1.5 4.05e+10 1.1 1.6e+06 1.1e+05 0.0e+00  5  3 10 10  0  12 12 16 25  0 116096
MGInterp Level 1    2804 1.0 1.1291e+01 1.3 6.75e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 119176
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set   799            799
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            306
              Vector  1005           1005
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

           Index Set   448            448
   Star Forest Graph   224              0
              Vector   224            224
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 1.02762e-05
Average time for zero size MPI_Send(): 2.04157e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/vlumping_inexact/h2.profile # (source: code)
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

