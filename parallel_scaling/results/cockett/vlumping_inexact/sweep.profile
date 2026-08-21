****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0184.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 23:47:20 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           6.354e+02     1.000   6.354e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.620e+11     1.128   5.313e+11  5.526e+13
Flops/sec:            8.845e+08     1.128   8.362e+08  8.697e+10
MPI Msg Count:        1.045e+05     2.870   6.336e+04  6.590e+06
MPI Msg Len (bytes):  5.705e+09     2.336   7.101e+04  4.679e+11
MPI Reductions:       8.579e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.0197e+02  47.5%  2.9356e+13  53.1%  1.755e+06  26.6%  9.799e+04       36.7%  6.497e+03  75.7%
 1:        MG Apply: 3.3340e+02  52.5%  2.5900e+13  46.9%  4.835e+06  73.4%  6.122e+04       63.3%  2.063e+03  24.0%

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

BuildTwoSided        501 1.0 1.6010e+01 5.2 0.00e+00 0.0 3.8e+04 4.0e+00 5.0e+02  1  0  1  0  6   3  0  2  0  8    -0
BuildTwoSidedF       461 1.0 1.5877e+01 5.4 0.00e+00 0.0 5.0e+04 3.7e+05 4.6e+02  1  0  1  4  5   3  0  3 11  7    -0
SFSetGraph            43 1.0 3.9998e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 2.5679e-01 8.0 0.00e+00 0.0 2.5e+04 2.1e+03 4.0e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         340 1.0 1.0481e-01 3.5 0.00e+00 0.0 1.6e+05 6.8e+04 0.0e+00  0  0  2  2  0   0  0  9  6  0    -0
SFBcastEnd           340 1.0 6.0206e+00 118.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.3575e-02 3.0 0.00e+00 0.0 7.0e+04 7.9e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
SFReduceEnd          134 1.0 3.3116e+00 119.3 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   210
SFFetchOpBegin         2 1.0 1.5146e-05 4.6 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.8734e-04 10.5 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 8.7333e-04 1.5 0.00e+00 0.0 6.5e+02 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 8.1868e-03 1.3 0.00e+00 0.0 2.2e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 3.3365e-03 3.2 0.00e+00 0.0 1.0e+04 1.5e+02 2.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFPack              3085 1.0 6.1295e-01 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3087 1.0 4.2407e-02 4.5 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16370
VecDot                91 1.0 2.5423e-01 10.9 3.29e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 12865
VecMDot             2518 1.0 1.8755e+01 4.0 7.27e+09 1.1 0.0e+00 0.0e+00 2.5e+03  2  1  0  0 29   4  2  0  0 39 38501
VecNorm             2912 1.0 5.4765e+00 3.2 1.05e+09 1.1 0.0e+00 0.0e+00 2.9e+03  0  0  0  0 34   1  0  0  0 45 19112
VecScale            2700 1.0 1.2204e-01 1.1 4.89e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 397593
VecCopy              727 1.0 4.4380e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               364 1.0 1.1839e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              182 1.0 7.7584e-02 1.4 6.59e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 84315
VecWAXPY              91 1.0 6.8200e-02 1.2 1.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23979
VecMAXPY            2700 1.0 8.3199e+00 1.1 8.18e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  3  0  0  0 97667
VecScatterBegin     2609 1.0 5.9590e-01 3.2 0.00e+00 0.0 1.4e+06 8.6e+04 0.0e+00  0  0 21 26  0   0  0 79 70  0    -0
VecScatterEnd       2609 1.0 8.4602e+00 15.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       182 1.0 3.8755e-02 2.3 6.59e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 168789
VecReduceComm         91 1.0 6.3738e-02 8.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        1001 1.0 2.3397e+00 5.1 5.43e+08 1.1 0.0e+00 0.0e+00 1.0e+03  0  0  0  0 12   0  0  0  0 15 23066
MatMult             2609 1.0 6.7661e+01 1.1 5.23e+10 1.1 1.4e+06 8.6e+04 0.0e+00 10  9 21 26  0  22 18 79 70  0 76407
MatSolve            1001 1.0 2.3855e+01 1.1 1.91e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  3  0  0  0   7  6  0  0  0 79170
MatLUFactorSym         1 1.0 3.8709e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       182 1.0 1.3236e+01 1.2 1.98e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   4  7  0  0  0 147323
MatILUFactorSym        1 1.0 9.7651e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     648 1.0 1.6051e+01 4.4 0.00e+00 0.0 5.0e+04 3.7e+05 4.6e+02  2  0  1  4  5   3  0  3 11  7    -0
MatAssemblyEnd       648 1.0 2.1123e+00 7.8 2.24e+07 0.0 2.1e+03 1.1e+04 1.7e+01  0  0  0  0  0   0  0  0  0  0   507
MatGetRowIJ            1 1.0 1.3420e-06 10.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.2864e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.0931e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 7.9831e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.1657e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.1981e+00 1.1 2.64e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 217023
MatPtAPSymbolic        1 1.0 1.5980e-01 1.0 0.00e+00 0.0 1.6e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.2079e+00 1.0 1.00e+10 1.1 4.9e+04 3.4e+05 9.6e+01  1  2  1  4  1   2  3  3 10  1 137065
MatGetLocalMat        91 1.0 3.7299e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 2.7772e-01 1.7 0.00e+00 0.0 5.0e+04 3.4e+05 0.0e+00  0  0  1  4  0   0  0  3 10  0    -0
PCSetUp               91 1.0 7.1990e+01 1.0 7.16e+10 1.1 5.4e+05 1.1e+05 2.1e+03 11 13  8 13 25  24 24 31 34 33 98342
PCApply             1608 1.0 3.3887e+02 1.0 2.62e+11 1.1 4.8e+06 6.1e+04 2.1e+03 52 47 73 63 24 Multiple stages 76430
PCApplyOnBlocks     1001 1.0 2.3865e+01 1.1 1.91e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  3  0  0  0   7  6  0  0  0 79136
KSPSetUp              91 1.0 1.4140e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 3.8894e+02 1.0 3.06e+11 1.1 5.7e+06 6.5e+04 5.4e+03 61 55 86 79 63 Multiple stages 77964
KSPGMRESOrthog      2518 1.0 2.5557e+01 2.1 1.45e+10 1.1 0.0e+00 0.0e+00 2.5e+03  3  3  0  0 29   6  5  0  0 39 56509
Mesh Partition         2 1.0 7.7206e-02 1.0 0.00e+00 0.0 6.8e+03 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.2742e-02 1.1 0.00e+00 0.0 2.3e+04 3.7e+02 1.1e+02  0  0  0  0  1   0  0  1  0  2    -0
DMPlexPartSelf         1 1.0 5.9658e-03 2374.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.0021e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.0761e-03 1.1 0.00e+00 0.0 1.3e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.1046e-03 2.0 0.00e+00 0.0 6.5e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.5043e-03 1.7 0.00e+00 0.0 7.6e+02 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.8422e-02 1.0 0.00e+00 0.0 4.2e+03 2.1e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.6412e-03 1.1 0.00e+00 0.0 3.9e+03 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.3791e-02 1.0 0.00e+00 0.0 1.1e+04 3.9e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 4.6575e-03 1.1 0.00e+00 0.0 2.7e+04 1.3e+02 8.0e+01  0  0  0  0  1   0  0  2  0  1    -0
DMPlexDistField        3 1.0 2.9941e-03 1.1 0.00e+00 0.0 5.9e+03 1.8e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 8.3285e-05 1.1 0.00e+00 0.0 2.7e+03 8.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 4.0020e-03 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 1.3293e-03 52.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 9.3729e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 6.0777e+02 1.0 5.62e+11 1.1 6.5e+06 7.1e+04 8.3e+03 96 100 99 100 96 Multiple stages 90915
SNESSetUp              1 1.0 4.1357e-05 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4856e+01 1.1 7.57e+10 1.2 1.5e+05 8.5e+04 1.0e+00  7 13  2  3  0  15 25  8  7  0 161615
SNESJacobianEval      91 1.0 9.8841e+01 1.0 1.09e+11 1.2 9.7e+04 2.2e+05 3.6e+02 16 19  1  5  4  33 35  6 12  6 105258
SNESLineSearch        91 1.0 2.2909e+01 1.0 5.89e+10 1.2 1.5e+05 8.6e+04 3.6e+02  4 10  2  3  4   8 19  8  7  6 246643
firedrake              1 1.0 6.3235e+02 1.0 5.62e+11 1.1 6.6e+06 7.1e+04 8.6e+03 100 100 100 100 100 Multiple stages 87382
firedrake.__init__       1 1.0 1.1940e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.1449e+00 32.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  2   1  0  3  0  3    -0
CreateMesh             1 1.0 1.5069e-01 1.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  2   0  0  3  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.2474e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.6530e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.9099e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.3140e-04 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 2.7629e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 7.0575e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 2.6595e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 2.5723e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 2.5673e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.2179e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 4.9187e-03 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.4565e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.2356e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 1.9438e-02 6.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.5904e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.6346e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5828e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.5073e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.5862e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 4.7267e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3513e+02 1.1 1.84e+11 1.2 1.3e+05 8.4e+04 6.0e+00 20 32  2  2  0  42 60  8  6  0 130632
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.5542e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.5262e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0  12  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.2544e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   7  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 2.4834e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.9664e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.2688e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.2687e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 8.5831e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 8.4541e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 2.8067e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.2969e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.9103e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.7457e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   277
firedrake.interpolation.interpolate       2 1.0 5.8293e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 1.9708e+00 1.0 4.25e+06 1.1 3.3e+03 1.0e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   214
firedrake.formmanipulation.split_form       3 1.0 2.9133e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.0043e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 5.8362e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.9293e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.0318e-01 5.4 0.00e+00 0.0 1.3e+05 8.4e+04 2.0e+00  0  0  2  2  0   0  0  8  6  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.8041e+00 1.0 4.25e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   234
firedrake.halo.Halo.global_to_local_end     243 1.0 5.9897e+00 164.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.5036e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.2777e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6944e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.1577e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.6679e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.7401e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2507e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.1467e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.2351e+00 1.0 0.00e+00 0.0 3.2e+03 4.7e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.8865e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.9551e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1503e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1503e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
CreateSparsity         2 1.0 2.4168e+00 1.2 0.00e+00 0.0 2.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.3286e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 6.0784e+02 1.0 5.62e+11 1.1 6.5e+06 7.1e+04 8.3e+03 96 100 99 100 97 Multiple stages 90905
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.2630e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1784e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.0783e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.2107e+00 1.2 1.69e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  6  0  0  0 182316
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1561e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2680
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.1335e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2708
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0183e+01 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   3  6  0  0  0 169026
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6689e+01 1.2 4.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   5 13  0  0  0 229895
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.6814e-02 2.5 0.00e+00 0.0 6.5e+04 8.6e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.3125e+00 112.9 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   210
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5995e+01 1.1 2.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   5  8  0  0  0 143831
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4914e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2119
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.4522e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2152
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8653e+01 1.1 2.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   9  8  0  0  0 84425
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.4875e+01 1.4 6.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  6 10  0  0  0  12 19  0  0  0 126411
firedrake.dmhooks.get_function_space       1 1.0 1.1606e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.5379e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 3.6517e+00 1.0 6.53e+07 14.1 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   368
MGSetup Level 1       91 1.0 5.9981e+01 1.0 6.16e+10 1.1 4.9e+05 8.6e+04 1.9e+03  9 11  7  9 22  20 21 28 24 29 101535

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 6.4326e-03 4.1 0.00e+00 0.0 6.2e+04 4.0e+00 9.1e+01  0  0  1  0  1   0  0  1  0  4    -0
SFSetGraph            91 1.0 3.1519e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 9.0132e-03 2.1 0.00e+00 0.0 1.2e+05 1.7e+02 9.1e+01  0  0  2  0  1   0  0  3  0  4    -0
SFPack             11256 1.0 1.3772e+00 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           11256 1.0 6.6981e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             4824 1.0 1.5646e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              6431 1.0 5.2263e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             9648 1.0 4.5224e+00 1.8 2.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 51120
VecAXPBYCZ          3216 1.0 2.1796e+00 1.3 2.91e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 132582
VecScatterBegin    11256 1.0 1.6149e+00 3.1 0.00e+00 0.0 4.5e+06 6.5e+04 0.0e+00  0  0 69 63  0   0  0 94 100  0    -0
VecScatterEnd      11256 1.0 2.2166e+01 18.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             6432 1.0 1.6766e+02 1.1 1.29e+11 1.1 3.4e+06 8.6e+04 0.0e+00 25 23 52 63  0  48 49 71 100  0 76020
MatMultAdd          1608 1.0 4.4012e+00 1.2 2.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 52527
MatMultTranspose    1608 1.0 3.0848e+00 1.9 2.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 74942
MatSolve            8040 1.0 1.6705e+02 1.1 1.23e+11 1.1 1.4e+06 5.7e+02 4.6e+02 25 22 21  0  5  48 47 29  0 22 72866
MatResidual         1608 1.0 4.3792e+01 1.1 3.25e+10 1.1 8.6e+05 8.6e+04 0.0e+00  6  6 13 16  0  12 12 18 25  0 73421
PCSetUpOnBlocks     3216 1.0 2.7561e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             8040 1.0 1.6716e+02 1.1 1.23e+11 1.1 1.4e+06 5.7e+02 4.6e+02 25 22 21  0  5  48 47 29  0 22 72817
PCApplyOnBlocks     6432 1.0 1.5848e+02 1.1 1.23e+11 1.1 0.0e+00 0.0e+00 0.0e+00 23 22  0  0  0  45 47  0  0  0 76576
KSPSolve            4824 1.0 2.9172e+02 1.1 2.24e+11 1.1 4.0e+06 5.6e+04 2.1e+03 45 40 60 47 24  86 86 82 75 100 76178
MGSmooth Level 0    1608 1.0 1.6082e+01 2.7 1.80e+09 10.8 1.4e+06 5.7e+02 2.1e+03  2  0 21  0 24   3  0 29  0 100  2289
MGSmooth Level 1    3216 1.0 2.8542e+02 1.1 2.24e+11 1.1 2.6e+06 8.6e+04 0.0e+00 43 40 39 47  0  83 86 53 75  0 77728
MGResid Level 1     1608 1.0 4.3797e+01 1.1 3.25e+10 1.1 8.6e+05 8.6e+04 0.0e+00  6  6 13 16  0  12 12 18 25  0 73412
MGInterp Level 1    3216 1.0 7.3031e+00 1.4 4.66e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 63311
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
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 4.2372e-06
Average time for zero size MPI_Send(): 1.99256e-06
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

