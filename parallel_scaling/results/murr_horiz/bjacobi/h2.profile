****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0716.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 17:44:46 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.076e+03     1.000   1.076e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.281e+12     1.119   1.213e+12  2.523e+14
Flops/sec:            1.191e+09     1.119   1.128e+09  2.346e+11
MPI Msg Count:        6.954e+04     3.992   4.734e+04  9.848e+06
MPI Msg Len (bytes):  8.756e+09     2.947   1.341e+05  1.321e+12
MPI Reductions:       1.687e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.0757e+03 100.0%  2.5231e+14 100.0%  9.848e+06 100.0%  1.341e+05      100.0%  1.685e+04  99.9%

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

BuildTwoSided        863 1.0 4.5738e+01 4.1 0.00e+00 0.0 1.4e+05 4.0e+00 8.6e+02  3  0  1  0  5   3  0  1  0  5    -0
BuildTwoSidedF       826 1.0 4.5724e+01 2.8 0.00e+00 0.0 2.4e+05 1.3e+06 8.3e+02  3  0  2 23  5   3  0  2 23  5    -0
SFSetGraph            40 1.0 6.0698e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 2.9859e-02 1.7 0.00e+00 0.0 4.9e+04 2.9e+03 3.7e+01  0  0  1  0  0   0  0  1  0  0    -0
SFBcastBegin         679 1.0 3.2574e-01 3.3 0.00e+00 0.0 7.3e+05 9.5e+04 0.0e+00  0  0  7  5  0   0  0  7  5  0    -0
SFBcastEnd           679 1.0 1.2697e+01 186.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        292 1.0 7.5167e-02 17.9 0.00e+00 0.0 3.3e+05 1.0e+05 0.0e+00  0  0  3  3  0   0  0  3  3  0    -0
SFReduceEnd          292 1.0 2.2353e+00 52.6 2.83e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1911
SFFetchOpBegin         2 1.0 2.4999e-05 7.5 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.3353e-03 115.1 0.00e+00 0.0 1.7e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.6302e-03 2.4 0.00e+00 0.0 1.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.3300e-02 1.3 0.00e+00 0.0 4.3e+04 2.7e+02 2.4e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           21 1.0 5.3073e-03 5.9 0.00e+00 0.0 2.0e+04 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              8482 1.0 2.4968e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            8484 1.0 1.5949e-01 8.1 2.83e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 26788
VecDot               206 1.0 6.7369e-01 4.3 1.65e+08 1.1 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  1   0  0  0  0  1 48915
VecMDot             7179 1.0 1.4082e+02 2.3 7.98e+10 1.1 0.0e+00 0.0e+00 7.2e+03 10  6  0  0 43  10  6  0  0 43 112916
VecNorm             7996 1.0 2.1738e+01 2.3 6.42e+09 1.1 0.0e+00 0.0e+00 8.0e+03  1  1  0  0 47   1  1  0  0 47 58841
VecScale            7509 1.0 1.8167e+00 1.2 3.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 330596
VecCopy             1585 1.0 1.9402e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               536 1.0 4.0382e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              454 1.0 7.2712e-01 1.2 3.64e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 99882
VecWAXPY             206 1.0 3.9795e-01 1.1 8.27e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 41405
VecMAXPY            7509 1.0 1.0168e+02 1.1 8.56e+10 1.1 0.0e+00 0.0e+00 0.0e+00  9  7  0  0  0   9  7  0  0  0 167666
VecScatterBegin     7509 1.0 2.5176e+00 2.8 0.00e+00 0.0 8.5e+06 1.1e+05 0.0e+00  0  0 86 69  0   0  0 86 69  0    -0
VecScatterEnd       7509 1.0 2.0831e+01 34.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       412 1.0 3.0357e-01 2.1 3.31e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 217106
VecReduceComm        206 1.0 3.3767e-01 13.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.1e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        7509 1.0 2.1500e+01 2.1 9.04e+09 1.1 0.0e+00 0.0e+00 7.5e+03  1  1  0  0 45   1  1  0  0 45 83805
MatMult             7509 1.0 2.8744e+02 1.1 2.14e+11 1.1 8.5e+06 1.1e+05 0.0e+00 26 17 86 69  0  26 17 86 69  0 147861
MatSolve            7509 1.0 3.2272e+02 1.3 2.07e+11 1.1 0.0e+00 0.0e+00 0.0e+00 26 16  0  0  0  26 16  0  0  0 127451
MatLUFactorNum       206 1.0 3.4091e+01 1.3 5.19e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 297876
MatILUFactorSym        1 1.0 1.5732e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     826 1.0 4.6664e+01 2.1 0.00e+00 0.0 2.4e+05 1.3e+06 8.3e+02  3  0  2 23  5   3  0  2 23  5    -0
MatAssemblyEnd       826 1.0 1.3771e+01 7.0 1.96e+08 0.0 2.3e+03 2.7e+04 6.0e+00  1  0  0  0  0   1  0  0  0  0  1365
MatGetRowIJ            1 1.0 4.3560e-06 36.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 4.1442e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       206 1.0 6.9144e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
PCSetUp              206 1.0 3.8011e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks      206 1.0 3.4254e+01 1.3 5.19e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 296464
PCApply             7509 1.0 3.2283e+02 1.3 2.07e+11 1.1 0.0e+00 0.0e+00 0.0e+00 26 16  0  0  0  26 16  0  0  0 127407
PCApplyOnBlocks     7509 1.0 3.2279e+02 1.3 2.07e+11 1.1 0.0e+00 0.0e+00 0.0e+00 26 16  0  0  0  26 16  0  0  0 127422
KSPSetUp             206 1.0 7.6129e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             206 1.0 7.7877e+02 1.0 5.89e+11 1.1 8.3e+06 1.1e+05 1.5e+04 72 46 84 67 87  72 46 84 67 87 150608
KSPGMRESOrthog      7179 1.0 2.2912e+02 1.5 1.60e+11 1.1 0.0e+00 0.0e+00 7.2e+03 18 13  0  0 43  18 13  0  0 43 138795
DMPlexCreateGmsh       1 1.0 1.0490e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.0828e+00 48.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 1.5674e-01 1.0 0.00e+00 0.0 1.4e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.4312e-02 1.0 0.00e+00 0.0 5.0e+04 3.6e+02 1.1e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.5889e-02 5324.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 2.5176e-02 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 5.3982e-03 1.1 0.00e+00 0.0 2.7e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.4796e-03 1.5 0.00e+00 0.0 1.3e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 8.2429e-03 1.3 0.00e+00 0.0 1.5e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 5.4165e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.8927e-01 1.0 0.00e+00 0.0 8.6e+03 2.3e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 4.1661e-03 1.0 0.00e+00 0.0 8.0e+03 6.9e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 2.1083e-02 1.0 0.00e+00 0.0 2.6e+04 3.8e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 9.6609e-03 1.1 0.00e+00 0.0 5.7e+04 9.8e+01 8.0e+01  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistField        3 1.0 4.9072e-03 1.3 0.00e+00 0.0 1.2e+04 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 4.4725e-02 18.7 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 4.2332e-03 148.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 1.0136e+03 1.0 1.28e+12 1.1 9.7e+06 1.4e+05 1.6e+04 94 100 98 100 97  94 100 98 100 97 248915
SNESSetUp              1 1.0 6.2052e-05 6.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     281 1.0 3.0003e+01 1.1 2.51e+11 1.2 7.2e+05 1.1e+05 0.0e+00  3 19  7  6  0   3 19  7  6  0 1621589
SNESJacobianEval     206 1.0 1.6909e+02 1.0 3.86e+11 1.1 4.7e+05 7.0e+05 8.2e+02 16 30  5 25  5  16 30  5 25  5 442615
SNESLineSearch       206 1.0 2.4255e+01 1.0 1.91e+11 1.2 7.0e+05 1.1e+05 8.2e+02  2 15  7  6  5   2 15  7  6  5 1526058
firedrake              1 1.0 1.0735e+03 1.0 1.28e+12 1.1 9.8e+06 1.3e+05 1.7e+04 100 100 100 100 100 100 100 100 100 100 235036
firedrake.__init__       1 1.0 7.2480e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 5.3318e+00 15.1 0.00e+00 0.0 1.2e+05 2.7e+02 2.0e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh._from_gmsh       1 1.0 5.0838e+00 48.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.1215e-03 12.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.8310e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.3680e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.9968e-04 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.3982e-02 1.1 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 9.6569e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 2.2827e-02 1.1 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 2.1850e-02 1.2 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 2.1796e-02 1.2 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.3532e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.4781e-03 1.1 0.00e+00 0.0 2.3e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.0886e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.2592e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.7284e-02 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.2537e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.6309e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8589e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.8388e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.2493e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     630 1.0 8.6866e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2240 1.0 1.6238e+02 1.2 6.37e+11 1.2 6.6e+05 1.1e+05 1.5e+01 14 49  7  5  0  14 49  7  5  0 760451
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.2169e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4480 1.0 2.4541e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.0681e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.2738e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.8474e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.3701e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.3700e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 8.9338e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.7907e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2240 1.0 7.0143e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2240 1.0 5.8111e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 6.3705e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 5.1707e+00 1.0 6.78e+07 1.1 2.0e+04 4.5e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0  2614
firedrake.interpolation.interpolate      10 1.0 3.8547e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 5.1670e+00 1.0 6.78e+07 1.1 2.0e+04 4.5e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0  2616
firedrake.formmanipulation.split_form      12 1.0 4.0855e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.8988e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 2.6177e-01 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 2.2585e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     576 1.0 3.7396e-01 2.7 0.00e+00 0.0 6.6e+05 1.1e+05 2.0e+00  0  0  7  5  0   0  0  7  5  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.5779e+00 1.0 6.78e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2953
firedrake.halo.Halo.global_to_local_end     576 1.0 1.2534e+01 236.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 1.6886e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.6103e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2242e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.7397e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.4580e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 1.5819e-01 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9153e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 1.5569e-01 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.4804e+00 1.0 0.00e+00 0.0 6.8e+03 4.4e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.0794e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.7790e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0481e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0480e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 3.9919e+00 1.1 0.00e+00 0.0 3.4e+03 4.3e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 5.1827e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 1.0139e+03 1.0 1.28e+12 1.1 9.7e+06 1.4e+05 1.7e+04 94 100 98 100 98  94 100 98 100 98 248847
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.0374e-01 972.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.8150e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.0369e-01 1149.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.0366e-01 1293.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     562 1.0 7.5102e+00 1.3 6.41e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 1701346
Parloop_Cells_wrap_form0_exterior_facet_top_integral     562 1.0 9.9451e-01 1.0 8.33e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1670
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     562 1.0 1.2519e+00 1.1 5.81e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12811
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     562 1.0 5.1840e+00 1.1 6.16e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   0  5  0  0  0 2367278
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     562 1.0 1.0912e+01 1.2 1.26e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1  9  0  0  0 2160987
firedrake.halo.Halo.local_to_global_begin     281 1.0 8.3612e-02 8.6 0.00e+00 0.0 3.2e+05 1.1e+05 0.0e+00  0  0  3  3  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end     281 1.0 2.2366e+00 49.8 2.83e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1910
Parloop_Cells_wrap_form00_cell_integral     412 1.0 2.8557e+01 1.5 8.77e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 612072
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     412 1.0 1.8546e+00 1.6 4.33e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6455
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     412 1.0 3.3431e+01 1.2 1.16e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   3  9  0  0  0 691711
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     412 1.0 7.2940e+01 1.3 1.83e+11 1.2 0.0e+00 0.0e+00 0.0e+00  6 14  0  0  0   6 14  0  0  0 468966
firedrake.constant.Constant.assign      75 1.0 2.8011e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   156            156
              Viewer     3              3
           Index Set   795            795
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
Average time to get PetscTime(): 2.64e-08
Average time for MPI_Barrier(): 7.45e-06
Average time for zero size MPI_Send(): 2.01261e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/production/results/murr_horizontal/h2/run.profile # (source: code)
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

