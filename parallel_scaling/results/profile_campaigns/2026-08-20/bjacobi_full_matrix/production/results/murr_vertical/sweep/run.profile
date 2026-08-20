****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0018.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 17:34:20 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.494e+02     1.000   4.494e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.662e+11     1.143   5.325e+11  1.108e+14
Flops/sec:            1.260e+09     1.143   1.185e+09  2.465e+11
MPI Msg Count:        6.217e+04     4.488   3.730e+04  7.759e+06
MPI Msg Len (bytes):  5.083e+09     2.437   9.888e+04  7.672e+11
MPI Reductions:       1.337e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.4938e+02 100.0%  1.1076e+14 100.0%  7.759e+06 100.0%  9.888e+04      100.0%  1.335e+04  99.9%

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

BuildTwoSided        855 1.0 1.6778e+01 4.3 0.00e+00 0.0 1.4e+05 4.0e+00 8.6e+02  2  0  2  0  6   2  0  2  0  6    -0
BuildTwoSidedF       818 1.0 1.6764e+01 4.3 0.00e+00 0.0 2.3e+05 9.1e+05 8.2e+02  2  0  3 27  6   2  0  3 27  6    -0
SFSetGraph            40 1.0 3.7663e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 2.6293e-02 1.6 0.00e+00 0.0 4.9e+04 2.0e+03 3.7e+01  0  0  1  0  0   0  0  1  0  0    -0
SFBcastBegin         675 1.0 2.2694e-01 2.7 0.00e+00 0.0 7.2e+05 6.7e+04 0.0e+00  0  0  9  6  0   0  0  9  6  0    -0
SFBcastEnd           675 1.0 6.7737e+00 80.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        290 1.0 4.2218e-02 3.5 0.00e+00 0.0 3.2e+05 7.3e+04 0.0e+00  0  0  4  3  0   0  0  4  3  0    -0
SFReduceEnd          290 1.0 1.3953e+00 49.3 1.96e+07 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2118
SFFetchOpBegin         2 1.0 1.6497e-05 5.8 0.00e+00 0.0 1.7e+03 7.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 9.1337e-04 72.2 0.00e+00 0.0 1.7e+03 7.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.4965e-03 2.4 0.00e+00 0.0 1.3e+03 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.0097e-02 1.4 0.00e+00 0.0 4.3e+04 1.6e+02 2.4e+01  0  0  1  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 4.4724e-03 6.1 0.00e+00 0.0 2.0e+04 9.3e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              6699 1.0 1.2742e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            6701 1.0 8.0214e-02 3.4 1.96e+07 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 36851
VecDot               204 1.0 3.7902e-01 5.5 8.23e+07 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2 43146
VecMDot             5472 1.0 4.1248e+01 1.9 2.90e+10 1.1 0.0e+00 0.0e+00 5.5e+03  7  5  0  0 41   7  5  0  0 41 139671
VecNorm             6215 1.0 7.2327e+00 3.1 2.51e+09 1.1 0.0e+00 0.0e+00 6.2e+03  1  0  0  0 46   1  0  0  0 47 68881
VecScale            5732 1.0 2.7492e-01 1.2 1.16e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 835681
VecCopy             1505 1.0 7.5641e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               464 1.0 1.6580e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              316 1.0 1.6174e-01 1.3 1.27e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 156619
VecWAXPY             204 1.0 1.7182e-01 1.1 4.11e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47587
VecMAXPY            5732 1.0 3.1521e+01 1.1 3.12e+10 1.1 0.0e+00 0.0e+00 0.0e+00  7  6  0  0  0   7  6  0  0  0 196688
VecScatterBegin     5732 1.0 1.2339e+00 2.3 0.00e+00 0.0 6.4e+06 7.6e+04 0.0e+00  0  0 83 63  0   0  0 83 63  0    -0
VecScatterEnd       5732 1.0 8.9553e+00 24.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       408 1.0 8.5508e-02 2.0 1.65e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 382487
VecReduceComm        204 1.0 1.6721e-01 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        5732 1.0 5.8445e+00 3.4 3.47e+09 1.1 0.0e+00 0.0e+00 5.7e+03  1  1  0  0 43   1  1  0  0 43 117927
MatMult             5732 1.0 1.1110e+02 1.1 8.20e+10 1.1 6.4e+06 7.6e+04 0.0e+00 24 15 83 63  0  24 15 83 63  0 146200
MatSolve            5732 1.0 1.1218e+02 1.2 7.85e+10 1.1 0.0e+00 0.0e+00 0.0e+00 24 14  0  0  0  24 14  0  0  0 138295
MatLUFactorNum       204 1.0 1.5216e+01 1.2 2.55e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 323522
MatILUFactorSym        1 1.0 5.3579e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     818 1.0 1.8576e+01 2.7 0.00e+00 0.0 2.3e+05 9.1e+05 8.2e+02  3  0  3 27  6   3  0  3 27  6    -0
MatAssemblyEnd       818 1.0 6.8212e+00 13.5 1.41e+08 0.0 2.2e+03 1.9e+04 6.0e+00  1  0  0  0  0   1  0  0  0  0  1901
MatGetRowIJ            1 1.0 4.2530e-06 38.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.7072e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       204 1.0 3.3426e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp              204 1.0 3.7745e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks      204 1.0 1.5275e+01 1.2 2.55e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 322276
PCApply             5732 1.0 1.1228e+02 1.2 7.85e+10 1.1 0.0e+00 0.0e+00 0.0e+00 24 14  0  0  0  24 14  0  0  0 138171
PCApplyOnBlocks     5732 1.0 1.1225e+02 1.2 7.85e+10 1.1 0.0e+00 0.0e+00 0.0e+00 24 14  0  0  0  24 14  0  0  0 138212
KSPSetUp             204 1.0 3.8778e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             204 1.0 2.7516e+02 1.0 2.21e+11 1.1 6.2e+06 7.6e+04 1.1e+04 61 40 80 61 84  61 40 80 61 84 159372
KSPGMRESOrthog      5472 1.0 6.8849e+01 1.4 5.80e+10 1.1 0.0e+00 0.0e+00 5.5e+03 13 10  0  0 41  13 10  0  0 41 167358
DMPlexCreateGmsh       1 1.0 5.6765e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.1263e-01 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 1.3710e-01 1.0 0.00e+00 0.0 1.4e+04 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.4711e-02 1.1 0.00e+00 0.0 5.0e+04 2.0e+02 1.1e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 8.0711e-03 3010.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.8052e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 5.5757e-03 1.1 0.00e+00 0.0 2.7e+03 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.4300e-03 3.9 0.00e+00 0.0 1.3e+03 6.0e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 4.4098e-03 1.6 0.00e+00 0.0 1.5e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.7210e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.5785e-01 1.0 0.00e+00 0.0 8.6e+03 1.2e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 3.0501e-03 1.0 0.00e+00 0.0 8.0e+03 3.8e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.3396e-02 1.0 0.00e+00 0.0 2.6e+04 2.1e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 8.5275e-03 1.0 0.00e+00 0.0 5.7e+04 6.9e+01 8.0e+01  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 4.4572e-03 1.3 0.00e+00 0.0 1.2e+04 8.3e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.3134e-02 17.8 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 2.2862e-03 142.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 3.9644e+02 1.0 5.66e+11 1.1 7.6e+06 1.0e+05 1.3e+04 88 100 98 100 97  88 100 98 100 97 279359
SNESSetUp              1 1.0 4.5002e-05 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     279 1.0 2.0011e+01 1.1 1.26e+11 1.2 7.1e+05 7.6e+04 0.0e+00  4 22  9  7  0   4 22  9  7  0 1208818
SNESJacobianEval     204 1.0 8.3210e+01 1.0 1.93e+11 1.2 4.6e+05 4.9e+05 8.2e+02 19 34  6 29  6  19 34  6 29  6 445989
SNESLineSearch       204 1.0 1.2043e+01 1.0 9.57e+10 1.2 6.9e+05 7.6e+04 8.2e+02  3 17  9  7  6   3 17  9  7  6 1524056
firedrake              1 1.0 4.4722e+02 1.0 5.66e+11 1.1 7.8e+06 9.9e+04 1.3e+04 99 100 100 100 100  99 100 100 100 100 247656
firedrake.__init__       1 1.0 6.8924e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 5.1871e-01 2.0 0.00e+00 0.0 1.2e+05 1.6e+02 2.0e+02  0  0  2  0  1   0  0  2  0  1    -0
firedrake.mesh._from_gmsh       1 1.0 3.1341e-01 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 8.9712e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.6030e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.7425e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.6770e-04 4.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.3502e-02 1.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 9.9068e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 2.2310e-02 1.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 2.1406e-02 1.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 2.1353e-02 1.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.3075e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.6113e-03 1.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.1478e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 8.9751e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 3.1745e-02 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.2490e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.4176e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.7282e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.7676e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.2446e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     630 1.0 7.7413e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2222 1.0 9.4174e+01 1.2 3.20e+11 1.2 6.5e+05 7.4e+04 1.5e+01 19 55  8  6  0  19 55  8  6  0 650827
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.2132e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4444 1.0 2.4009e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.0188e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.4916e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.1530e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.3670e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.3669e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 9.0083e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.8643e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2222 1.0 6.3720e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2222 1.0 6.2064e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 7.0617e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8029e+00 1.0 3.41e+07 1.1 2.0e+04 3.2e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0  1410
firedrake.interpolation.interpolate      10 1.0 3.9353e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.7994e+00 1.0 3.41e+07 1.1 2.0e+04 3.2e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0  1411
firedrake.formmanipulation.split_form      12 1.0 3.7893e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 9.1409e-04 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.4756e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 9.5315e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     572 1.0 2.6666e-01 2.3 0.00e+00 0.0 6.5e+05 7.4e+04 2.0e+00  0  0  8  6  0   0  0  8  6  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.5603e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1485
firedrake.halo.Halo.global_to_local_end     572 1.0 6.5841e+00 114.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 7.8516e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.2073e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.3414e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 9.8113e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.3407e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3524e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9290e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1029e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9631e+00 1.0 0.00e+00 0.0 6.8e+03 3.1e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.2718e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3299e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9863e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9862e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 1.8968e+00 1.3 0.00e+00 0.0 3.4e+03 3.0e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 2.5625e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 3.9659e+02 1.0 5.66e+11 1.1 7.6e+06 1.0e+05 1.3e+04 88 100 98 100 98  88 100 98 100 98 279255
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.7558e-01 926.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0022e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.7553e-01 1106.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.7550e-01 1249.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     558 1.0 4.7552e+00 1.4 3.20e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 1336907
Parloop_Cells_wrap_form0_exterior_facet_top_integral     558 1.0 9.7615e-01 1.0 4.16e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   846
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     558 1.0 1.3475e+00 1.0 3.02e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8374
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     558 1.0 3.2515e+00 1.1 3.07e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 1877832
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     558 1.0 6.7432e+00 1.2 6.42e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   1 11  0  0  0 1736716
firedrake.halo.Halo.local_to_global_begin     279 1.0 4.9152e-02 2.8 0.00e+00 0.0 3.1e+05 7.6e+04 0.0e+00  0  0  4  3  0   0  0  4  3  0    -0
firedrake.halo.Halo.local_to_global_end     279 1.0 1.3972e+00 46.3 1.96e+07 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2116
Parloop_Cells_wrap_form00_cell_integral     408 1.0 1.4831e+01 1.4 4.36e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   3  8  0  0  0 584841
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     408 1.0 1.5090e+00 1.4 2.25e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5568
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     408 1.0 1.7358e+01 1.1 5.77e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4 10  0  0  0   4 10  0  0  0 661086
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     408 1.0 3.7078e+01 1.3 9.28e+10 1.3 0.0e+00 0.0e+00 0.0e+00  7 15  0  0  0   7 15  0  0  0 456884
firedrake.constant.Constant.assign      75 1.0 3.0826e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   156            156
              Viewer     3              3
           Index Set   807            807
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
Average time to get PetscTime(): 2.74e-08
Average time for MPI_Barrier(): 8.2266e-06
Average time for zero size MPI_Send(): 2.0707e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/production/results/murr_vertical/sweep/run.profile # (source: code)
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

