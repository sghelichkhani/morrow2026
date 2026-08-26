****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0543.gadi.nci.org.au with 416 processes, by sg8812 on Tue Aug 25 22:21:21 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.967e+02     1.000   9.967e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.703e+11     1.208   2.459e+11  1.023e+14
Flops/sec:            2.712e+08     1.208   2.467e+08  1.026e+11
MPI Msg Count:        2.643e+04     4.263   1.723e+04  7.170e+06
MPI Msg Len (bytes):  2.722e+09     2.779   1.107e+05  7.938e+11
MPI Reductions:       5.975e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 9.9665e+02 100.0%  1.0229e+14 100.0%  7.170e+06 100.0%  1.107e+05      100.0%  5.956e+03  99.7%

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

BuildTwoSided        404 1.0 1.8423e+01 8.3 0.00e+00 0.0 1.6e+05 4.0e+00 4.0e+02  1  0  2  0  7   1  0  2  0  7    -0
BuildTwoSidedF       366 1.0 1.8287e+01 8.5 0.00e+00 0.0 2.2e+05 4.6e+05 3.7e+02  1  0  3 13  6   1  0  3 13  6    -0
SFSetGraph            41 1.0 5.3245e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 2.9043e-01 6.3 0.00e+00 0.0 1.0e+05 2.7e+03 3.8e+01  0  0  1  0  1   0  0  1  0  1    -0
SFBcastBegin         338 1.0 1.7969e-01 3.6 0.00e+00 0.0 7.1e+05 8.3e+04 0.0e+00  0  0 10  7  0   0  0 10  7  0    -0
SFBcastEnd           338 1.0 8.4795e+00 160.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        134 1.0 3.3473e-02 4.3 0.00e+00 0.0 3.1e+05 9.5e+04 0.0e+00  0  0  4  4  0   0  0  4  4  0    -0
SFReduceEnd          134 1.0 4.5709e+00 177.9 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   802
SFFetchOpBegin         2 1.0 2.2038e-05 7.0 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.0185e-03 66.1 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.7096e-03 2.7 0.00e+00 0.0 2.8e+03 8.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.4712e-02 1.3 0.00e+00 0.0 9.4e+04 2.0e+02 2.5e+01  0  0  1  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 5.4951e-03 5.0 0.00e+00 0.0 4.1e+04 1.1e+02 2.2e+01  0  0  1  0  0   0  0  1  0  0    -0
SFPack              2975 1.0 1.5074e+00 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2977 1.0 6.8549e-02 4.9 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 53453
VecDot                91 1.0 3.0172e-01 9.7 3.34e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  2   0  0  0  0  2 43940
VecMDot             2394 1.0 1.7432e+01 2.0 1.20e+10 1.1 0.0e+00 0.0e+00 2.4e+03  1  5  0  0 40   1  5  0  0 40 271862
VecNorm             2713 1.0 5.7167e+00 5.0 9.97e+08 1.1 0.0e+00 0.0e+00 2.7e+03  0  0  0  0 45   0  0  0  0 46 69138
VecScale            2501 1.0 1.1391e-01 1.2 4.60e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1599319
VecCopy              866 1.0 5.2798e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2699 1.0 8.8348e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              123 1.0 7.0086e-02 1.4 4.52e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 255679
VecWAXPY              91 1.0 7.0068e-02 1.2 1.67e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 94604
VecMAXPY            2501 1.0 1.2811e+01 1.1 1.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 397145
VecScatterBegin     2501 1.0 1.5000e+00 4.2 0.00e+00 0.0 5.8e+06 1.0e+05 0.0e+00  0  0 81 76  0   0  0 81 76  0    -0
VecScatterEnd       2501 1.0 6.1200e+00 27.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 4.5464e-02 2.6 6.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 583212
VecReduceComm         91 1.0 4.4690e-02 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2501 1.0 2.0499e+00 3.3 1.38e+09 1.1 0.0e+00 0.0e+00 2.5e+03  0  1  0  0 42   0  1  0  0 42 266617
MatMult             2501 1.0 6.7233e+01 1.2 5.10e+10 1.1 5.8e+06 1.0e+05 0.0e+00  6 20 81 76  0   6 20 81 76  0 299524
MatConvert            91 1.0 7.7004e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatAssemblyBegin     549 1.0 1.8634e+01 5.9 0.00e+00 0.0 2.2e+05 4.6e+05 3.7e+02  1  0  3 13  6   1  0  3 13  6    -0
MatAssemblyEnd       549 1.0 3.7521e+00 3.1 3.42e+07 0.0 4.7e+03 2.6e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  1525
MatGetRowIJ            4 1.0 1.7263e-05 7.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        91 1.0 3.3106e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 4.1419e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO      182 1.0 6.6469e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp               91 1.0 1.3494e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00 14  0  0  0  0  14  0  0  0  0    -0
PCApply             2501 1.0 5.9111e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 59  0  0  0  0  59  0  0  0  0    -0
KSPSetUp              91 1.0 8.9472e-03 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 6.7772e+02 1.0 7.53e+10 1.1 5.6e+06 1.0e+05 4.9e+03 68 29 78 74 82  68 29 78 74 82 43966
KSPGMRESOrthog      2394 1.0 2.8770e+01 1.4 2.39e+10 1.1 0.0e+00 0.0e+00 2.4e+03  2  9  0  0 40   2  9  0  0 40 329448
Mesh Partition         2 1.0 2.4961e-01 1.0 0.00e+00 0.0 2.9e+04 1.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.5405e-02 1.0 0.00e+00 0.0 9.7e+04 2.5e+02 1.1e+02  0  0  1  0  2   0  0  1  0  2    -0
DMPlexPartSelf         1 1.0 1.5259e-02 4112.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 3.2681e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.7986e-03 1.3 0.00e+00 0.0 5.6e+03 1.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.4566e-03 1.6 0.00e+00 0.0 2.8e+03 7.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 7.5338e-03 1.3 0.00e+00 0.0 3.2e+03 1.2e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.8784e-01 1.0 0.00e+00 0.0 1.6e+04 1.4e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 4.5352e-03 1.1 0.00e+00 0.0 1.7e+04 4.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.0317e-02 1.0 0.00e+00 0.0 4.6e+04 2.8e+02 7.6e+01  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 1.4947e-02 1.2 0.00e+00 0.0 1.1e+05 1.0e+02 8.0e+01  0  0  2  0  1   0  0  2  0  1    -0
DMPlexDistField        3 1.0 5.9605e-03 1.2 0.00e+00 0.0 2.5e+04 1.2e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.4062e-04 1.2 0.00e+00 0.0 1.2e+04 6.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.1816e-02 6.6 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 3.3587e-03 192.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.5418e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 9.6357e+02 1.0 2.70e+11 1.2 6.9e+06 1.1e+05 5.7e+03 97 100 96 99 95  97 100 96 99 95 106157
SNESSetUp              1 1.0 3.8193e-05 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.5986e+01 1.1 7.91e+10 1.3 6.4e+05 1.0e+05 1.0e+00  4 29  9  8  0   4 29  9  8  0 640058
SNESJacobianEval      91 1.0 1.0178e+02 1.0 1.14e+11 1.3 4.2e+05 2.7e+05 3.6e+02 10 41  6 14  6  10 41  6 14  6 415106
SNESLineSearch        91 1.0 2.4526e+01 1.0 6.16e+10 1.2 6.4e+05 1.0e+05 3.6e+02  2 22  9  8  6   2 22  9  8  6 935421
firedrake              1 1.0 9.9346e+02 1.0 2.70e+11 1.2 7.2e+06 1.1e+05 6.0e+03 100 100 100 100 100 100 100 100 100 100 102964
firedrake.__init__       1 1.0 1.5340e+01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.5849e+00 14.3 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  3  0  3   0  0  3  0  3    -0
CreateMesh             1 1.0 3.7431e-01 1.0 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  3  0  3   0  0  3  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2533e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.0160e-06 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.3802e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.9811e-04 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.7496e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 4.8390e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.6893e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.6277e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.6245e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.2425e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.2882e-02 1.7 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.3619e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0664e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 3.7184e-02 10.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.6291e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.0315e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5671e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.8159e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.6250e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.1214e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3759e+02 1.2 1.93e+11 1.3 5.8e+05 1.0e+05 6.0e+00 13 70  8  7  0  13 70  8  7  0 520942
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.5925e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.4270e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.1200e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 1.9963e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.8763e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.3066e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.3065e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 9.0510e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.9294e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 3.2059e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.5598e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.0102e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.6570e-01 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1131
firedrake.interpolation.interpolate       1 1.0 3.8490e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.6534e-01 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1132
firedrake.formmanipulation.split_form       3 1.0 2.2866e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.8618e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.3122e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 2.9799e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.7089e-01 3.4 0.00e+00 0.0 5.8e+05 1.0e+05 2.0e+00  0  0  8  7  0   0  0  8  7  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.9961e-01 1.0 2.76e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1215
firedrake.halo.Halo.global_to_local_end     243 1.0 8.0906e+00 262.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.1038e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.7979e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.0134e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 8.0161e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.0795e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6057e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.7940e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 7.9637e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.7708e+00 1.0 0.00e+00 0.0 1.4e+04 5.7e+05 2.3e+01  1  0  0  1  0   1  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9137e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4047e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1435e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1435e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.7077e+00 1.3 0.00e+00 0.0 7.1e+03 5.6e+05 8.0e+00  0  0  0  1  0   0  0  0  1  0    -0
MatZeroInitial         1 1.0 4.3986e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 9.6364e+02 1.0 2.70e+11 1.2 6.9e+06 1.1e+05 5.7e+03 97 100 96 99 96  97 100 96 99 96 106150
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.9027e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1981e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.0979e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.9042e+00 1.2 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 764431
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0925e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7069
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0480e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7222
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.2453e+01 1.3 1.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 561541
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7435e+01 1.3 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  2 15  0  0  0   2 15  0  0  0 894808
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.6989e-02 3.3 0.00e+00 0.0 2.8e+05 1.0e+05 0.0e+00  0  0  4  4  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 4.5720e+00 167.9 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   801
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5801e+01 1.1 2.35e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   2  9  0  0  0 590143
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3990e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5632
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3761e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5687
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8302e+01 1.1 2.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   3 10  0  0  0 347278
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.6175e+01 1.4 6.54e+10 1.4 0.0e+00 0.0e+00 0.0e+00  4 23  0  0  0   4 23  0  0  0 499490
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    67             67
              Viewer     1              1
           Index Set  1407           1407
   IS L to G Mapping     4              4
             Section    72             72
   Star Forest Graph    71             71
              Vector    56             56
              Matrix     8              8
      Preconditioner     1              1
       Krylov Solver     1              1
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
Average time to get PetscTime(): 2.46e-08
Average time for MPI_Barrier(): 1.07792e-05
Average time for zero size MPI_Send(): 2.0383e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/boomeramg/large.profile # (source: environment)
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

