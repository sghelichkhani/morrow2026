****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0177.gadi.nci.org.au with 416 processes, by sg8812 on Fri Aug 21 01:41:31 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.915e+03     1.000   7.915e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.203e+12     1.110   4.948e+12  2.059e+15
Flops/sec:            6.574e+08     1.110   6.252e+08  2.601e+11
MPI Msg Count:        5.595e+05     4.498   3.467e+05  1.442e+08
MPI Msg Len (bytes):  4.921e+10     2.750   1.085e+05  1.564e+13
MPI Reductions:       1.223e+05     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.9146e+03 100.0%  2.0586e+15 100.0%  1.442e+08 100.0%  1.085e+05      100.0%  1.223e+05 100.0%

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

BuildTwoSided         63 1.0 1.7696e+00 10.7 0.00e+00 0.0 5.9e+04 4.0e+00 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
BuildTwoSidedF        26 1.0 1.7591e+00 10.0 0.00e+00 0.0 1.9e+04 1.3e+06 2.6e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            40 1.0 5.9467e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 2.9628e-02 1.9 0.00e+00 0.0 1.0e+05 2.9e+03 3.7e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         135 1.0 2.8860e-02 3.2 0.00e+00 0.0 2.4e+05 2.9e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastEnd           135 1.0 4.5128e-01 11.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         17 1.0 3.8247e-03 17.5 0.00e+00 0.0 3.4e+04 4.5e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceEnd           17 1.0 6.0116e-02 27.6 5.94e+05 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3141
SFFetchOpBegin         2 1.0 2.8455e-05 7.8 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.3992e-03 80.3 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.0892e-03 2.6 0.00e+00 0.0 2.7e+03 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 2.0706e-02 1.4 0.00e+00 0.0 8.8e+04 2.7e+02 2.4e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           21 1.0 6.5821e-03 4.5 0.00e+00 0.0 4.1e+04 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             62152 1.0 1.7648e+01 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           62154 1.0 5.1618e-02 5.4 5.94e+05 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3658
VecMDot            60000 1.0 1.0338e+03 2.1 7.56e+11 1.1 0.0e+00 0.0e+00 6.0e+04 10 15  0  0 49  10 15  0  0 49 289876
VecNorm            62010 1.0 1.0379e+02 4.6 5.05e+10 1.1 0.0e+00 0.0e+00 6.2e+04  1  1  0  0 51   1  1  0  0 51 192627
VecScale           62004 1.0 1.1471e+01 1.2 2.52e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 871405
VecCopy             2028 1.0 2.8262e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2010 1.0 1.6511e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             4002 1.0 6.6352e+00 1.8 3.26e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 194470
VecMAXPY           62004 1.0 8.8683e+02 1.1 8.05e+11 1.1 0.0e+00 0.0e+00 0.0e+00 11 15  0  0  0  11 15  0  0  0 359716
VecScatterBegin    61998 1.0 1.9659e+01 2.7 0.00e+00 0.0 1.4e+08 1.1e+05 0.0e+00  0  0 100 100  0   0  0 100 100  0    -0
VecScatterEnd      61998 1.0 2.2478e+02 48.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecNormalize       62004 1.0 1.1408e+02 3.4 7.57e+10 1.1 0.0e+00 0.0e+00 6.2e+04  1  1  0  0 51   1  1  0  0 51 262860
MatMult            61998 1.0 2.4046e+03 1.1 1.79e+12 1.1 1.4e+08 1.1e+05 0.0e+00 29 34 100 100  0  29 34 100 100  0 294324
MatSOR             62004 1.0 4.0403e+03 1.1 1.76e+12 1.1 0.0e+00 0.0e+00 0.0e+00 48 34  0  0  0  48 34  0  0  0 171861
MatAssemblyBegin      26 1.0 1.8027e+00 3.8 0.00e+00 0.0 1.9e+04 1.3e+06 2.6e+01  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd        26 1.0 9.1489e-01 1.5 6.87e+06 0.0 4.6e+03 2.7e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  1238
MatZeroEntries         6 1.0 2.1597e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp                6 1.0 4.4640e-06 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            62004 1.0 4.0405e+03 1.1 1.76e+12 1.1 0.0e+00 0.0e+00 0.0e+00 48 34  0  0  0  48 34  0  0  0 171853
KSPSetUp               6 1.0 7.9692e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               6 1.0 7.8272e+03 1.0 5.19e+12 1.1 1.4e+08 1.1e+05 1.2e+05 99 100 100 100 100  99 100 100 100 100 262168
KSPGMRESOrthog     60000 1.0 1.8163e+03 1.4 1.51e+12 1.1 0.0e+00 0.0e+00 6.0e+04 20 29  0  0 49  20 29  0  0 49 329972
DMPlexCreateGmsh       1 1.0 2.0393e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.4622e+00 31.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 3.0485e-01 1.0 0.00e+00 0.0 2.9e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 5.6560e-02 1.0 0.00e+00 0.0 1.0e+05 3.6e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 3.4634e-02 10088.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 5.0820e-02 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.6794e-03 1.4 0.00e+00 0.0 5.5e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 3.0214e-03 1.6 0.00e+00 0.0 2.7e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.3952e-02 1.2 0.00e+00 0.0 3.2e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 1.1006e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.6140e-01 1.0 0.00e+00 0.0 1.7e+04 2.3e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 6.5556e-03 1.1 0.00e+00 0.0 1.6e+04 6.8e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.8324e-02 1.0 0.00e+00 0.0 5.3e+04 3.8e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 1.3916e-02 1.0 0.00e+00 0.0 1.2e+05 9.9e+01 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 6.6577e-03 1.2 0.00e+00 0.0 2.5e+04 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 9.0288e-02 19.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 8.8841e-03 312.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 7.8515e+03 1.0 5.20e+12 1.1 1.4e+08 1.1e+05 1.2e+05 99 100 100 100 100  99 100 100 100 100 262185
SNESSetUp              1 1.0 5.7728e-05 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       6 1.0 1.0605e+01 1.0 5.44e+09 1.2 4.6e+04 1.1e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0 197548
SNESJacobianEval       6 1.0 1.3660e+01 1.0 1.14e+10 1.2 2.8e+04 7.1e+05 2.4e+01  0  0  0  0  0   0  0  0  0  0 321805
firedrake              1 1.0 7.9125e+03 1.0 5.20e+12 1.1 1.4e+08 1.1e+05 1.2e+05 100 100 100 100 100 100 100 100 100 100 260168
firedrake.__init__       1 1.0 1.5361e+01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 6.8930e+00 10.9 0.00e+00 0.0 2.4e+05 2.7e+02 2.0e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._from_gmsh       1 1.0 6.4631e+00 31.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.1592e-03 47.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.9780e-06 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.6828e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 7.9177e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 1.9267e-02 1.2 0.00e+00 0.0 4.6e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 1.0066e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 1.8115e-02 1.2 0.00e+00 0.0 4.6e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 1.7111e-02 1.2 0.00e+00 0.0 4.6e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 1.7055e-02 1.2 0.00e+00 0.0 4.6e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 8.4265e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.3706e-03 1.3 0.00e+00 0.0 4.6e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.0104e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0581e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 3.7849e-02 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.8563e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.5485e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.9756e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.9911e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.8135e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     214 1.0 4.0161e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        65 1.0 2.6789e+01 1.0 1.69e+10 1.2 8.8e+04 7.9e+04 1.5e+01  0  0  0  0  0   0  0  0  0  0 243262
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.4907e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     130 1.0 2.2791e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.0403e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.7453e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.2160e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.2488e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.2487e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 8.2911e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.1380e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin      65 1.0 5.9390e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        65 1.0 2.0469e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 1.5990e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8033e+00 1.0 6.87e+07 1.1 4.2e+04 4.6e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0  5672
firedrake.interpolation.interpolate      10 1.0 4.1259e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.7998e+00 1.0 6.87e+07 1.1 4.2e+04 4.6e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0  5676
firedrake.formmanipulation.split_form      12 1.0 4.0175e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.2692e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.4086e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.2 9.5559e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      32 1.0 4.7912e-02 1.5 0.00e+00 0.0 8.8e+04 7.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.5097e+00 1.0 6.87e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6041
firedrake.halo.Halo.global_to_local_end      32 1.0 3.2171e-01 64.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      37 1.0 2.3885e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 2.2288e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2666e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 5.2204e-05 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.3611e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3741e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9280e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1241e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2832e+00 1.0 0.00e+00 0.0 1.4e+04 4.4e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.7873e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8548e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1006e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1006e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 3.8975e+00 1.1 0.00e+00 0.0 7.0e+03 4.3e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 5.3296e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 7.8515e+03 1.0 5.20e+12 1.1 1.4e+08 1.1e+05 1.2e+05 99 100 100 100 100  99 100 100 100 100 262184
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.3352e-01 1362.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0679e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.3347e-01 1661.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.3344e-01 1915.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      12 1.0 1.7004e+00 1.1 1.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 323384
Parloop_Cells_wrap_form0_exterior_facet_top_integral      12 1.0 9.8013e-01 1.0 1.80e+05 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    73
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      12 1.0 1.3354e+00 1.0 1.30e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   364
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      12 1.0 1.6898e+00 1.0 1.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 312542
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      12 1.0 2.7618e+00 1.0 2.73e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 367929
firedrake.halo.Halo.local_to_global_begin       6 1.0 2.7853e-03 8.3 0.00e+00 0.0 1.4e+04 1.1e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end       6 1.0 5.9884e-02 26.7 5.94e+05 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3153
Parloop_Cells_wrap_form00_cell_integral      12 1.0 2.8219e+00 1.1 2.59e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 363630
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      12 1.0 1.1593e+00 1.1 1.32e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   427
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      12 1.0 3.4771e+00 1.0 3.43e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 390426
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      12 1.0 5.5881e+00 1.1 5.40e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 359811
firedrake.constant.Constant.assign       5 1.0 6.8634e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    18             18
              Viewer     3              3
           Index Set  1420           1420
   IS L to G Mapping     6              6
             Section    86             86
   Star Forest Graph    75             75
              Vector    73             73
              Matrix     4              4
      Preconditioner     1              1
       Krylov Solver     1              1
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    14             14
            DM Label    51             51
    GraphPartitioner     4              4
     Discrete System    22             22
           Weak Form    22             22
========================================================================================================================
Average time to get PetscTime(): 2.68e-08
Average time for MPI_Barrier(): 1.19192e-05
Average time for zero size MPI_Send(): 1.99951e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/sor/h4.profile # (source: code)
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

