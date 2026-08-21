****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0273.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 23:36:28 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.268e+02     1.000   4.268e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.124e+11     1.242   1.018e+11  8.474e+13
Flops/sec:            2.633e+08     1.242   2.386e+08  1.985e+11
MPI Msg Count:        2.088e+04     8.188   7.119e+03  5.923e+06
MPI Msg Len (bytes):  1.143e+09     2.968   1.182e+05  6.999e+11
MPI Reductions:       2.396e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.2682e+02 100.0%  8.4738e+13 100.0%  5.923e+06 100.0%  1.182e+05      100.0%  2.377e+03  99.2%

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

BuildTwoSided        180 1.0 8.4193e+00 6.0 0.00e+00 0.0 1.9e+05 4.0e+00 1.8e+02  1  0  3  0  8   1  0  3  0  8    -0
BuildTwoSidedF       142 1.0 8.2687e+00 6.3 0.00e+00 0.0 1.8e+05 5.6e+05 1.4e+02  1  0  3 14  6   1  0  3 14  6    -0
SFSetGraph            41 1.0 5.9070e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 3.1046e-01 6.0 0.00e+00 0.0 2.1e+05 3.0e+03 3.8e+01  0  0  3  0  2   0  0  3  0  2    -0
SFBcastBegin         226 1.0 9.1927e-02 3.0 0.00e+00 0.0 9.1e+05 7.9e+04 0.0e+00  0  0 15 10  0   0  0 15 10  0    -0
SFBcastEnd           226 1.0 4.5146e+00 64.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         78 1.0 1.7375e-02 16.0 0.00e+00 0.0 3.6e+05 9.9e+04 0.0e+00  0  0  6  5  0   0  0  6  5  0    -0
SFReduceEnd           78 1.0 1.7503e+00 138.2 7.30e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2548
SFFetchOpBegin         2 1.0 2.1671e-05 9.2 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 8.5616e-04 51.4 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.0678e-03 4.2 0.00e+00 0.0 5.7e+03 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 2.2986e-02 1.4 0.00e+00 0.0 1.9e+05 1.6e+02 2.5e+01  0  0  3  0  1   0  0  3  0  1    -0
SFSectionSF           22 1.0 1.0411e-02 5.8 0.00e+00 0.0 8.2e+04 9.4e+01 2.2e+01  0  0  1  0  1   0  0  1  0  1    -0
SFPack              1206 1.0 3.7079e-01 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1208 1.0 3.8435e-02 14.1 7.30e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 116026
VecDot                35 1.0 1.3197e-01 9.0 1.26e+07 1.1 0.0e+00 0.0e+00 3.5e+01  0  0  0  0  1   0  0  0  0  1 76259
VecMDot              864 1.0 3.8469e+00 1.1 4.00e+09 1.1 0.0e+00 0.0e+00 8.6e+02  1  4  0  0 36   1  4  0  0 36 830864
VecNorm             1000 1.0 2.2388e+00 4.2 3.59e+08 1.1 0.0e+00 0.0e+00 1.0e+03  0  0  0  0 42   0  0  0  0 42 128435
VecScale             900 1.0 3.8272e-02 1.2 1.62e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3380910
VecCopy              301 1.0 1.8892e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               971 1.0 3.2088e-01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               37 1.0 1.6464e-02 1.8 1.33e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 646193
VecWAXPY              35 1.0 2.6158e-02 1.2 6.29e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 192367
VecMAXPY             900 1.0 4.2309e+00 1.1 4.31e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 814185
VecScatterBegin      900 1.0 3.0659e-01 3.1 0.00e+00 0.0 4.3e+06 1.2e+05 0.0e+00  0  0 72 71  0   0  0 72 71  0    -0
VecScatterEnd        900 1.0 2.1836e+00 34.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith        70 1.0 1.3016e-02 2.2 2.52e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1546368
VecReduceComm         35 1.0 3.3709e-02 11.6 0.00e+00 0.0 0.0e+00 0.0e+00 3.5e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize         900 1.0 6.6044e-01 2.8 4.85e+08 1.1 0.0e+00 0.0e+00 9.0e+02  0  0  0  0 38   0  0  0  0 38 587758
MatMult              900 1.0 2.3793e+01 1.2 1.79e+10 1.1 4.3e+06 1.2e+05 0.0e+00  5 17 72 71  0   5 17 72 71  0 601652
MatConvert            35 1.0 4.2600e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatAssemblyBegin     213 1.0 8.3651e+00 5.4 0.00e+00 0.0 1.8e+05 5.6e+05 1.4e+02  1  0  3 14  6   1  0  3 14  6    -0
MatAssemblyEnd       213 1.0 3.0999e+00 1.7 1.45e+07 0.0 9.5e+03 2.9e+04 6.0e+00  1  0  0  0  0   1  0  0  0  0  1609
MatGetRowIJ            4 1.0 1.2951e-05 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        35 1.0 8.3496e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 2.5097e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       70 1.0 2.5299e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp               35 1.0 5.8506e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00 14  0  0  0  0  14  0  0  0  0    -0
PCApply              900 1.0 2.1336e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 50  0  0  0  0  50  0  0  0  0    -0
KSPSetUp              35 1.0 7.2377e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              35 1.0 2.4158e+02 1.0 2.60e+10 1.1 4.1e+06 1.2e+05 1.8e+03 57 25 69 68 74  57 25 69 68 74 86092
KSPGMRESOrthog       864 1.0 7.7773e+00 1.1 7.99e+09 1.1 0.0e+00 0.0e+00 8.6e+02  2  8  0  0 36   2  8  0  0 36 821955
Mesh Partition         2 1.0 5.3328e-01 1.0 0.00e+00 0.0 5.9e+04 1.6e+02 2.5e+01  0  0  1  0  1   0  0  1  0  1    -0
Mesh Migration         2 1.0 7.4194e-02 1.0 0.00e+00 0.0 2.0e+05 2.1e+02 1.1e+02  0  0  3  0  5   0  0  3  0  5    -0
DMPlexPartSelf         1 1.0 2.5924e-02 5046.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 5.9406e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 9.5764e-03 3.8 0.00e+00 0.0 1.1e+04 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.5941e-03 1.9 0.00e+00 0.0 5.7e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1735e-02 1.2 0.00e+00 0.0 6.5e+03 9.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.9746e-01 1.0 0.00e+00 0.0 3.2e+04 1.1e+03 6.3e+01  0  0  1  0  3   0  0  1  0  3    -0
DMPlexDistCones        2 1.0 8.0618e-03 1.1 0.00e+00 0.0 3.4e+04 3.6e+02 4.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistLabels       2 1.0 5.0136e-02 1.0 0.00e+00 0.0 9.3e+04 2.3e+02 7.6e+01  0  0  2  0  3   0  0  2  0  3    -0
DMPlexDistOvrlp        1 1.0 2.3718e-02 1.1 0.00e+00 0.0 2.3e+05 9.1e+01 8.0e+01  0  0  4  0  3   0  0  4  0  3    -0
DMPlexDistField        3 1.0 1.0248e-02 1.2 0.00e+00 0.0 5.2e+04 1.0e+02 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistData         1 1.0 1.2539e-04 1.2 0.00e+00 0.0 2.4e+04 5.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.5171e-02 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 5.3791e-03 372.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.7965e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 3.8263e+02 1.0 1.12e+11 1.2 5.4e+06 1.3e+05 2.1e+03 90 100 90 97 87  90 100 90 97 87 221457
SNESSetUp              1 1.0 3.8364e-05 6.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      65 1.0 3.1608e+01 1.1 4.21e+10 1.3 7.7e+05 1.1e+05 1.0e+00  7 37 13 13  0   7 37 13 13  0 987878
SNESJacobianEval      35 1.0 4.9569e+01 1.0 4.34e+10 1.3 3.3e+05 3.0e+05 1.4e+02 12 38  6 14  6  12 38  6 14  6 647441
SNESLineSearch        35 1.0 9.2328e+00 1.0 2.35e+10 1.3 5.0e+05 1.2e+05 1.4e+02  2 21  8  8  6   2 21  8  8  6 1887308
firedrake              1 1.0 4.2011e+02 1.0 1.12e+11 1.2 5.9e+06 1.2e+05 2.4e+03 98 100 100 100 99  98 100 100 100 100 201706
firedrake.__init__       1 1.0 1.8002e+01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.0496e+01 14.5 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  1  0  8  0  8   1  0  8  0  8    -0
CreateMesh             1 1.0 7.0296e-01 1.0 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  8  0  8   0  0  8  0  8    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.3929e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7070e-06 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.4591e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.6055e-04 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.5164e-02 1.2 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 3.9744e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.4532e-02 1.2 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.3899e-02 1.2 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.3867e-02 1.2 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 8.1679e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 8.9534e-03 1.2 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.3619e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.1405e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 5.4455e-01 186.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 3.3960e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.0939e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.8416e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 6.3742e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 3.3919e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.0568e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       502 1.0 7.9334e+01 1.1 8.55e+10 1.3 6.5e+05 1.1e+05 6.0e+00 18 75 11 10  0  18 75 11 10  0 798021
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 3.3591e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    1004 1.0 3.6360e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  8  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 1.9715e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 1.7050e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.7467e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.6656e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.6655e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 1.1291e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 1.1177e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin     502 1.0 1.5228e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       502 1.0 1.9715e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.0429e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 3.8250e+00 1.2 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  1  0  0  0  0   1  0  0  0  0   564
firedrake.interpolation.interpolate       1 1.0 4.1697e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 3.8246e+00 1.2 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  1  0  0  0  0   1  0  0  0  0   564
firedrake.formmanipulation.split_form       3 1.0 3.6386e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 8.3345e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.0377e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.0999e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     131 1.0 6.3599e-01 7.7 0.00e+00 0.0 6.5e+05 1.1e+05 2.0e+00  0  0 11 10  0   0  0 11 10  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 3.7578e+00 1.2 2.70e+06 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   574
firedrake.halo.Halo.global_to_local_end     131 1.0 4.4118e+00 218.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 7.8669e-01 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 7.5970e-01 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.0613e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.1916e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.1969e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.1059e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2713e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.5142e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.6974e+00 1.0 0.00e+00 0.0 2.9e+04 6.4e+05 2.3e+01  2  0  0  3  1   2  0  0  3  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0927e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8662e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1380e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1380e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         1 1.0 2.5984e+00 1.3 0.00e+00 0.0 1.4e+04 6.3e+05 8.0e+00  1  0  0  1  0   1  0  0  1  0    -0
MatZeroInitial         1 1.0 4.5179e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 3.8270e+02 1.0 1.12e+11 1.2 5.4e+06 1.3e+05 2.1e+03 90 100 90 97 89  90 100 90 97 90 221419
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.9674e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.4373e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 4.0285e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     130 1.0 5.6438e+00 1.1 9.02e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1  9  0  0  0 1278700
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     130 1.0 1.9447e+00 1.0 1.55e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6384
Parloop_Cells_wrap_form0_exterior_facet_top_integral     130 1.0 1.9377e+00 1.0 1.55e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6407
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     130 1.0 6.8763e+00 1.1 9.28e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1  9  0  0  0 1079153
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     130 1.0 1.0837e+01 1.3 2.38e+10 1.5 0.0e+00 0.0e+00 0.0e+00  2 20  0  0  0   2 20  0  0  0 1527937
firedrake.halo.Halo.local_to_global_begin      65 1.0 1.9062e-02 7.8 0.00e+00 0.0 3.1e+05 1.2e+05 0.0e+00  0  0  5  5  0   0  0  5  5  0    -0
firedrake.halo.Halo.local_to_global_end      65 1.0 1.7508e+00 138.1 7.30e+06 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2547
Parloop_Cells_wrap_form00_cell_integral      70 1.0 8.0558e+00 1.1 8.85e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   2  8  0  0  0 878701
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral      70 1.0 2.2240e+00 1.0 1.02e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  3651
Parloop_Cells_wrap_form00_exterior_facet_top_integral      70 1.0 2.1923e+00 1.0 1.02e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  3704
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      70 1.0 1.7083e+01 1.4 9.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   3  9  0  0  0 437130
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      70 1.0 2.0418e+01 1.4 2.52e+10 1.5 0.0e+00 0.0e+00 0.0e+00  4 21  0  0  0   4 21  0  0  0 858365
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    67             67
              Viewer     1              1
           Index Set  2664           2664
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
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 7.8584e-06
Average time for zero size MPI_Send(): 2.07278e-06
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

