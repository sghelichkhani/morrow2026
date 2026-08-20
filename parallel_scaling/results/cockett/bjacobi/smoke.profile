****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/source/morrow/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0549.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 17:20:05 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.316e+01     1.000   7.316e+01
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.385e+10     1.171   1.294e+10  1.346e+12
Flops/sec:            1.893e+08     1.171   1.769e+08  1.840e+10
MPI Msg Count:        9.662e+03     3.719   6.589e+03  6.853e+05
MPI Msg Len (bytes):  1.752e+08     2.332   2.223e+04  1.523e+10
MPI Reductions:       2.498e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.3161e+01 100.0%  1.3459e+12 100.0%  6.853e+05 100.0%  2.223e+04      100.0%  2.479e+03  99.2%

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

BuildTwoSided        120 1.0 6.5487e-01 7.8 0.00e+00 0.0 1.8e+04 4.0e+00 1.2e+02  1  0  3  0  5   1  0  3  0  5    -0
BuildTwoSidedF        82 1.0 5.8609e-01 7.0 0.00e+00 0.0 1.2e+04 1.2e+05 8.2e+01  0  0  2  9  3   0  0  2  9  3    -0
SFSetGraph            41 1.0 1.0548e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 1.2007e-01 15.3 0.00e+00 0.0 2.5e+04 5.9e+02 3.8e+01  0  0  4  0  2   0  0  4  0  2    -0
SFBcastBegin         156 1.0 1.2278e-02 3.9 0.00e+00 0.0 6.7e+04 1.1e+04 0.0e+00  0  0 10  5  0   0  0 10  5  0    -0
SFBcastEnd           156 1.0 5.8283e-01 61.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         43 1.0 2.1212e-03 6.2 0.00e+00 0.0 2.2e+04 1.7e+04 0.0e+00  0  0  3  2  0   0  0  3  2  0    -0
SFReduceEnd           43 1.0 1.1974e-01 102.2 5.24e+05 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   381
SFFetchOpBegin         2 1.0 1.2099e-05 6.9 0.00e+00 0.0 8.4e+02 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.8083e-04 28.8 0.00e+00 0.0 8.4e+02 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 7.2167e-04 1.3 0.00e+00 0.0 6.7e+02 4.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 4.9971e-03 1.3 0.00e+00 0.0 2.3e+04 1.2e+02 2.5e+01  0  0  3  0  1   0  0  3  0  1    -0
SFSectionSF           22 1.0 2.4243e-03 2.7 0.00e+00 0.0 1.0e+04 6.1e+01 2.2e+01  0  0  2  0  1   0  0  2  0  1    -0
SFPack              1245 1.0 5.2675e-02 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1247 1.0 2.3937e-03 5.6 5.24e+05 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 19059
VecDot                20 1.0 1.0669e-02 10.6 1.02e+06 1.1 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  1   0  0  0  0  1  9582
VecMDot             1004 1.0 1.3765e+00 3.4 6.96e+08 1.1 0.0e+00 0.0e+00 1.0e+03  1  5  0  0 40   1  5  0  0 41 50485
VecNorm             1094 1.0 3.3995e-01 1.8 5.60e+07 1.1 0.0e+00 0.0e+00 1.1e+03  0  0  0  0 44   0  0  0  0 44 16450
VecScale            1044 1.0 8.0985e-03 1.1 2.67e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 329487
VecCopy              170 1.0 6.4981e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet                60 1.0 2.9563e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               60 1.0 3.9366e-03 1.3 3.07e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 77911
VecWAXPY              20 1.0 1.1476e-03 1.2 5.12e+05 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 44543
VecMAXPY            1044 1.0 3.8939e-01 1.2 7.47e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 191651
VecScatterBegin     1044 1.0 7.0457e-02 2.1 0.00e+00 0.0 5.6e+05 2.3e+04 0.0e+00  0  0 81 83  0   0  0 81 83  0    -0
VecScatterEnd       1044 1.0 4.7791e-01 12.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith        40 1.0 7.0931e-04 1.8 2.05e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 288262
VecReduceComm         20 1.0 8.2983e-03 17.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        1044 1.0 1.5653e-01 4.3 8.01e+07 1.1 0.0e+00 0.0e+00 1.0e+03  0  1  0  0 42   0  1  0  0 42 51140
MatMult             1044 1.0 3.9836e+00 1.2 2.95e+09 1.1 5.6e+05 2.3e+04 0.0e+00  5 22 81 83  0   5 22 81 83  0 73408
MatSolve            1044 1.0 3.4393e+00 1.2 2.68e+09 1.1 0.0e+00 0.0e+00 0.0e+00  4 20  0  0  0   4 20  0  0  0 77285
MatLUFactorNum        20 1.0 2.8730e-01 1.3 5.86e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 195460
MatILUFactorSym        1 1.0 1.2763e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin      82 1.0 6.0357e-01 5.0 0.00e+00 0.0 1.2e+04 1.2e+05 8.2e+01  0  0  2  9  3   0  0  2  9  3    -0
MatAssemblyEnd        82 1.0 1.5848e-01 2.8 1.39e+06 0.0 1.1e+03 5.7e+03 6.0e+00  0  0  0  0  0   0  0  0  0  0   398
MatGetRowIJ            1 1.0 4.4010e-06 35.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.8979e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        20 1.0 6.0600e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               20 1.0 2.3248e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks       20 1.0 3.0069e-01 1.3 5.86e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 186761
PCApply             1044 1.0 3.4549e+00 1.2 2.68e+09 1.1 0.0e+00 0.0e+00 0.0e+00  4 20  0  0  0   4 20  0  0  0 76935
PCApplyOnBlocks     1044 1.0 3.4498e+00 1.2 2.68e+09 1.1 0.0e+00 0.0e+00 0.0e+00  4 20  0  0  0   4 20  0  0  0 77049
KSPSetUp              20 1.0 4.7770e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              20 1.0 8.2004e+00 1.0 7.11e+09 1.1 5.5e+05 2.3e+04 2.0e+03 11 52 80 82 82  11 52 80 82 83 85979
KSPGMRESOrthog      1004 1.0 1.6951e+00 2.2 1.39e+09 1.1 0.0e+00 0.0e+00 1.0e+03  2 10  0  0 40   2 10  0  0 41 81993
Mesh Partition         2 1.0 7.4409e-02 1.0 0.00e+00 0.0 6.9e+03 1.1e+02 2.5e+01  0  0  1  0  1   0  0  1  0  1    -0
Mesh Migration         2 1.0 1.2628e-02 1.1 0.00e+00 0.0 2.4e+04 1.4e+02 1.1e+02  0  0  3  0  4   0  0  3  0  4    -0
DMPlexPartSelf         1 1.0 2.1391e-03 1006.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 5.6463e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 2.7962e-03 1.1 0.00e+00 0.0 1.3e+03 9.8e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.2048e-03 1.6 0.00e+00 0.0 6.7e+02 3.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.9444e-03 2.6 0.00e+00 0.0 7.8e+02 6.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 8.4258e-02 1.0 0.00e+00 0.0 4.1e+03 6.4e+02 6.3e+01  0  0  1  0  3   0  0  1  0  3    -0
DMPlexDistCones        2 1.0 1.4679e-03 1.0 0.00e+00 0.0 4.0e+03 2.4e+02 4.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistLabels       2 1.0 5.8591e-03 1.0 0.00e+00 0.0 1.2e+04 1.5e+02 7.6e+01  0  0  2  0  3   0  0  2  0  3    -0
DMPlexDistOvrlp        1 1.0 4.1956e-03 1.1 0.00e+00 0.0 2.7e+04 6.9e+01 8.0e+01  0  0  4  0  3   0  0  4  0  3    -0
DMPlexDistField        3 1.0 2.4594e-03 1.1 0.00e+00 0.0 6.1e+03 7.1e+01 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistData         1 1.0 1.0880e-04 1.2 0.00e+00 0.0 2.7e+03 4.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.6193e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 3.3030e-04 33.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.6521e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             10 1.0 4.7510e+01 1.0 1.38e+10 1.2 6.2e+05 2.4e+04 2.2e+03 65 100 90 97 89  65 100 90 97 90 28327
SNESSetUp              1 1.0 2.3065e-05 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      30 1.0 1.8347e+01 1.0 2.72e+09 1.3 3.9e+04 2.2e+04 1.0e+00 25 19  6  6  0  25 19  6  6  0 13881
SNESJacobianEval      20 1.0 2.0499e+01 1.0 3.47e+09 1.3 2.1e+04 5.9e+04 8.0e+01 28 24  3  8  3  28 24  3  8  3 15793
SNESLineSearch        20 1.0 7.6430e-01 1.0 1.88e+09 1.3 3.2e+04 2.3e+04 8.0e+01  1 13  5  5  3   1 13  5  5  3 230203
firedrake              1 1.0 7.0074e+01 1.0 1.39e+10 1.2 6.9e+05 2.2e+04 2.5e+03 96 100 100 100 99  96 100 100 100 100 19207
firedrake.__init__       1 1.0 8.1107e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 3.9732e+00 21.8 0.00e+00 0.0 6.0e+04 1.1e+02 1.9e+02  0  0  9  0  8   0  0  9  0  8    -0
CreateMesh             1 1.0 1.6495e-01 1.0 0.00e+00 0.0 6.0e+04 1.1e+02 1.9e+02  0  0  9  0  8   0  0  9  0  8    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 7.3023e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5070e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.2277e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 3.3053e-04 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 6.4987e-02 1.0 0.00e+00 0.0 3.9e+03 6.0e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 3.8196e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 6.4406e-02 1.0 0.00e+00 0.0 3.9e+03 6.0e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 6.3809e-02 1.0 0.00e+00 0.0 3.9e+03 6.0e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 6.3780e-02 1.0 0.00e+00 0.0 3.9e+03 6.0e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 5.0431e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 7.0548e-03 1.3 0.00e+00 0.0 3.9e+03 6.0e+01 3.0e+00  0  0  1  0  0   0  0  1  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 6.2312e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 8.2322e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 5.0321e-03 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.8695e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  3  0  0  0  0   3  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.1863e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 4.0109e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.3883e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.8654e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  3  0  0  0  0   3  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     164 1.0 1.9878e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       252 1.0 3.6627e+01 1.0 6.20e+09 1.3 3.6e+04 2.1e+04 6.0e+00 50 43  5  5  0  50 43  5  5  0 15790
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.8343e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     504 1.0 3.3125e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 45  0  0  0  0  45  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.0862e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 28  0  0  0  0  28  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.1838e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.8432e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.2279e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 17  0  0  0  0  17  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.2278e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 17  0  0  0  0  17  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.4138e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.3076e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  11  0  0  0  0    -0
ParLoopRednBegin     252 1.0 8.1618e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       252 1.0 4.2899e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.9009e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.3561e-01 1.0 3.84e+05 1.1 2.3e+03 4.1e+03 2.0e+00  1  0  0  0  0   1  0  0  0  0    41
firedrake.interpolation.interpolate       1 1.0 3.5822e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.3525e-01 1.0 3.84e+05 1.1 2.3e+03 4.1e+03 2.0e+00  1  0  0  0  0   1  0  0  0  0    41
firedrake.formmanipulation.split_form       3 1.0 2.2163e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.0555e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 5.1938e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 2.9586e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      61 1.0 2.1039e-01 17.9 0.00e+00 0.0 3.6e+04 2.1e+04 2.0e+00  0  0  5  5  0   0  0  5  5  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.6851e-01 1.0 3.84e+05 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    44
firedrake.halo.Halo.global_to_local_end      61 1.0 3.8603e-01 234.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      35 1.0 2.2391e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      34 1.0 1.3848e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.1631e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      14 1.0 8.7901e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 2.4196e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6644e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.4437e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0648e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 6.9949e+00 1.0 0.00e+00 0.0 3.3e+03 1.2e+05 2.3e+01 10  0  0  3  1  10  0  0  3  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9359e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.4814e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1317e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 15  0  0  0  0  15  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1317e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 15  0  0  0  0  15  0  0  0  0    -0
CreateSparsity         1 1.0 5.9563e-01 2.7 0.00e+00 0.0 1.7e+03 1.2e+05 8.0e+00  1  0  0  1  0   1  0  0  1  0    -0
MatZeroInitial         1 1.0 5.3241e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      10 1.0 4.7518e+01 1.0 1.38e+10 1.2 6.2e+05 2.4e+04 2.2e+03 65 100 90 97 90  65 100 90 97 90 28323
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.0206e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2165e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 2.9625e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      60 1.0 2.5290e+00 1.0 5.93e+08 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 23414
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral      60 1.0 2.0288e+00 1.0 4.08e+06 1.1 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0   201
Parloop_Cells_wrap_form0_exterior_facet_top_integral      60 1.0 2.0306e+00 1.0 4.08e+06 1.1 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0   201
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      60 1.0 3.3688e+00 1.0 6.04e+08 1.1 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0   5  4  0  0  0 17900
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      60 1.0 3.6203e+00 1.1 1.55e+09 1.5 0.0e+00 0.0e+00 0.0e+00  5 10  0  0  0   5 10  0  0  0 37096
firedrake.halo.Halo.local_to_global_begin      30 1.0 2.2101e-03 3.8 0.00e+00 0.0 1.6e+04 2.3e+04 0.0e+00  0  0  2  2  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end      30 1.0 1.1983e-01 92.2 5.24e+05 2.3 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   381
Parloop_Cells_wrap_form00_cell_integral      40 1.0 4.0147e+00 1.0 7.20e+08 1.1 0.0e+00 0.0e+00 0.0e+00  5  5  0  0  0   5  5  0  0  0 17912
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral      40 1.0 2.3222e+00 1.0 3.30e+06 1.1 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0   142
Parloop_Cells_wrap_form00_exterior_facet_top_integral      40 1.0 2.3207e+00 1.0 3.30e+06 1.1 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0   142
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      40 1.0 5.6942e+00 1.0 7.52e+08 1.1 0.0e+00 0.0e+00 0.0e+00  8  6  0  0  0   8  6  0  0  0 13194
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      40 1.0 6.0195e+00 1.1 2.03e+09 1.5 0.0e+00 0.0e+00 0.0e+00  8 13  0  0  0   8 13  0  0  0 29235
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    25             25
              Viewer     1              1
           Index Set   476            476
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
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 4.1982e-06
Average time for zero size MPI_Send(): 1.86427e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/smoke/results/cockett/smoke/run.profile # (source: environment)
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

