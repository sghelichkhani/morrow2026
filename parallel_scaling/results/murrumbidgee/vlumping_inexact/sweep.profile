****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0535.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 20 23:38:34 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.254e+02     1.000   5.254e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.657e+11     1.144   5.319e+11  1.106e+14
Flops/sec:            1.077e+09     1.144   1.012e+09  2.106e+11
MPI Msg Count:        9.895e+04     4.055   5.896e+04  1.226e+07
MPI Msg Len (bytes):  6.293e+09     2.436   7.747e+04  9.501e+11
MPI Reductions:       1.115e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.4972e+02  66.6%  8.7286e+13  78.9%  5.220e+06  42.6%  1.170e+05       64.3%  9.110e+03  81.7%
 1:        MG Apply: 1.7569e+02  33.4%  2.3356e+13  21.1%  7.044e+06  57.4%  4.818e+04       35.7%  2.024e+03  18.1%

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

BuildTwoSided       1070 1.0 3.6429e+01 4.0 0.00e+00 0.0 1.4e+05 4.0e+00 1.1e+03  4  0  1  0 10   7  0  3  0 12    -0
BuildTwoSidedF      1031 1.0 3.8715e+01 3.0 0.00e+00 0.0 2.3e+05 9.1e+05 1.0e+03  5  0  2 22  9   8  0  4 34 11    -0
SFSetGraph            42 1.0 3.6627e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 2.3429e-02 1.9 0.00e+00 0.0 5.1e+04 1.9e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         679 1.0 2.2395e-01 2.8 0.00e+00 0.0 7.3e+05 6.6e+04 0.0e+00  0  0  6  5  0   0  0 14  8  0    -0
SFBcastEnd           679 1.0 7.5699e+00 87.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        291 1.0 3.8721e-02 2.6 0.00e+00 0.0 3.2e+05 7.3e+04 0.0e+00  0  0  3  2  0   0  0  6  4  0    -0
SFReduceEnd          291 1.0 1.3460e+00 40.9 1.97e+07 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2204
SFFetchOpBegin         2 1.0 1.4783e-05 5.6 0.00e+00 0.0 1.7e+03 7.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 9.4010e-04 89.2 0.00e+00 0.0 1.7e+03 7.9e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.5064e-03 2.5 0.00e+00 0.0 1.3e+03 7.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 1.0235e-02 1.4 0.00e+00 0.0 4.3e+04 1.6e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 4.3204e-03 5.5 0.00e+00 0.0 2.0e+04 9.3e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4226 1.0 8.3517e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4228 1.0 8.5655e-02 3.5 1.97e+07 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 34633
VecDot               205 1.0 4.0485e-01 5.5 8.27e+07 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2 40590
VecMDot             3049 1.0 2.2815e+01 2.8 5.76e+09 1.1 0.0e+00 0.0e+00 3.0e+03  3  1  0  0 27   4  1  0  0 33 50214
VecNorm             3944 1.0 7.0364e+00 3.3 1.59e+09 1.1 0.0e+00 0.0e+00 3.9e+03  1  0  0  0 35   1  0  0  0 43 44932
VecScale            3459 1.0 1.9031e-01 1.2 6.97e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 728492
VecCopy             1660 1.0 8.6872e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               820 1.0 3.0154e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              410 1.0 2.0198e-01 1.3 1.65e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 162716
VecWAXPY             205 1.0 1.7391e-01 1.1 4.13e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47245
VecMAXPY            3459 1.0 7.4231e+00 1.1 6.99e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 187263
VecScatterBegin     3254 1.0 7.3252e-01 2.3 0.00e+00 0.0 3.7e+06 7.6e+04 0.0e+00  0  0 30 29  0   0  0 70 45  0    -0
VecScatterEnd       3254 1.0 8.2405e+00 7.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       410 1.0 9.3446e-02 2.0 1.65e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 351712
VecReduceComm        205 1.0 1.1781e-01 11.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2255 1.0 4.9573e+00 2.7 1.36e+09 1.1 0.0e+00 0.0e+00 2.3e+03  1  0  0  0 20   1  0  0  0 25 54697
MatMult             3254 1.0 6.5713e+01 1.1 4.65e+10 1.1 3.7e+06 7.6e+04 0.0e+00 12  8 30 29  0  18 11 70 45  0 140317
MatSolve            2255 1.0 4.4272e+01 1.3 3.09e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  6  0  0  0  12  7  0  0  0 137856
MatLUFactorSym         1 1.0 3.0724e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       410 1.0 2.3083e+01 1.2 2.56e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   6  6  0  0  0 214395
MatILUFactorSym        1 1.0 5.6570e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1446 1.0 4.0696e+01 2.3 0.00e+00 0.0 2.3e+05 9.1e+05 1.0e+03  5  0  2 22  9   8  0  4 34 11    -0
MatAssemblyEnd      1446 1.0 1.2564e+01 5.4 1.42e+08 0.0 4.5e+03 9.5e+03 1.7e+01  1  0  0  0  0   2  0  0  0  0  1037
MatGetRowIJ            1 1.0 7.2570e-06 50.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.8916e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       410 1.0 3.3581e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 5.5123e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 5.9896e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        410 1.0 1.7708e+00 1.1 2.98e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 332641
MatPtAPSymbolic        1 1.0 1.5422e-01 1.0 0.00e+00 0.0 3.4e+03 1.3e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       205 1.0 1.6147e+01 1.0 1.19e+10 1.1 2.3e+05 2.2e+05 2.1e+02  3  2  2  5  2   5  3  4  8  2 145938
MatGetLocalMat       205 1.0 8.0023e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        205 1.0 5.5389e-01 2.2 0.00e+00 0.0 2.3e+05 2.3e+05 0.0e+00  0  0  2  6  0   0  0  4  9  0    -0
PCSetUp              205 1.0 1.3757e+02 1.0 1.09e+11 1.1 2.5e+06 8.9e+04 4.8e+03 26 19 21 24 43  39 25 49 37 52 156121
PCApply              999 1.0 1.8000e+02 1.1 1.18e+11 1.1 7.0e+06 4.8e+04 2.0e+03 33 21 57 36 18 Multiple stages 129751
PCApplyOnBlocks     2255 1.0 4.4294e+01 1.3 3.09e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8  6  0  0  0  12  7  0  0  0 137788
KSPSetUp             205 1.0 6.8570e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             205 1.0 2.0303e+02 1.0 1.36e+11 1.1 8.2e+06 5.2e+04 4.2e+03 39 24 67 45 38 Multiple stages 132549
KSPGMRESOrthog      3049 1.0 2.8719e+01 2.1 1.15e+10 1.1 0.0e+00 0.0e+00 3.0e+03  4  2  0  0 27   6  3  0  0 33 79785
DMPlexCreateGmsh       1 1.0 5.4070e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.1521e+00 94.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         2 1.0 1.3660e-01 1.0 0.00e+00 0.0 1.4e+04 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.5037e-02 1.0 0.00e+00 0.0 5.0e+04 2.0e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 8.1384e-03 3114.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.7637e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.4874e-03 1.3 0.00e+00 0.0 2.7e+03 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.2139e-03 2.4 0.00e+00 0.0 1.3e+03 6.0e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 4.1900e-03 1.6 0.00e+00 0.0 1.5e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.7255e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.5632e-01 1.0 0.00e+00 0.0 8.6e+03 1.2e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.9794e-03 1.1 0.00e+00 0.0 8.0e+03 3.8e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.3488e-02 1.0 0.00e+00 0.0 2.6e+04 2.1e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 9.2724e-03 1.0 0.00e+00 0.0 5.7e+04 6.9e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 4.4199e-03 1.3 0.00e+00 0.0 1.2e+04 8.3e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.1572e-02 16.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9873e-03 123.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 4.6576e+02 1.0 5.66e+11 1.1 1.2e+07 7.8e+04 1.1e+04 89 100 99 100 96 Multiple stages 237537
SNESSetUp              1 1.0 4.5892e-05 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     280 1.0 2.0511e+01 1.1 1.27e+11 1.2 7.1e+05 7.6e+04 0.0e+00  4 22  6  6  0   6 28 14  9  0 1183523
SNESJacobianEval     205 1.0 9.9849e+01 1.0 1.94e+11 1.2 4.6e+05 4.9e+05 8.2e+02 19 34  4 24  7  29 43  9 37  9 373490
SNESLineSearch       205 1.0 1.2329e+01 1.0 9.62e+10 1.2 6.9e+05 7.6e+04 8.2e+02  2 17  6  5  7   4 21 13  9  9 1496072
firedrake              1 1.0 5.2332e+02 1.0 5.66e+11 1.1 1.2e+07 7.7e+04 1.1e+04 100 100 100 100 100 Multiple stages 211422
firedrake.__init__       1 1.0 1.0801e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             1 1.0 5.3512e+00 21.1 0.00e+00 0.0 1.2e+05 1.6e+02 2.0e+02  1  0  1  0  2   1  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 5.1528e+00 94.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.0123e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.9390e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.9325e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 8.5998e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 1.4735e-01 7.6 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.4466e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 1.4585e-01 8.1 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 1.4460e-01 8.6 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 1.4453e-01 8.6 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 8.5889e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.1747e-03 1.7 0.00e+00 0.0 2.3e+03 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.9812e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.5555e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.7386e-02 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.6186e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.6341e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8853e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.7789e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.5738e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 7.7825e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2232 1.0 9.9427e+01 1.2 3.21e+11 1.2 6.5e+05 7.4e+04 1.5e+01 17 56  5  5  0  26 71 12  8  0 619143
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.2390e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4464 1.0 2.3797e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0520e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.2553e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.7368e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3142e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3141e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.6498e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.4685e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2232 1.0 6.3218e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2232 1.0 6.1695e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 6.9851e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8252e+00 1.0 3.41e+07 1.1 2.0e+04 3.2e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0  1404
firedrake.interpolation.interpolate      11 1.0 4.0292e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.8845e+00 1.0 3.53e+07 1.1 2.3e+04 2.9e+04 3.4e+01  1  0  0  0  0   2  0  0  0  0  1192
firedrake.formmanipulation.split_form      12 1.0 5.8880e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.9841e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5730e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 9.9313e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     574 1.0 2.6308e-01 2.4 0.00e+00 0.0 6.5e+05 7.4e+04 2.0e+00  0  0  5  5  0   0  0 12  8  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.4368e+00 1.0 3.53e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0  1290
firedrake.halo.Halo.global_to_local_end     574 1.0 7.3730e+00 90.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 8.2624e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.5019e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.4888e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.3050e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.3264e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4164e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9366e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1619e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9594e+00 1.0 0.00e+00 0.0 6.8e+03 3.1e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.0662e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.3071e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9943e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9943e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 1.9458e+00 1.2 0.00e+00 0.0 5.6e+03 1.8e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 2.6746e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 4.6590e+02 1.0 5.66e+11 1.1 1.2e+07 7.8e+04 1.1e+04 89 100 99 100 97 Multiple stages 237463
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2175e-01 990.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.7290e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2171e-01 1158.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2168e-01 1300.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     560 1.0 4.6852e+00 1.3 3.21e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 1361727
Parloop_Cells_wrap_form0_exterior_facet_top_integral     560 1.0 1.0027e+00 1.0 4.17e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   827
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     560 1.0 1.2396e+00 1.0 3.03e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9135
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     560 1.0 3.4767e+00 1.1 3.08e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 1762487
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     560 1.0 6.8160e+00 1.3 6.44e+10 1.3 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 13  0  0  0 1724331
firedrake.halo.Halo.local_to_global_begin     280 1.0 4.4763e-02 2.2 0.00e+00 0.0 3.1e+05 7.6e+04 0.0e+00  0  0  3  2  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     280 1.0 1.3480e+00 38.6 1.97e+07 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2201
Parloop_Cells_wrap_form00_cell_integral     410 1.0 1.5334e+01 1.4 4.38e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   4 10  0  0  0 568447
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     410 1.0 1.5189e+00 1.4 2.26e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  5558
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     410 1.0 1.7852e+01 1.2 5.80e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 13  0  0  0 645957
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     410 1.0 4.1350e+01 1.5 9.33e+10 1.3 0.0e+00 0.0e+00 0.0e+00  6 15  0  0  0  10 20  0  0  0 411684
firedrake.dmhooks.get_function_space       1 1.0 1.0907e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.4932e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      205 1.0 7.4604e+00 1.0 7.27e+07 25.4 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   252
MGSetup Level 1      205 1.0 1.1278e+02 1.0 9.68e+10 1.1 2.3e+06 7.6e+04 4.3e+03 21 17 19 18 39  32 22 44 28 47 169526
firedrake.constant.Constant.assign      75 1.0 3.2903e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        205 1.0 3.2052e-02 3.3 0.00e+00 0.0 2.6e+05 4.0e+00 2.0e+02  0  0  2  0  2   0  0  4  0 10    -0
SFSetGraph           205 1.0 4.3481e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              205 1.0 3.9553e-02 2.0 0.00e+00 0.0 5.2e+05 1.1e+02 2.0e+02  0  0  4  0  2   0  0  7  0 10    -0
SFPack              6993 1.0 8.2747e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            6993 1.0 3.6905e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2997 1.0 1.1772e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              3995 1.0 3.7475e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             5994 1.0 2.9199e+00 1.6 1.61e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 109705
VecAXPBYCZ          1998 1.0 1.3941e+00 1.3 2.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 287215
VecScatterBegin     6993 1.0 1.0054e+00 2.2 0.00e+00 0.0 5.7e+06 5.9e+04 0.0e+00  0  0 47 36  0   0  0 82 100  0    -0
VecScatterEnd       6993 1.0 1.7580e+01 6.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
MatMult             3996 1.0 8.9354e+01 1.3 5.71e+10 1.1 4.5e+06 7.6e+04 0.0e+00 15 10 37 36  0  45 48 64 100  0 126722
MatMultAdd           999 1.0 2.4826e+00 1.3 1.21e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 96770
MatMultTranspose     999 1.0 1.4842e+00 1.5 1.21e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 161869
MatSolve            4995 1.0 9.7961e+01 1.3 5.52e+10 1.1 2.6e+06 2.7e+02 1.0e+03 17 10 21  0  9  50 46 36  0 51 110568
MatResidual          999 1.0 2.3974e+01 1.4 1.45e+10 1.1 1.1e+06 7.6e+04 0.0e+00  4  3  9  9  0  12 12 16 25  0 119746
PCSetUpOnBlocks     1998 1.0 1.7897e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             4995 1.0 9.8036e+01 1.3 5.52e+10 1.1 2.6e+06 2.7e+02 1.0e+03 17 10 21  0  9  50 46 36  0 51 110483
PCApplyOnBlocks     3996 1.0 8.6867e+01 1.4 5.47e+10 1.1 0.0e+00 0.0e+00 0.0e+00 14 10  0  0  0  43 46  0  0  0 124503
KSPSolve            2997 1.0 1.5793e+02 1.1 1.01e+11 1.1 5.9e+06 4.3e+04 2.0e+03 29 18 48 27 18  86 86 84 75 100 126667
MGSmooth Level 0     999 1.0 1.6671e+01 1.6 6.68e+08 34.2 2.6e+06 2.7e+02 2.0e+03  2  0 21  0 18   7  0 36  0 100   965
MGSmooth Level 1    1998 1.0 1.4677e+02 1.2 1.01e+11 1.1 3.4e+06 7.6e+04 0.0e+00 26 18 27 27  0  79 86 48 75  0 136191
MGResid Level 1      999 1.0 2.3978e+01 1.4 1.45e+10 1.1 1.1e+06 7.6e+04 0.0e+00  4  3  9  9  0  12 12 16 25  0 119727
MGInterp Level 1    1998 1.0 3.8650e+00 1.3 2.42e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 124316
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set   811            811
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            287
              Vector   929            929
              Matrix    24             24
      Preconditioner     6              6
       Krylov Solver     5              5
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    16             16
            DM Label    51             51
    GraphPartitioner     4              4
     Discrete System    24             24
           Weak Form    24             24

--- Event Stage 1: MG Apply

           Index Set   410            410
   Star Forest Graph   205              0
              Vector   205            205
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 9.9766e-06
Average time for zero size MPI_Send(): 2.02366e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/vlumping_inexact/sweep.profile # (source: code)
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

