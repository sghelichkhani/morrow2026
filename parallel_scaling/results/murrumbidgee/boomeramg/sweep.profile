****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0679.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 23:38:41 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.361e+02     1.000   5.361e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                4.177e+10     1.119   3.971e+10  8.259e+12
Flops/sec:            7.792e+07     1.119   7.406e+07  1.540e+10
MPI Msg Count:        1.261e+04     4.442   7.597e+03  1.580e+06
MPI Msg Len (bytes):  7.673e+08     2.437   7.329e+04  1.158e+11
MPI Reductions:       2.782e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.3613e+02 100.0%  8.2589e+12 100.0%  1.580e+06 100.0%  7.329e+04      100.0%  2.763e+03  99.3%

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

BuildTwoSided         63 1.0 1.0142e+00 5.3 0.00e+00 0.0 2.9e+04 4.0e+00 6.3e+01  0  0  2  0  2   0  0  2  0  2    -0
BuildTwoSidedF        26 1.0 1.0071e+00 5.2 0.00e+00 0.0 9.0e+03 9.1e+05 2.6e+01  0  0  1  7  1   0  0  1  7  1    -0
SFSetGraph            40 1.0 3.7279e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 2.6767e-02 1.6 0.00e+00 0.0 4.9e+04 2.0e+03 3.7e+01  0  0  3  0  1   0  0  3  0  1    -0
SFBcastBegin         135 1.0 2.0704e-02 2.7 0.00e+00 0.0 1.2e+05 2.0e+04 0.0e+00  0  0  7  2  0   0  0  7  2  0    -0
SFBcastEnd           135 1.0 3.7541e-01 22.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         17 1.0 3.0093e-03 4.5 0.00e+00 0.0 1.7e+04 3.1e+04 0.0e+00  0  0  1  0  0   0  0  1  0  0    -0
SFReduceEnd           17 1.0 2.9575e-02 19.5 4.21e+05 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2149
SFFetchOpBegin         2 1.0 1.4456e-05 4.4 0.00e+00 0.0 1.7e+03 7.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 7.8950e-04 57.4 0.00e+00 0.0 1.7e+03 7.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.4716e-03 2.5 0.00e+00 0.0 1.3e+03 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 9.5469e-03 1.4 0.00e+00 0.0 4.3e+04 1.6e+02 2.4e+01  0  0  3  0  1   0  0  3  0  1    -0
SFSectionSF           21 1.0 4.4614e-03 4.4 0.00e+00 0.0 2.0e+04 9.3e+01 2.1e+01  0  0  1  0  1   0  0  1  0  1    -0
SFPack              1390 1.0 2.3887e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1392 1.0 5.4836e-03 4.2 4.21e+05 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11592
VecMDot             1200 1.0 6.8481e+00 1.1 7.26e+09 1.1 0.0e+00 0.0e+00 1.2e+03  1 17  0  0 43   1 17  0  0 43 210701
VecNorm             1248 1.0 1.0767e+00 2.9 5.03e+08 1.1 0.0e+00 0.0e+00 1.2e+03  0  1  0  0 45   0  1  0  0 45 92917
VecScale            1242 1.0 5.8972e-02 1.2 2.50e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 844127
VecCopy               66 1.0 3.8618e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              1290 1.0 7.9934e-01 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               78 1.0 3.9769e-02 1.5 3.14e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 157222
VecMAXPY            1242 1.0 7.9674e+00 1.1 7.74e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1 19  0  0  0   1 19  0  0  0 193175
VecScatterBegin     1236 1.0 2.7045e-01 2.3 0.00e+00 0.0 1.4e+06 7.6e+04 0.0e+00  0  0 88 90  0   0  0 88 90  0    -0
VecScatterEnd       1236 1.0 2.1272e+00 26.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        1242 1.0 9.3685e-01 3.9 7.51e+08 1.1 0.0e+00 0.0e+00 1.2e+03  0  2  0  0 45   0  2  0  0 45 159406
MatMult             1236 1.0 2.4455e+01 1.1 1.77e+10 1.1 1.4e+06 7.6e+04 0.0e+00  4 42 88 90  0   4 42 88 90  0 143217
MatConvert             6 1.0 6.3814e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin      39 1.0 1.0081e+00 2.6 0.00e+00 0.0 9.0e+03 9.1e+05 2.6e+01  0  0  1  7  1   0  0  1  7  1    -0
MatAssemblyEnd        39 1.0 6.1136e-01 1.7 4.15e+06 0.0 2.2e+03 1.9e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0   624
MatGetRowIJ            4 1.0 1.3553e-05 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries         6 1.0 9.8604e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO        2 1.0 1.7280e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       12 1.0 3.3544e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp                6 1.0 4.4384e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCApply             1242 1.0 4.1621e+02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 77  0  0  0  0  77  0  0  0  0    -0
KSPSetUp               6 1.0 3.9390e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               6 1.0 4.5360e+02 1.0 3.35e+10 1.1 1.4e+06 7.6e+04 2.4e+03 85 80 88 90 88  85 80 88 90 88 14638
KSPGMRESOrthog      1200 1.0 1.4333e+01 1.1 1.45e+10 1.1 0.0e+00 0.0e+00 1.2e+03  3 35  0  0 43   3 35  0  0 43 201342
DMPlexCreateGmsh       1 1.0 5.5379e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.2135e+00 79.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         2 1.0 1.4102e-01 1.0 0.00e+00 0.0 1.4e+04 1.6e+02 2.5e+01  0  0  1  0  1   0  0  1  0  1    -0
Mesh Migration         2 1.0 2.3727e-02 1.1 0.00e+00 0.0 5.0e+04 2.0e+02 1.1e+02  0  0  3  0  4   0  0  3  0  4    -0
DMPlexPartSelf         1 1.0 8.1212e-03 3030.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.7117e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.7833e-03 1.5 0.00e+00 0.0 2.7e+03 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.4329e-03 5.1 0.00e+00 0.0 1.3e+03 6.0e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 4.1778e-03 1.5 0.00e+00 0.0 1.5e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.6614e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.6000e-01 1.0 0.00e+00 0.0 8.6e+03 1.2e+03 6.3e+01  0  0  1  0  2   0  0  1  0  2    -0
DMPlexDistCones        2 1.0 2.7561e-03 1.0 0.00e+00 0.0 8.0e+03 3.8e+02 4.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistLabels       2 1.0 1.3045e-02 1.0 0.00e+00 0.0 2.6e+04 2.1e+02 7.6e+01  0  0  2  0  3   0  0  2  0  3    -0
DMPlexDistOvrlp        1 1.0 8.5632e-03 1.0 0.00e+00 0.0 5.7e+04 6.9e+01 8.0e+01  0  0  4  0  3   0  0  4  0  3    -0
DMPlexDistField        3 1.0 4.2616e-03 1.3 0.00e+00 0.0 1.2e+04 8.3e+01 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexStratify         4 1.0 2.1396e-02 16.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9705e-03 122.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 4.7996e+02 1.0 4.17e+10 1.1 1.4e+06 7.9e+04 2.5e+03 90 100 90 98 89  90 100 90 98 90 17193
SNESSetUp              1 1.0 4.5364e-05 6.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       6 1.0 1.0267e+01 1.0 2.72e+09 1.2 2.2e+04 7.6e+04 0.0e+00  2  6  1  1  0   2  6  1  1  0 50668
SNESJacobianEval       6 1.0 1.1481e+01 1.0 5.68e+09 1.2 1.3e+04 4.9e+05 2.4e+01  2 13  1  6  1   2 13  1  6  1 95070
firedrake              1 1.0 5.3387e+02 1.0 4.18e+10 1.1 1.6e+06 7.3e+04 2.8e+03 100 100 100 100 99 100 100 100 100 100 15470
firedrake.__init__       1 1.0 1.1836e+01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateMesh             1 1.0 4.4197e+00 17.1 0.00e+00 0.0 1.2e+05 1.6e+02 2.0e+02  1  0  7  0  7   1  0  7  0  7    -0
firedrake.mesh._from_gmsh       1 1.0 4.2142e+00 79.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.0641e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.6590e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.8213e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.2824e-04 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.2580e-02 1.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 9.0885e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 2.1467e-02 1.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 2.0500e-02 1.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 2.0433e-02 1.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.3275e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 7.1081e-03 4.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.1892e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.3673e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 1.9729e-02 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.7293e+00 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.4767e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8527e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.5621e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.7250e+00 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     214 1.0 2.9741e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        65 1.0 2.5552e+01 1.1 8.43e+09 1.2 4.3e+04 5.5e+04 1.5e+01  5 20  3  2  1   5 20  3  2  1 63323
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.6947e+00 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     130 1.0 2.3576e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.0382e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.4680e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.3632e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.3206e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.3205e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 8.9597e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.8326e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin      65 1.0 5.1638e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        65 1.0 5.7591e-04 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 8.1341e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8625e+00 1.0 3.41e+07 1.1 2.0e+04 3.2e+04 1.2e+01  1  0  1  1  0   1  0  1  1  0  1393
firedrake.interpolation.interpolate      10 1.0 4.3428e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.8588e+00 1.0 3.41e+07 1.1 2.0e+04 3.2e+04 1.2e+01  1  0  1  1  0   1  0  1  1  0  1394
firedrake.formmanipulation.split_form      12 1.0 3.9068e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.8103e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.4024e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.2 1.0036e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      32 1.0 3.6819e-02 1.6 0.00e+00 0.0 4.3e+04 5.5e+04 2.0e+00  0  0  3  2  0   0  0  3  2  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.5987e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1473
firedrake.halo.Halo.global_to_local_end      32 1.0 1.6692e-01 47.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      37 1.0 1.1342e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 1.0034e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8629e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 3.9687e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.7181e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4240e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9204e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1703e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9803e+00 1.0 0.00e+00 0.0 6.8e+03 3.1e+05 2.3e+01  1  0  0  2  1   1  0  0  2  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.1512e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2364e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0176e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0176e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 1.8088e+00 1.2 0.00e+00 0.0 3.4e+03 3.0e+05 8.0e+00  0  0  0  1  0   0  0  0  1  0    -0
MatZeroInitial         1 1.0 2.5599e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 4.7997e+02 1.0 4.17e+10 1.1 1.4e+06 7.9e+04 2.5e+03 90 100 90 98 89  90 100 90 98 90 17193
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.6735e-01 935.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0615e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.6731e-01 1125.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.6728e-01 1292.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      12 1.0 1.9779e+00 1.2 6.88e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 69120
Parloop_Cells_wrap_form0_exterior_facet_top_integral      12 1.0 9.6472e-01 1.0 8.94e+04 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    18
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      12 1.0 1.1782e+00 1.0 6.49e+06 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   206
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      12 1.0 1.8026e+00 1.0 6.60e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   0  2  0  0  0 72842
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      12 1.0 2.5155e+00 1.0 1.38e+09 1.3 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 100120
firedrake.halo.Halo.local_to_global_begin       6 1.0 2.4598e-03 3.2 0.00e+00 0.0 6.7e+03 7.6e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end       6 1.0 2.9522e-02 19.4 4.21e+05 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2153
Parloop_Cells_wrap_form00_cell_integral      12 1.0 2.5026e+00 1.1 1.28e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  3  0  0  0   0  3  0  0  0 101940
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      12 1.0 1.1213e+00 1.0 6.61e+06 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   220
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      12 1.0 2.7738e+00 1.0 1.70e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 121678
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      12 1.0 4.5709e+00 1.1 2.73e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 109003
firedrake.constant.Constant.assign       5 1.0 7.0939e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    20             20
              Viewer     3              3
           Index Set   802            802
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
Average time to get PetscTime(): 2.78e-08
Average time for MPI_Barrier(): 8.0588e-06
Average time for zero size MPI_Send(): 1.96828e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/boomeramg/sweep.profile # (source: code)
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

