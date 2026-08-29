****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0576.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 17:02:19 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           6.708e+02     1.000   6.708e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.832e+11     1.127   5.516e+11  5.737e+13
Flops/sec:            8.694e+08     1.127   8.223e+08  8.552e+10
MPI Msg Count:        9.892e+04     2.352   6.863e+04  7.137e+06
MPI Msg Len (bytes):  6.112e+09     2.333   7.024e+04  5.014e+11
MPI Reductions:       7.815e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.6594e+02  39.6%  2.4663e+13  43.0%  1.465e+06  20.5%  1.004e+05       29.3%  5.416e+03  69.3%
 1:        MG Apply: 4.0484e+02  60.4%  3.2703e+13  57.0%  5.673e+06  79.5%  6.247e+04       70.7%  2.380e+03  30.5%

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

BuildTwoSided        501 1.0 1.3895e+01 8.1 0.00e+00 0.0 3.8e+04 4.0e+00 5.0e+02  1  0  1  0  6   3  0  3  0  9    -0
BuildTwoSidedF       461 1.0 1.3783e+01 7.5 0.00e+00 0.0 5.0e+04 3.7e+05 4.6e+02  1  0  1  4  6   3  0  3 13  9    -0
SFSetGraph            43 1.0 4.1351e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 2.0027e-01 6.4 0.00e+00 0.0 2.5e+04 2.1e+03 4.0e+01  0  0  0  0  1   0  0  2  0  1    -0
SFBcastBegin         340 1.0 9.6873e-02 3.5 0.00e+00 0.0 1.6e+05 6.8e+04 0.0e+00  0  0  2  2  0   0  0 11  8  0    -0
SFBcastEnd           340 1.0 6.2158e+00 122.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.3945e-02 3.0 0.00e+00 0.0 7.0e+04 7.9e+04 0.0e+00  0  0  1  1  0   0  0  5  4  0    -0
SFReduceEnd          134 1.0 3.2950e+00 120.0 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   211
SFFetchOpBegin         2 1.0 1.7442e-05 6.3 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.1735e-04 12.4 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 8.9167e-04 1.5 0.00e+00 0.0 6.5e+02 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 8.5550e-03 1.3 0.00e+00 0.0 2.2e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 3.6160e-03 3.4 0.00e+00 0.0 1.0e+04 1.5e+02 2.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFPack              2542 1.0 5.3955e-01 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2544 1.0 4.3655e-02 4.7 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15902
VecDot                91 1.0 2.5446e-01 9.6 3.29e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  2 12854
VecMDot             1975 1.0 1.7713e+01 3.3 7.93e+09 1.1 0.0e+00 0.0e+00 2.0e+03  2  1  0  0 25   4  3  0  0 36 44470
VecNorm             2374 1.0 3.3232e+00 5.4 8.59e+08 1.1 0.0e+00 0.0e+00 2.4e+03  0  0  0  0 30   1  0  0  0 44 25676
VecScale            2069 1.0 8.9623e-02 1.2 3.74e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 414876
VecCopy              639 1.0 4.0782e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               186 1.0 6.4480e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               94 1.0 4.1110e-02 1.5 3.40e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 82184
VecWAXPY              91 1.0 6.8437e-02 1.2 1.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23896
VecMAXPY            2069 1.0 8.5895e+00 1.1 8.65e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  3  0  0  0 99971
VecScatterBegin     2066 1.0 5.0844e-01 3.2 0.00e+00 0.0 1.1e+06 8.6e+04 0.0e+00  0  0 15 19  0   0  0 75 64  0    -0
VecScatterEnd       2066 1.0 8.7758e+00 18.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom           2 1.0 3.2427e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.0184e-02 2.0 6.59e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 216721
VecReduceComm         91 1.0 7.1431e-02 35.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize          53 1.0 8.2546e-02 4.5 2.88e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  1   0  0  0  0  1 34616
MatMult             2066 1.0 5.5251e+01 1.1 4.14e+10 1.1 1.1e+06 8.6e+04 0.0e+00  8  7 15 19  0  19 17 75 64  0 74096
MatSolve              53 1.0 1.2823e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 77983
MatLUFactorSym         1 1.0 4.5693e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum        93 1.0 3.9212e+00 1.0 4.59e+08 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 11245
MatILUFactorSym        1 1.0 9.9705e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     648 1.0 1.3960e+01 5.0 0.00e+00 0.0 5.0e+04 3.7e+05 4.6e+02  1  0  1  4  6   3  0  3 13  9    -0
MatAssemblyEnd       648 1.0 2.1247e+00 7.2 2.24e+07 0.0 2.1e+03 1.1e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0   504
MatGetRowIJ            1 1.0 1.3830e-06 10.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.3724e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.0327e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.0972e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.1859e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.2845e+00 1.2 2.64e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 202435
MatPtAPSymbolic        1 1.0 1.6492e-01 1.0 0.00e+00 0.0 1.6e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.4819e+00 1.0 1.00e+10 1.1 4.9e+04 3.4e+05 9.6e+01  1  2  1  3  1   3  4  3 11  2 132044
MatGetLocalMat        91 1.0 3.9435e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 2.9608e-01 1.9 0.00e+00 0.0 5.0e+04 3.4e+05 0.0e+00  0  0  1  3  0   0  0  3 11  0    -0
PCSetUp               91 1.0 1.6494e+01 1.0 1.29e+10 1.1 7.9e+04 2.4e+05 4.2e+02  2  2  1  4  5   6  5  5 13  8 77210
PCApply             1925 1.0 4.1094e+02 1.0 3.31e+11 1.1 5.7e+06 6.2e+04 2.4e+03 60 57 79 71 30 Multiple stages 79581
PCApplyOnBlocks       53 1.0 1.2829e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 77945
KSPSetUp              91 1.0 1.3136e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 4.7260e+02 1.0 3.86e+11 1.1 6.7e+06 6.6e+04 6.3e+03 70 67 94 88 81 Multiple stages 80913
KSPGMRESOrthog      1975 1.0 2.5240e+01 1.9 1.59e+10 1.1 0.0e+00 0.0e+00 2.0e+03  3  3  0  0 25   7  6  0  0 36 62418
Mesh Partition         2 1.0 7.5685e-02 1.0 0.00e+00 0.0 6.8e+03 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.3500e-02 1.1 0.00e+00 0.0 2.3e+04 3.7e+02 1.1e+02  0  0  0  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 5.9455e-03 2275.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.0044e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 3.0932e-03 1.1 0.00e+00 0.0 1.3e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.7092e-03 1.7 0.00e+00 0.0 6.5e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.6343e-03 1.6 0.00e+00 0.0 7.6e+02 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.7490e-02 1.0 0.00e+00 0.0 4.2e+03 2.1e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.6916e-03 1.0 0.00e+00 0.0 3.9e+03 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.4263e-02 1.0 0.00e+00 0.0 1.1e+04 3.9e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 4.7423e-03 1.1 0.00e+00 0.0 2.7e+04 1.3e+02 8.0e+01  0  0  0  0  1   0  0  2  0  1    -0
DMPlexDistField        3 1.0 3.0467e-03 1.2 0.00e+00 0.0 5.9e+03 1.8e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 9.0505e-05 1.1 0.00e+00 0.0 2.7e+03 8.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 4.0158e-03 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 1.3431e-03 52.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.1374e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 6.3106e+02 1.0 5.83e+11 1.1 7.1e+06 7.1e+04 7.5e+03 94 100 99 100 96 Multiple stages 90904
SNESSetUp              1 1.0 3.0216e-05 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.3711e+01 1.1 7.57e+10 1.2 1.5e+05 8.5e+04 1.0e+00  6 13  2  2  0  16 29 10  9  0 165849
SNESJacobianEval      91 1.0 9.5411e+01 1.0 1.09e+11 1.2 9.7e+04 2.2e+05 3.6e+02 14 18  1  4  5  36 42  7 14  7 109043
SNESLineSearch        91 1.0 2.2534e+01 1.0 5.89e+10 1.2 1.5e+05 8.6e+04 3.6e+02  3 10  2  2  5   8 23 10  9  7 250745
firedrake              1 1.0 6.6714e+02 1.0 5.83e+11 1.1 7.1e+06 7.0e+04 7.8e+03 99 100 100 100 100 Multiple stages 85988
firedrake.__init__       1 1.0 1.5147e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 2.9957e+00 18.5 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  2   1  0  4  0  4    -0
CreateMesh             1 1.0 1.4930e-01 1.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  2   0  0  4  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.6790e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 6.1465e-05 68.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.9043e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.0501e-04 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 2.9069e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 9.7866e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 2.8092e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 2.7239e-02 1.2 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 2.7201e-02 1.2 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.1819e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 4.6065e-03 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.2312e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 8.2797e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 1.1913e-02 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 7.3528e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   3  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.9487e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.9029e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.4190e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 7.3487e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   3  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 4.5729e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3987e+02 1.1 1.84e+11 1.2 1.3e+05 8.4e+04 6.0e+00 20 31  2  2  0  50 72  9  8  0 126202
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 7.3177e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 4.2603e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0  16  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.1260e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 2.4408e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.8482e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 2.1292e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
pyop2.compilation.load      13 1.0 2.1291e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 1.1863e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 1.1748e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 2.7520e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.8755e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.9671e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 3.5153e+00 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  1  0  0  0  0   1  0  0  0  0    77
firedrake.interpolation.interpolate       2 1.0 5.8665e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 4.5122e+00 1.0 4.25e+06 1.1 3.3e+03 1.0e+04 2.4e+01  1  0  0  0  0   2  0  0  0  0    94
firedrake.formmanipulation.split_form       3 1.0 3.1092e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.9353e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 5.5255e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.9018e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.4104e-01 3.3 0.00e+00 0.0 1.3e+05 8.4e+04 2.0e+00  0  0  2  2  0   0  0  9  8  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 4.3543e+00 1.0 4.25e+06 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    97
firedrake.halo.Halo.global_to_local_end     243 1.0 5.9605e+00 162.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.4290e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.1891e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.0691e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.9199e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.3054e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.0943e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.5460e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.4798e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.1848e+00 1.0 0.00e+00 0.0 3.2e+03 4.7e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9114e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.4887e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1233e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1233e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
CreateSparsity         2 1.0 2.5545e+00 1.3 0.00e+00 0.0 2.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   1  0  0  1  0    -0
MatZeroInitial         2 1.0 4.3637e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 6.3112e+02 1.0 5.83e+11 1.1 7.1e+06 7.1e+04 7.6e+03 94 100 99 100 97 Multiple stages 90895
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 8.6525e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.0896e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.1203e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1113e+00 1.1 1.69e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  7  0  0  0 207028
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0995e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2752
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0874e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2768
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0043e+01 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   4  7  0  0  0 171385
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6294e+01 1.2 4.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   6 16  0  0  0 235468
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.7314e-02 2.5 0.00e+00 0.0 6.5e+04 8.6e+04 0.0e+00  0  0  1  1  0   0  0  4  4  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.2961e+00 114.0 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   211
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5860e+01 1.1 2.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   6  9  0  0  0 145058
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4420e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2161
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3974e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2202
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7829e+01 1.1 2.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0  10 10  0  0  0 86926
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.1425e+01 1.3 6.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  6 10  0  0  0  14 23  0  0  0 136937
firedrake.dmhooks.get_function_space       1 1.0 1.0919e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.7078e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 4.1513e+00 1.0 6.76e+07 17.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   305
MGSetup Level 1       91 1.0 7.8798e-01 1.0 6.77e+08 1.1 5.3e+03 8.6e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0 84932

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 6.0889e-03 5.7 0.00e+00 0.0 6.0e+04 4.0e+00 9.1e+01  0  0  1  0  1   0  0  1  0  4    -0
SFSetGraph            91 1.0 3.1115e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 8.7404e-03 2.5 0.00e+00 0.0 1.2e+05 1.8e+02 9.1e+01  0  0  2  0  1   0  0  2  0  4    -0
SFPack             13475 1.0 1.6764e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           13475 1.0 7.9872e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1925 1.0 7.6385e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              7699 1.0 6.2676e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             7700 1.0 3.7032e+00 1.3 2.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 74735
VecAYPX             7700 1.0 3.8143e+00 2.6 1.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 36279
VecScatterBegin    13475 1.0 1.9804e+00 3.0 0.00e+00 0.0 5.4e+06 6.6e+04 0.0e+00  0  0 75 71  0   0  0 95 100  0    -0
VecScatterEnd      13475 1.0 2.7757e+01 18.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult             7700 1.0 2.0103e+02 1.1 1.54e+11 1.1 4.1e+06 8.6e+04 0.0e+00 29 27 58 70  0  47 47 72 100  0 75899
MatMultAdd          1925 1.0 5.0437e+00 1.2 2.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 54871
MatMultTranspose    1925 1.0 3.8399e+00 2.0 2.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 72075
MatSolve            9625 1.0 1.9915e+02 1.1 1.47e+11 1.1 1.6e+06 6.0e+02 4.6e+02 28 25 22  0  6  47 45 28  0 19 73163
MatLUFactorNum        89 1.0 1.0019e+01 1.3 1.94e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  6  0  0  0 190216
MatResidual         1925 1.0 5.2440e+01 1.2 3.89e+10 1.1 1.0e+06 8.6e+04 0.0e+00  7  7 14 18  0  12 12 18 25  0 73398
PCSetUpOnBlocks     3850 1.0 1.0046e+01 1.3 1.94e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  6  0  0  0 189705
PCApply             9625 1.0 1.9929e+02 1.1 1.47e+11 1.1 1.6e+06 6.0e+02 4.6e+02 28 25 22  0  6  47 45 28  0 19 73113
PCApplyOnBlocks     7700 1.0 1.8926e+02 1.1 1.47e+11 1.1 0.0e+00 0.0e+00 0.0e+00 27 25  0  0  0  44 44  0  0  0 76760
KSPSetUp               1 1.0 1.4019e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            5775 1.0 3.4661e+02 1.1 2.67e+11 1.1 4.6e+06 5.7e+04 2.4e+03 51 46 65 53 30  84 81 82 75 100 76150
MGSmooth Level 0    1925 1.0 1.9253e+01 2.8 2.09e+09 13.4 1.6e+06 6.0e+02 2.4e+03  2  0 22  0 30   3  0 28  0 100  2216
MGSmooth Level 1    3850 1.0 3.4737e+02 1.1 2.86e+11 1.1 3.1e+06 8.6e+04 0.0e+00 50 49 43 53  0  83 86 54 75  0 81346
MGResid Level 1     1925 1.0 5.2446e+01 1.2 3.89e+10 1.1 1.0e+06 8.6e+04 0.0e+00  7  7 14 18  0  12 12 18 25  0 73391
MGInterp Level 1    3850 1.0 8.7756e+00 1.3 5.57e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 63074
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set   480            480
   IS L to G Mapping     5              5
             Section    76             76
   Star Forest Graph    82            173
              Vector   359            358
              Matrix    24             24
      Preconditioner     6              6
       Krylov Solver     7              7
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
Average time to get PetscTime(): 2.65e-08
Average time for MPI_Barrier(): 3.6908e-06
Average time for zero size MPI_Send(): 2.12089e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping/sweep.profile # (source: environment)
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

