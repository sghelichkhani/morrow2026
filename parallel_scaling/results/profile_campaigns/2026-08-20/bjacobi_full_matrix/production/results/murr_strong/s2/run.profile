****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0089.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 19:06:19 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.971e+03     1.000   5.971e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.755e+12     1.104   6.426e+12  1.337e+15
Flops/sec:            1.131e+09     1.104   1.076e+09  2.239e+11
MPI Msg Count:        1.224e+05     4.494   7.379e+04  1.535e+07
MPI Msg Len (bytes):  2.741e+10     2.814   2.565e+05  3.937e+12
MPI Reductions:       2.655e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.9706e+03 100.0%  1.3367e+15 100.0%  1.535e+07 100.0%  2.565e+05      100.0%  2.653e+04  99.9%

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

BuildTwoSided        851 1.0 7.1519e+01 8.3 0.00e+00 0.0 1.4e+05 4.0e+00 8.5e+02  1  0  1  0  3   1  0  1  0  3    -0
BuildTwoSidedF       814 1.0 7.6806e+01 5.2 0.00e+00 0.0 2.3e+05 2.7e+06 8.1e+02  1  0  2 16  3   1  0  2 16  3    -0
SFSetGraph            40 1.0 1.3846e-02 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               37 1.0 5.8910e-02 2.8 0.00e+00 0.0 4.9e+04 6.0e+03 3.7e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         673 1.0 6.4910e-01 3.3 0.00e+00 0.0 7.2e+05 2.0e+05 0.0e+00  0  0  5  4  0   0  0  5  4  0    -0
SFBcastEnd           673 1.0 2.5869e+01 85.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        289 1.0 3.2542e-01 64.9 0.00e+00 0.0 3.2e+05 2.2e+05 0.0e+00  0  0  2  2  0   0  0  2  2  0    -0
SFReduceEnd          289 1.0 7.4924e+00 62.1 6.05e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1161
SFFetchOpBegin         2 1.0 3.0555e-05 14.6 0.00e+00 0.0 1.7e+03 2.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.5936e-03 56.8 0.00e+00 0.0 1.7e+03 2.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.1454e-03 2.1 0.00e+00 0.0 1.3e+03 4.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 2.5041e-02 1.8 0.00e+00 0.0 4.3e+04 8.7e+02 2.4e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           21 1.0 8.9385e-03 4.5 0.00e+00 0.0 2.0e+04 5.5e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             13393 1.0 1.2914e+01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           13395 1.0 4.5272e-01 10.0 6.05e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 19208
VecDot               203 1.0 2.3879e+00 3.3 6.61e+08 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  1   0  0  0  0  1 54903
VecMDot            11964 1.0 7.6227e+02 1.9 5.49e+11 1.1 0.0e+00 0.0e+00 1.2e+04 10  8  0  0 45  10  8  0  0 45 142696
VecNorm            12910 1.0 1.1019e+02 2.9 4.21e+10 1.1 0.0e+00 0.0e+00 1.3e+04  1  1  0  0 49   1  1  0  0 49 75663
VecScale           12429 1.0 5.5635e+01 1.1 2.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 72140
VecCopy             1705 1.0 9.9301e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               668 1.0 2.2307e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              727 1.0 5.6208e+00 1.4 2.37e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 83532
VecWAXPY             203 1.0 1.7548e+00 1.2 3.31e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 37356
VecMAXPY           12429 1.0 7.4310e+02 1.1 5.88e+11 1.1 0.0e+00 0.0e+00 0.0e+00 12  9  0  0  0  12  9  0  0  0 156776
VecScatterBegin    12429 1.0 1.2974e+01 2.5 0.00e+00 0.0 1.4e+07 2.2e+05 0.0e+00  0  0 91 79  0   0  0 91 79  0    -0
VecScatterEnd      12429 1.0 1.1336e+02 80.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       406 1.0 1.3855e+00 2.3 1.32e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 189253
VecReduceComm        203 1.0 9.1777e-01 21.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize       12429 1.0 1.5753e+02 1.8 6.07e+10 1.1 0.0e+00 0.0e+00 1.2e+04  2  1  0  0 47   2  1  0  0 47 76434
MatMult            12429 1.0 1.8443e+03 1.1 1.44e+12 1.1 1.4e+07 2.2e+05 0.0e+00 30 21 91 79  0  30 21 91 79  0 154167
MatSolve           12429 1.0 2.0440e+03 1.2 1.41e+12 1.1 0.0e+00 0.0e+00 0.0e+00 32 21  0  0  0  32 21  0  0  0 136816
MatLUFactorNum       203 1.0 1.3730e+02 1.3 2.11e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 303029
MatILUFactorSym        1 1.0 6.2600e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     814 1.0 8.2755e+01 4.3 0.00e+00 0.0 2.3e+05 2.7e+06 8.1e+02  1  0  2 16  3   1  0  2 16  3    -0
MatAssemblyEnd       814 1.0 2.9988e+01 5.0 4.03e+08 0.0 2.3e+03 5.5e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  1271
MatGetRowIJ            1 1.0 7.9390e-06 66.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.3515e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       203 1.0 2.9019e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              203 1.0 3.6461e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks      203 1.0 1.3795e+02 1.3 2.11e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   2  3  0  0  0 301602
PCApply            12429 1.0 2.0443e+03 1.2 1.41e+12 1.1 0.0e+00 0.0e+00 0.0e+00 32 21  0  0  0  32 21  0  0  0 136801
PCApplyOnBlocks    12429 1.0 2.0442e+03 1.2 1.41e+12 1.1 0.0e+00 0.0e+00 0.0e+00 32 21  0  0  0  32 21  0  0  0 136806
KSPSetUp             203 1.0 6.6411e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             203 1.0 5.1322e+03 1.0 4.02e+12 1.1 1.4e+07 2.2e+05 2.4e+04 86 60 90 78 92  86 60 90 78 92 155317
KSPGMRESOrthog     11964 1.0 1.4174e+03 1.3 1.10e+12 1.1 0.0e+00 0.0e+00 1.2e+04 21 16  0  0 45  21 16  0  0 45 153482
DMPlexCreateGmsh       1 1.0 4.0431e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 2.4369e+00 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 2.9184e-01 1.1 0.00e+00 0.0 1.4e+04 9.5e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 9.0974e-02 1.0 0.00e+00 0.0 5.0e+04 1.2e+03 1.1e+02  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartSelf         1 1.0 7.2747e-02 24727.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 8.3515e-02 8.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 7.3959e-03 1.7 0.00e+00 0.0 2.7e+03 9.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 6.1031e-03 1.5 0.00e+00 0.0 1.3e+03 3.8e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 2.7568e-02 1.0 0.00e+00 0.0 1.5e+03 7.6e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.2340e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.9927e-01 1.0 0.00e+00 0.0 8.6e+03 8.9e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 1.4048e-02 1.2 0.00e+00 0.0 8.0e+03 2.5e+03 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 6.4382e-02 1.0 0.00e+00 0.0 2.6e+04 1.3e+03 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 1.1551e-02 1.0 0.00e+00 0.0 5.7e+04 2.0e+02 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 6.9952e-03 1.2 0.00e+00 0.0 1.2e+04 4.3e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 1.8184e-01 20.6 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.8443e-02 179.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 5.8916e+03 1.0 6.75e+12 1.1 1.5e+07 2.6e+05 2.6e+04 99 100 99 100 98  99 100 99 100 98 226873
SNESSetUp              1 1.0 7.3910e-05 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     278 1.0 8.4748e+01 1.1 9.85e+11 1.1 7.1e+05 2.2e+05 0.0e+00  1 15  5  4  0   1 15  5  4  0 2294870
SNESJacobianEval     203 1.0 5.2953e+02 1.0 1.51e+12 1.1 4.6e+05 1.4e+06 8.1e+02  9 22  3 17  3   9 22  3 17  3 562806
SNESLineSearch       203 1.0 9.3047e+01 1.0 7.47e+11 1.1 6.9e+05 2.2e+05 8.1e+02  2 11  4  4  3   2 11  4  4  3 1583944
firedrake              1 1.0 5.9684e+03 1.0 6.76e+12 1.1 1.5e+07 2.6e+05 2.7e+04 100 100 100 100 100 100 100 100 100 100 223964
firedrake.__init__       1 1.0 6.9202e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 2.9464e+00 3.2 0.00e+00 0.0 1.2e+05 8.6e+02 2.0e+02  0  0  1  0  1   0  0  1  0  1    -0
firedrake.mesh._from_gmsh       1 1.0 2.4382e+00 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.0161e-03 47.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 3.2890e-06 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 6.3136e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 9.8054e-04 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.6380e-02 1.1 0.00e+00 0.0 2.3e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       9 1.0 1.3621e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 2.4652e-02 1.1 0.00e+00 0.0 2.3e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 2.3633e-02 1.1 0.00e+00 0.0 2.3e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 2.3573e-02 1.1 0.00e+00 0.0 2.3e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.3322e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.0857e-02 2.3 0.00e+00 0.0 2.3e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.2311e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0843e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 7.0112e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.7721e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.4184e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.0697e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       2 1.0 5.5459e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.7674e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     630 1.0 1.5010e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2213 1.0 5.4516e+02 1.1 2.49e+12 1.1 6.5e+05 2.2e+05 1.5e+01  9 37  4  4  0   9 37  4  4  0 903428
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.7331e+00 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4426 1.0 2.4572e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      15 1.0 1.1095e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate loopy      15 0.0 1.2486e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      15 0.0 9.1162e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      15 1.0 1.3151e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.load      15 1.0 1.3150e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      15 1.0 8.9768e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      15 1.0 8.8549e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin    2213 1.0 9.2931e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2213 1.0 7.5105e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 7.4776e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 5.2053e+00 1.0 2.75e+08 1.1 2.0e+04 9.3e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0 10484
firedrake.interpolation.interpolate      10 1.0 4.4109e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      10 1.0 5.2016e+00 1.0 2.75e+08 1.1 2.0e+04 9.3e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0 10491
firedrake.formmanipulation.split_form      12 1.0 4.5172e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 2.3162e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      10 1.0 1.4054e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 9.8004e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     570 1.0 7.3941e-01 2.8 0.00e+00 0.0 6.5e+05 2.2e+05 2.0e+00  0  0  4  4  0   0  0  4  4  0    -0
Parloop_Cells_wrap_expression_kernel      20 1.0 4.6399e+00 1.0 2.75e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11761
firedrake.halo.Halo.global_to_local_end     570 1.0 2.5824e+01 115.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 8.7811e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 8.6967e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.1249e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 2.0830e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 7.0225e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.5597e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9031e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.3068e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 2.0344e+01 1.0 0.00e+00 0.0 6.8e+03 9.1e+05 2.3e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.0286e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.3148e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9905e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9904e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 1.5107e+01 1.0 0.00e+00 0.0 3.4e+03 8.9e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 2.1952e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 5.8925e+03 1.0 6.75e+12 1.1 1.5e+07 2.6e+05 2.6e+04 99 100 99 100 99  99 100 99 100 99 226838
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.6713e-01 842.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 9.4250e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.6708e-01 999.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.6705e-01 1130.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     556 1.0 2.5189e+01 1.4 2.57e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 2026026
Parloop_Cells_wrap_form0_exterior_facet_top_integral     556 1.0 1.0293e+00 1.0 3.35e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6444
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     556 1.0 1.3210e+00 1.1 1.20e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 24186
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     556 1.0 1.5259e+01 1.1 2.47e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   0  4  0  0  0 3212187
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     556 1.0 3.3888e+01 1.2 4.84e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 2785364
firedrake.halo.Halo.local_to_global_begin     278 1.0 3.4417e-01 24.1 0.00e+00 0.0 3.1e+05 2.2e+05 0.0e+00  0  0  2  2  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     278 1.0 7.4947e+00 59.6 6.05e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1160
Parloop_Cells_wrap_form00_cell_integral     406 1.0 1.0044e+02 1.4 3.51e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 692376
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     406 1.0 2.6426e+00 2.3 8.95e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8990
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     406 1.0 1.2753e+02 1.2 4.64e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 721369
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     406 1.0 2.5349e+02 1.2 7.00e+11 1.1 0.0e+00 0.0e+00 0.0e+00  4 10  0  0  0   4 10  0  0  0 538163
firedrake.constant.Constant.assign      75 1.0 3.7350e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
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
Average time to get PetscTime(): 2.64999e-08
Average time for MPI_Barrier(): 8.2374e-06
Average time for zero size MPI_Send(): 2.06195e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z/production/results/murr_strong/s2/run.profile # (source: code)
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

