****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0465.gadi.nci.org.au with 416 processes, by sg8812 on Fri Aug 21 00:34:24 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           3.887e+03     1.000   3.887e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.554e+12     1.128   2.432e+12  1.012e+15
Flops/sec:            6.570e+08     1.128   6.257e+08  2.603e+11
MPI Msg Count:        6.216e+05     4.999   3.437e+05  1.430e+08
MPI Msg Len (bytes):  4.831e+10     2.455   1.057e+05  1.511e+13
MPI Reductions:       1.223e+05     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.8875e+03 100.0%  1.0119e+15 100.0%  1.430e+08 100.0%  1.057e+05      100.0%  1.223e+05 100.0%

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

BuildTwoSided         63 1.0 1.3687e+00 6.8 0.00e+00 0.0 6.0e+04 4.0e+00 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
BuildTwoSidedF        26 1.0 1.3542e+00 6.7 0.00e+00 0.0 1.8e+04 1.3e+06 2.6e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            40 1.0 5.2519e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 2.7721e-02 1.9 0.00e+00 0.0 1.0e+05 2.7e+03 3.7e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         135 1.0 3.1250e-02 3.7 0.00e+00 0.0 2.4e+05 2.8e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastEnd           135 1.0 4.5016e-01 23.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         17 1.0 3.4439e-03 16.3 0.00e+00 0.0 3.4e+04 4.3e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceEnd           17 1.0 6.5868e-02 26.9 5.83e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2770
SFFetchOpBegin         2 1.0 1.9368e-05 10.1 0.00e+00 0.0 3.5e+03 5.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 9.0853e-04 101.0 0.00e+00 0.0 3.5e+03 5.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.6905e-03 2.7 0.00e+00 0.0 2.8e+03 4.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.1558e-02 1.4 0.00e+00 0.0 8.9e+04 9.6e+01 2.4e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           21 1.0 5.3405e-03 4.5 0.00e+00 0.0 4.1e+04 5.5e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             62152 1.0 1.6353e+01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           62154 1.0 4.6298e-02 4.7 5.83e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3940
VecMDot            60000 1.0 5.7565e+02 2.5 3.75e+11 1.1 0.0e+00 0.0e+00 6.0e+04 10 15  0  0 49  10 15  0  0 49 258842
VecNorm            62010 1.0 4.8149e+01 4.6 2.50e+10 1.1 0.0e+00 0.0e+00 6.2e+04  1  1  0  0 51   1  1  0  0 51 206474
VecScale           62004 1.0 2.8790e+00 1.2 1.25e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1726388
VecCopy             2028 1.0 1.1890e+00 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2010 1.0 7.1079e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             4002 1.0 1.9977e+00 1.2 1.61e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 321174
VecMAXPY           62004 1.0 3.7605e+02 1.1 3.99e+11 1.1 0.0e+00 0.0e+00 0.0e+00  9 16  0  0  0   9 16  0  0  0 421817
VecScatterBegin    61998 1.0 1.8084e+01 2.3 0.00e+00 0.0 1.4e+08 1.1e+05 0.0e+00  0  0 100 100  0   0  0 100 100  0    -0
VecScatterEnd      61998 1.0 1.2005e+02 26.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecNormalize       62004 1.0 5.0603e+01 3.8 3.75e+10 1.1 0.0e+00 0.0e+00 6.2e+04  1  1  0  0 51   1  1  0  0 51 294664
MatMult            61998 1.0 1.2629e+03 1.1 8.87e+11 1.1 1.4e+08 1.1e+05 0.0e+00 31 35 100 100  0  31 35 100 100  0 278383
MatSOR             62004 1.0 1.9817e+03 1.2 8.46e+11 1.1 0.0e+00 0.0e+00 0.0e+00 47 33  0  0  0  47 33  0  0  0 168510
MatAssemblyBegin      26 1.0 1.4001e+00 2.8 0.00e+00 0.0 1.8e+04 1.3e+06 2.6e+01  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd        26 1.0 6.9247e-01 1.8 6.48e+06 0.0 4.6e+03 2.6e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  1581
MatZeroEntries         6 1.0 9.6317e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp                6 1.0 4.1080e-06 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            62004 1.0 1.9819e+03 1.2 8.46e+11 1.1 0.0e+00 0.0e+00 0.0e+00 47 33  0  0  0  47 33  0  0  0 168495
KSPSetUp               6 1.0 3.9324e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               6 1.0 3.8057e+03 1.0 2.55e+12 1.1 1.4e+08 1.1e+05 1.2e+05 98 100 100 100 100  98 100 100 100 100 265046
KSPGMRESOrthog     60000 1.0 9.0140e+02 1.6 7.49e+11 1.1 0.0e+00 0.0e+00 6.0e+04 18 29  0  0 49  18 29  0  0 49 330606
DMPlexCreateGmsh       1 1.0 5.3662e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 7.2102e+00 133.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 2.1238e-01 1.0 0.00e+00 0.0 2.9e+04 9.4e+01 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.7795e-02 1.0 0.00e+00 0.0 1.0e+05 1.1e+02 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 9.1093e-03 2660.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 2.5202e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.7164e-03 1.4 0.00e+00 0.0 5.5e+03 8.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.2218e-03 2.5 0.00e+00 0.0 2.8e+03 3.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 4.8702e-03 1.5 0.00e+00 0.0 3.2e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.6773e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.3108e-01 1.0 0.00e+00 0.0 1.7e+04 6.1e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 3.3454e-03 1.1 0.00e+00 0.0 1.6e+04 2.1e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.4921e-02 1.0 0.00e+00 0.0 5.3e+04 1.2e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 1.3927e-02 1.0 0.00e+00 0.0 1.2e+05 4.9e+01 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 6.1338e-03 1.2 0.00e+00 0.0 2.5e+04 5.1e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.1963e-02 14.0 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9823e-03 205.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 3.8275e+03 1.0 2.55e+12 1.1 1.4e+08 1.1e+05 1.2e+05 98 100 100 100 100  98 100 100 100 100 264379
SNESSetUp              1 1.0 4.4059e-05 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       6 1.0 1.0255e+01 1.0 2.79e+09 1.3 4.6e+04 1.1e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0 101499
SNESJacobianEval       6 1.0 1.1527e+01 1.0 5.83e+09 1.3 2.8e+04 6.9e+05 2.4e+01  0  0  0  0  0   0  0  0  0  0 189472
firedrake              1 1.0 3.8851e+03 1.0 2.55e+12 1.1 1.4e+08 1.1e+05 1.2e+05 100 100 100 100 100 100 100 100 100 100 260459
firedrake.__init__       1 1.0 1.6027e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 7.4912e+00 22.4 0.00e+00 0.0 2.4e+05 9.4e+01 2.0e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._from_gmsh       1 1.0 7.2110e+00 133.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2372e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.8700e-06 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.6485e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.3860e-04 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 1.7708e-02 1.1 0.00e+00 0.0 4.7e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 9.5274e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 1.6608e-02 1.1 0.00e+00 0.0 4.7e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 1.5614e-02 1.1 0.00e+00 0.0 4.7e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 1.5557e-02 1.1 0.00e+00 0.0 4.7e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 8.3052e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.8975e-03 1.4 0.00e+00 0.0 4.7e+03 6.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.0574e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.9226e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.9055e-02 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.8134e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.4583e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.9661e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 6.1613e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.7695e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     214 1.0 2.3371e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        65 1.0 2.4603e+01 1.0 8.66e+09 1.3 8.8e+04 7.7e+04 1.5e+01  1  0  0  0  0   1  0  0  0  0 131580
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.4521e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     130 1.0 2.2576e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.0161e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.2323e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.3904e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.2477e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.2477e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 8.2867e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.1151e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin      65 1.0 5.0554e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        65 1.0 5.0197e-04 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 7.5514e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8473e+00 1.0 3.41e+07 1.1 4.2e+04 4.5e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0  2795
firedrake.interpolation.interpolate      10 1.0 3.8116e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.8437e+00 1.0 3.41e+07 1.1 4.2e+04 4.5e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0  2797
firedrake.formmanipulation.split_form      12 1.0 3.9684e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.2537e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.4262e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 9.5121e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      32 1.0 4.7908e-02 1.6 0.00e+00 0.0 8.8e+04 7.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.5879e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2953
firedrake.halo.Halo.global_to_local_end      32 1.0 2.2927e-01 131.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      37 1.0 1.2580e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 1.0670e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2411e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 4.0288e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.8689e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5666e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9543e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.3125e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.1390e+00 1.0 0.00e+00 0.0 1.4e+04 4.3e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.0675e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1135e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0292e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0292e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 1.9375e+00 1.2 0.00e+00 0.0 7.0e+03 4.2e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 2.7213e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 3.8275e+03 1.0 2.55e+12 1.1 1.4e+08 1.1e+05 1.2e+05 98 100 100 100 100  98 100 100 100 100 264378
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0751e-01 978.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.7187e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0746e-01 1162.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0743e-01 1317.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      12 1.0 1.9304e+00 1.2 6.88e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 141642
Parloop_Cells_wrap_form0_exterior_facet_top_integral      12 1.0 9.7503e-01 1.0 4.47e+04 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    18
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      12 1.0 1.1784e+00 1.0 1.18e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   412
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      12 1.0 1.8027e+00 1.0 6.62e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 145922
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      12 1.0 2.5124e+00 1.0 1.46e+09 1.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 200489
firedrake.halo.Halo.local_to_global_begin       6 1.0 2.7118e-03 8.5 0.00e+00 0.0 1.4e+04 1.1e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end       6 1.0 6.5855e-02 26.1 5.83e+05 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2770
Parloop_Cells_wrap_form00_cell_integral      12 1.0 2.4933e+00 1.1 1.28e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 204635
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      12 1.0 1.1408e+00 1.1 1.20e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   433
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      12 1.0 2.7959e+00 1.0 1.70e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 241838
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      12 1.0 4.5041e+00 1.1 2.88e+09 1.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 221166
firedrake.constant.Constant.assign       5 1.0 6.8626e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    18             18
              Viewer     3              3
           Index Set  1414           1414
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
Average time to get PetscTime(): 2.63e-08
Average time for MPI_Barrier(): 1.11036e-05
Average time for zero size MPI_Send(): 2.02613e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/sor/medium.profile # (source: code)
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

