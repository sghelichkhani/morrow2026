****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0677.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 23:37:52 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.974e+02     1.000   4.974e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.416e+11     1.193   1.301e+11  2.706e+13
Flops/sec:            2.846e+08     1.193   2.615e+08  5.440e+10
MPI Msg Count:        1.217e+04     3.922   8.322e+03  1.731e+06
MPI Msg Len (bytes):  1.059e+09     2.412   9.731e+04  1.684e+11
MPI Reductions:       2.936e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.9741e+02 100.0%  2.7058e+13 100.0%  1.731e+06 100.0%  9.731e+04      100.0%  2.917e+03  99.4%

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

BuildTwoSided        232 1.0 9.3131e+00 7.2 0.00e+00 0.0 5.3e+04 4.0e+00 2.3e+02  1  0  3  0  8   1  0  3  0  8    -0
BuildTwoSidedF       194 1.0 9.0494e+00 7.1 0.00e+00 0.0 5.7e+04 4.3e+05 1.9e+02  1  0  3 15  7   1  0  3 15  7    -0
SFSetGraph            41 1.0 4.9156e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 2.9364e-01 7.1 0.00e+00 0.0 5.0e+04 2.4e+03 3.8e+01  0  0  3  0  1   0  0  3  0  1    -0
SFBcastBegin         252 1.0 7.6387e-02 2.6 0.00e+00 0.0 2.5e+05 6.7e+04 0.0e+00  0  0 14 10  0   0  0 14 10  0    -0
SFBcastEnd           252 1.0 4.0257e+00 80.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         91 1.0 1.7954e-02 4.2 0.00e+00 0.0 1.0e+05 8.2e+04 0.0e+00  0  0  6  5  0   0  0  6  5  0    -0
SFReduceEnd           91 1.0 2.2857e+00 154.9 6.60e+06 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   451
SFFetchOpBegin         2 1.0 1.8939e-05 7.8 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 6.4534e-04 31.0 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.4638e-03 2.4 0.00e+00 0.0 1.4e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.1451e-02 1.4 0.00e+00 0.0 4.6e+04 2.3e+02 2.5e+01  0  0  3  0  1   0  0  3  0  1    -0
SFSectionSF           22 1.0 5.0949e-03 5.7 0.00e+00 0.0 2.1e+04 1.3e+02 2.2e+01  0  0  1  0  1   0  0  1  0  1    -0
SFPack              1469 1.0 3.3455e-01 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1471 1.0 3.4137e-02 3.3 6.60e+06 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 30213
VecDot                48 1.0 1.2229e-01 9.9 1.75e+07 1.1 0.0e+00 0.0e+00 4.8e+01  0  0  0  0  2   0  0  0  0  2 28439
VecMDot             1076 1.0 4.4145e+00 1.3 4.60e+09 1.1 0.0e+00 0.0e+00 1.1e+03  1  3  0  0 37   1  3  0  0 37 207652
VecNorm             1250 1.0 2.2268e+00 3.3 4.55e+08 1.1 0.0e+00 0.0e+00 1.2e+03  0  0  0  0 43   0  0  0  0 43 40672
VecScale            1124 1.0 4.9063e-02 1.2 2.04e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 829936
VecCopy              378 1.0 2.3697e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1220 1.0 4.1200e-01 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               48 1.0 2.1850e-02 1.6 1.75e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 159165
VecWAXPY              48 1.0 3.6484e-02 1.1 8.73e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47662
VecMAXPY            1124 1.0 4.9886e+00 1.1 4.99e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 199385
VecScatterBegin     1124 1.0 2.8670e-01 2.4 0.00e+00 0.0 1.3e+06 9.3e+04 0.0e+00  0  0 74 71  0   0  0 74 71  0    -0
VecScatterEnd       1124 1.0 2.2061e+00 19.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith        96 1.0 1.6078e-02 2.0 3.49e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 432615
VecReduceComm         48 1.0 3.6291e-02 8.0 0.00e+00 0.0 0.0e+00 0.0e+00 4.8e+01  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        1124 1.0 6.3254e-01 2.8 6.13e+08 1.1 0.0e+00 0.0e+00 1.1e+03  0  0  0  0 38   0  0  0  0 39 193123
MatMult             1124 1.0 2.9302e+01 1.1 2.27e+10 1.1 1.3e+06 9.3e+04 0.0e+00  6 17 74 71  0   6 17 74 71  0 153437
MatConvert            48 1.0 4.2730e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatAssemblyBegin     291 1.0 9.0525e+00 5.0 0.00e+00 0.0 5.7e+04 4.3e+05 1.9e+02  1  0  3 15  7   1  0  3 15  7    -0
MatAssemblyEnd       291 1.0 2.0658e+00 2.5 1.54e+07 0.0 2.3e+03 2.3e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0   638
MatGetRowIJ            4 1.0 1.7666e-05 7.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        48 1.0 1.3819e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 2.5204e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       96 1.0 3.5156e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp               48 1.0 6.7129e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00 13  0  0  0  0  13  0  0  0  0    -0
PCApply             1124 1.0 2.6528e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 53  0  0  0  0  53  0  0  0  0    -0
KSPSetUp              48 1.0 7.5803e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              48 1.0 3.0018e+02 1.0 3.19e+10 1.1 1.2e+06 9.3e+04 2.2e+03 60 23 70 68 75  60 23 70 68 75 21124
KSPGMRESOrthog      1076 1.0 9.0176e+00 1.2 9.20e+09 1.1 0.0e+00 0.0e+00 1.1e+03  2  7  0  0 37   2  7  0  0 37 203311
Mesh Partition         2 1.0 1.4848e-01 1.0 0.00e+00 0.0 1.4e+04 2.3e+02 2.5e+01  0  0  1  0  1   0  0  1  0  1    -0
Mesh Migration         2 1.0 3.2277e-02 1.0 0.00e+00 0.0 4.8e+04 3.1e+02 1.1e+02  0  0  3  0  4   0  0  3  0  4    -0
DMPlexPartSelf         1 1.0 1.0062e-02 3165.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.9514e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.6144e-03 1.3 0.00e+00 0.0 2.7e+03 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.4715e-03 2.2 0.00e+00 0.0 1.4e+03 8.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.1327e-03 1.4 0.00e+00 0.0 1.6e+03 1.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.7721e-01 1.0 0.00e+00 0.0 8.1e+03 1.7e+03 6.3e+01  0  0  0  0  2   0  0  0  0  2    -0
DMPlexDistCones        2 1.0 3.5788e-03 1.0 0.00e+00 0.0 8.1e+03 5.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 2.0068e-02 1.0 0.00e+00 0.0 2.3e+04 3.3e+02 7.6e+01  0  0  1  0  3   0  0  1  0  3    -0
DMPlexDistOvrlp        1 1.0 8.3474e-03 1.0 0.00e+00 0.0 5.5e+04 1.1e+02 8.0e+01  0  0  3  0  3   0  0  3  0  3    -0
DMPlexDistField        3 1.0 4.7881e-03 1.3 0.00e+00 0.0 1.2e+04 1.5e+02 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistData         1 1.0 1.0424e-04 1.2 0.00e+00 0.0 5.7e+03 7.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 6.0166e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 2.0976e-03 97.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 8.9366e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 4.6446e+02 1.0 1.42e+11 1.2 1.6e+06 1.0e+05 2.6e+03 93 100 92 98 89  93 100 92 98 90 58257
SNESSetUp              1 1.0 3.5948e-05 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      78 1.0 3.4384e+01 1.0 4.99e+10 1.2 2.1e+05 9.2e+04 1.0e+00  7 35 12 12  0   7 35 12 12  0 274235
SNESJacobianEval      48 1.0 6.0964e+01 1.0 5.87e+10 1.2 1.1e+05 2.4e+05 1.9e+02 12 41  6 16  7  12 41  6 16  7 181651
SNESLineSearch        48 1.0 1.2412e+01 1.0 3.18e+10 1.2 1.6e+05 9.3e+04 1.9e+02  2 22  9  9  7   2 22  9  9  7 484519
firedrake              1 1.0 4.9275e+02 1.0 1.42e+11 1.2 1.7e+06 9.7e+04 2.9e+03 99 100 100 100 99  99 100 100 100 100 54913
firedrake.__init__       1 1.0 1.4101e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 6.7856e+00 27.6 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  1  0  7  0  7   1  0  7  0  7    -0
CreateMesh             1 1.0 2.3607e-01 1.0 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  7  0  6   0  0  7  0  6    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.1962e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.6530e-06 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.7782e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.8668e-04 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 1.9428e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 3.8240e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 1.8805e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 1.8099e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 1.8068e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 7.2144e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 5.2406e-03 1.2 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.3207e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.3023e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.1263e-02 6.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.4951e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.7923e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5725e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.3672e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.4909e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 4.3234e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       632 1.0 8.9158e+01 1.1 1.09e+11 1.2 1.8e+05 9.0e+04 6.0e+00 17 76 11 10  0  17 76 11 10  0 229947
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.4605e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    1264 1.0 3.2256e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0346e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.5144e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.7398e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.1905e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.1904e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.0357e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 7.9273e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin     632 1.0 1.7449e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       632 1.0 1.3442e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.9715e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.5627e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   568
firedrake.interpolation.interpolate       1 1.0 3.5497e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.5593e-01 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   568
firedrake.formmanipulation.split_form       3 1.0 2.2833e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.1484e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.6552e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.0712e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     157 1.0 4.1399e-01 4.6 0.00e+00 0.0 1.8e+05 9.0e+04 2.0e+00  0  0 11 10  0   0  0 11 10  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.8641e-01 1.0 2.73e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   613
firedrake.halo.Halo.global_to_local_end     157 1.0 3.8715e+00 182.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.6940e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.4536e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.4489e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.4414e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.0632e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.4129e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2843e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.8228e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.4258e+00 1.0 0.00e+00 0.0 6.8e+03 5.2e+05 2.3e+01  2  0  0  2  1   2  0  0  2  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.1258e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3284e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1466e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1466e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         1 1.0 2.5516e+00 1.3 0.00e+00 0.0 3.4e+03 5.1e+05 8.0e+00  0  0  0  1  0   0  0  0  1  0    -0
MatZeroInitial         1 1.0 4.2005e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 4.6452e+02 1.0 1.42e+11 1.2 1.6e+06 1.0e+05 2.7e+03 93 100 92 98 91  93 100 92 98 92 58249
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.2352e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1862e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 6.2637e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     156 1.0 6.5678e+00 1.2 1.10e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1  8  0  0  0 332250
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     156 1.0 1.9663e+00 1.0 3.00e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3039
Parloop_Cells_wrap_form0_exterior_facet_top_integral     156 1.0 1.9292e+00 1.0 3.00e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3097
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     156 1.0 7.2114e+00 1.1 1.12e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1  8  0  0  0 310556
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     156 1.0 1.2151e+01 1.2 2.76e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2 18  0  0  0   2 18  0  0  0 411056
firedrake.halo.Halo.local_to_global_begin      78 1.0 2.1454e-02 3.3 0.00e+00 0.0 8.8e+04 9.3e+04 0.0e+00  0  0  5  5  0   0  0  5  5  0    -0
firedrake.halo.Halo.local_to_global_end      78 1.0 2.2862e+00 145.1 6.60e+06 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   451
Parloop_Cells_wrap_form00_cell_integral      96 1.0 9.8198e+00 1.1 1.23e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   2  9  0  0  0 249110
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral      96 1.0 2.3475e+00 1.0 2.24e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1903
Parloop_Cells_wrap_form00_exterior_facet_top_integral      96 1.0 2.3303e+00 1.0 2.24e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1917
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      96 1.0 2.0267e+01 1.3 1.29e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   3 10  0  0  0 127085
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      96 1.0 2.6120e+01 1.3 3.34e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5 22  0  0  0   5 22  0  0  0 231323
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    67             67
              Viewer     1              1
           Index Set   792            792
   IS L to G Mapping     4              4
             Section    72             72
   Star Forest Graph    71             71
              Vector    51             51
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
Average time to get PetscTime(): 2.79e-08
Average time for MPI_Barrier(): 8.2792e-06
Average time for zero size MPI_Send(): 1.97817e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/boomeramg/medium.profile # (source: environment)
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

