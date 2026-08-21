****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0541.gadi.nci.org.au with 832 processes, by sg8812 on Fri Aug 21 00:41:06 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.306e+03     1.000   4.306e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.768e+12     1.146   2.632e+12  2.189e+15
Flops/sec:            6.428e+08     1.146   6.111e+08  5.084e+11
MPI Msg Count:        6.108e+05     4.499   3.782e+05  3.147e+08
MPI Msg Len (bytes):  8.208e+10     2.625   1.518e+05  4.777e+13
MPI Reductions:       1.336e+05     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.3062e+03 100.0%  2.1894e+15 100.0%  3.147e+08 100.0%  1.518e+05      100.0%  1.335e+05 100.0%

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

BuildTwoSided         71 1.0 2.2073e+00 3.6 0.00e+00 0.0 1.3e+05 4.0e+00 7.1e+01  0  0  0  0  0   0  0  0  0  0    -0
BuildTwoSidedF        34 1.0 2.1857e+00 3.6 0.00e+00 0.0 4.6e+04 1.8e+06 3.4e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSetGraph            40 1.0 7.8737e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 4.6213e-02 2.3 0.00e+00 0.0 2.1e+05 3.8e+03 3.7e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         139 1.0 2.8942e-02 2.5 0.00e+00 0.0 5.1e+05 4.3e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastEnd           139 1.0 7.3009e-01 25.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         19 1.0 4.3379e-03 18.7 0.00e+00 0.0 7.9e+04 7.1e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceEnd           19 1.0 7.3153e-02 29.1 1.21e+06 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9624
SFFetchOpBegin         2 1.0 1.5602e-05 7.9 0.00e+00 0.0 7.3e+03 3.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 8.0842e-04 92.3 0.00e+00 0.0 7.3e+03 3.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.6306e-03 4.4 0.00e+00 0.0 5.7e+03 2.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.5118e-02 1.5 0.00e+00 0.0 1.8e+05 5.9e+01 2.4e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           21 1.0 9.9672e-03 8.2 0.00e+00 0.0 8.3e+04 3.4e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             67851 1.0 2.7399e+01 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           67853 1.0 6.9806e-02 5.6 1.21e+06 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10085
VecMDot            65510 1.0 7.0044e+02 2.5 4.09e+11 1.1 0.0e+00 0.0e+00 6.6e+04 10 15  0  0 49  10 15  0  0 49 464480
VecNorm            67707 1.0 6.2281e+01 4.7 2.73e+10 1.1 0.0e+00 0.0e+00 6.8e+04  1  1  0  0 51   1  1  0  0 51 348580
VecScale           67699 1.0 3.3062e+00 1.3 1.36e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3282831
VecCopy             2219 1.0 1.4004e+00 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              2197 1.0 7.8494e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             4370 1.0 2.2436e+00 1.4 1.76e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 624533
VecWAXPY               2 1.0 2.4164e-03 1.4 4.03e+05 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 132694
VecMAXPY           67699 1.0 4.1522e+02 1.1 4.36e+11 1.1 0.0e+00 0.0e+00 0.0e+00  9 16  0  0  0   9 16  0  0  0 834141
VecScatterBegin    67691 1.0 2.9656e+01 2.9 0.00e+00 0.0 3.1e+08 1.5e+05 0.0e+00  1  0 100 100  0   1  0 100 100  0    -0
VecScatterEnd      67691 1.0 1.7454e+02 31.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith         4 1.0 1.6106e-03 1.3 1.61e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 796357
VecReduceComm          2 1.0 4.5121e-04 15.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize       67699 1.0 6.4937e+01 4.0 4.09e+10 1.1 0.0e+00 0.0e+00 6.8e+04  1  1  0  0 51   1  1  0  0 51 501426
MatMult            67691 1.0 1.4428e+03 1.2 9.69e+11 1.2 3.1e+08 1.5e+05 0.0e+00 32 35 100 100  0  32 35 100 100  0 532234
MatSOR             67699 1.0 2.1133e+03 1.2 9.01e+11 1.2 0.0e+00 0.0e+00 0.0e+00 46 32  0  0  0  46 32  0  0  0 334651
MatAssemblyBegin      34 1.0 2.2854e+00 2.3 0.00e+00 0.0 4.6e+04 1.8e+06 3.4e+01  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd        34 1.0 1.1377e+00 2.0 1.28e+07 0.0 9.3e+03 3.8e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  3716
MatZeroEntries         8 1.0 1.3214e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp                8 1.0 4.6410e-06 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            67699 1.0 2.1135e+03 1.2 9.01e+11 1.2 0.0e+00 0.0e+00 0.0e+00 46 32  0  0  0  46 32  0  0  0 334617
KSPSetUp               8 1.0 4.8879e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               8 1.0 4.2185e+03 1.0 2.76e+12 1.1 3.1e+08 1.5e+05 1.3e+05 98 100 100 100 100  98 100 100 100 100 516960
KSPGMRESOrthog     65510 1.0 1.0561e+03 1.6 8.18e+11 1.1 0.0e+00 0.0e+00 6.6e+04 19 30  0  0 49  19 30  0  0 49 616116
DMPlexCreateGmsh       1 1.0 5.3980e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.6615e+00 67.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 3.6732e-01 1.0 0.00e+00 0.0 5.9e+04 5.7e+01 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.1217e-02 1.0 0.00e+00 0.0 2.1e+05 6.6e+01 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 1.0700e-02 2299.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 4.4764e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 9.4193e-03 3.9 0.00e+00 0.0 1.1e+04 5.0e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.0808e-03 3.9 0.00e+00 0.0 5.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 4.9480e-03 1.5 0.00e+00 0.0 6.6e+03 3.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.7499e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.9155e-01 1.0 0.00e+00 0.0 3.4e+04 3.3e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 5.7926e-03 1.1 0.00e+00 0.0 3.4e+04 1.2e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 2.1723e-02 1.0 0.00e+00 0.0 1.1e+05 6.9e+01 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 2.3975e-02 1.0 0.00e+00 0.0 2.4e+05 3.5e+01 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 8.3611e-03 1.2 0.00e+00 0.0 5.1e+04 3.3e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.2348e-02 16.8 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9474e-03 325.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 4.2421e+03 1.0 2.77e+12 1.1 3.1e+08 1.5e+05 1.3e+05 99 100 100 100 100  99 100 100 100 100 516112
SNESSetUp              1 1.0 4.6972e-05 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       8 1.0 1.0500e+01 1.0 3.86e+09 1.4 1.1e+05 1.5e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0 264432
SNESJacobianEval       8 1.0 1.3083e+01 1.0 8.05e+09 1.4 7.4e+04 9.9e+05 3.2e+01  0  0  0  0  0   0  0  0  0  0 445308
SNESLineSearch         2 1.0 9.1716e-02 1.0 9.69e+08 1.4 1.9e+04 1.5e+05 4.0e+00  0  0  0  0  0   0  0  0  0  0 7592436
firedrake              1 1.0 4.3038e+03 1.0 2.77e+12 1.1 3.1e+08 1.5e+05 1.3e+05 100 100 100 100 100 100 100 100 100 100 508712
firedrake.__init__       1 1.0 1.4527e+01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 4.1422e+00 7.7 0.00e+00 0.0 5.0e+05 5.8e+01 2.0e+02  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._from_gmsh       1 1.0 3.6624e+00 67.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.1272e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.9510e-06 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.6760e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.4972e-04 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 1.7858e-02 1.1 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 1.0205e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 1.6854e-02 1.1 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 1.5978e-02 1.1 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 1.5928e-02 1.1 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 8.1514e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.0031e-03 1.4 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.0106e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.2671e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 5.5227e-02 8.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 3.3648e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.4884e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.7029e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 6.1733e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 3.3607e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     214 1.0 3.2437e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        83 1.0 3.0115e+01 1.1 1.20e+10 1.4 2.0e+05 1.1e+05 1.5e+01  1  0  0  0  0   1  0  0  0  0 286380
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 3.3277e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     166 1.0 2.7329e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.2252e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.5198e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.1482e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.6966e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.6965e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 1.0299e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 1.0145e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin      83 1.0 7.1990e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        83 1.0 2.6649e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 9.4011e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 7.0454e+00 1.1 3.41e+07 1.1 8.5e+04 6.4e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0  3846
firedrake.interpolation.interpolate      10 1.0 3.8096e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 7.0419e+00 1.1 3.41e+07 1.1 8.5e+04 6.4e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0  3848
firedrake.formmanipulation.split_form      12 1.0 3.9893e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.8630e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.5461e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.2 9.3943e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      36 1.0 6.3215e-02 1.4 0.00e+00 0.0 2.0e+05 1.1e+05 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 6.7634e+00 1.1 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4006
firedrake.halo.Halo.global_to_local_end      36 1.0 4.9300e-01 85.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      37 1.0 1.5894e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 1.3490e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1407e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 3.8545e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.3625e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 5.3115e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 3.2619e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 4.8629e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.4642e+00 1.0 0.00e+00 0.0 2.8e+04 6.1e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 8.8985e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3334e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1430e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1430e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 2.2087e+00 1.3 0.00e+00 0.0 1.4e+04 5.9e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 2.9026e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 4.2421e+03 1.0 2.77e+12 1.1 3.1e+08 1.5e+05 1.3e+05 99 100 100 100 100  99 100 100 100 100 516111
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.9355e-01 1031.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1940e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.9350e-01 1247.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.9346e-01 1436.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      16 1.0 1.9119e+00 1.2 9.17e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 381374
Parloop_Cells_wrap_form0_exterior_facet_top_integral      16 1.0 1.1448e+00 1.0 2.98e+04 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    21
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      16 1.0 1.1913e+00 1.0 2.20e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1086
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      16 1.0 1.6940e+00 1.0 8.83e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 414429
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      16 1.0 2.7196e+00 1.0 2.06e+09 1.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 493905
firedrake.halo.Halo.local_to_global_begin       8 1.0 3.5851e-03 9.2 0.00e+00 0.0 3.7e+04 1.5e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end       8 1.0 7.3211e-02 27.9 1.21e+06 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9616
Parloop_Cells_wrap_form00_cell_integral      16 1.0 2.6956e+00 1.1 1.71e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 504757
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      16 1.0 1.2599e+00 1.2 2.24e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1046
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      16 1.0 2.9453e+00 1.0 2.27e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 612704
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      16 1.0 5.0347e+00 1.2 4.07e+09 1.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 527352
firedrake.constant.Constant.assign       5 1.0 6.4239e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    18             18
              Viewer     3              3
           Index Set  2674           2674
   IS L to G Mapping     6              6
             Section    86             86
   Star Forest Graph    75             75
              Vector    75             75
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
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 6.8264e-06
Average time for zero size MPI_Send(): 2.12429e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/sor/large.profile # (source: code)
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

