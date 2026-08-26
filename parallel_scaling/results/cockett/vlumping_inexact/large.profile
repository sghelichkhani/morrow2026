****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0547.gadi.nci.org.au with 416 processes, by sg8812 on Tue Aug 25 22:20:04 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.217e+02     1.000   9.217e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                7.382e+11     1.148   6.915e+11  2.877e+14
Flops/sec:            8.009e+08     1.148   7.503e+08  3.121e+11
MPI Msg Count:        1.490e+05     3.820   9.544e+04  3.970e+07
MPI Msg Len (bytes):  1.180e+10     2.762   8.677e+04  3.445e+12
MPI Reductions:       1.100e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.6697e+02  39.8%  1.3103e+14  45.5%  9.523e+06  24.0%  1.159e+05       32.0%  8.108e+03  73.7%
 1:        MG Apply: 5.5470e+02  60.2%  1.5665e+14  54.5%  3.018e+07  76.0%  7.758e+04       68.0%  2.868e+03  26.1%

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

BuildTwoSided        501 1.0 1.9955e+01 7.0 0.00e+00 0.0 1.6e+05 4.0e+00 5.0e+02  1  0  0  0  5   3  0  2  0  6    -0
BuildTwoSidedF       461 1.0 1.9772e+01 7.1 0.00e+00 0.0 2.2e+05 4.6e+05 4.6e+02  1  0  1  3  4   3  0  2  9  6    -0
SFSetGraph            43 1.0 5.4066e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 2.9938e-01 6.3 0.00e+00 0.0 1.1e+05 2.6e+03 4.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         340 1.0 1.6345e-01 3.2 0.00e+00 0.0 7.1e+05 8.2e+04 0.0e+00  0  0  2  2  0   0  0  8  5  0    -0
SFBcastEnd           340 1.0 8.5609e+00 97.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 3.2895e-02 4.3 0.00e+00 0.0 3.1e+05 9.5e+04 0.0e+00  0  0  1  1  0   0  0  3  3  0    -0
SFReduceEnd          134 1.0 2.9634e+00 124.7 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1236
SFFetchOpBegin         2 1.0 1.6859e-05 5.6 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 9.7670e-04 52.2 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.8510e-03 2.9 0.00e+00 0.0 2.8e+03 8.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.4999e-02 1.3 0.00e+00 0.0 9.4e+04 2.0e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 5.7489e-03 4.7 0.00e+00 0.0 4.1e+04 1.1e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              3890 1.0 1.1673e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3892 1.0 6.7081e-02 4.6 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 54623
VecDot                91 1.0 3.0589e-01 13.1 3.34e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 43340
VecMDot             3323 1.0 3.2815e+01 3.4 1.41e+10 1.1 0.0e+00 0.0e+00 3.3e+03  2  2  0  0 30   6  4  0  0 41 170677
VecNorm             3717 1.0 7.3983e+00 2.6 1.37e+09 1.1 0.0e+00 0.0e+00 3.7e+03  1  0  0  0 34   1  0  0  0 46 73194
VecScale            3505 1.0 1.5991e-01 1.2 6.44e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1596573
VecCopy              727 1.0 4.7197e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               364 1.0 1.2821e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              182 1.0 8.1616e-02 1.7 6.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 324874
VecWAXPY              91 1.0 7.0017e-02 1.2 1.67e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 94673
VecMAXPY            3505 1.0 1.5242e+01 1.1 1.54e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 399207
VecScatterBegin     3414 1.0 1.1909e+00 2.5 0.00e+00 0.0 8.0e+06 1.0e+05 0.0e+00  0  0 20 24  0   0  0 84 75  0    -0
VecScatterEnd       3414 1.0 1.6738e+01 34.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       182 1.0 3.4415e-02 2.4 6.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 770434
VecReduceComm         91 1.0 8.9418e-02 16.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        1001 1.0 2.7602e+00 3.6 5.52e+08 1.1 0.0e+00 0.0e+00 1.0e+03  0  0  0  0  9   0  0  0  0 12 79249
MatMult             3414 1.0 9.5085e+01 1.2 6.96e+10 1.1 8.0e+06 1.0e+05 0.0e+00 10 10 20 24  0  24 21 84 75  0 289101
MatSolve            1001 1.0 2.3791e+01 1.1 1.91e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   6  6  0  0  0 317356
MatLUFactorSym         1 1.0 5.9415e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       182 1.0 2.8223e+01 1.1 2.01e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   7  6  0  0  0 274235
MatILUFactorSym        1 1.0 1.0901e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     648 1.0 1.9942e+01 4.9 0.00e+00 0.0 2.2e+05 4.6e+05 4.6e+02  1  0  1  3  4   3  0  2  9  6    -0
MatAssemblyEnd       648 1.0 2.8990e+00 7.0 3.42e+07 0.0 9.3e+03 1.3e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  1974
MatGetRowIJ            1 1.0 2.8800e-06 24.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.5940e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.3136e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.9412e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2258e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.3166e+00 1.1 2.68e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 802401
MatPtAPSymbolic        1 1.0 1.8055e-01 1.0 0.00e+00 0.0 7.0e+03 2.3e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 8.0047e+00 1.0 1.02e+10 1.1 2.1e+05 4.1e+05 9.6e+01  1  1  1  3  1   2  3  2  8  1 501469
MatGetLocalMat        91 1.0 3.9694e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 3.8719e-01 1.9 0.00e+00 0.0 2.2e+05 4.1e+05 0.0e+00  0  0  1  3  0   0  0  2  8  0    -0
PCSetUp               91 1.0 8.9859e+01 1.0 7.25e+10 1.1 2.3e+06 1.3e+05 2.1e+03 10 10  6  9 19  24 22 25 28 26 316660
PCApply             2413 1.0 5.6511e+02 1.0 3.98e+11 1.1 3.0e+07 7.8e+04 2.9e+03 60 54 76 68 26 Multiple stages 277202
PCApplyOnBlocks     1001 1.0 2.3803e+01 1.1 1.91e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   6  6  0  0  0 317196
KSPSetUp              91 1.0 1.4266e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 6.4924e+02 1.0 4.74e+11 1.1 3.6e+07 8.2e+04 7.8e+03 70 65 90 85 71 Multiple stages 287616
KSPGMRESOrthog      3323 1.0 4.5990e+01 2.0 2.83e+10 1.1 0.0e+00 0.0e+00 3.3e+03  4  4  0  0 30   9  9  0  0 41 243565
Mesh Partition         2 1.0 3.2151e-01 1.0 0.00e+00 0.0 2.9e+04 1.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.6531e-02 1.0 0.00e+00 0.0 9.7e+04 2.5e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.5654e-02 4350.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 3.1491e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.2022e-03 1.4 0.00e+00 0.0 5.6e+03 1.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.8912e-03 1.9 0.00e+00 0.0 2.8e+03 7.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 7.6226e-03 1.2 0.00e+00 0.0 3.2e+03 1.2e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 3.6338e-01 1.0 0.00e+00 0.0 1.6e+04 1.4e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 4.9181e-03 1.1 0.00e+00 0.0 1.7e+04 4.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.0660e-02 1.0 0.00e+00 0.0 4.6e+04 2.8e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 1.2870e-02 1.1 0.00e+00 0.0 1.1e+05 1.0e+02 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 6.3651e-03 1.2 0.00e+00 0.0 2.5e+04 1.2e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.3701e-04 1.2 0.00e+00 0.0 1.2e+04 6.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 9.9766e-03 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 3.4505e-03 193.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.3296e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 8.8821e+02 1.0 7.38e+11 1.1 3.9e+07 8.7e+04 1.1e+04 96 100 99 100 97 Multiple stages 323888
SNESSetUp              1 1.0 3.6439e-05 5.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4558e+01 1.1 7.91e+10 1.3 6.4e+05 1.0e+05 1.0e+00  5 10  2  2  0  12 22  7  6  0 660564
SNESJacobianEval      91 1.0 1.0083e+02 1.0 1.14e+11 1.3 4.2e+05 2.7e+05 3.6e+02 11 15  1  3  3  27 32  4 10  4 419045
SNESLineSearch        91 1.0 2.3955e+01 1.0 6.16e+10 1.2 6.4e+05 1.0e+05 3.6e+02  3  8  2  2  3   7 18  7  6  4 957706
firedrake              1 1.0 9.1885e+02 1.0 7.38e+11 1.1 4.0e+07 8.7e+04 1.1e+04 100 100 100 100 100 Multiple stages 313088
firedrake.__init__       1 1.0 1.5809e+01 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.0433e+01 22.4 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  1  0  2   1  0  3  0  2    -0
CreateMesh             1 1.0 4.5159e-01 1.0 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  1  0  2   0  0  3  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.4984e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.0320e-06 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.7443e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.4910e-04 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 3.4117e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 7.7986e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 3.2858e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 3.1916e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 3.1859e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.4082e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.4591e-02 1.7 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.6429e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.1361e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 6.6515e-02 9.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.8811e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.1811e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.7159e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.2747e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.8770e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 3.8893e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3750e+02 1.2 1.93e+11 1.3 5.8e+05 1.0e+05 6.0e+00 14 25  1  2  0  35 55  6  5  0 521298
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.8455e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.3267e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 1.9210e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 1.7156e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.7040e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.4057e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.4056e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 9.4429e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 9.3128e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 3.3808e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.7195e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.0315e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.8265e-01 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1112
firedrake.interpolation.interpolate       2 1.0 6.2677e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 1.9771e+00 1.0 4.32e+06 1.1 1.4e+04 1.2e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   866
firedrake.formmanipulation.split_form       3 1.0 2.6720e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.4158e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 7.9971e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.9013e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.3753e-01 3.9 0.00e+00 0.0 5.8e+05 1.0e+05 2.0e+00  0  0  1  2  0   0  0  6  5  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.7844e+00 1.0 4.32e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   959
firedrake.halo.Halo.global_to_local_end     243 1.0 8.2152e+00 261.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.1523e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.8811e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2878e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.4122e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.5547e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.8600e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3147e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.2624e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.5806e+00 1.0 0.00e+00 0.0 1.4e+04 5.7e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9208e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2584e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1576e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1576e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         2 1.0 2.7600e+00 1.3 0.00e+00 0.0 1.2e+04 3.4e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.6124e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 8.8828e+02 1.0 7.38e+11 1.1 3.9e+07 8.7e+04 1.1e+04 96 100 99 100 98 Multiple stages 323864
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.3182e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.6890e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 7.8583e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.6192e+00 1.2 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 789704
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9487e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  7590
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9324e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  7654
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0685e+01 1.2 1.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   3  5  0  0  0 654479
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7216e+01 1.3 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   4 12  0  0  0 906184
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.6573e-02 3.4 0.00e+00 0.0 2.8e+05 1.0e+05 0.0e+00  0  0  1  1  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.9646e+00 118.5 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1236
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5759e+01 1.1 2.35e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   4  7  0  0  0 591721
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.2203e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  6086
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.2024e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  6135
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8500e+01 1.2 2.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   7  8  0  0  0 344867
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5220e+01 1.4 6.54e+10 1.4 0.0e+00 0.0e+00 0.0e+00  4  8  0  0  0  11 18  0  0  0 510039
firedrake.dmhooks.get_function_space       1 1.0 1.3166e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 6.8980e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 1.8508e+01 1.0 1.60e+08 51.9 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   5  0  0  0  0   232
MGSetup Level 1       91 1.0 6.2182e+01 1.0 6.24e+10 1.1 2.1e+06 1.0e+05 1.9e+03  7  8  5  6 17  17 19 22 20 24 392973

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 2.5261e-02 4.0 0.00e+00 0.0 2.4e+05 4.0e+00 9.1e+01  0  0  1  0  1   0  0  1  0  3    -0
SFSetGraph            91 1.0 2.1201e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 3.1839e-02 3.7 0.00e+00 0.0 4.9e+05 1.1e+02 9.1e+01  0  0  1  0  1   0  0  2  0  3    -0
SFPack             16891 1.0 3.2640e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           16891 1.0 1.1007e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             7239 1.0 2.3803e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              9651 1.0 8.0101e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            14478 1.0 7.4447e+00 1.9 3.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 188881
VecAXPBYCZ          4826 1.0 3.2775e+00 1.3 4.43e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 536300
VecScatterBegin    16891 1.0 3.6901e+00 2.6 0.00e+00 0.0 2.9e+07 8.1e+04 0.0e+00  0  0 73 68  0   0  0 96 100  0    -0
VecScatterEnd      16891 1.0 4.4042e+01 32.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult             9652 1.0 2.7256e+02 1.2 1.97e+11 1.1 2.2e+07 1.0e+05 0.0e+00 27 27 57 68  0  45 50 75 100  0 285134
MatMultAdd          2413 1.0 6.7714e+00 1.2 3.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 207661
MatMultTranspose    2413 1.0 5.1455e+00 2.5 3.55e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 273281
MatSolve           12065 1.0 3.0360e+02 1.2 1.86e+11 1.1 7.7e+06 3.9e+02 4.6e+02 31 25 19  0  4  51 47 25  0 16 240303
MatResidual         2413 1.0 6.9327e+01 1.2 4.96e+10 1.1 5.6e+06 1.0e+05 0.0e+00  7  7 14 17  0  11 13 19 25  0 282790
PCSetUpOnBlocks     4826 1.0 4.2275e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            12065 1.0 3.0377e+02 1.2 1.86e+11 1.1 7.7e+06 3.9e+02 4.6e+02 31 25 19  0  4  51 47 25  0 16 240169
PCApplyOnBlocks     9652 1.0 2.4356e+02 1.2 1.84e+11 1.1 0.0e+00 0.0e+00 0.0e+00 24 25  0  0  0  41 46  0  0  0 298911
KSPSolve            7239 1.0 4.9318e+02 1.1 3.41e+11 1.1 2.5e+07 7.2e+04 2.9e+03 52 47 62 51 26  87 86 81 75 100 272176
MGSmooth Level 0    2413 1.0 6.8729e+01 1.3 6.31e+09 66.6 7.7e+06 3.9e+02 2.9e+03  6  0 19  0 26  11  0 25  0 100  2243
MGSmooth Level 1    4826 1.0 4.4108e+02 1.1 3.39e+11 1.1 1.7e+07 1.0e+05 0.0e+00 46 47 42 51  0  76 86 56 75  0 303977
MGResid Level 1     2413 1.0 6.9335e+01 1.2 4.96e+10 1.1 5.6e+06 1.0e+05 0.0e+00  7  7 14 17  0  11 13 19 25  0 282758
MGInterp Level 1    4826 1.0 1.1530e+01 1.4 7.09e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 243910
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
           Index Set  1416           1416
   IS L to G Mapping     5              5
             Section    76             76
   Star Forest Graph    78            169
              Vector   484            484
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
Average time to get PetscTime(): 2.55e-08
Average time for MPI_Barrier(): 1.17836e-05
Average time for zero size MPI_Send(): 2.14598e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_inexact/large.profile # (source: environment)
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

