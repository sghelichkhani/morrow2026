****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0061.gadi.nci.org.au with 416 processes, by sg8812 on Sat Aug 29 17:12:55 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.306e+03     1.000   1.306e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                8.684e+11     1.150   8.135e+11  3.384e+14
Flops/sec:            6.649e+08     1.150   6.228e+08  2.591e+11
MPI Msg Count:        3.783e+05     4.314   1.704e+05  7.091e+07
MPI Msg Len (bytes):  1.852e+10     2.759   7.627e+04  5.408e+12
MPI Reductions:       2.314e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.9451e+02  37.9%  1.6617e+14  49.1%  1.849e+07  26.1%  1.101e+05       37.6%  1.573e+04  68.0%
 1:        MG Apply: 8.1167e+02  62.1%  1.7224e+14  50.9%  5.242e+07  73.9%  6.433e+04       62.4%  7.397e+03  32.0%

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

BuildTwoSided        595 1.0 2.1756e+01 7.1 0.00e+00 0.0 1.6e+05 4.0e+00 5.0e+02  1  0  0  0  2   2  0  1  0  3    -0
BuildTwoSidedF       461 1.0 2.1465e+01 7.0 0.00e+00 0.0 2.2e+05 4.6e+05 4.6e+02  1  0  0  2  2   2  0  1  5  3    -0
SFSetGraph           137 1.1 9.1407e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              134 1.1 3.8060e-01 6.9 0.00e+00 0.0 1.1e+05 2.6e+03 4.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         340 1.0 1.6079e-01 3.2 0.00e+00 0.0 7.1e+05 8.2e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
SFBcastEnd           340 1.0 9.0735e+00 125.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.2854e-02 4.0 0.00e+00 0.0 3.1e+05 9.5e+04 0.0e+00  0  0  0  1  0   0  0  2  1  0    -0
SFReduceEnd          134 1.0 3.6974e+00 210.1 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   991
SFFetchOpBegin         2 1.0 1.6954e-05 6.1 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 7.4613e-04 50.0 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.7624e-03 2.7 0.00e+00 0.0 2.8e+03 8.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.4702e-02 1.3 0.00e+00 0.0 9.4e+04 2.0e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 5.3066e-03 4.7 0.00e+00 0.0 4.1e+04 1.1e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             17701 1.1 2.5811e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           17703 1.1 5.9574e-02 4.0 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 61506
VecDot                91 1.0 2.9123e-01 12.1 3.34e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 45522
VecMDot             6992 1.0 6.9342e+01 2.4 3.66e+10 1.1 0.0e+00 0.0e+00 7.0e+03  3  4  0  0 30   9  9  0  0 44 209360
VecNorm             7569 1.0 9.7504e+00 3.6 2.78e+09 1.1 0.0e+00 0.0e+00 7.6e+03  0  0  0  0 33   1  1  0  0 48 113093
VecScale            7264 1.0 2.9617e-01 1.2 1.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1786566
VecCopy              639 1.0 3.2348e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               470 1.0 1.5812e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              272 1.0 1.2381e-01 1.5 1.00e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 320058
VecWAXPY             269 1.0 2.1488e-01 2.0 4.94e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 91191
VecMAXPY            7264 1.0 3.8723e+01 1.1 3.92e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   7  9  0  0  0 401212
VecScatterBegin    17225 1.1 2.8608e+00 2.6 0.00e+00 0.0 1.7e+07 1.0e+05 0.0e+00  0  0 24 33  0   0  0 92 86  0    -0
VecScatterEnd      17225 1.1 3.1885e+01 25.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
VecSetRandom           2 1.0 3.3680e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.2467e-02 2.2 6.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 816682
VecReduceComm         91 1.0 7.5157e-02 35.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize          53 1.0 8.4488e-02 4.4 2.92e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  0   0  0  0  0  0 137085
MatMult             7261 1.0 2.0599e+02 1.2 1.48e+11 1.1 1.7e+07 1.0e+05 0.0e+00 15 17 24 33  0  38 35 92 86  0 283819
MatSolve            4929 1.1 8.2421e-01 1.6 4.57e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 219547
MatLUFactorSym        94 1.1 6.4753e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       277 1.1 1.4668e+01 1.0 2.33e+08 2.9 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0  2559
MatAssemblyBegin     834 1.0 2.1635e+01 5.0 0.00e+00 0.0 2.2e+05 4.6e+05 4.6e+02  1  0  0  2  2   3  0  1  5  3    -0
MatAssemblyEnd       834 1.0 3.2192e+00 7.0 3.42e+07 0.0 9.3e+03 1.3e+04 1.7e+01  0  0  0  0  0   0  0  0  0  0  1778
MatGetRowIJ           93 1.1 2.0381e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 2.8554e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.4e+01  0  0  0  0  0   0  0  0  0  1    -0
MatGetOrdering        93 1.1 2.0835e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 2.5770e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatTranspose           2 1.0 9.2549e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2200e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.3431e+00 1.2 2.68e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 786597
MatPtAPSymbolic        1 1.0 1.7858e-01 1.0 0.00e+00 0.0 7.0e+03 2.3e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.9029e+00 1.0 1.02e+10 1.1 2.1e+05 4.1e+05 9.6e+01  1  1  0  2  0   2  2  1  4  1 507928
MatGetLocalMat        91 1.0 4.3133e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 4.0277e-01 2.0 0.00e+00 0.0 2.2e+05 4.1e+05 0.0e+00  0  0  0  2  0   0  0  1  4  0    -0
PCSetUp               91 1.0 2.8022e+01 1.0 1.22e+10 1.1 3.4e+05 2.9e+05 5.2e+02  2  1  0  2  2   6  3  2  5  3 171548
PCApply             6942 1.0 8.3310e+02 1.1 4.47e+11 1.2 5.2e+07 6.4e+04 7.4e+03 62 51 74 62 32 Multiple stages 206740
PCApplyOnBlocks     4929 1.1 9.4577e-01 1.5 5.41e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 226823
KSPSetUp              91 1.0 1.4866e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.0835e+03 1.0 6.69e+11 1.1 6.9e+07 7.4e+04 2.2e+04 83 77 97 94 93 Multiple stages 240981
KSPGMRESOrthog      6992 1.0 1.0316e+02 1.6 7.32e+10 1.1 0.0e+00 0.0e+00 7.0e+03  6  9  0  0 30  16 17  0  0 44 281454
Mesh Partition         2 1.0 2.5243e-01 1.0 0.00e+00 0.0 2.9e+04 1.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.4962e-02 1.0 0.00e+00 0.0 9.7e+04 2.5e+02 1.1e+02  0  0  0  0  0   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.5320e-02 4276.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 3.2757e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.6470e-03 1.2 0.00e+00 0.0 5.6e+03 1.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.4134e-03 1.6 0.00e+00 0.0 2.8e+03 7.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 7.4580e-03 1.3 0.00e+00 0.0 3.2e+03 1.2e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.8976e-01 1.0 0.00e+00 0.0 1.6e+04 1.4e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 4.3041e-03 1.1 0.00e+00 0.0 1.7e+04 4.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.0100e-02 1.0 0.00e+00 0.0 4.6e+04 2.8e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 1.5195e-02 1.2 0.00e+00 0.0 1.1e+05 1.0e+02 8.0e+01  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        3 1.0 6.1231e-03 1.3 0.00e+00 0.0 2.5e+04 1.2e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.4656e-04 1.2 0.00e+00 0.0 1.2e+04 6.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 9.3963e-03 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 3.4041e-03 193.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.5347e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.2621e+03 1.0 8.68e+11 1.1 7.1e+07 7.6e+04 2.3e+04 97 100 100 100 99 Multiple stages 268137
SNESSetUp              1 1.0 3.8739e-05 6.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.5800e+01 1.1 7.91e+10 1.3 6.4e+05 1.0e+05 1.0e+00  3  9  1  1  0   9 18  3  3  0 642653
SNESJacobianEval      91 1.0 1.0157e+02 1.0 1.14e+11 1.3 4.2e+05 2.7e+05 3.6e+02  8 12  1  2  2  21 25  2  6  2 415959
SNESLineSearch        91 1.0 2.4572e+01 1.0 6.16e+10 1.2 6.4e+05 1.0e+05 3.6e+02  2  7  1  1  2   5 14  3  3  2 933656
firedrake              1 1.0 1.2993e+03 1.0 8.68e+11 1.1 7.1e+07 7.6e+04 2.3e+04 99 100 100 100 100 Multiple stages 260445
firedrake.__init__       1 1.0 1.8312e+01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 6.0357e+00 15.3 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  0  0  1   1  0  1  0  1    -0
CreateMesh             1 1.0 3.7826e-01 1.0 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  0  0  1   0  0  1  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.6009e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.3260e-06 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.8441e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.5988e-04 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 3.2713e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       8 1.0 1.0103e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 3.1151e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 3.0056e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 2.9996e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.2989e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.3415e-02 1.7 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.4641e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       8 1.0 1.5229e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 7.1154e-02 19.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 7.3568e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.0567e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.6082e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.5873e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 7.3528e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 3.8536e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.4474e+02 1.2 1.93e+11 1.3 5.8e+05 1.0e+05 6.0e+00 10 21  1  1  0  27 43  3  3  0 495194
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 7.3205e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.9924e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.0699e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 1.8833e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.8159e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.9449e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.9448e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 1.2063e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 1.1909e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 3.1981e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.7182e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.1664e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 1.0598e+00 1.1 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1031
firedrake.interpolation.interpolate       2 1.0 6.1768e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 2.1389e+00 1.0 4.32e+06 1.1 1.4e+04 1.2e+04 2.4e+01  0  0  0  0  0   0  0  0  0  0   800
firedrake.formmanipulation.split_form       3 1.0 2.7869e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.8831e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 5.7594e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 4.0565e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.6154e-01 4.2 0.00e+00 0.0 5.8e+05 1.0e+05 2.0e+00  0  0  1  1  0   0  0  3  3  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.9756e+00 1.1 4.32e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   866
firedrake.halo.Halo.global_to_local_end     243 1.0 8.6276e+00 284.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.9752e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.7172e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8928e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.9160e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.9991e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6487e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.4290e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0040e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.5289e+00 1.0 0.00e+00 0.0 1.4e+04 5.7e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9584e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.7815e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1499e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1498e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         2 1.0 2.7941e+00 1.3 0.00e+00 0.0 1.2e+04 3.4e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 4.6354e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.2621e+03 1.0 8.68e+11 1.1 7.1e+07 7.6e+04 2.3e+04 97 100 100 100 99 Multiple stages 268124
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.9098e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.8930e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.8399e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.4803e+00 1.2 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 802643
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.8568e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7966
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0291e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7290
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.2009e+01 1.3 1.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  4  0  0  0 582336
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.8230e+01 1.4 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   3  9  0  0  0 855747
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.5183e-02 3.1 0.00e+00 0.0 2.8e+05 1.0e+05 0.0e+00  0  0  0  1  0   0  0  2  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.6986e+00 196.1 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   991
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.6330e+01 1.1 2.35e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  6  0  0  0 571038
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4300e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5561
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3934e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5646
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8420e+01 1.1 2.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   5  6  0  0  0 345836
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5687e+01 1.4 6.54e+10 1.4 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   8 14  0  0  0 504825
firedrake.dmhooks.get_function_space       2 1.0 2.3210e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.9499e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 1.5236e+01 1.0 1.49e+08 52.9 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   3  0  0  0  0   260
MGSetup Level 1       91 1.0 9.1149e-01 1.0 3.91e+08 1.1 2.3e+04 1.0e+05 1.2e+02  0  0  0  0  1   0  0  0  0  1 169932

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 3.0456e-02 3.8 0.00e+00 0.0 2.5e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            91 1.0 2.2059e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 3.3632e-02 2.6 0.00e+00 0.0 4.9e+05 1.1e+02 9.1e+01  0  0  1  0  0   0  0  1  0  1    -0
SFPack           2644902 1.1 5.1178e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2644902 1.1 1.6683e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             6942 1.0 2.8963e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             55535 1.0 1.2524e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAXPY            13884 1.0 6.2075e+00 1.5 5.10e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 325849
VecAYPX            13884 1.0 8.0529e+00 2.2 2.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 125590
VecScatterBegin  2644902 1.1 3.7177e+01 1.2 0.00e+00 0.0 5.1e+07 6.6e+04 0.0e+00  3  0 72 62  0   4  0 98 100  0    -0
VecScatterEnd    2644902 1.1 4.6537e+01 13.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult            13884 1.0 3.8659e+02 1.2 2.83e+11 1.1 3.2e+07 1.0e+05 0.0e+00 28 33 46 62  0  44 65 62 100  0 289179
MatMultAdd          6942 1.0 1.9555e+01 1.2 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 206878
MatMultTranspose    6942 1.0 1.5468e+01 2.3 1.02e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 261527
MatSolve         1298154 1.1 3.7466e+02 1.2 1.35e+11 1.2 2.0e+07 4.2e+02 4.6e+02 27 14 28  0  2  43 28 38  0  6 127647
MatLUFactorNum      8277 1.1 3.0724e+00 1.4 3.77e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 486221
MatResidual         6942 1.0 2.0311e+02 1.2 1.43e+11 1.1 1.6e+07 1.0e+05 0.0e+00 14 17 23 31  0  23 33 31 50  0 277691
MatAssemblyBegin    8277 1.1 2.4350e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd      8277 1.1 2.4711e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 7.5076e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
PCSetUp             8366 1.1 1.0633e+01 1.3 3.77e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 140496
PCApply            20826 1.0 4.2985e+02 1.2 1.39e+11 1.2 2.0e+07 4.2e+02 4.6e+02 31 15 28  0  2  50 29 38  0  6 114734
PCApplyOnBlocks  1291212 1.1 2.1316e+02 1.3 1.23e+11 1.1 0.0e+00 0.0e+00 0.0e+00 14 14  0  0  0  23 28  0  0  0 229385
KSPSetUp            8278 1.1 2.9723e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           20826 1.0 6.2563e+02 1.1 2.85e+11 1.2 3.6e+07 4.7e+04 7.4e+03 46 32 51 31 32  73 63 69 50 100 172215
MGSmooth Level 0    6942 1.0 1.8951e+02 1.2 1.71e+10 45.1 2.0e+07 4.2e+02 7.4e+03 13  0 28  0 32  21  0 38  0 100  2226
MGSmooth Level 1   13884 1.0 4.6160e+02 1.2 2.71e+11 1.1 1.6e+07 1.0e+05 0.0e+00 32 32 23 31  0  52 62 31 50  0 232497
MGResid Level 1     6942 1.0 2.0315e+02 1.2 1.43e+11 1.1 1.6e+07 1.0e+05 0.0e+00 14 17 23 31  0  23 33 31 50  0 277641
MGInterp Level 1   13884 1.0 3.4142e+01 1.4 2.04e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 236975
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set  2197           2197
   IS L to G Mapping    92             92
             Section    76             76
   Star Forest Graph   171            262
              Vector   631            630
              Matrix   461            461
      Preconditioner    93             93
       Krylov Solver    93             93
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    16             16
            DM Label    50             50
    GraphPartitioner     3              3
     Discrete System    23             23
           Weak Form    23             23

--- Event Stage 1: MG Apply

           Index Set   182            182
   Star Forest Graph    91              0
              Vector    93             94
========================================================================================================================
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 1.16584e-05
Average time for zero size MPI_Send(): 2.03676e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_linesmooth/large.profile # (source: environment)
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

