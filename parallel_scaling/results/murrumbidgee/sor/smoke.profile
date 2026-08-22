****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0334.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:26:05 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.590e+02     1.000   1.590e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.350e+10     1.164   6.085e+10  6.328e+12
Flops/sec:            3.993e+08     1.164   3.827e+08  3.980e+10
MPI Msg Count:        1.184e+04     3.486   8.439e+03  8.777e+05
MPI Msg Len (bytes):  5.914e+08     3.001   4.940e+04  4.336e+10
MPI Reductions:       3.166e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.5900e+02 100.0%  6.3284e+12 100.0%  8.777e+05 100.0%  4.940e+04      100.0%  3.147e+03  99.4%

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

BuildTwoSided        121 1.0 1.9654e+00 6.8 0.00e+00 0.0 3.6e+04 4.0e+00 1.2e+02  0  0  4  0  4   0  0  4  0  4    -0
BuildTwoSidedF        26 1.0 8.6919e-01 4.3 0.00e+00 0.0 4.2e+03 7.3e+05 2.6e+01  0  0  0  7  1   0  0  0  7  1    -0
SFSetGraph           102 1.0 3.6397e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               95 1.0 1.4105e+00 98.2 0.00e+00 0.0 6.8e+04 6.0e+02 9.5e+01  0  0  8  0  3   0  0  8  0  3    -0
SFBcastBegin         304 1.0 2.1186e-02 3.7 0.00e+00 0.0 1.3e+05 7.0e+03 0.0e+00  0  0 15  2  0   0  0 15  2  0    -0
SFBcastEnd           304 1.0 1.7879e+00 118.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin         47 1.0 1.7343e-03 6.1 0.00e+00 0.0 2.1e+04 9.3e+03 0.0e+00  0  0  2  0  0   0  0  2  0  0    -0
SFReduceEnd           47 1.0 3.6915e-02 29.5 3.24e+05 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   644
SFFetchOpBegin         6 1.0 2.5789e-05 3.5 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.8833e-04 10.4 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 5.8360e-04 1.2 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.2520e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  7  0  2   0  0  7  0  2    -0
SFSectionSF           51 1.0 2.7515e-03 1.9 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  3  0  2   0  0  3  0  2    -0
SFRemoteOff            2 1.0 8.1440e-05 2.3 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              1593 1.0 2.4244e-01 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            1599 1.0 3.5272e-03 10.3 3.24e+05 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6736
VecMDot             1200 1.0 1.0091e+01 1.5 7.78e+09 1.2 0.0e+00 0.0e+00 1.2e+03  5 12  0  0 38   5 12  0  0 38 77268
VecNorm             1248 1.0 1.3424e+00 6.9 5.39e+08 1.2 0.0e+00 0.0e+00 1.2e+03  0  1  0  0 39   0  1  0  0 40 40270
VecScale            1242 1.0 6.7637e-02 1.2 2.68e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 397692
VecCopy              152 1.0 8.0317e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet                48 1.0 1.9404e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               78 1.0 4.3664e-02 1.7 3.37e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 77376
VecMAXPY            1242 1.0 8.6510e+00 1.2 8.29e+09 1.2 0.0e+00 0.0e+00 0.0e+00  5 13  0  0  0   5 13  0  0  0 96133
VecScatterBegin     1236 1.0 2.7692e-01 3.1 0.00e+00 0.0 6.5e+05 6.0e+04 0.0e+00  0  0 74 90  0   0  0 74 90  0    -0
VecScatterEnd       1236 1.0 6.9134e+00 105.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecNormalize        1242 1.0 1.3716e+00 5.3 8.05e+08 1.2 0.0e+00 0.0e+00 1.2e+03  0  1  0  0 39   0  1  0  0 39 58836
MatMult             1236 1.0 2.9810e+01 1.4 1.89e+10 1.2 6.5e+05 6.0e+04 0.0e+00 16 30 74 90  0  16 30 74 90  0 63423
MatSOR              1242 1.0 4.3140e+01 1.2 1.88e+10 1.2 0.0e+00 0.0e+00 0.0e+00 26 30  0  0  0  26 30  0  0  0 43291
MatAssemblyBegin      70 1.0 8.6964e-01 2.9 0.00e+00 0.0 4.2e+03 7.3e+05 2.6e+01  0  0  0  7  1   0  0  0  7  1    -0
MatAssemblyEnd        70 1.0 2.9507e-01 1.9 3.37e+06 0.0 1.0e+03 1.5e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0   484
MatZeroEntries         6 1.0 1.0391e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO       32 1.0 6.2166e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.7947e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp                6 1.0 2.7040e-06 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             1242 1.0 4.3143e+01 1.2 1.88e+10 1.2 0.0e+00 0.0e+00 0.0e+00 26 30  0  0  0  26 30  0  0  0 43289
KSPSetUp               6 1.0 6.2267e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve               6 1.0 8.2459e+01 1.0 5.46e+10 1.2 6.5e+05 6.0e+04 2.4e+03 52 86 74 90 77  52 86 74 90 78 66138
KSPGMRESOrthog      1200 1.0 1.7651e+01 1.3 1.56e+10 1.2 0.0e+00 0.0e+00 1.2e+03 10 25  0  0 38  10 25  0  0 38 88345
DMRefine               2 1.0 2.4861e-02 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  1  0  2   0  0  1  0  2     9
DMPlexCreateGmsh       1 1.0 1.0520e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.4995e+00 296.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 5.1342e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  2  0  2   0  0  2  0  2    -0
Mesh Migration         4 1.0 1.1534e-02 1.1 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  8  0  7   0  0  8  0  8    -0
DMPlexPartSelf         1 1.0 1.2053e-03 558.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 5.6492e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.2831e-03 1.1 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 6.3584e-04 2.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.1663e-03 3.6 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 4.8355e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.5299e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  2   0  0  0  0  2    -0
DMPlexDistCones        4 1.0 1.3675e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 4.4931e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  4  0  5   0  0  4  0  5    -0
DMPlexDistOvrlp        3 1.0 8.8125e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  9  0  8   0  0  9  0  8    -0
DMPlexDistField        7 1.0 1.9117e-03 1.2 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  2  0  1   0  0  2  0  1    -0
DMPlexStratify        41 1.0 3.2502e-03 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.0041e-04 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1095e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.8688e-03 1.4 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexTrSizes          2 1.0 1.1478e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.4164e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.1589e-04 1.9 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 9.5903e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.0331e-04 2.1 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 1.0396e+02 1.0 6.35e+10 1.2 6.6e+05 6.4e+04 2.5e+03 65 100 76 97 78  65 100 76 97 79 60829
SNESSetUp              1 1.0 3.7642e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval       6 1.0 1.0332e+01 1.0 2.91e+09 1.2 1.0e+04 6.0e+04 0.0e+00  6  4  1  1  0   6  4  1  1  0 27187
SNESJacobianEval       6 1.0 1.1192e+01 1.0 6.08e+09 1.2 6.3e+03 3.9e+05 2.4e+01  7  9  1  6  1   7  9  1  6  1 52648
DualSpaceSetUp         8 1.0 5.6934e-03 1.2 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.0249e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 1.5692e+02 1.0 6.35e+10 1.2 8.8e+05 4.9e+04 3.1e+03 99 100 100 100 99  99 100 100 100 100 40328
firedrake.__init__       1 1.0 8.7054e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
CreateMesh             3 1.0 3.5966e+00 33.4 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  1  0 19  0 14   1  0 19  0 14    -0
firedrake.mesh._from_gmsh       1 1.0 3.5006e+00 295.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 9.4581e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 9.7050e-06 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.3308e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.5291e-04 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      13 1.0 2.3029e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      17 1.0 1.4210e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      17 1.0 2.1924e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      16 1.0 1.9907e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      16 1.0 1.9811e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      32 1.0 7.9885e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 3.5473e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.2928e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.2541e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.2774e-02 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.6172e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.1340e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 5.9970e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0600e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.5528e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     226 1.0 4.5111e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute        73 1.0 2.5269e+01 1.0 9.03e+09 1.2 2.3e+04 4.0e+04 3.2e+01 16 14  3  2  1  16 14  3  2  1 34602
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.1327e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     146 1.0 2.3218e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 14  0  0  0  0  14  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0276e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   6  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.3684e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.4274e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.2951e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  8  0  0  0  0   8  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.2950e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  8  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.4906e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.3229e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
ParLoopRednBegin      73 1.0 5.5740e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd        73 1.0 1.7893e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.0592e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 4.5898e+00 1.0 7.29e+06 1.2 8.9e+03 6.7e+03 1.3e+01  3  0  1  0  0   3  0  1  0  0   159
firedrake.interpolation.interpolate      12 1.0 5.6867e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      12 1.0 4.7359e+00 1.0 4.38e+07 1.2 1.2e+04 2.3e+04 1.5e+01  3  0  1  1  0   3  0  1  1  0   927
firedrake.formmanipulation.split_form      14 1.0 4.5157e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 1.8634e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      12 1.0 1.3634e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 9.3634e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      39 1.0 1.5181e+00 45.9 0.00e+00 0.0 2.7e+04 3.4e+04 4.0e+00  1  0  3  2  0   1  0  3  2  0    -0
Parloop_Cells_wrap_expression_kernel      24 1.0 4.4995e+00 1.0 4.38e+07 1.2 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0   976
firedrake.halo.Halo.global_to_local_end      39 1.0 2.7819e-01 57.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 1.8512e+00 29.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d84a0852d0_wrap_pyop2_kernel_prolong       4 0.0 7.4108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d84a087090_wrap_pyop2_kernel_prolong       4 0.0 2.8383e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.8108e+00 1.0 3.65e+07 1.2 8.1e+03 3.0e+04 1.1e+01  2  0  1  1  0   2  0  1  1  0   960
firedrake.function.Function.assign      37 1.0 1.1752e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 1.0261e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5191e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 3.3260e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.1687e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.3073e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9450e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.0555e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9772e+00 1.0 0.00e+00 0.0 3.2e+03 2.4e+05 2.3e+01  3  0  0  2  1   3  0  0  2  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.0107e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.8654e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0879e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0879e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         1 1.0 1.8066e+00 1.2 0.00e+00 0.0 1.6e+03 2.3e+05 8.0e+00  1  0  0  1  0   1  0  0  1  0    -0
MatZeroInitial         1 1.0 2.8620e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 1.0397e+02 1.0 6.35e+10 1.2 6.6e+05 6.4e+04 2.5e+03 65 100 76 97 78  65 100 76 97 79 60823
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0655e-01 1049.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.5590e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0651e-01 1268.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0647e-01 1477.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      12 1.0 1.8262e+00 1.2 7.37e+08 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 40452
Parloop_Cells_wrap_form0_exterior_facet_top_integral      12 1.0 9.4634e-01 1.0 1.92e+05 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    20
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      12 1.0 1.1820e+00 1.0 7.08e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   106
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      12 1.0 1.7926e+00 1.0 7.05e+08 1.2 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 39449
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      12 1.0 2.6577e+00 1.0 1.46e+09 1.3 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   2  2  0  0  0 51219
firedrake.halo.Halo.local_to_global_begin       6 1.0 1.5056e-03 4.9 0.00e+00 0.0 3.1e+03 6.0e+04 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.local_to_global_end       6 1.0 3.6603e-02 35.7 3.24e+05 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   649
Parloop_Cells_wrap_form00_cell_integral      12 1.0 2.3639e+00 1.1 1.37e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 58314
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      12 1.0 1.0942e+00 1.0 7.21e+06 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   116
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      12 1.0 2.9537e+00 1.0 1.81e+09 1.2 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 61537
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      12 1.0 4.4246e+00 1.1 2.90e+09 1.3 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 60878
firedrake.constant.Constant.assign       5 1.0 4.9163e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148419912190_wrap_pyop2_kernel_prolong       4 0.0 7.4255e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484197b33d0_wrap_pyop2_kernel_prolong       4 0.0 2.6338e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc770e1c50_wrap_pyop2_kernel_prolong       4 0.0 7.4133e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc770e13d0_wrap_pyop2_kernel_prolong       4 0.0 3.4420e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14736a0ddb10_wrap_pyop2_kernel_prolong       4 0.0 7.3981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14736a0df710_wrap_pyop2_kernel_prolong       4 0.0 3.2626e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ae4981650_wrap_pyop2_kernel_prolong       4 0.0 7.4144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ae49209d0_wrap_pyop2_kernel_prolong       4 0.0 3.4006e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b33492410_wrap_pyop2_kernel_prolong       4 0.0 7.4155e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b33491d10_wrap_pyop2_kernel_prolong       4 0.0 3.8628e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148822c67c50_wrap_pyop2_kernel_prolong       4 0.0 7.4308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148822c509d0_wrap_pyop2_kernel_prolong       4 0.0 3.2319e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494aeccf990_wrap_pyop2_kernel_prolong       4 0.0 7.4251e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494aff590d0_wrap_pyop2_kernel_prolong       4 0.0 2.6032e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14930aeb9c10_wrap_pyop2_kernel_prolong       4 0.0 7.4015e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14930aebb890_wrap_pyop2_kernel_prolong       4 0.0 3.5722e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb5b7e7bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4322e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb5b7c2010_wrap_pyop2_kernel_prolong       4 0.0 2.7151e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d124c5ee50_wrap_pyop2_kernel_prolong       4 0.0 7.4369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d124c5d590_wrap_pyop2_kernel_prolong       4 0.0 3.8435e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dea41961d0_wrap_pyop2_kernel_prolong       4 0.0 7.4064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dea4195a90_wrap_pyop2_kernel_prolong       4 0.0 3.4157e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523741b1210_wrap_pyop2_kernel_prolong       4 0.0 7.4177e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15236fb6ee50_wrap_pyop2_kernel_prolong       4 0.0 3.4928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504170b6490_wrap_pyop2_kernel_prolong       4 0.0 7.4084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504175784d0_wrap_pyop2_kernel_prolong       4 0.0 2.8627e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dbac59cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4118e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dba2c56d0_wrap_pyop2_kernel_prolong       4 0.0 3.3106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552cf516cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4106e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552cfe32450_wrap_pyop2_kernel_prolong       4 0.0 3.4717e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c6b5a3b10_wrap_pyop2_kernel_prolong       4 0.0 7.3931e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c6b56add0_wrap_pyop2_kernel_prolong       4 0.0 2.7580e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147009f11a50_wrap_pyop2_kernel_prolong       4 0.0 7.4227e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147009d90bd0_wrap_pyop2_kernel_prolong       4 0.0 3.5770e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14655f44eed0_wrap_pyop2_kernel_prolong       4 0.0 7.4318e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14655cb91610_wrap_pyop2_kernel_prolong       4 0.0 3.1857e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462444b6550_wrap_pyop2_kernel_prolong       4 0.0 7.4023e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146244270850_wrap_pyop2_kernel_prolong       4 0.0 3.1628e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473f06fcc50_wrap_pyop2_kernel_prolong       4 0.0 7.4038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473f04df290_wrap_pyop2_kernel_prolong       4 0.0 3.1749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152518679490_wrap_pyop2_kernel_prolong       4 0.0 7.4060e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152518647dd0_wrap_pyop2_kernel_prolong       4 0.0 4.0203e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd58b61d90_wrap_pyop2_kernel_prolong       4 0.0 7.4012e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd58b8a050_wrap_pyop2_kernel_prolong       4 0.0 3.7085e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150940fa3ed0_wrap_pyop2_kernel_prolong       4 0.0 7.3985e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150940effbd0_wrap_pyop2_kernel_prolong       4 0.0 3.3133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fea0287690_wrap_pyop2_kernel_prolong       4 0.0 7.4071e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe9bbd3d50_wrap_pyop2_kernel_prolong       4 0.0 3.6958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eacd94fc10_wrap_pyop2_kernel_prolong       4 0.0 7.4084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eacd94fed0_wrap_pyop2_kernel_prolong       4 0.0 4.0218e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a272b4a290_wrap_pyop2_kernel_prolong       4 0.0 7.3974e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a272af33d0_wrap_pyop2_kernel_prolong       4 0.0 2.6054e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154efa6f14d0_wrap_pyop2_kernel_prolong       4 0.0 7.4205e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154efa6f0a50_wrap_pyop2_kernel_prolong       4 0.0 2.8483e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b7c35ff10_wrap_pyop2_kernel_prolong       4 0.0 7.4065e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b7c5b5650_wrap_pyop2_kernel_prolong       4 0.0 3.4853e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150627083790_wrap_pyop2_kernel_prolong       4 0.0 7.4109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506270810d0_wrap_pyop2_kernel_prolong       4 0.0 3.0651e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d922f93a10_wrap_pyop2_kernel_prolong       4 0.0 7.4259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d922f9bd10_wrap_pyop2_kernel_prolong       4 0.0 3.6738e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f44faf3dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4164e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f44ff00e90_wrap_pyop2_kernel_prolong       4 0.0 3.1391e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d114b4a710_wrap_pyop2_kernel_prolong       4 0.0 7.4095e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d114b4bfd0_wrap_pyop2_kernel_prolong       4 0.0 2.9343e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3b2814d10_wrap_pyop2_kernel_prolong       4 0.0 7.4476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3b1f197d0_wrap_pyop2_kernel_prolong       4 0.0 3.1757e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153546b6b2d0_wrap_pyop2_kernel_prolong       4 0.0 7.4011e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1535469f3350_wrap_pyop2_kernel_prolong       4 0.0 3.0263e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150adf639d90_wrap_pyop2_kernel_prolong       4 0.0 7.4102e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150adf639910_wrap_pyop2_kernel_prolong       4 0.0 3.6039e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1e014ced0_wrap_pyop2_kernel_prolong       4 0.0 7.4144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1db7bdd10_wrap_pyop2_kernel_prolong       4 0.0 3.6758e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149135b74210_wrap_pyop2_kernel_prolong       4 0.0 7.4081e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149135c091d0_wrap_pyop2_kernel_prolong       4 0.0 3.7724e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d475742ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4152e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d475662c50_wrap_pyop2_kernel_prolong       4 0.0 4.0451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465ea1e5e90_wrap_pyop2_kernel_prolong       4 0.0 7.4259e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1465ea238bd0_wrap_pyop2_kernel_prolong       4 0.0 2.7178e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c1fe89690_wrap_pyop2_kernel_prolong       4 0.0 7.4391e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c241011d0_wrap_pyop2_kernel_prolong       4 0.0 3.0625e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15426d1cbc10_wrap_pyop2_kernel_prolong       4 0.0 7.4117e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15426cf5d590_wrap_pyop2_kernel_prolong       4 0.0 3.5182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c7c6e9a90_wrap_pyop2_kernel_prolong       4 0.0 7.3987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c7c6e9b10_wrap_pyop2_kernel_prolong       4 0.0 2.8964e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f11f3f3c90_wrap_pyop2_kernel_prolong       4 0.0 7.4182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f11f654f50_wrap_pyop2_kernel_prolong       4 0.0 3.3345e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549b509d050_wrap_pyop2_kernel_prolong       4 0.0 7.4057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1549b53495d0_wrap_pyop2_kernel_prolong       4 0.0 3.4804e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454b62a04d0_wrap_pyop2_kernel_prolong       4 0.0 7.4385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454b6120890_wrap_pyop2_kernel_prolong       4 0.0 3.6957e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d60b580050_wrap_pyop2_kernel_prolong       4 0.0 7.4078e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d60c033590_wrap_pyop2_kernel_prolong       4 0.0 3.4773e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1536130cabd0_wrap_pyop2_kernel_prolong       4 0.0 7.4031e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153612f548d0_wrap_pyop2_kernel_prolong       4 0.0 3.4473e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a988fea10_wrap_pyop2_kernel_prolong       4 0.0 7.4382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a988fdb10_wrap_pyop2_kernel_prolong       4 0.0 3.3809e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f611c25cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4139e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f611c259d0_wrap_pyop2_kernel_prolong       4 0.0 3.6309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dcb9f32bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3993e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc983dc850_wrap_pyop2_kernel_prolong       4 0.0 3.8509e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6ec994a90_wrap_pyop2_kernel_prolong       4 0.0 7.4120e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6ec7e3ad0_wrap_pyop2_kernel_prolong       4 0.0 3.5452e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce36f37850_wrap_pyop2_kernel_prolong       4 0.0 7.4082e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce365e9090_wrap_pyop2_kernel_prolong       4 0.0 2.8673e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ffc616910_wrap_pyop2_kernel_prolong       4 0.0 7.4090e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154ffc4c0390_wrap_pyop2_kernel_prolong       4 0.0 3.2295e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd7d433190_wrap_pyop2_kernel_prolong       4 0.0 7.4084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd7d49c590_wrap_pyop2_kernel_prolong       4 0.0 4.0301e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c197c8e10_wrap_pyop2_kernel_prolong       4 0.0 7.3954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c19809690_wrap_pyop2_kernel_prolong       4 0.0 3.4826e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1c2b2d810_wrap_pyop2_kernel_prolong       4 0.0 7.4401e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1c2b1f590_wrap_pyop2_kernel_prolong       4 0.0 3.7106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c2e4d3bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4050e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c2e38e690_wrap_pyop2_kernel_prolong       4 0.0 2.9860e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb2ea5a1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4003e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb2ea59990_wrap_pyop2_kernel_prolong       4 0.0 2.7636e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccff107610_wrap_pyop2_kernel_prolong       4 0.0 7.3918e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ccfe8bf910_wrap_pyop2_kernel_prolong       4 0.0 2.8714e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152950b2e510_wrap_pyop2_kernel_prolong       4 0.0 7.3958e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152950b2dcd0_wrap_pyop2_kernel_prolong       4 0.0 2.9969e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14852c407290_wrap_pyop2_kernel_prolong       4 0.0 7.4442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485277d1e50_wrap_pyop2_kernel_prolong       4 0.0 3.7021e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7a97cc710_wrap_pyop2_kernel_prolong       4 0.0 7.4007e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7a9748850_wrap_pyop2_kernel_prolong       4 0.0 3.3325e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517a7024bd0_wrap_pyop2_kernel_prolong       4 0.0 7.3999e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517a703b950_wrap_pyop2_kernel_prolong       4 0.0 3.7237e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e40448cbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4044f47d0_wrap_pyop2_kernel_prolong       4 0.0 4.1396e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a3bb443d0_wrap_pyop2_kernel_prolong       4 0.0 7.4437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a3bbc0bd0_wrap_pyop2_kernel_prolong       4 0.0 2.8716e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472e8e61cd0_wrap_pyop2_kernel_prolong       4 0.0 7.3982e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472e8e626d0_wrap_pyop2_kernel_prolong       4 0.0 3.1926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476d09f4510_wrap_pyop2_kernel_prolong       4 0.0 7.3977e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1476d0a113d0_wrap_pyop2_kernel_prolong       4 0.0 2.8308e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c48206350_wrap_pyop2_kernel_prolong       4 0.0 7.3962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c48207850_wrap_pyop2_kernel_prolong       4 0.0 3.3169e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dc1fc6390_wrap_pyop2_kernel_prolong       4 0.0 7.4024e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dc1fc6ad0_wrap_pyop2_kernel_prolong       4 0.0 2.9442e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e36a50910_wrap_pyop2_kernel_prolong       4 0.0 7.4149e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e36092e10_wrap_pyop2_kernel_prolong       4 0.0 3.9872e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c53c083750_wrap_pyop2_kernel_prolong       4 0.0 7.4073e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c53c051610_wrap_pyop2_kernel_prolong       4 0.0 3.0558e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b898a55d90_wrap_pyop2_kernel_prolong       4 0.0 7.4037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b898a55410_wrap_pyop2_kernel_prolong       4 0.0 3.3644e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb6634df10_wrap_pyop2_kernel_prolong       4 0.0 7.4112e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb6634fbd0_wrap_pyop2_kernel_prolong       4 0.0 3.9960e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527fb7505d0_wrap_pyop2_kernel_prolong       4 0.0 7.4072e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1527fb769210_wrap_pyop2_kernel_prolong       4 0.0 3.0312e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542d1c30d10_wrap_pyop2_kernel_prolong       4 0.0 7.4153e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1542d1c67e50_wrap_pyop2_kernel_prolong       4 0.0 3.6011e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1b0ee7710_wrap_pyop2_kernel_prolong       4 0.0 7.3961e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1b0ee0dd0_wrap_pyop2_kernel_prolong       4 0.0 3.7075e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470220296d0_wrap_pyop2_kernel_prolong       4 0.0 7.4092e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14702205a310_wrap_pyop2_kernel_prolong       4 0.0 3.2799e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1506954cb690_wrap_pyop2_kernel_prolong       4 0.0 7.4022e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150695622dd0_wrap_pyop2_kernel_prolong       4 0.0 2.5165e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f08bbdfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4096e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f08bbf3d0_wrap_pyop2_kernel_prolong       4 0.0 3.4556e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f82991d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4032e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f829955810_wrap_pyop2_kernel_prolong       4 0.0 3.6040e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15205d2ddf50_wrap_pyop2_kernel_prolong       4 0.0 7.4033e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15205d5514d0_wrap_pyop2_kernel_prolong       4 0.0 3.3021e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14614fd6dd90_wrap_pyop2_kernel_prolong       4 0.0 7.4139e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14614fd6cdd0_wrap_pyop2_kernel_prolong       4 0.0 3.3972e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f89948e10_wrap_pyop2_kernel_prolong       4 0.0 7.4059e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f89973c10_wrap_pyop2_kernel_prolong       4 0.0 3.6115e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493d3a6ae50_wrap_pyop2_kernel_prolong       4 0.0 7.3962e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493d3a2f890_wrap_pyop2_kernel_prolong       4 0.0 2.9589e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4b6c0d150_wrap_pyop2_kernel_prolong       4 0.0 7.3995e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4b6c30390_wrap_pyop2_kernel_prolong       4 0.0 3.3468e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a647fdf890_wrap_pyop2_kernel_prolong       4 0.0 7.4058e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6476f1ad0_wrap_pyop2_kernel_prolong       4 0.0 3.2525e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef29ed1590_wrap_pyop2_kernel_prolong       4 0.0 7.4062e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef29f3ef50_wrap_pyop2_kernel_prolong       4 0.0 3.2958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dadd2474d0_wrap_pyop2_kernel_prolong       4 0.0 7.4005e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dadd2f2c50_wrap_pyop2_kernel_prolong       4 0.0 3.7641e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dc54b1a50_wrap_pyop2_kernel_prolong       4 0.0 7.4013e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146dc550e190_wrap_pyop2_kernel_prolong       4 0.0 3.2105e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a8fcf410_wrap_pyop2_kernel_prolong       4 0.0 7.3953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538a8e53150_wrap_pyop2_kernel_prolong       4 0.0 3.2489e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151070e8ab50_wrap_pyop2_kernel_prolong       4 0.0 7.4001e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15107022afd0_wrap_pyop2_kernel_prolong       4 0.0 2.7775e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e881d4110_wrap_pyop2_kernel_prolong       4 0.0 7.4004e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e83fb4450_wrap_pyop2_kernel_prolong       4 0.0 3.7900e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146de3713e90_wrap_pyop2_kernel_prolong       4 0.0 7.3964e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146de2ce9610_wrap_pyop2_kernel_prolong       4 0.0 3.1744e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ec89c49d0_wrap_pyop2_kernel_prolong       4 0.0 7.3971e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ec8961a50_wrap_pyop2_kernel_prolong       4 0.0 3.7073e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15335f3019d0_wrap_pyop2_kernel_prolong       4 0.0 7.4217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15335f303bd0_wrap_pyop2_kernel_prolong       4 0.0 3.4926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f9a781f50_wrap_pyop2_kernel_prolong       4 0.0 7.4109e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f9a7a6350_wrap_pyop2_kernel_prolong       4 0.0 3.6989e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6fdaed350_wrap_pyop2_kernel_prolong       4 0.0 7.4476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6fdac0710_wrap_pyop2_kernel_prolong       4 0.0 3.3672e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c201f8750_wrap_pyop2_kernel_prolong       4 0.0 7.3940e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c1bf8b210_wrap_pyop2_kernel_prolong       4 0.0 2.8666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa6fdc4bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4029e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa6f54d1d0_wrap_pyop2_kernel_prolong       4 0.0 4.0613e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eaae9e790_wrap_pyop2_kernel_prolong       4 0.0 7.3954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146eaad124d0_wrap_pyop2_kernel_prolong       4 0.0 3.2786e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a406bdf210_wrap_pyop2_kernel_prolong       4 0.0 7.4113e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a40696b4d0_wrap_pyop2_kernel_prolong       4 0.0 4.1052e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e222b5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.4138e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147e2198c550_wrap_pyop2_kernel_prolong       4 0.0 3.8221e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467f54db150_wrap_pyop2_kernel_prolong       4 0.0 7.4015e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467f538d950_wrap_pyop2_kernel_prolong       4 0.0 3.8971e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    87             87
              Viewer     3              3
           Index Set  1506           1506
   IS L to G Mapping   206            206
             Section   468            468
   Star Forest Graph   361            361
              Vector   134            134
              Matrix   112            112
      Preconditioner     1              1
       Krylov Solver     1              1
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   108            108
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   163            163
           Weak Form   163            163
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8
========================================================================================================================
Average time to get PetscTime(): 2.55e-08
Average time for MPI_Barrier(): 4.8064e-06
Average time for zero size MPI_Send(): 2.29616e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/sor/smoke.profile # (source: code)
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

