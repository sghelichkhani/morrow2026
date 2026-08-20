****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0113.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 17:35:04 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           4.882e+02     1.000   4.882e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.765e+11     1.274   5.226e+11  4.348e+14
Flops/sec:            1.181e+09     1.274   1.070e+09  8.906e+11
MPI Msg Count:        6.193e+04     4.486   3.841e+04  3.196e+07
MPI Msg Len (bytes):  1.097e+10     2.642   1.986e+05  6.347e+12
MPI Reductions:       1.332e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.8824e+02 100.0%  4.3480e+14 100.0%  3.196e+07 100.0%  1.986e+05      100.0%  1.330e+04  99.9%

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

BuildTwoSided        851 1.0 3.7854e+01 3.9 0.00e+00 0.0 5.8e+05 4.0e+00 8.5e+02  5  0  2  0  6   5  0  2  0  6    -0
BuildTwoSidedF       814 1.0 3.7831e+01 3.9 0.00e+00 0.0 9.5e+05 1.8e+06 8.1e+02  5  0  3 27  6   5  0  3 27  6    -0
SFSetGraph            40 1.0 7.9016e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 4.9174e-02 2.2 0.00e+00 0.0 2.1e+05 3.8e+03 3.7e+01  0  0  1  0  0   0  0  1  0  0    -0
SFBcastBegin         673 1.0 4.0922e-01 2.6 0.00e+00 0.0 3.0e+06 1.3e+05 0.0e+00  0  0  9  6  0   0  0  9  6  0    -0
SFBcastEnd           673 1.0 1.4544e+01 94.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        289 1.0 9.4586e-02 26.6 0.00e+00 0.0 1.3e+06 1.5e+05 0.0e+00  0  0  4  3  0   0  0  4  3  0    -0
SFReduceEnd          289 1.0 2.5945e+00 46.4 4.20e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9429
SFFetchOpBegin         2 1.0 1.2367e-05 6.2 0.00e+00 0.0 7.3e+03 3.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 9.3028e-04 83.5 0.00e+00 0.0 7.3e+03 3.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.9451e-03 4.7 0.00e+00 0.0 5.7e+03 2.4e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.5895e-02 1.5 0.00e+00 0.0 1.8e+05 5.9e+01 2.4e+01  0  0  1  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 1.0546e-02 10.1 0.00e+00 0.0 8.3e+04 3.4e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              6674 1.0 2.7437e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            6676 1.0 2.4898e-01 11.8 4.20e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 98254
VecDot               203 1.0 7.4060e-01 8.8 8.18e+07 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2 87889
VecMDot             5452 1.0 5.0507e+01 2.2 2.77e+10 1.1 0.0e+00 0.0e+00 5.5e+03  7  5  0  0 41   7  5  0  0 41 436683
VecNorm             6191 1.0 1.0603e+01 3.4 2.50e+09 1.1 0.0e+00 0.0e+00 6.2e+03  1  0  0  0 46   1  0  0  0 47 187229
VecScale            5710 1.0 2.9490e-01 1.3 1.15e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3104222
VecCopy             1498 1.0 7.7268e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               461 1.0 1.6804e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              313 1.0 1.8020e-01 1.6 1.26e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 556945
VecWAXPY             203 1.0 1.7117e-01 1.2 4.09e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 190138
VecMAXPY            5710 1.0 3.0722e+01 1.1 2.99e+10 1.1 0.0e+00 0.0e+00 0.0e+00  6  5  0  0  0   6  5  0  0  0 774820
VecScatterBegin     5710 1.0 2.6105e+00 2.9 0.00e+00 0.0 2.6e+07 1.5e+05 0.0e+00  0  0 83 63  0   0  0 83 63  0    -0
VecScatterEnd       5710 1.0 1.3897e+01 28.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       406 1.0 8.7552e-02 2.0 1.64e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1486903
VecReduceComm        203 1.0 2.1219e-01 7.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        5710 1.0 7.9482e+00 3.7 3.45e+09 1.1 0.0e+00 0.0e+00 5.7e+03  1  1  0  0 43   1  1  0  0 43 345527
MatMult             5710 1.0 1.2082e+02 1.2 8.17e+10 1.2 2.6e+07 1.5e+05 0.0e+00 24 15 83 63  0  24 15 83 63  0 536135
MatSolve            5710 1.0 1.0982e+02 1.2 7.48e+10 1.2 0.0e+00 0.0e+00 0.0e+00 21 14  0  0  0  21 14  0  0  0 534807
MatLUFactorNum       203 1.0 1.5633e+01 1.3 2.43e+10 1.3 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 1143012
MatILUFactorSym        1 1.0 5.2440e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     814 1.0 4.0684e+01 2.4 0.00e+00 0.0 9.5e+05 1.8e+06 8.1e+02  6  0  3 27  6   6  0  3 27  6    -0
MatAssemblyEnd       814 1.0 1.5504e+01 12.3 3.24e+08 0.0 9.3e+03 3.8e+04 6.0e+00  2  0  0  0  0   2  0  0  0  0  6919
MatGetRowIJ            1 1.0 5.8420e-06 51.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.7864e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       203 1.0 3.3694e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp              203 1.0 3.9005e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks      203 1.0 1.5690e+01 1.3 2.43e+10 1.3 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 1138866
PCApply             5710 1.0 1.0993e+02 1.2 7.48e+10 1.2 0.0e+00 0.0e+00 0.0e+00 21 14  0  0  0  21 14  0  0  0 534274
PCApplyOnBlocks     5710 1.0 1.0990e+02 1.2 7.48e+10 1.2 0.0e+00 0.0e+00 0.0e+00 21 14  0  0  0  21 14  0  0  0 534445
KSPSetUp             203 1.0 4.0482e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             203 1.0 2.8257e+02 1.0 2.15e+11 1.1 2.6e+07 1.5e+05 1.1e+04 57 39 80 61 84  57 39 80 61 84 601322
KSPGMRESOrthog      5452 1.0 7.5660e+01 1.5 5.55e+10 1.1 0.0e+00 0.0e+00 5.5e+03 12 10  0  0 41  12 10  0  0 41 583018
DMPlexCreateGmsh       1 1.0 6.0944e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.9148e+00 99.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         2 1.0 3.7874e-01 1.0 0.00e+00 0.0 5.9e+04 5.7e+01 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.2699e-02 1.0 0.00e+00 0.0 2.1e+05 6.6e+01 1.1e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.0809e-02 2308.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 4.6607e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 1.1102e-02 2.2 0.00e+00 0.0 1.1e+04 5.0e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 3.0200e-03 2.0 0.00e+00 0.0 5.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.4206e-03 1.5 0.00e+00 0.0 6.6e+03 3.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.8608e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.0427e-01 1.0 0.00e+00 0.0 3.4e+04 3.3e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 6.0768e-03 1.1 0.00e+00 0.0 3.4e+04 1.2e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 2.2356e-02 1.0 0.00e+00 0.0 1.1e+05 6.9e+01 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 2.4851e-02 1.0 0.00e+00 0.0 2.4e+05 3.5e+01 8.0e+01  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 8.7132e-03 1.2 0.00e+00 0.0 5.1e+04 3.3e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.3280e-02 17.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9887e-03 334.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.2866e+02 1.0 5.76e+11 1.3 3.1e+07 2.0e+05 1.3e+04 88 100 98 100 97  88 100 98 100 97 1014261
SNESSetUp              1 1.0 5.2565e-05 7.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     278 1.0 2.1691e+01 1.2 1.34e+11 1.4 2.9e+06 1.5e+05 0.0e+00  4 22  9  7  0   4 22  9  7  0 4447999
SNESJacobianEval     203 1.0 1.0661e+02 1.0 2.04e+11 1.4 1.9e+06 9.9e+05 8.1e+02 22 34  6 29  6  22 34  6 29  6 1386663
SNESLineSearch       203 1.0 1.3676e+01 1.0 1.01e+11 1.4 2.8e+06 1.5e+05 8.1e+02  3 17  9  7  6   3 17  9  7  6 5346143
firedrake              1 1.0 4.8605e+02 1.0 5.77e+11 1.3 3.2e+07 2.0e+05 1.3e+04 100 100 100 100 100 100 100 100 100 100 894572
firedrake.__init__       1 1.0 7.4009e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 6.3924e+00 11.9 0.00e+00 0.0 5.0e+05 5.8e+01 2.0e+02  1  0  2  0  1   1  0  2  0  1    -0
firedrake.mesh._from_gmsh       1 1.0 5.9156e+00 99.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2142e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7380e-05 20.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.8080e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.6686e-04 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.4336e-02 1.1 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 9.5834e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 2.3210e-02 1.1 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 2.2263e-02 1.1 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 2.2209e-02 1.1 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.3644e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 4.1814e-03 1.3 0.00e+00 0.0 9.8e+03 4.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.2700e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0409e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 5.6404e-02 7.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.3043e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.4800e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.9371e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.9673e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.3001e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     630 1.0 7.0785e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2213 1.0 1.0170e+02 1.3 3.39e+11 1.4 2.7e+06 1.5e+05 1.5e+01 19 56  8  6  0  19 56  8  6  0 2401198
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.2664e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4426 1.0 2.4232e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.1335e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.2403e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.3924e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.3183e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.3182e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 9.0825e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.9238e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2213 1.0 7.8966e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2213 1.0 6.5185e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 1.0997e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.9341e+00 1.0 3.41e+07 1.1 8.5e+04 6.4e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0  5491
firedrake.interpolation.interpolate      10 1.0 3.9427e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.9307e+00 1.0 3.41e+07 1.1 8.5e+04 6.4e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0  5495
firedrake.formmanipulation.split_form      12 1.0 4.4207e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 3.9922e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.5079e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.2 1.0470e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     570 1.0 4.6623e-01 2.2 0.00e+00 0.0 2.7e+06 1.5e+05 2.0e+00  0  0  8  6  0   0  0  8  6  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.6627e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  5811
firedrake.halo.Halo.global_to_local_end     570 1.0 1.4345e+01 124.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 8.3184e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.6123e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8193e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.5009e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.6669e-05 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3982e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.5858e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1332e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 5.3328e+00 1.0 0.00e+00 0.0 2.8e+04 6.1e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.4998e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3573e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0606e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0606e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.0941e+00 1.2 0.00e+00 0.0 1.4e+04 5.9e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 2.8104e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.2881e+02 1.0 5.76e+11 1.3 3.1e+07 2.0e+05 1.3e+04 88 100 98 100 98  88 100 98 100 98 1013907
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.8882e-01 996.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1535e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.8877e-01 1190.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.8873e-01 1352.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     556 1.0 4.9795e+00 1.3 3.19e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 5088407
Parloop_Cells_wrap_form0_exterior_facet_top_integral     556 1.0 1.0062e+00 1.0 1.04e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   818
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     556 1.0 1.2765e+00 1.1 7.66e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 35230
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     556 1.0 3.4869e+00 1.1 3.07e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  6  0  0  0 6996518
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     556 1.0 7.1329e+00 1.4 7.17e+10 1.8 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   1 11  0  0  0 6543813
firedrake.halo.Halo.local_to_global_begin     278 1.0 1.0397e-01 11.1 0.00e+00 0.0 1.3e+06 1.5e+05 0.0e+00  0  0  4  3  0   0  0  4  3  0    -0
firedrake.halo.Halo.local_to_global_end     278 1.0 2.5967e+00 43.5 4.20e+07 2.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9421
Parloop_Cells_wrap_form00_cell_integral     406 1.0 1.5407e+01 1.5 4.34e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   3  8  0  0  0 2240882
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     406 1.0 1.8575e+00 1.7 5.70e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 18002
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     406 1.0 1.7676e+01 1.2 5.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 11  0  0  0   3 11  0  0  0 2590563
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     406 1.0 4.4513e+01 1.9 1.03e+11 1.8 0.0e+00 0.0e+00 0.0e+00  7 15  0  0  0   7 15  0  0  0 1513570
firedrake.constant.Constant.assign      75 1.0 5.3908e-03 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   156            156
              Viewer     3              3
           Index Set  2679           2679
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
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 0.000493808
Average time for zero size MPI_Send(): 2.1615e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/production/results/murr_vertical/large/run.profile # (source: code)
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

