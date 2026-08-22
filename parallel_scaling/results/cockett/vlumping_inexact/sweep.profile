****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0535.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:27:31 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           6.257e+02     1.000   6.257e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.617e+11     1.128   5.313e+11  5.526e+13
Flops/sec:            8.977e+08     1.128   8.491e+08  8.831e+10
MPI Msg Count:        9.313e+04     2.712   6.302e+04  6.554e+06
MPI Msg Len (bytes):  5.704e+09     2.334   7.139e+04  4.679e+11
MPI Reductions:       8.579e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.9313e+02  46.8%  2.9356e+13  53.1%  1.755e+06  26.8%  9.799e+04       36.7%  6.497e+03  75.7%
 1:        MG Apply: 3.3259e+02  53.2%  2.5900e+13  46.9%  4.800e+06  73.2%  6.167e+04       63.3%  2.063e+03  24.0%

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

BuildTwoSided        501 1.0 1.3796e+01 7.3 0.00e+00 0.0 3.8e+04 4.0e+00 5.0e+02  1  0  1  0  6   3  0  2  0  8    -0
BuildTwoSidedF       461 1.0 1.3767e+01 7.4 0.00e+00 0.0 5.0e+04 3.7e+05 4.6e+02  1  0  1  4  5   3  0  3 11  7    -0
SFSetGraph            43 1.0 4.2107e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 1.5802e-01 4.5 0.00e+00 0.0 2.5e+04 2.1e+03 4.0e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         340 1.0 1.0410e-01 3.7 0.00e+00 0.0 1.6e+05 6.8e+04 0.0e+00  0  0  3  2  0   0  0  9  6  0    -0
SFBcastEnd           340 1.0 5.8406e+00 118.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.3022e-02 2.8 0.00e+00 0.0 7.0e+04 7.9e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
SFReduceEnd          134 1.0 3.3242e+00 114.4 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   209
SFFetchOpBegin         2 1.0 1.6446e-05 4.7 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.2947e-04 8.3 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 9.2957e-04 1.5 0.00e+00 0.0 6.5e+02 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 8.7799e-03 1.3 0.00e+00 0.0 2.2e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 3.7419e-03 3.2 0.00e+00 0.0 1.0e+04 1.5e+02 2.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFPack              3085 1.0 6.0000e-01 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3087 1.0 4.2717e-02 4.6 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16251
VecDot                91 1.0 2.6927e-01 8.3 3.29e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 12147
VecMDot             2518 1.0 1.8819e+01 3.9 7.27e+09 1.1 0.0e+00 0.0e+00 2.5e+03  2  1  0  0 29   4  2  0  0 39 38370
VecNorm             2912 1.0 4.4874e+00 4.1 1.05e+09 1.1 0.0e+00 0.0e+00 2.9e+03  0  0  0  0 34   1  0  0  0 45 23324
VecScale            2700 1.0 1.1562e-01 1.1 4.89e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 419662
VecCopy              727 1.0 4.5623e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               364 1.0 1.1730e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              182 1.0 7.5368e-02 1.4 6.59e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 86795
VecWAXPY              91 1.0 6.9227e-02 1.2 1.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23624
VecMAXPY            2700 1.0 8.3169e+00 1.1 8.18e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  3  0  0  0 97703
VecScatterBegin     2609 1.0 5.9169e-01 3.1 0.00e+00 0.0 1.4e+06 8.6e+04 0.0e+00  0  0 21 26  0   0  0 79 70  0    -0
VecScatterEnd       2609 1.0 9.2613e+00 18.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       182 1.0 3.7062e-02 2.1 6.59e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 176502
VecReduceComm         91 1.0 6.2179e-02 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        1001 1.0 2.0871e+00 3.9 5.43e+08 1.1 0.0e+00 0.0e+00 1.0e+03  0  0  0  0 12   0  0  0  0 15 25857
MatMult             2609 1.0 6.8732e+01 1.1 5.23e+10 1.1 1.4e+06 8.6e+04 0.0e+00 10  9 21 26  0  22 18 79 70  0 75217
MatSolve            1001 1.0 2.3788e+01 1.1 1.91e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  3  0  0  0   8  6  0  0  0 79394
MatLUFactorSym         1 1.0 3.6436e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       182 1.0 1.3062e+01 1.2 1.98e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   4  7  0  0  0 149289
MatILUFactorSym        1 1.0 9.7733e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     648 1.0 1.4129e+01 5.6 0.00e+00 0.0 5.0e+04 3.7e+05 4.6e+02  1  0  1  4  5   3  0  3 11  7    -0
MatAssemblyEnd       648 1.0 2.2028e+00 8.1 2.24e+07 0.0 2.1e+03 1.1e+04 1.7e+01  0  0  0  0  0   0  0  0  0  0   486
MatGetRowIJ            1 1.0 1.3800e-06 10.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.2701e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.1117e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.1801e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.1636e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.1857e+00 1.1 2.64e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 219305
MatPtAPSymbolic        1 1.0 1.6166e-01 1.0 0.00e+00 0.0 1.6e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.1137e+00 1.0 1.00e+10 1.1 4.9e+04 3.4e+05 9.6e+01  1  2  1  4  1   2  3  3 10  1 138879
MatGetLocalMat        91 1.0 3.7857e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 2.8345e-01 1.8 0.00e+00 0.0 5.0e+04 3.4e+05 0.0e+00  0  0  1  4  0   0  0  3 10  0    -0
PCSetUp               91 1.0 7.1767e+01 1.0 7.16e+10 1.1 5.4e+05 1.1e+05 2.1e+03 11 13  8 13 25  24 24 31 34 33 98646
PCApply             1608 1.0 3.3856e+02 1.0 2.62e+11 1.1 4.8e+06 6.2e+04 2.1e+03 53 47 73 63 24 Multiple stages 76499
PCApplyOnBlocks     1001 1.0 2.3799e+01 1.1 1.91e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  3  0  0  0   8  6  0  0  0 79358
KSPSetUp              91 1.0 1.4079e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 3.8813e+02 1.0 3.06e+11 1.1 5.7e+06 6.5e+04 5.4e+03 62 55 86 79 63 Multiple stages 78125
KSPGMRESOrthog      2518 1.0 2.5660e+01 2.1 1.45e+10 1.1 0.0e+00 0.0e+00 2.5e+03  3  3  0  0 29   6  5  0  0 39 56281
Mesh Partition         2 1.0 7.3134e-02 1.0 0.00e+00 0.0 6.8e+03 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.4033e-02 1.1 0.00e+00 0.0 2.3e+04 3.7e+02 1.1e+02  0  0  0  0  1   0  0  1  0  2    -0
DMPlexPartSelf         1 1.0 6.2387e-03 2211.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1187e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.8331e-03 1.4 0.00e+00 0.0 1.3e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.2043e-03 2.5 0.00e+00 0.0 6.5e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.5664e-03 1.6 0.00e+00 0.0 7.6e+02 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.5183e-02 1.0 0.00e+00 0.0 4.2e+03 2.1e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.8863e-03 1.0 0.00e+00 0.0 3.9e+03 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.4494e-02 1.0 0.00e+00 0.0 1.1e+04 3.9e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 5.1468e-03 1.1 0.00e+00 0.0 2.7e+04 1.3e+02 8.0e+01  0  0  0  0  1   0  0  2  0  1    -0
DMPlexDistField        3 1.0 3.1484e-03 1.1 0.00e+00 0.0 5.9e+03 1.8e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 9.2312e-05 1.2 0.00e+00 0.0 2.7e+03 8.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 4.4097e-03 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 1.4074e-03 54.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 7.8484e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 6.0029e+02 1.0 5.62e+11 1.1 6.5e+06 7.2e+04 8.3e+03 96 100 99 100 96 Multiple stages 92048
SNESSetUp              1 1.0 3.4456e-05 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.2881e+01 1.1 7.57e+10 1.2 1.5e+05 8.5e+04 1.0e+00  7 13  2  3  0  14 25  8  7  0 169059
SNESJacobianEval      91 1.0 9.4745e+01 1.0 1.09e+11 1.2 9.7e+04 2.2e+05 3.6e+02 15 19  1  5  4  32 35  6 12  6 109809
SNESLineSearch        91 1.0 2.2701e+01 1.0 5.89e+10 1.2 1.5e+05 8.6e+04 3.6e+02  4 10  2  3  4   8 19  8  7  6 248902
firedrake              1 1.0 6.2313e+02 1.0 5.62e+11 1.1 6.6e+06 7.1e+04 8.6e+03 100 100 100 100 100 Multiple stages 88674
firedrake.__init__       1 1.0 1.1043e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.3286e+00 35.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  2   1  0  3  0  3    -0
CreateMesh             1 1.0 1.4307e-01 1.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  2   0  0  3  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.4363e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 3.5630e-06 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.0334e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 3.8754e-04 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 2.2251e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 7.2767e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 2.1245e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 2.0392e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 2.0347e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 7.1086e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 4.1698e-03 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.0690e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 8.9945e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 1.6274e-02 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.2110e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.3862e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5587e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.6035e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.1694e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 4.8485e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.2943e+02 1.1 1.84e+11 1.2 1.3e+05 8.4e+04 6.0e+00 20 32  2  2  0  42 60  8  6  0 136381
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 8.8587e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.0932e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0  11  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 1.9011e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 1.7056e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.7015e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.1862e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.1861e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 8.2452e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 8.1622e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 2.6729e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.3097e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.9113e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.2086e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   293
firedrake.interpolation.interpolate       2 1.0 6.1141e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 1.8739e+00 1.0 4.25e+06 1.1 3.3e+03 1.0e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   225
firedrake.formmanipulation.split_form       3 1.0 3.0348e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.7530e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 5.7647e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.7837e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.1614e-01 3.7 0.00e+00 0.0 1.3e+05 8.4e+04 2.0e+00  0  0  2  2  0   0  0  8  6  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.7148e+00 1.0 4.25e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   246
firedrake.halo.Halo.global_to_local_end     243 1.0 5.8221e+00 154.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.5330e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.3068e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8136e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.8031e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.8729e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6712e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2328e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0761e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.1112e+00 1.0 0.00e+00 0.0 3.2e+03 4.7e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.5199e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3351e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1199e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1199e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
CreateSparsity         2 1.0 2.3564e+00 1.2 0.00e+00 0.0 2.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.3455e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 6.0036e+02 1.0 5.62e+11 1.1 6.5e+06 7.2e+04 8.3e+03 96 100 99 100 97 Multiple stages 92038
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 8.8822e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1607e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 2.9982e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 7.8467e+00 1.1 1.69e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  6  0  0  0 214011
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9032e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3036
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9008e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3040
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.5760e+00 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  6  0  0  0 179738
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6166e+01 1.2 4.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   5 13  0  0  0 237329
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.7714e-02 2.5 0.00e+00 0.0 6.5e+04 8.6e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.3253e+00 109.0 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   209
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5385e+01 1.1 2.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   5  8  0  0  0 149534
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.2011e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2398
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.1963e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2403
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7210e+01 1.1 2.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   9  8  0  0  0 88903
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.1304e+01 1.2 6.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  6 10  0  0  0  13 19  0  0  0 137340
firedrake.dmhooks.get_function_space       1 1.0 1.1248e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 6.7422e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 3.7008e+00 1.0 6.16e+07 15.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   355
MGSetup Level 1       91 1.0 5.9847e+01 1.0 6.16e+10 1.1 4.9e+05 8.6e+04 1.9e+03 10 11  7  9 22  20 21 28 24 29 101761

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 5.6425e-03 3.5 0.00e+00 0.0 6.0e+04 4.0e+00 9.1e+01  0  0  1  0  1   0  0  1  0  4    -0
SFSetGraph            91 1.0 3.1221e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 8.1838e-03 2.0 0.00e+00 0.0 1.2e+05 1.8e+02 9.1e+01  0  0  2  0  1   0  0  3  0  4    -0
SFPack             11256 1.0 1.3652e+00 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           11256 1.0 6.2789e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             4824 1.0 1.5130e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6431 1.0 5.1943e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             9648 1.0 4.3505e+00 1.8 2.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 53139
VecAXPBYCZ          3216 1.0 2.0907e+00 1.3 2.91e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 138219
VecScatterBegin    11256 1.0 1.6031e+00 3.0 0.00e+00 0.0 4.5e+06 6.6e+04 0.0e+00  0  0 69 63  0   0  0 94 100  0    -0
VecScatterEnd      11256 1.0 2.2107e+01 15.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             6432 1.0 1.6932e+02 1.1 1.29e+11 1.1 3.4e+06 8.6e+04 0.0e+00 26 23 52 63  0  48 49 72 100  0 75274
MatMultAdd          1608 1.0 4.6509e+00 1.3 2.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 49707
MatMultTranspose    1608 1.0 3.1826e+00 1.8 2.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 72638
MatSolve            8040 1.0 1.6784e+02 1.1 1.23e+11 1.1 1.4e+06 5.9e+02 4.6e+02 25 22 21  0  5  48 47 28  0 22 72522
MatResidual         1608 1.0 4.4383e+01 1.2 3.25e+10 1.1 8.6e+05 8.6e+04 0.0e+00  7  6 13 16  0  12 12 18 25  0 72442
PCSetUpOnBlocks     3216 1.0 2.8016e-02 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             8040 1.0 1.6795e+02 1.1 1.23e+11 1.1 1.4e+06 5.9e+02 4.6e+02 25 22 21  0  5  48 47 28  0 22 72476
PCApplyOnBlocks     6432 1.0 1.6025e+02 1.2 1.23e+11 1.1 0.0e+00 0.0e+00 0.0e+00 24 22  0  0  0  45 47  0  0  0 75728
KSPSolve            4824 1.0 2.9342e+02 1.1 2.25e+11 1.1 3.9e+06 5.6e+04 2.1e+03 45 40 60 47 24  86 86 82 75 100 75735
MGSmooth Level 0    1608 1.0 1.5828e+01 2.6 1.67e+09 13.4 1.4e+06 5.9e+02 2.1e+03  2  0 21  0 24   3  0 28  0 100  2309
MGSmooth Level 1    3216 1.0 2.8568e+02 1.1 2.24e+11 1.1 2.6e+06 8.6e+04 0.0e+00 44 40 39 47  0  83 86 54 75  0 77658
MGResid Level 1     1608 1.0 4.4389e+01 1.2 3.25e+10 1.1 8.6e+05 8.6e+04 0.0e+00  7  6 13 16  0  12 12 18 25  0 72433
MGInterp Level 1    3216 1.0 7.1734e+00 1.3 4.66e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 64456
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
           Index Set   480            480
   IS L to G Mapping     5              5
             Section    76             76
   Star Forest Graph    78            169
              Vector   474            474
              Matrix    24             24
      Preconditioner     6              6
       Krylov Solver     5              5
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    14             14
            DM Label    50             50
    GraphPartitioner     3              3
     Discrete System    21             21
           Weak Form    21             21

--- Event Stage 1: MG Apply

           Index Set   182            182
   Star Forest Graph    91              0
              Vector    91             91
========================================================================================================================
Average time to get PetscTime(): 2.61e-08
Average time for MPI_Barrier(): 4.246e-06
Average time for zero size MPI_Send(): 2.0564e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_inexact/sweep.profile # (source: environment)
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

