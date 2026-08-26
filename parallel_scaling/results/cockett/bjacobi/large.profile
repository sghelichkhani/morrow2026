****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0428.gadi.nci.org.au with 416 processes, by sg8812 on Tue Aug 25 22:17:07 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.416e+02     1.000   7.416e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.796e+11     1.147   6.360e+11  2.646e+14
Flops/sec:            9.164e+08     1.147   8.576e+08  3.568e+11
MPI Msg Count:        7.844e+04     3.993   5.488e+04  2.283e+07
MPI Msg Len (bytes):  8.301e+09     2.768   1.061e+05  2.422e+12
MPI Reductions:       1.918e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.4160e+02 100.0%  2.6459e+14 100.0%  2.283e+07 100.0%  1.061e+05      100.0%  1.916e+04  99.9%

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

BuildTwoSided        404 1.0 1.7639e+01 10.1 0.00e+00 0.0 1.6e+05 4.0e+00 4.0e+02  1  0  1  0  2   1  0  1  0  2    -0
BuildTwoSidedF       366 1.0 1.7414e+01 10.8 0.00e+00 0.0 2.2e+05 4.6e+05 3.7e+02  1  0  1  4  2   1  0  1  4  2    -0
SFSetGraph            41 1.0 5.4765e-03 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               38 1.0 3.2606e-01 6.6 0.00e+00 0.0 1.0e+05 2.7e+03 3.8e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         338 1.0 1.6781e-01 3.4 0.00e+00 0.0 7.1e+05 8.3e+04 0.0e+00  0  0  3  2  0   0  0  3  2  0    -0
SFBcastEnd           338 1.0 8.6390e+00 136.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        134 1.0 3.0127e-02 4.3 0.00e+00 0.0 3.1e+05 9.5e+04 0.0e+00  0  0  1  1  0   0  0  1  1  0    -0
SFReduceEnd          134 1.0 2.9709e+00 125.3 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1233
SFFetchOpBegin         2 1.0 2.0117e-05 8.2 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 9.8822e-04 68.1 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.6284e-03 4.0 0.00e+00 0.0 2.8e+03 8.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.5395e-02 1.3 0.00e+00 0.0 9.4e+04 2.0e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 5.9246e-03 5.2 0.00e+00 0.0 4.1e+04 1.1e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              9697 1.0 3.3396e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            9699 1.0 6.9107e-02 4.3 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 53021
VecDot                91 1.0 2.9892e-01 9.7 3.34e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 44352
VecMDot             8880 1.0 7.4138e+01 2.3 4.78e+10 1.1 0.0e+00 0.0e+00 8.9e+03  7  7  0  0 46   7  7  0  0 46 255375
VecNorm             9435 1.0 1.1151e+01 3.8 3.47e+09 1.1 0.0e+00 0.0e+00 9.4e+03  1  1  0  0 49   1  1  0  0 49 123272
VecScale            9223 1.0 3.8971e-01 1.2 1.69e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1723950
VecCopy             1574 1.0 7.4227e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               434 1.0 1.3461e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              595 1.0 2.4707e-01 1.7 2.19e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 350842
VecWAXPY              91 1.0 6.9768e-02 1.2 1.67e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 95011
VecMAXPY            9223 1.0 5.0398e+01 1.1 5.10e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  8  0  0  0   6  8  0  0  0 401345
VecScatterBegin     9223 1.0 3.5743e+00 2.6 0.00e+00 0.0 2.1e+07 1.0e+05 0.0e+00  0  0 94 92  0   0  0 94 92  0    -0
VecScatterEnd       9223 1.0 3.8095e+01 56.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       182 1.0 3.0982e-02 2.4 6.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 855816
VecReduceComm         91 1.0 2.8221e-01 21.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        9223 1.0 9.1426e+00 3.9 5.08e+09 1.1 0.0e+00 0.0e+00 9.2e+03  1  1  0  0 48   1  1  0  0 48 220451
MatMult             9223 1.0 2.6046e+02 1.2 1.88e+11 1.1 2.1e+07 1.0e+05 0.0e+00 32 28 94 92  0  32 28 94 92  0 285122
MatSolve            9223 1.0 2.2440e+02 1.1 1.76e+11 1.1 0.0e+00 0.0e+00 0.0e+00 28 26  0  0  0  28 26  0  0  0 310011
MatLUFactorNum        91 1.0 9.5552e+00 1.2 2.01e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 809563
MatILUFactorSym        1 1.0 1.0425e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     366 1.0 1.7727e+01 6.8 0.00e+00 0.0 2.2e+05 4.6e+05 3.7e+02  1  0  1  4  2   1  0  1  4  2    -0
MatAssemblyEnd       366 1.0 2.8929e+00 6.7 3.42e+07 0.0 4.7e+03 2.6e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  1978
MatGetRowIJ            1 1.0 7.3780e-06 64.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 3.1900e-03 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        91 1.0 3.2077e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               91 1.0 3.2259e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks       91 1.0 9.6533e+00 1.2 2.01e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 801336
PCApply             9223 1.0 2.2452e+02 1.1 1.76e+11 1.1 0.0e+00 0.0e+00 0.0e+00 29 26  0  0  0  29 26  0  0  0 309844
PCApplyOnBlocks     9223 1.0 2.2448e+02 1.1 1.76e+11 1.1 0.0e+00 0.0e+00 0.0e+00 29 26  0  0  0  29 26  0  0  0 309893
KSPSetUp              91 1.0 8.7786e-03 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.5093e+02 1.0 4.66e+11 1.1 2.1e+07 1.0e+05 1.8e+04 74 70 93 91 94  74 70 93 91 94 334631
KSPGMRESOrthog      8880 1.0 1.1827e+02 1.5 9.55e+10 1.1 0.0e+00 0.0e+00 8.9e+03 13 14  0  0 46  13 14  0  0 46 320162
Mesh Partition         2 1.0 2.5474e-01 1.0 0.00e+00 0.0 2.9e+04 1.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.5888e-02 1.0 0.00e+00 0.0 9.7e+04 2.5e+02 1.1e+02  0  0  0  0  1   0  0  0  0  1    -0
DMPlexPartSelf         1 1.0 1.5201e-02 4316.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 3.4737e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.3946e-03 1.1 0.00e+00 0.0 5.6e+03 1.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.4882e-03 2.3 0.00e+00 0.0 2.8e+03 7.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 7.4353e-03 1.3 0.00e+00 0.0 3.2e+03 1.2e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.8885e-01 1.0 0.00e+00 0.0 1.6e+04 1.4e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 4.3759e-03 1.1 0.00e+00 0.0 1.7e+04 4.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.0059e-02 1.0 0.00e+00 0.0 4.6e+04 2.8e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 1.9283e-02 1.2 0.00e+00 0.0 1.1e+05 1.0e+02 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 6.9739e-03 1.2 0.00e+00 0.0 2.5e+04 1.2e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.2079e-04 1.2 0.00e+00 0.0 1.2e+04 6.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 8.9566e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 3.3268e-03 188.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.4861e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.0820e+02 1.0 6.80e+11 1.1 2.3e+07 1.1e+05 1.9e+04 95 100 99 100 98  95 100 99 100 98 373605
SNESSetUp              1 1.0 3.8966e-05 6.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4944e+01 1.1 7.91e+10 1.3 6.4e+05 1.0e+05 1.0e+00  6 11  3  3  0   6 11  3  3  0 654891
SNESJacobianEval      91 1.0 1.0067e+02 1.0 1.14e+11 1.3 4.2e+05 2.7e+05 3.6e+02 14 16  2  5  2  14 16  2  5  2 419683
SNESLineSearch        91 1.0 2.3860e+01 1.0 6.16e+10 1.2 6.4e+05 1.0e+05 3.6e+02  3  9  3  3  2   3  9  3  3  2 961510
firedrake              1 1.0 7.3842e+02 1.0 6.80e+11 1.1 2.3e+07 1.1e+05 1.9e+04 100 100 100 100 100 100 100 100 100 100 358318
firedrake.__init__       1 1.0 1.5997e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 4.8930e+00 12.3 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  1  0  1   0  0  1  0  1    -0
CreateMesh             1 1.0 3.8067e-01 1.0 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2161e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7430e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.7400e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.2907e-04 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       4 1.0 2.7960e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       5 1.0 5.0809e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       4 1.0 2.7358e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       3 1.0 2.6751e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       3 1.0 2.6721e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement       6 1.0 1.3130e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 8.0264e-03 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.3051e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0272e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 5.5515e-02 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.5784e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.0085e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5507e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.9727e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.5744e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     244 1.0 3.7053e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1062 1.0 1.3671e+02 1.2 1.93e+11 1.3 5.8e+05 1.0e+05 6.0e+00 17 27  3  2  0  17 27  3  2  0 524283
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.5412e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2124 1.0 3.4151e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      12 1.0 2.1065e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      12 0.0 2.6857e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      12 0.0 1.7926e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      12 1.0 1.3044e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      12 1.0 1.3044e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      12 1.0 8.9125e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      12 1.0 8.7959e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    1062 1.0 3.1437e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1062 1.0 2.4615e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.1589e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.6073e-01 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1137
firedrake.interpolation.interpolate       1 1.0 3.8026e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       1 1.0 9.6036e-01 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1138
firedrake.formmanipulation.split_form       3 1.0 2.8347e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.9545e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       1 1.0 4.0918e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       1 1.0 3.0744e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.0180e-01 3.4 0.00e+00 0.0 5.8e+05 1.0e+05 2.0e+00  0  0  3  2  0   0  0  3  2  0    -0
Parloop_Cells_wrap_expression_kernel       2 1.0 8.9765e-01 1.0 2.76e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1217
firedrake.halo.Halo.global_to_local_end     243 1.0 8.1219e+00 263.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.9900e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.7415e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1468e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.8983e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.4706e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.0488e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.7439e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.4221e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.5901e+00 1.0 0.00e+00 0.0 1.4e+04 5.7e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.2459e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1278e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1523e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1523e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.6955e+00 1.3 0.00e+00 0.0 7.1e+03 5.6e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 4.5404e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.0826e+02 1.0 6.80e+11 1.1 2.3e+07 1.1e+05 1.9e+04 96 100 99 100 99  96 100 99 100 99 373573
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.6951e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2241e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.7694e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.2016e+00 1.2 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 739722
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1064e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7022
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0661e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7159
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0231e+01 1.1 1.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 683533
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7392e+01 1.3 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   2  6  0  0  0 896986
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.3913e-02 3.3 0.00e+00 0.0 2.8e+05 1.0e+05 0.0e+00  0  0  1  1  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.9720e+00 119.2 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1233
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5916e+01 1.1 2.35e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   2  4  0  0  0 585884
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3920e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5649
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3718e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5697
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8356e+01 1.1 2.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   4  4  0  0  0 346614
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5673e+01 1.4 6.54e+10 1.4 0.0e+00 0.0e+00 0.0e+00  5  9  0  0  0   5  9  0  0  0 504983
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    65             65
              Viewer     1              1
           Index Set  1412           1412
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
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 1.17106e-05
Average time for zero size MPI_Send(): 2.04708e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/bjacobi/large.profile # (source: environment)
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

