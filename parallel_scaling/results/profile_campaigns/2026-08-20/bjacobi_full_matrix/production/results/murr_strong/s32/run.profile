****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0289.gadi.nci.org.au with 3328 processes, by sg8812 on Thu Aug 20 17:34:03 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.501e+02     1.000   4.501e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                4.221e+11     1.156   3.969e+11  1.321e+15
Flops/sec:            9.378e+08     1.156   8.818e+08  2.935e+12
MPI Msg Count:        1.489e+05     3.670   7.879e+04  2.622e+08
MPI Msg Len (bytes):  6.582e+09     2.417   6.089e+04  1.597e+13
MPI Reductions:       2.576e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.5010e+02 100.0%  1.3209e+15 100.0%  2.622e+08 100.0%  6.089e+04      100.0%  2.574e+04  99.9%

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

BuildTwoSided         37 1.0 9.5506e-02 1.6 0.00e+00 0.0 2.1e+05 4.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
BuildTwoSidedF       814 1.0 1.6104e+01 2.9 0.00e+00 0.0 3.0e+06 8.4e+05 0.0e+00  2  0  1 16  0   2  0  1 16  0    -0
SFSetGraph            40 1.0 3.4937e-03 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 1.1088e-01 1.5 0.00e+00 0.0 6.3e+05 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         673 1.0 1.4049e-01 2.4 0.00e+00 0.0 1.2e+07 4.6e+04 0.0e+00  0  0  5  4  0   0  0  5  4  0    -0
SFBcastEnd           673 1.0 5.8379e+00 38.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        289 1.0 3.4440e-02 8.3 0.00e+00 0.0 5.5e+06 5.1e+04 0.0e+00  0  0  2  2  0   0  0  2  2  0    -0
SFReduceEnd          289 1.0 9.7744e-01 47.8 1.45e+07 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 36009
SFFetchOpBegin         2 1.0 2.5256e-05 13.3 0.00e+00 0.0 2.9e+04 5.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.6926e-03 157.1 0.00e+00 0.0 2.9e+04 5.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 5.0981e-03 3.9 0.00e+00 0.0 2.3e+04 4.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 6.5546e-02 1.3 0.00e+00 0.0 7.1e+05 9.8e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           21 1.0 3.1403e-02 2.5 0.00e+00 0.0 2.5e+05 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             13422 1.0 1.6097e+00 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           13424 1.0 7.0611e-02 9.6 1.45e+07 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 498450
VecDot               203 1.0 3.3221e-01 4.1 4.09e+07 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  1   0  0  0  0  1 394630
VecMDot            11991 1.0 5.6069e+01 1.9 3.41e+10 1.1 0.0e+00 0.0e+00 1.2e+04  9  8  0  0 47   9  8  0  0 47 1945538
VecNorm            12939 1.0 9.0446e+00 1.8 2.61e+09 1.1 0.0e+00 0.0e+00 1.3e+04  1  1  0  0 50   1  1  0  0 50 923894
VecScale           12458 1.0 2.7588e-01 1.2 1.26e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14581883
VecCopy             1707 1.0 3.6986e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               670 1.0 1.1391e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              731 1.0 1.4444e-01 1.5 1.47e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3268431
VecWAXPY             203 1.0 6.6378e-02 1.3 2.05e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 987542
VecMAXPY           12458 1.0 3.0123e+01 1.1 3.65e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  9  0  0  0   6  9  0  0  0 3878479
VecScatterBegin    12458 1.0 1.8107e+00 2.0 0.00e+00 0.0 2.4e+08 5.2e+04 0.0e+00  0  0 92 79  0   0  0 92 79  0    -0
VecScatterEnd      12458 1.0 1.2651e+01 19.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       406 1.0 6.8361e-02 4.3 8.18e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3835561
VecReduceComm        203 1.0 1.3513e-01 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize       12458 1.0 7.6179e+00 1.9 3.77e+09 1.1 0.0e+00 0.0e+00 1.2e+04  1  1  0  0 48   1  1  0  0 48 1584224
MatMult            12458 1.0 1.2812e+02 1.1 8.91e+10 1.1 2.4e+08 5.2e+04 0.0e+00 27 22 92 79  0  27 22 92 79  0 2224372
MatSolve           12458 1.0 1.2111e+02 1.2 8.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00 25 20  0  0  0  25 20  0  0  0 2196863
MatLUFactorNum       203 1.0 7.6137e+00 1.2 1.26e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 4995027
MatILUFactorSym        1 1.0 2.8344e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     814 1.0 1.7410e+01 2.5 0.00e+00 0.0 3.0e+06 8.4e+05 0.0e+00  3  0  1 16  0   3  0  1 16  0    -0
MatAssemblyEnd       814 1.0 5.5550e+00 34.2 1.27e+08 0.0 2.9e+04 1.7e+04 5.0e+00  0  0  0  0  0   0  0  0  0  0 27764
MatGetRowIJ            1 1.0 7.0720e-06 64.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 8.1673e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       203 1.0 1.6602e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              203 1.0 4.5783e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks      203 1.0 7.6450e+00 1.2 1.26e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 4974582
PCApply            12458 1.0 1.2134e+02 1.2 8.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00 25 20  0  0  0  25 20  0  0  0 2192560
PCApplyOnBlocks    12458 1.0 1.2127e+02 1.2 8.37e+10 1.1 0.0e+00 0.0e+00 0.0e+00 25 20  0  0  0  25 20  0  0  0 2193829
KSPSetUp             203 1.0 3.2097e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             203 1.0 3.0953e+02 1.0 2.46e+11 1.1 2.4e+08 5.2e+04 2.4e+04 69 59 90 78 95  69 59 90 78 95 2535586
KSPGMRESOrthog     11991 1.0 8.1986e+01 1.4 6.81e+10 1.1 0.0e+00 0.0e+00 1.2e+04 15 17  0  0 47  15 17  0  0 47 2661084
DMPlexCreateGmsh       1 1.0 4.0558e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 4.4715e+00 11.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 2.1952e+00 1.0 0.00e+00 0.0 2.1e+05 1.1e+02 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 1.7410e-01 1.0 0.00e+00 0.0 7.9e+05 1.2e+02 9.5e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 9.3863e-02 6838.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 2.5130e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 5.9479e-02 1.4 0.00e+00 0.0 3.5e+04 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 9.1242e-03 1.7 0.00e+00 0.0 2.3e+04 3.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.2374e-02 1.1 0.00e+00 0.0 2.6e+04 5.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.2232e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.3358e+00 1.0 0.00e+00 0.0 1.2e+05 6.9e+02 5.4e+01  1  0  0  0  0   1  0  0  0  0    -0
DMPlexDistCones        2 1.0 2.8452e-02 1.1 0.00e+00 0.0 1.3e+05 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.1017e-01 1.0 0.00e+00 0.0 4.0e+05 1.3e+02 6.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 7.1409e-02 1.0 0.00e+00 0.0 9.0e+05 5.3e+01 6.7e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 2.2374e-02 1.2 0.00e+00 0.0 1.9e+05 5.4e+01 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 1.8357e-01 19.7 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.7975e-02 1727.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 3.8811e+02 1.0 4.22e+11 1.2 2.6e+08 6.1e+04 2.5e+04 86 100 99 100 98  86 100 99 100 98 3403217
SNESSetUp              1 1.0 3.2913e-05 6.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     278 1.0 1.5569e+01 1.1 6.50e+10 1.3 1.2e+07 5.2e+04 0.0e+00  3 15  5  4  0   3 15  5  4  0 12493286
SNESJacobianEval     203 1.0 5.3563e+01 1.0 9.91e+10 1.3 6.9e+06 3.9e+05 0.0e+00 12 23  3 17  0  12 23  3 17  0 5563943
SNESLineSearch       203 1.0 6.7988e+00 1.0 4.91e+10 1.3 1.2e+07 5.2e+04 8.1e+02  2 11  4  4  3   2 11  4  4  3 21680532
firedrake              1 1.0 4.4757e+02 1.0 4.22e+11 1.2 2.6e+08 6.1e+04 2.6e+04 99 100 100 100 100  99 100 100 100 100 2951211
firedrake.__init__       1 1.0 9.7861e+00 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateMesh             1 1.0 7.0176e+00 2.4 0.00e+00 0.0 1.8e+06 1.0e+02 1.6e+02  1  0  1  0  1   1  0  1  0  1    -0
firedrake.mesh._from_gmsh       1 1.0 4.4722e+00 11.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.5284e-03 69.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 4.1730e-06 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 4.0730e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 8.0701e-04 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.9516e-02 1.1 0.00e+00 0.0 3.9e+04 6.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 9.1410e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 2.8449e-02 1.1 0.00e+00 0.0 3.9e+04 6.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 2.7474e-02 1.1 0.00e+00 0.0 3.9e+04 6.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 2.7418e-02 1.1 0.00e+00 0.0 3.9e+04 6.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.5528e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.4179e-02 2.6 0.00e+00 0.0 3.9e+04 6.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 5.0170e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.3564e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 4.1885e-02 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.9016e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.7299e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.7530e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 7.7321e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.8971e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     630 1.0 6.7382e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2213 1.0 6.0643e+01 1.2 1.64e+11 1.3 1.1e+07 5.2e+04 1.3e+01 13 37  4  4  0  13 37  4  4  0 8119585
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.8611e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4426 1.0 2.4086e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.1245e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.5900e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.3284e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.2850e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.2850e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 9.2103e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 9.0568e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2213 1.0 6.3711e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2213 1.0 5.7557e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 1.0116e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8117e+00 1.0 1.70e+07 1.1 3.3e+05 2.4e+04 1.0e+01  1  0  0  0  0   1  0  0  0  0 11342
firedrake.interpolation.interpolate      10 1.0 4.4977e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.8081e+00 1.0 1.70e+07 1.1 3.3e+05 2.4e+04 1.0e+01  1  0  0  0  0   1  0  0  0  0 11350
firedrake.formmanipulation.split_form      12 1.0 4.0720e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.4142e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.5486e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.2 9.9143e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     570 1.0 1.6999e-01 2.0 0.00e+00 0.0 1.1e+07 5.2e+04 0.0e+00  0  0  4  4  0   0  0  4  4  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.5443e+00 1.0 1.70e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 12009
firedrake.halo.Halo.global_to_local_end     570 1.0 5.7235e+00 169.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 3.8715e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 3.1527e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 3.8324e-04 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.3323e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.9075e-04 22.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4866e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 3.0913e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2335e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 3.8745e+00 1.0 0.00e+00 0.0 9.7e+04 2.5e+05 2.0e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 5.9957e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.8381e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0241e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0241e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 1.0691e+00 1.5 0.00e+00 0.0 5.4e+04 2.3e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 1.3003e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 3.8821e+02 1.0 4.22e+11 1.2 2.6e+08 6.1e+04 2.5e+04 86 100 99 100 99  86 100 99 100 99 3402393
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.4866e-01 1119.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.2766e-05 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.4861e-01 1329.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.4858e-01 1494.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     556 1.0 3.6946e+00 1.4 1.59e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 13813153
Parloop_Cells_wrap_form0_exterior_facet_top_integral     556 1.0 1.0048e+00 1.0 2.07e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6601
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     556 1.0 1.2241e+00 1.0 3.28e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 26101
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     556 1.0 2.7073e+00 1.1 1.53e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 18104921
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     556 1.0 4.6161e+00 1.2 3.37e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 20447803
firedrake.halo.Halo.local_to_global_begin     278 1.0 4.0203e-02 4.9 0.00e+00 0.0 5.4e+06 5.2e+04 0.0e+00  0  0  2  2  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     278 1.0 9.7893e-01 44.7 1.45e+07 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 35954
Parloop_Cells_wrap_form00_cell_integral     406 1.0 9.3801e+00 1.5 2.17e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   2  5  0  0  0 7413474
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     406 1.0 1.4861e+00 1.3 2.44e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15987
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     406 1.0 1.2415e+01 1.4 2.87e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 7410360
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     406 1.0 2.2726e+01 1.5 4.87e+10 1.5 0.0e+00 0.0e+00 0.0e+00  4 10  0  0  0   4 10  0  0  0 5997768
firedrake.constant.Constant.assign      75 1.0 2.6941e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   156            156
              Viewer     3              3
           Index Set 10155          10155
   IS L to G Mapping     6              6
             Section    86             86
   Star Forest Graph    75             75
              Vector    77             77
              Matrix     8              8
      Preconditioner     2              2
       Krylov Solver     2              2
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
Average time to get PetscTime(): 2.55e-08
Average time for MPI_Barrier(): 1.032e-05
Average time for zero size MPI_Send(): 2.4085e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/production/results/murr_strong/s32/run.profile # (source: code)
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

