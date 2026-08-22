****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0682.gadi.nci.org.au with 208 processes, by sg8812 on Fri Aug 21 23:26:13 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.986e+02     1.000   5.986e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.625e+11     1.143   5.283e+11  1.099e+14
Flops/sec:            9.397e+08     1.143   8.826e+08  1.836e+11
MPI Msg Count:        6.121e+04     3.984   4.169e+04  8.671e+06
MPI Msg Len (bytes):  5.226e+09     2.410   9.587e+04  8.314e+11
MPI Reductions:       1.497e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.9858e+02 100.0%  1.0989e+14 100.0%  8.671e+06 100.0%  9.587e+04      100.0%  1.496e+04  99.9%

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

BuildTwoSided        404 1.0 1.4763e+01 8.0 0.00e+00 0.0 7.8e+04 4.0e+00 4.0e+02  1  0  1  0  3   1  0  1  0  3    -0
BuildTwoSidedF       366 1.0 1.4622e+01 8.4 0.00e+00 0.0 1.1e+05 4.1e+05 3.7e+02  1  0  1  5  2   1  0  1  5  2    -0
SFSetGraph            41 1.0 4.8544e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 2.9606e-01 7.2 0.00e+00 0.0 5.0e+04 2.4e+03 3.8e+01  0  0  1  0  0   0  0  1  0  0    -0
SFBcastBegin         338 1.0 1.4085e-01 2.9 0.00e+00 0.0 3.5e+05 7.4e+04 0.0e+00  0  0  4  3  0   0  0  4  3  0    -0
SFBcastEnd           338 1.0 7.1869e+00 192.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        134 1.0 2.8160e-02 3.8 0.00e+00 0.0 1.5e+05 8.6e+04 0.0e+00  0  0  2  2  0   0  0  2  2  0    -0
SFReduceEnd          134 1.0 3.4452e+00 157.3 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   464
SFFetchOpBegin         2 1.0 1.9876e-05 8.4 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 6.5484e-04 55.9 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.6828e-03 3.3 0.00e+00 0.0 1.4e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.1693e-02 1.4 0.00e+00 0.0 4.6e+04 2.3e+02 2.5e+01  0  0  1  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 5.3967e-03 6.0 0.00e+00 0.0 2.1e+04 1.3e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              7557 1.0 2.1915e+00 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            7559 1.0 5.6742e-02 3.7 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 28198
VecDot                91 1.0 2.4423e-01 12.3 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 26996
VecMDot             6813 1.0 5.0298e+01 1.9 3.50e+10 1.1 0.0e+00 0.0e+00 6.8e+03  6  6  0  0 45   6  6  0  0 46 138778
VecNorm             7295 1.0 7.5049e+00 4.5 2.65e+09 1.1 0.0e+00 0.0e+00 7.3e+03  1  0  0  0 49   1  0  0  0 49 70427
VecScale            7083 1.0 2.9822e-01 1.1 1.29e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 860429
VecCopy             1355 1.0 6.3129e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               361 1.0 1.0933e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              449 1.0 1.7449e-01 1.6 1.63e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 186442
VecWAXPY              91 1.0 6.9604e-02 1.1 1.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47363
VecMAXPY            7083 1.0 3.7403e+01 1.1 3.75e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  7  0  0  0   6  7  0  0  0 199820
VecScatterBegin     7083 1.0 2.3061e+00 2.4 0.00e+00 0.0 8.0e+06 9.3e+04 0.0e+00  0  0 92 90  0   0  0 92 90  0    -0
VecScatterEnd       7083 1.0 2.6127e+01 47.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       182 1.0 3.8657e-02 3.0 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 341122
VecReduceComm         91 1.0 2.7199e-01 58.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        7083 1.0 6.1599e+00 3.4 3.86e+09 1.1 0.0e+00 0.0e+00 7.1e+03  1  1  0  0 47   1  1  0  0 47 124967
MatMult             7083 1.0 1.9525e+02 1.2 1.43e+11 1.1 8.0e+06 9.3e+04 0.0e+00 30 26 92 90  0  30 26 92 90  0 145108
MatSolve            7083 1.0 1.7394e+02 1.1 1.35e+11 1.1 0.0e+00 0.0e+00 0.0e+00 27 24  0  0  0  27 24  0  0  0 153832
MatLUFactorNum        91 1.0 9.6166e+00 1.2 2.00e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 403941
MatILUFactorSym        1 1.0 1.0908e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     366 1.0 1.4772e+01 5.9 0.00e+00 0.0 1.1e+05 4.1e+05 3.7e+02  1  0  1  5  2   1  0  1  5  2    -0
MatAssemblyEnd       366 1.0 2.4687e+00 7.0 2.93e+07 0.0 2.3e+03 2.3e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  1013
MatGetRowIJ            1 1.0 6.0360e-06 49.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.6956e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        91 1.0 3.1485e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 3.0868e-03 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks       91 1.0 9.7281e+00 1.2 2.00e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 399314
PCApply             7083 1.0 1.7403e+02 1.1 1.35e+11 1.1 0.0e+00 0.0e+00 0.0e+00 27 24  0  0  0  27 24  0  0  0 153749
PCApplyOnBlocks     7083 1.0 1.7401e+02 1.1 1.35e+11 1.1 0.0e+00 0.0e+00 0.0e+00 27 24  0  0  0  27 24  0  0  0 153770
KSPSetUp              91 1.0 8.5105e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 4.1879e+02 1.0 3.53e+11 1.1 7.9e+06 9.3e+04 1.4e+04 70 64 91 89 93  70 64 91 89 93 167104
KSPGMRESOrthog      6813 1.0 8.3272e+01 1.4 7.01e+10 1.1 0.0e+00 0.0e+00 6.8e+03 12 13  0  0 45  12 13  0  0 46 167648
Mesh Partition         2 1.0 1.2970e-01 1.0 0.00e+00 0.0 1.4e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.2476e-02 1.0 0.00e+00 0.0 4.8e+04 3.1e+02 1.1e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 9.6961e-03 3082.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.8995e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.4168e-03 1.4 0.00e+00 0.0 2.7e+03 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.4271e-03 2.3 0.00e+00 0.0 1.4e+03 8.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.1772e-03 1.5 0.00e+00 0.0 1.6e+03 1.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.5849e-01 1.0 0.00e+00 0.0 8.1e+03 1.7e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 3.4772e-03 1.0 0.00e+00 0.0 8.1e+03 5.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 2.0089e-02 1.0 0.00e+00 0.0 2.3e+04 3.3e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 9.2325e-03 1.1 0.00e+00 0.0 5.5e+04 1.1e+02 8.0e+01  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 5.0599e-03 1.3 0.00e+00 0.0 1.2e+04 1.5e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.0979e-04 1.2 0.00e+00 0.0 5.7e+03 7.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 6.0525e-03 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 2.1429e-03 100.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 9.0732e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 5.7247e+02 1.0 5.63e+11 1.1 8.5e+06 9.7e+04 1.5e+04 96 100 98 100 98  96 100 98 100 98 191961
SNESSetUp              1 1.0 3.7860e-05 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4443e+01 1.1 7.74e+10 1.2 3.1e+05 9.3e+04 1.0e+00  7 13  4  3  0   7 13  4  3  0 329128
SNESJacobianEval      91 1.0 9.8148e+01 1.0 1.11e+11 1.2 2.1e+05 2.4e+05 3.6e+02 16 19  2  6  2  16 19  2  6  2 213909
SNESLineSearch        91 1.0 2.3397e+01 1.0 6.02e+10 1.2 3.1e+05 9.3e+04 3.6e+02  4 10  4  3  2   4 10  4  3  2 487290
firedrake              1 1.0 5.9578e+02 1.0 5.63e+11 1.1 8.7e+06 9.6e+04 1.5e+04 100 100 100 100 100 100 100 100 100 100 184450
firedrake.__init__       1 1.0 1.1104e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.5356e+00 24.4 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  1  0  1  0  1   1  0  1  0  1    -0
CreateMesh             1 1.0 2.1712e-01 1.0 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.1306e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7050e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.3327e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 7.2166e-04 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 1.9828e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 4.1570e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 1.9234e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 1.8630e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 1.8601e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 7.1344e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 5.3132e-03 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.1232e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.3085e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.1426e-02 7.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.5401e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.9029e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5977e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.8683e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.4973e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.3853e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3299e+02 1.1 1.89e+11 1.2 2.8e+05 9.1e+04 6.0e+00 21 32  3  3  0  21 32  3  3  0 267824
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.1674e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.2443e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.1082e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.4796e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.8210e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.1328e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.1327e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 7.9858e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 7.8761e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 3.0758e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.8363e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 5.1810e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.5226e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   571
firedrake.interpolation.interpolate       1 1.0 4.1272e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.5189e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   571
firedrake.formmanipulation.split_form       3 1.0 2.2808e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 8.5412e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.1273e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.0447e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.0403e-01 5.1 0.00e+00 0.0 2.8e+05 9.1e+04 2.0e+00  0  0  3  3  0   0  0  3  3  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.8758e-01 1.0 2.73e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   612
firedrake.halo.Halo.global_to_local_end     243 1.0 6.9204e+00 239.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.5471e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.3307e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5107e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 8.5137e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 9.3063e-05 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.7927e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3523e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.1705e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.3970e+00 1.0 0.00e+00 0.0 6.8e+03 5.2e+05 2.3e+01  2  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9076e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.8211e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1513e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1513e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         1 1.0 2.5556e+00 1.3 0.00e+00 0.0 3.4e+03 5.1e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.1890e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 5.7253e+02 1.0 5.63e+11 1.1 8.5e+06 9.7e+04 1.5e+04 96 100 98 100 98  96 100 98 100 98 191940
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.2180e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.4114e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.1214e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.2123e+00 1.1 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 412201
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0684e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4482
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0507e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4521
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.9361e+00 1.1 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 349652
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7015e+01 1.3 4.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   3  7  0  0  0 455366
firedrake.halo.Halo.local_to_global_begin     121 1.0 4.0346e-02 3.8 0.00e+00 0.0 1.4e+05 9.3e+04 0.0e+00  0  0  2  2  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.4462e+00 149.0 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   464
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5873e+01 1.1 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 292176
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4039e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3523
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3617e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3586
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8103e+01 1.1 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   4  4  0  0  0 173750
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.4487e+01 1.3 6.34e+10 1.3 0.0e+00 0.0e+00 0.0e+00  6 10  0  0  0   6 10  0  0  0 257490
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    65             65
              Viewer     1              1
           Index Set   797            797
   IS L to G Mapping     4              4
             Section    72             72
   Star Forest Graph    71             71
              Vector    58             58
              Matrix     8              8
      Preconditioner     2              2
       Krylov Solver     2              2
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    12             12
            DM Label    50             50
    GraphPartitioner     3              3
     Discrete System    19             19
           Weak Form    19             19
========================================================================================================================
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 9.3234e-06
Average time for zero size MPI_Send(): 2.15482e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/bjacobi/medium.profile # (source: environment)
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

