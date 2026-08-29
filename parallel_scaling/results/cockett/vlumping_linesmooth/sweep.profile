****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0180.gadi.nci.org.au with 104 processes, by sg8812 on Sat Aug 29 17:03:43 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           7.447e+02     1.000   7.447e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.823e+11     1.127   5.512e+11  5.732e+13
Flops/sec:            7.820e+08     1.127   7.402e+08  7.698e+10
MPI Msg Count:        1.474e+05     2.518   9.776e+04  1.017e+07
MPI Msg Len (bytes):  7.751e+09     2.328   6.259e+04  6.363e+11
MPI Reductions:       1.473e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.4596e+02  46.5%  3.1794e+13  55.5%  2.702e+06  26.6%  9.377e+04       39.8%  1.011e+04  68.6%
 1:        MG Apply: 3.9872e+02  53.5%  2.5531e+13  44.5%  7.465e+06  73.4%  5.130e+04       60.2%  4.606e+03  31.3%

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

BuildTwoSided        647 1.0 1.4544e+01 9.5 0.00e+00 0.0 3.8e+04 4.0e+00 5.0e+02  1  0  0  0  3   2  0  1  0  5    -0
BuildTwoSidedF       461 1.0 1.4399e+01 8.3 0.00e+00 0.0 5.0e+04 3.7e+05 4.6e+02  1  0  0  3  3   2  0  2  7  5    -0
SFSetGraph           189 1.1 7.6359e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              186 1.1 1.9140e-01 5.3 0.00e+00 0.0 2.5e+04 2.1e+03 4.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         340 1.0 9.9801e-02 3.3 0.00e+00 0.0 1.6e+05 6.8e+04 0.0e+00  0  0  2  2  0   0  0  6  4  0    -0
SFBcastEnd           340 1.0 6.2759e+00 97.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.3317e-02 3.0 0.00e+00 0.0 7.0e+04 7.9e+04 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
SFReduceEnd          134 1.0 3.2972e+00 97.6 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   211
SFFetchOpBegin         2 1.0 1.6763e-05 4.7 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.0409e-04 9.4 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 8.6455e-04 1.4 0.00e+00 0.0 6.5e+02 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 8.0601e-03 1.3 0.00e+00 0.0 2.2e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 3.4092e-03 3.2 0.00e+00 0.0 1.0e+04 1.5e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             20335 1.1 1.0586e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           20337 1.1 4.1971e-02 4.1 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16540
VecDot                91 1.0 2.6160e-01 11.3 3.29e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 12503
VecMDot             4201 1.0 3.4714e+01 2.3 2.01e+10 1.1 0.0e+00 0.0e+00 4.2e+03  3  3  0  0 29   7  6  0  0 42 57542
VecNorm             4691 1.0 4.9367e+00 4.7 1.70e+09 1.1 0.0e+00 0.0e+00 4.7e+03  0  0  0  0 32   1  1  0  0 46 34153
VecScale            4386 1.0 1.8411e-01 1.1 7.94e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 428119
VecCopy              639 1.0 4.1289e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               383 1.0 1.2707e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              185 1.0 8.0173e-02 1.4 6.70e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 82937
VecWAXPY             182 1.0 1.4044e-01 1.5 3.29e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23289
VecMAXPY            4386 1.0 2.1208e+01 1.1 2.16e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   6  7  0  0  0 101307
VecScatterBegin    19859 1.1 1.2202e+00 2.7 0.00e+00 0.0 2.3e+06 8.6e+04 0.0e+00  0  0 23 32  0   0  0 87 79  0    -0
VecScatterEnd      19859 1.1 1.8872e+01 10.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 5.9123e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 4.3539e-02 2.5 6.59e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 150245
VecReduceComm         91 1.0 4.6123e-02 14.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize          53 1.0 7.4889e-02 3.3 2.88e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  0   0  0  0  0  1 38155
MatMult             4383 1.0 1.2116e+02 1.2 8.79e+10 1.1 2.3e+06 8.6e+04 0.0e+00 15 15 23 32  0  32 27 87 79  0 71683
MatSolve            7685 1.1 7.7126e-01 1.4 4.49e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 57790
MatLUFactorSym       146 1.1 2.2022e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       381 1.1 3.3136e+00 1.0 1.39e+08 1.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2879
MatAssemblyBegin     938 1.0 1.4567e+01 5.8 0.00e+00 0.0 5.0e+04 3.7e+05 4.6e+02  1  0  0  3  3   2  0  2  7  5    -0
MatAssemblyEnd       938 1.0 2.1608e+00 7.3 2.24e+07 0.0 2.1e+03 1.1e+04 1.7e+01  0  0  0  0  0   0  0  0  0  0   495
MatGetRowIJ          145 1.1 3.9197e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 2.8997e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.5e+02  0  0  0  0  1   0  0  0  0  1    -0
MatGetOrdering       145 1.1 1.7569e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.1123e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.5712e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2200e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.2314e+00 1.1 2.64e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 211163
MatPtAPSymbolic        1 1.0 1.6084e-01 1.0 0.00e+00 0.0 1.6e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.3705e+00 1.0 1.00e+10 1.1 4.9e+04 3.4e+05 9.6e+01  1  2  0  3  1   2  3  2  7  1 134039
MatGetLocalMat        91 1.0 3.7959e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 2.8284e-01 1.9 0.00e+00 0.0 5.0e+04 3.4e+05 0.0e+00  0  0  0  3  0   0  0  2  7  0    -0
PCSetUp               91 1.0 1.5560e+01 1.0 1.20e+10 1.1 7.9e+04 2.4e+05 5.7e+02  2  2  1  3  4   4  4  3  8  6 76062
PCApply             4151 1.0 4.0625e+02 1.1 2.58e+11 1.1 7.5e+06 5.1e+04 4.6e+03 54 45 73 60 31 Multiple stages 62844
PCApplyOnBlocks     7685 1.1 8.9565e-01 1.4 5.32e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 58992
KSPSetUp              91 1.0 1.3187e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.5109e+02 1.0 3.87e+11 1.1 9.7e+06 5.9e+04 1.3e+04 74 67 96 91 89 Multiple stages 69477
KSPGMRESOrthog      4201 1.0 5.2925e+01 1.5 4.02e+10 1.1 0.0e+00 0.0e+00 4.2e+03  6  7  0  0 29  12 13  0  0 42 75485
Mesh Partition         2 1.0 7.7170e-02 1.0 0.00e+00 0.0 6.8e+03 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.2398e-02 1.0 0.00e+00 0.0 2.3e+04 3.7e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 5.9533e-03 2342.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 9.6304e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.4485e-03 1.1 0.00e+00 0.0 1.3e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.6156e-03 1.6 0.00e+00 0.0 6.5e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.2806e-03 1.6 0.00e+00 0.0 7.6e+02 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.8218e-02 1.0 0.00e+00 0.0 4.2e+03 2.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.6258e-03 1.0 0.00e+00 0.0 3.9e+03 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.3831e-02 1.0 0.00e+00 0.0 1.1e+04 3.9e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 4.5311e-03 1.1 0.00e+00 0.0 2.7e+04 1.3e+02 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 2.9653e-03 1.1 0.00e+00 0.0 5.9e+03 1.8e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 8.5905e-05 1.1 0.00e+00 0.0 2.7e+03 8.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 4.0412e-03 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 1.2940e-03 52.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 9.7600e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.0941e+02 1.0 5.82e+11 1.1 1.0e+07 6.3e+04 1.4e+04 95 100 99 100 98 Multiple stages 80806
SNESSetUp              1 1.0 3.2017e-05 4.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4027e+01 1.1 7.57e+10 1.2 1.5e+05 8.5e+04 1.0e+00  6 13  1  2  0  13 23  5  5  0 164658
SNESJacobianEval      91 1.0 9.5801e+01 1.0 1.09e+11 1.2 9.7e+04 2.2e+05 3.6e+02 13 18  1  3  2  28 33  4  8  4 108599
SNESLineSearch        91 1.0 2.2542e+01 1.0 5.89e+10 1.2 1.5e+05 8.6e+04 3.6e+02  3 10  1  2  2   7 18  5  5  4 250662
firedrake              1 1.0 7.4023e+02 1.0 5.82e+11 1.1 1.0e+07 6.3e+04 1.5e+04 99 100 100 100 100 Multiple stages 77441
firedrake.__init__       1 1.0 1.7184e+01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 7.7394e+00 48.6 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  1   1  0  2  0  2    -0
CreateMesh             1 1.0 1.4853e-01 1.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  1   0  0  2  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 9.9808e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5080e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.8454e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.3531e-04 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.8333e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       8 1.0 9.2034e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 2.7063e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 2.6053e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 2.5999e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.1778e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 4.8576e-03 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.2308e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       8 1.0 1.2614e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 9.5573e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.0761e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 8.4447e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5296e-03 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.7248e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.0720e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 4.5166e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3273e+02 1.1 1.84e+11 1.2 1.3e+05 8.4e+04 6.0e+00 17 31  1  2  0  37 56  5  4  0 132995
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.0409e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.5095e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0  10  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.1347e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   6  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 2.0085e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.8934e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.3752e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.3751e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 8.9676e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 8.7960e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 2.8173e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.5442e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.1968e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.9558e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   271
firedrake.interpolation.interpolate       2 1.0 6.6144e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 2.0388e+00 1.0 4.25e+06 1.1 3.3e+03 1.0e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   207
firedrake.formmanipulation.split_form       3 1.0 3.4678e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.9016e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 6.3228e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 5.4019e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.5247e-01 3.7 0.00e+00 0.0 1.3e+05 8.4e+04 2.0e+00  0  0  1  2  0   0  0  5  4  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.8651e+00 1.0 4.25e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   226
firedrake.halo.Halo.global_to_local_end     243 1.0 5.9282e+00 164.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.8287e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.5922e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8067e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 9.6987e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.7212e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.4667e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2578e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 7.8742e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.1500e+00 1.0 0.00e+00 0.0 3.2e+03 4.7e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.8804e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2409e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1267e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1267e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         2 1.0 2.5394e+00 1.3 0.00e+00 0.0 2.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.3054e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.0947e+02 1.0 5.82e+11 1.1 1.0e+07 6.3e+04 1.4e+04 95 100 99 100 98 Multiple stages 80799
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 8.8902e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1231e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 2.8859e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1357e+00 1.1 1.69e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 206407
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1140e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2733
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.1021e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2749
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.9776e+00 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  5  0  0  0 172504
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6536e+01 1.2 4.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   4 12  0  0  0 232028
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.6704e-02 2.5 0.00e+00 0.0 6.5e+04 8.6e+04 0.0e+00  0  0  1  1  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.2981e+00 93.7 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   210
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5553e+01 1.1 2.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   4  7  0  0  0 147915
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.5124e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2101
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.4211e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2180
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8406e+01 1.1 2.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0   8  8  0  0  0 85159
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.1273e+01 1.3 6.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5 10  0  0  0  11 18  0  0  0 137441
firedrake.dmhooks.get_function_space       2 1.0 1.9195e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.7617e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 3.4332e+00 1.0 6.35e+07 17.6 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0   372
MGSetup Level 1       91 1.0 8.9441e-01 1.0 3.85e+08 1.1 5.3e+03 8.6e+04 1.7e+02  0  0  0  0  1   0  0  0  0  2 42643

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 5.7533e-03 4.6 0.00e+00 0.0 6.0e+04 4.0e+00 9.1e+01  0  0  1  0  1   0  0  1  0  2    -0
SFSetGraph            91 1.0 3.1719e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 8.5447e-03 2.2 0.00e+00 0.0 1.2e+05 1.7e+02 9.1e+01  0  0  1  0  1   0  0  2  0  2    -0
SFPack           2444939 1.1 2.0406e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2444939 1.1 1.3875e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             4151 1.0 1.6588e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             33207 1.0 7.0819e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY             8302 1.0 3.4133e+00 1.5 3.00e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 87421
VecAYPX             8302 1.0 4.4881e+00 2.7 1.50e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 33243
VecScatterBegin  2444939 1.1 2.1162e+01 1.2 0.00e+00 0.0 7.2e+06 5.3e+04 0.0e+00  3  0 70 60  0   5  0 96 100  0    -0
VecScatterEnd    2444939 1.1 2.4984e+01 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             8302 1.0 2.1943e+02 1.1 1.66e+11 1.1 4.4e+06 8.6e+04 0.0e+00 28 29 44 60  0  52 64 59 99  0 74970
MatMultAdd          4151 1.0 1.1850e+01 1.3 6.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  2  0  0  0 50363
MatMultTranspose    4151 1.0 8.4565e+00 1.6 6.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 70572
MatSolve         1207941 1.1 1.3981e+02 1.3 7.17e+10 1.1 3.0e+06 6.4e+02 4.6e+02 17 12 30  0  3  32 28 41  1 10 50575
MatLUFactorNum     12905 1.1 2.8207e+00 1.2 3.70e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 130387
MatResidual         4151 1.0 1.1752e+02 1.2 8.40e+10 1.1 2.2e+06 8.6e+04 0.0e+00 14 14 22 30  0  27 33 30 50  0 70625
MatAssemblyBegin   12905 1.1 2.1669e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     12905 1.1 3.0178e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 7.7958e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
PCSetUp            12994 1.1 1.0656e+01 1.2 3.70e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 34514
PCApply            12453 1.0 1.7735e+02 1.2 7.53e+10 1.1 3.0e+06 6.4e+02 4.6e+02 22 13 30  0  3  41 29 41  1 10 41945
PCApplyOnBlocks  1203790 1.1 1.2295e+02 1.3 7.40e+10 1.1 0.0e+00 0.0e+00 0.0e+00 15 13  0  0  0  28 29  0  0  0 59776
KSPSetUp           12906 1.1 2.7598e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           12453 1.0 2.8461e+02 1.1 1.62e+11 1.1 5.2e+06 3.7e+04 4.6e+03 37 28 52 30 31  69 63 70 50 100 56347
MGSmooth Level 0    4151 1.0 3.2995e+01 2.2 4.36e+09 13.1 3.0e+06 6.4e+02 4.6e+03  3  0 30  0 31   5  0 41  1 100  2706
MGSmooth Level 1    8302 1.0 2.6560e+02 1.1 1.61e+11 1.1 2.2e+06 8.6e+04 0.0e+00 34 28 22 30  0  64 62 30 50  0 60044
MGResid Level 1     4151 1.0 1.1754e+02 1.2 8.40e+10 1.1 2.2e+06 8.6e+04 0.0e+00 14 14 22 30  0  27 33 30 50  0 70616
MGInterp Level 1    8302 1.0 1.9265e+01 1.3 1.20e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 61954
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set  1711           1711
   IS L to G Mapping   142            142
             Section    76             76
   Star Forest Graph   221            312
              Vector   781            780
              Matrix   713            713
      Preconditioner   143            143
       Krylov Solver   143            143
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
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 4.6706e-06
Average time for zero size MPI_Send(): 1.99037e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_linesmooth/sweep.profile # (source: environment)
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

