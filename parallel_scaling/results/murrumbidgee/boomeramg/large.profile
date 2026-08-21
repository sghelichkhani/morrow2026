****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0325.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 23:39:03 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.776e+02     1.000   5.776e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                4.244e+10     1.179   3.973e+10  3.305e+13
Flops/sec:            7.348e+07     1.179   6.878e+07  5.722e+10
MPI Msg Count:        2.398e+04     8.431   7.869e+03  6.547e+06
MPI Msg Len (bytes):  1.655e+09     2.629   1.469e+05  9.619e+11
MPI Reductions:       2.782e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.7763e+02 100.0%  3.3052e+13 100.0%  6.547e+06 100.0%  1.469e+05      100.0%  2.763e+03  99.3%

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

BuildTwoSided         63 1.0 2.1288e+00 4.2 0.00e+00 0.0 1.2e+05 4.0e+00 6.3e+01  0  0  2  0  2   0  0  2  0  2    -0
BuildTwoSidedF        26 1.0 2.1075e+00 4.1 0.00e+00 0.0 3.7e+04 1.8e+06 2.6e+01  0  0  1  7  1   0  0  1  7  1    -0
SFSetGraph            40 1.0 8.1543e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 4.9981e-02 2.4 0.00e+00 0.0 2.1e+05 3.8e+03 3.7e+01  0  0  3  0  1   0  0  3  0  1    -0
SFBcastBegin         135 1.0 2.9901e-02 3.0 0.00e+00 0.0 4.9e+05 3.9e+04 0.0e+00  0  0  7  2  0   0  0  7  2  0    -0
SFBcastEnd           135 1.0 5.9136e-01 21.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         17 1.0 3.3419e-03 8.7 0.00e+00 0.0 7.0e+04 6.0e+04 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
SFReduceEnd           17 1.0 5.3854e-02 17.0 9.07e+05 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9804
SFFetchOpBegin         2 1.0 1.5689e-05 8.2 0.00e+00 0.0 7.3e+03 3.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 8.7302e-04 101.0 0.00e+00 0.0 7.3e+03 3.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.6498e-03 4.4 0.00e+00 0.0 5.7e+03 2.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.5514e-02 1.5 0.00e+00 0.0 1.8e+05 5.9e+01 2.4e+01  0  0  3  0  1   0  0  3  0  1    -0
SFSectionSF           21 1.0 1.0488e-02 8.6 0.00e+00 0.0 8.3e+04 3.4e+01 2.1e+01  0  0  1  0  1   0  0  1  0  1    -0
SFPack              1390 1.0 5.4689e-01 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1392 1.0 1.0898e-02 15.1 9.07e+05 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 48449
VecMDot             1200 1.0 6.9216e+00 1.1 7.26e+09 1.1 0.0e+00 0.0e+00 1.2e+03  1 17  0  0 43   1 17  0  0 43 833857
VecNorm             1248 1.0 1.1960e+00 3.8 5.03e+08 1.1 0.0e+00 0.0e+00 1.2e+03  0  1  0  0 45   0  1  0  0 45 334589
VecScale            1242 1.0 6.0481e-02 1.2 2.50e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 3292258
VecCopy               66 1.0 3.9612e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1290 1.0 4.8728e-01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               78 1.0 3.9348e-02 1.7 3.14e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 635620
VecMAXPY            1242 1.0 8.0807e+00 1.1 7.74e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1 19  0  0  0   1 19  0  0  0 761867
VecScatterBegin     1236 1.0 5.7725e-01 3.0 0.00e+00 0.0 5.7e+06 1.5e+05 0.0e+00  0  0 88 90  0   0  0 88 90  0    -0
VecScatterEnd       1236 1.0 3.1486e+00 29.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        1242 1.0 1.2132e+00 4.0 7.51e+08 1.1 0.0e+00 0.0e+00 1.2e+03  0  2  0  0 45   0  2  0  0 45 492372
MatMult             1236 1.0 2.6385e+01 1.2 1.77e+10 1.2 5.7e+06 1.5e+05 0.0e+00  4 42 88 90  0   4 42 88 90  0 531407
MatConvert             6 1.0 7.4962e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin      39 1.0 2.1941e+00 2.6 0.00e+00 0.0 3.7e+04 1.8e+06 2.6e+01  0  0  1  7  1   0  0  1  7  1    -0
MatAssemblyEnd        39 1.0 1.3179e+00 1.7 9.59e+06 0.0 9.3e+03 3.8e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  2406
MatGetRowIJ            4 1.0 1.4119e-05 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries         6 1.0 9.8859e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 1.7195e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       12 1.0 3.3479e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp                6 1.0 6.0641e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCApply             1242 1.0 4.4618e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 77  0  0  0  0  77  0  0  0  0    -0
KSPSetUp               6 1.0 3.9993e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               6 1.0 4.8356e+02 1.0 3.35e+10 1.1 5.7e+06 1.5e+05 2.4e+03 84 80 88 90 88  84 80 88 90 88 54950
KSPGMRESOrthog      1200 1.0 1.4530e+01 1.1 1.45e+10 1.1 0.0e+00 0.0e+00 1.2e+03  2 35  0  0 43   2 35  0  0 43 794432
DMPlexCreateGmsh       1 1.0 5.3910e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.9810e+00 126.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         2 1.0 3.6815e-01 1.0 0.00e+00 0.0 5.9e+04 5.7e+01 2.5e+01  0  0  1  0  1   0  0  1  0  1    -0
Mesh Migration         2 1.0 4.2004e-02 1.0 0.00e+00 0.0 2.1e+05 6.6e+01 1.1e+02  0  0  3  0  4   0  0  3  0  4    -0
DMPlexPartSelf         1 1.0 1.0543e-02 2234.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 4.3757e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 9.8175e-03 3.7 0.00e+00 0.0 1.1e+04 5.0e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.0184e-03 3.7 0.00e+00 0.0 5.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 4.9230e-03 1.6 0.00e+00 0.0 6.6e+03 3.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.7248e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.9420e-01 1.0 0.00e+00 0.0 3.4e+04 3.3e+02 6.3e+01  0  0  1  0  2   0  0  1  0  2    -0
DMPlexDistCones        2 1.0 5.9678e-03 1.1 0.00e+00 0.0 3.4e+04 1.2e+02 4.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistLabels       2 1.0 2.2342e-02 1.0 0.00e+00 0.0 1.1e+05 6.9e+01 7.6e+01  0  0  2  0  3   0  0  2  0  3    -0
DMPlexDistOvrlp        1 1.0 2.2956e-02 1.0 0.00e+00 0.0 2.4e+05 3.5e+01 8.0e+01  0  0  4  0  3   0  0  4  0  3    -0
DMPlexDistField        3 1.0 8.3584e-03 1.2 0.00e+00 0.0 5.1e+04 3.3e+01 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexStratify         4 1.0 2.1837e-02 16.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9147e-03 324.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 5.1241e+02 1.0 4.24e+10 1.2 5.9e+06 1.6e+05 2.5e+03 89 100 90 98 89  89 100 90 98 90 64451
SNESSetUp              1 1.0 5.7627e-05 7.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       6 1.0 1.0403e+01 1.0 2.90e+09 1.4 9.3e+04 1.5e+05 0.0e+00  2  6  1  1  0   2  6  1  1  0 200162
SNESJacobianEval       6 1.0 1.2364e+01 1.0 6.04e+09 1.4 5.6e+04 9.9e+05 2.4e+01  2 13  1  6  1   2 13  1  6  1 353391
firedrake              1 1.0 5.7408e+02 1.0 4.24e+10 1.2 6.5e+06 1.5e+05 2.8e+03 99 100 100 100 99  99 100 100 100 100 57574
firedrake.__init__       1 1.0 1.5505e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateMesh             1 1.0 7.4598e+00 14.0 0.00e+00 0.0 5.0e+05 5.8e+01 2.0e+02  1  0  8  0  7   1  0  8  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 6.9819e+00 126.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.3336e-03 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.0880e-06 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.8348e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.7157e-04 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 1.8692e-02 1.1 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 9.7240e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 1.7647e-02 1.1 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 1.6750e-02 1.2 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 1.6700e-02 1.2 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 7.9961e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.3653e-03 1.5 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.0296e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.1893e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.6014e-02 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 4.6250e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.6166e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.0080e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.9012e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 4.6208e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     214 1.0 2.0906e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        65 1.0 2.8575e+01 1.1 8.97e+09 1.4 1.8e+05 1.1e+05 1.5e+01  5 20  3  2  1   5 20  3  2  1 226596
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 4.5867e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     130 1.0 2.6422e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.3526e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.2037e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.4712e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.5814e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.5813e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 9.3469e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 9.1670e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin      65 1.0 5.4678e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        65 1.0 1.8922e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 8.6833e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8734e+00 1.0 3.41e+07 1.1 8.5e+04 6.4e+04 1.2e+01  1  0  1  1  0   1  0  1  1  0  5560
firedrake.interpolation.interpolate      10 1.0 3.8242e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.8694e+00 1.0 3.41e+07 1.1 8.5e+04 6.4e+04 1.2e+01  1  0  1  1  0   1  0  1  1  0  5564
firedrake.formmanipulation.split_form      12 1.0 3.7988e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.8101e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.4673e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.2 9.4783e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      32 1.0 6.3139e-02 1.5 0.00e+00 0.0 1.8e+05 1.1e+05 2.0e+00  0  0  3  2  0   0  0  3  2  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.5991e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  5891
firedrake.halo.Halo.global_to_local_end      32 1.0 3.4830e-01 67.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      37 1.0 1.2858e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 1.1271e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8475e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 4.0635e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.5098e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5620e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9655e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.3084e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.3358e+00 1.0 0.00e+00 0.0 2.8e+04 6.1e+05 2.3e+01  1  0  0  2  1   1  0  0  2  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.4463e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4698e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0961e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0960e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.0721e+00 1.2 0.00e+00 0.0 1.4e+04 5.9e+05 8.0e+00  0  0  0  1  0   0  0  0  1  0    -0
MatZeroInitial         1 1.0 2.8712e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 5.1242e+02 1.0 4.24e+10 1.2 5.9e+06 1.6e+05 2.5e+03 89 100 90 98 89  89 100 90 98 90 64450
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.4121e-01 1144.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.2910e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.4116e-01 1361.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.4113e-01 1545.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      12 1.0 1.9979e+00 1.2 6.88e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 273721
Parloop_Cells_wrap_form0_exterior_facet_top_integral      12 1.0 9.9552e-01 1.0 2.23e+04 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    18
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      12 1.0 1.1962e+00 1.0 1.65e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   811
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      12 1.0 1.8072e+00 1.0 6.62e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 291357
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      12 1.0 2.5477e+00 1.0 1.55e+09 1.8 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 395417
firedrake.halo.Halo.local_to_global_begin       6 1.0 2.8919e-03 8.5 0.00e+00 0.0 2.8e+04 1.5e+05 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end       6 1.0 5.3926e-02 16.9 9.07e+05 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9791
Parloop_Cells_wrap_form00_cell_integral      12 1.0 2.5191e+00 1.1 1.28e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 405093
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      12 1.0 1.1486e+00 1.1 1.68e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   860
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      12 1.0 2.8384e+00 1.1 1.70e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 476824
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      12 1.0 4.6908e+00 1.2 3.05e+09 1.8 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 424515
firedrake.constant.Constant.assign       5 1.0 6.1691e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    20             20
              Viewer     3              3
           Index Set  2674           2674
   IS L to G Mapping     6              6
             Section    86             86
   Star Forest Graph    75             75
              Vector    73             73
              Matrix     8              8
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
Average time to get PetscTime(): 2.46e-08
Average time for MPI_Barrier(): 7.7708e-06
Average time for zero size MPI_Send(): 2.07359e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/boomeramg/large.profile # (source: code)
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

