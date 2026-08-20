****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0073.gadi.nci.org.au with 1664 processes, by sg8812 on Thu Aug 20 17:40:11 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.063e+02     1.000   8.063e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                8.499e+11     1.146   7.974e+11  1.327e+15
Flops/sec:            1.054e+09     1.146   9.889e+08  1.646e+12
MPI Msg Count:        1.353e+05     5.005   7.854e+04  1.307e+08
MPI Msg Len (bytes):  9.752e+09     2.529   8.630e+04  1.128e+13
MPI Reductions:       2.573e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 8.0634e+02 100.0%  1.3269e+15 100.0%  1.307e+08 100.0%  8.630e+04      100.0%  2.571e+04  99.9%

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

BuildTwoSided         37 1.0 6.0251e-02 1.6 0.00e+00 0.0 1.0e+05 4.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
BuildTwoSidedF       814 1.0 2.2172e+01 4.8 0.00e+00 0.0 1.5e+06 1.2e+06 0.0e+00  2  0  1 16  0   2  0  1 16  0    -0
SFSetGraph            40 1.0 4.1094e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 7.3915e-02 1.6 0.00e+00 0.0 3.1e+05 2.7e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         673 1.0 2.2941e-01 2.7 0.00e+00 0.0 6.2e+06 6.6e+04 0.0e+00  0  0  5  4  0   0  0  5  4  0    -0
SFBcastEnd           673 1.0 8.2382e+00 57.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        289 1.0 6.5582e-02 5.4 0.00e+00 0.0 2.8e+06 7.2e+04 0.0e+00  0  0  2  2  0   0  0  2  2  0    -0
SFReduceEnd          289 1.0 1.7610e+00 60.4 2.15e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14133
SFFetchOpBegin         2 1.0 2.0224e-05 10.1 0.00e+00 0.0 1.5e+04 7.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.6925e-03 138.0 0.00e+00 0.0 1.5e+04 7.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 4.1171e-03 3.4 0.00e+00 0.0 1.1e+04 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 5.3277e-02 1.3 0.00e+00 0.0 3.5e+05 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           21 1.0 2.1177e-02 2.5 0.00e+00 0.0 1.2e+05 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack             13409 1.0 2.7361e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           13411 1.0 1.0554e-01 3.8 2.15e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 235820
VecDot               203 1.0 5.4537e-01 4.6 8.26e+07 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  1   0  0  0  0  1 240393
VecMDot            11979 1.0 1.0545e+02 2.0 6.86e+10 1.1 0.0e+00 0.0e+00 1.2e+04 10  8  0  0 47  10  8  0  0 47 1033067
VecNorm            12926 1.0 1.5397e+01 2.8 5.26e+09 1.1 0.0e+00 0.0e+00 1.3e+04  1  1  0  0 50   1  1  0  0 50 542163
VecScale           12445 1.0 5.9244e-01 1.2 2.53e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 6783257
VecCopy             1706 1.0 8.8227e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               669 1.0 2.4131e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              729 1.0 3.9817e-01 1.6 2.97e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1182420
VecWAXPY             203 1.0 1.7839e-01 1.2 4.13e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 367466
VecMAXPY           12445 1.0 7.4834e+01 1.1 7.35e+10 1.1 0.0e+00 0.0e+00 0.0e+00  9  9  0  0  0   9  9  0  0  0 1559070
VecScatterBegin    12445 1.0 3.0575e+00 2.5 0.00e+00 0.0 1.2e+08 7.4e+04 0.0e+00  0  0 92 79  0   0  0 92 79  0    -0
VecScatterEnd      12445 1.0 2.3076e+01 33.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       406 1.0 7.4994e-02 1.8 1.65e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3496345
VecReduceComm        203 1.0 1.9307e-01 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize       12445 1.0 1.3606e+01 2.9 7.59e+09 1.1 0.0e+00 0.0e+00 1.2e+04  1  1  0  0 48   1  1  0  0 48 886102
MatMult            12445 1.0 2.4443e+02 1.1 1.80e+11 1.1 1.2e+08 7.4e+04 0.0e+00 29 21 92 79  0  29 21 92 79  0 1164708
MatSolve           12445 1.0 2.4841e+02 1.2 1.72e+11 1.1 0.0e+00 0.0e+00 0.0e+00 29 20  0  0  0  29 20  0  0  0 1092211
MatLUFactorNum       203 1.0 1.5690e+01 1.2 2.55e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 2513858
MatILUFactorSym        1 1.0 5.5341e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     814 1.0 2.3876e+01 3.0 0.00e+00 0.0 1.5e+06 1.2e+06 0.0e+00  2  0  1 16  0   2  0  1 16  0    -0
MatAssemblyEnd       814 1.0 6.7289e+00 21.0 1.53e+08 0.0 1.4e+04 2.5e+04 5.0e+00  0  0  0  0  0   0  0  0  0  0 16205
MatGetRowIJ            1 1.0 8.6100e-06 78.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.7159e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       203 1.0 3.4146e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              203 1.0 4.4034e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks      203 1.0 1.5748e+01 1.2 2.55e+10 1.2 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 2504566
PCApply            12445 1.0 2.4865e+02 1.2 1.72e+11 1.1 0.0e+00 0.0e+00 0.0e+00 29 20  0  0  0  29 20  0  0  0 1091164
PCApplyOnBlocks    12445 1.0 2.4858e+02 1.2 1.72e+11 1.1 0.0e+00 0.0e+00 0.0e+00 29 20  0  0  0  29 20  0  0  0 1091494
KSPSetUp             203 1.0 4.3360e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             203 1.0 6.2249e+02 1.0 4.99e+11 1.1 1.2e+08 7.4e+04 2.4e+04 77 59 90 78 95  77 59 90 78 95 1268294
KSPGMRESOrthog     11979 1.0 1.6985e+02 1.4 1.37e+11 1.1 0.0e+00 0.0e+00 1.2e+04 18 16  0  0 47  18 16  0  0 47 1282716
DMPlexCreateGmsh       1 1.0 4.1076e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.5800e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 1.1882e+00 1.0 0.00e+00 0.0 1.0e+05 1.8e+02 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 1.3638e-01 1.0 0.00e+00 0.0 3.9e+05 2.1e+02 9.5e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 8.4659e-02 10453.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.6790e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 2.6007e-02 1.1 0.00e+00 0.0 1.7e+04 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 7.2826e-03 1.5 0.00e+00 0.0 1.1e+04 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 2.9929e-02 1.1 0.00e+00 0.0 1.3e+04 1.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.2443e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.3224e+00 1.0 0.00e+00 0.0 6.2e+04 1.3e+03 5.4e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 2.2144e-02 1.1 0.00e+00 0.0 6.2e+04 4.0e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 8.9271e-02 1.0 0.00e+00 0.0 2.0e+05 2.2e+02 6.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 3.5007e-02 1.0 0.00e+00 0.0 4.5e+05 7.5e+01 6.7e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 1.5314e-02 1.2 0.00e+00 0.0 9.5e+04 8.7e+01 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 1.8565e-01 19.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.8731e-02 1085.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 7.4872e+02 1.0 8.50e+11 1.1 1.3e+08 8.7e+04 2.5e+04 93 100 99 100 98  93 100 99 100 98 1772188
SNESSetUp              1 1.0 4.6060e-05 7.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     278 1.0 2.0657e+01 1.1 1.29e+11 1.2 6.1e+06 7.4e+04 0.0e+00  2 15  5  4  0   2 15  5  4  0 9415745
SNESJacobianEval     203 1.0 8.7343e+01 1.0 1.97e+11 1.2 3.4e+06 5.5e+05 0.0e+00 11 22  3 17  0  11 22  3 17  0 3412089
SNESLineSearch       203 1.0 1.2791e+01 1.0 9.74e+10 1.2 5.9e+06 7.4e+04 8.1e+02  2 11  4  4  3   2 11  4  4  3 11523352
firedrake              1 1.0 8.0404e+02 1.0 8.50e+11 1.1 1.3e+08 8.6e+04 2.6e+04 100 100 100 100 100 100 100 100 100 100 1650317
firedrake.__init__       1 1.0 6.5502e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 3.0423e+00 1.6 0.00e+00 0.0 9.0e+05 1.7e+02 1.6e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh._from_gmsh       1 1.0 1.5810e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.0642e-03 47.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 3.1820e-06 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.7476e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 8.8389e-04 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.0404e-02 1.1 0.00e+00 0.0 1.9e+04 9.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 6.5806e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 1.9384e-02 1.1 0.00e+00 0.0 1.9e+04 9.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 1.8482e-02 1.1 0.00e+00 0.0 1.9e+04 9.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 1.8431e-02 1.1 0.00e+00 0.0 1.9e+04 9.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 8.5689e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 5.2664e-03 1.2 0.00e+00 0.0 1.9e+04 9.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.8587e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.9406e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.5974e-02 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.1597e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.8540e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.9603e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 6.2315e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.1554e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     630 1.0 8.5059e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2213 1.0 9.5729e+01 1.2 3.25e+11 1.2 5.5e+06 7.3e+04 1.3e+01 11 37  4  4  0  11 37  4  4  0 5144165
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.1216e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4426 1.0 2.3341e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.1128e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.2935e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 8.6227e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.2538e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.2538e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 8.4433e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.2748e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2213 1.0 6.9136e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2213 1.0 6.4125e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 9.1294e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8406e+00 1.0 3.44e+07 1.1 1.6e+05 3.3e+04 1.0e+01  1  0  0  0  0   1  0  0  0  0 11274
firedrake.interpolation.interpolate      10 1.0 4.5362e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 4.8368e+00 1.0 3.44e+07 1.1 1.6e+05 3.3e+04 1.0e+01  1  0  0  0  0   1  0  0  0  0 11283
firedrake.formmanipulation.split_form      12 1.0 4.1300e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 5.1684e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.4872e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.2 9.5286e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     570 1.0 2.6901e-01 2.3 0.00e+00 0.0 5.5e+06 7.3e+04 0.0e+00  0  0  4  4  0   0  0  4  4  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.5529e+00 1.0 3.44e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 11986
firedrake.halo.Halo.global_to_local_end     570 1.0 8.1372e+00 134.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 8.1245e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.3584e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1059e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.3593e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.4327e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4818e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 2.8185e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1640e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9722e+00 1.0 0.00e+00 0.0 4.8e+04 3.6e+05 2.0e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.8216e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6691e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0363e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0363e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 2.0139e+00 1.2 0.00e+00 0.0 2.7e+04 3.2e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 2.6654e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 7.4886e+02 1.0 8.50e+11 1.1 1.3e+08 8.7e+04 2.5e+04 93 100 99 100 99  93 100 99 100 99 1771851
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2540e-01 1009.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.0549e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2535e-01 1193.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2532e-01 1338.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     556 1.0 5.0511e+00 1.4 3.21e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 10103614
Parloop_Cells_wrap_form0_exterior_facet_top_integral     556 1.0 1.0138e+00 1.1 4.18e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6543
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     556 1.0 1.2534e+00 1.1 4.38e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 25491
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     556 1.0 3.5225e+00 1.1 3.09e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 13915011
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     556 1.0 6.7956e+00 1.3 6.57e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 13889869
firedrake.halo.Halo.local_to_global_begin     278 1.0 7.4317e-02 4.1 0.00e+00 0.0 2.7e+06 7.4e+04 0.0e+00  0  0  2  2  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     278 1.0 1.7629e+00 56.4 2.15e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14117
Parloop_Cells_wrap_form00_cell_integral     406 1.0 1.5524e+01 1.5 4.38e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   2  5  0  0  0 4479415
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     406 1.0 1.6256e+00 1.5 3.25e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14615
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     406 1.0 1.8219e+01 1.2 5.79e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 5049697
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     406 1.0 3.9785e+01 1.4 9.49e+10 1.4 0.0e+00 0.0e+00 0.0e+00  4 10  0  0  0   4 10  0  0  0 3427185
firedrake.constant.Constant.assign      75 1.0 3.9219e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   156            156
              Viewer     3              3
           Index Set  5157           5157
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
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 7.8736e-06
Average time for zero size MPI_Send(): 2.23387e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/production/results/murr_strong/s16/run.profile # (source: code)
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

