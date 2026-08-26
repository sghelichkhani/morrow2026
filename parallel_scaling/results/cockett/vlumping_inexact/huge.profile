****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0400.gadi.nci.org.au with 832 processes, by sg8812 on Tue Aug 25 22:25:32 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.249e+03     1.000   1.249e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                8.457e+11     1.153   7.995e+11  6.652e+14
Flops/sec:            6.772e+08     1.153   6.402e+08  5.327e+11
MPI Msg Count:        2.353e+05     4.893   1.191e+05  9.909e+07
MPI Msg Len (bytes):  1.570e+10     2.990   9.687e+04  9.600e+12
MPI Reductions:       1.299e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.2071e+02  33.7%  2.7555e+14  41.4%  2.270e+07  22.9%  1.274e+05       30.1%  9.459e+03  72.8%
 1:        MG Apply: 8.2805e+02  66.3%  3.8962e+14  58.6%  7.640e+07  77.1%  8.781e+04       69.9%  3.508e+03  27.0%

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

BuildTwoSided        501 1.0 2.3060e+01 3.3 0.00e+00 0.0 3.3e+05 4.0e+00 5.0e+02  1  0  0  0  4   3  0  1  0  5    -0
BuildTwoSidedF       461 1.0 2.3001e+01 3.3 0.00e+00 0.0 4.4e+05 5.1e+05 4.6e+02  1  0  0  2  4   3  0  2  8  5    -0
SFSetGraph            43 1.0 5.8664e-03 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 2.9894e-01 5.4 0.00e+00 0.0 2.2e+05 2.9e+03 4.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         340 1.0 1.8657e-01 3.2 0.00e+00 0.0 1.5e+06 9.2e+04 0.0e+00  0  0  1  1  0   0  0  6  5  0    -0
SFBcastEnd           340 1.0 1.0169e+01 141.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 3.1486e-02 15.2 0.00e+00 0.0 6.2e+05 1.1e+05 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
SFReduceEnd          134 1.0 3.8684e+00 154.4 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2146
SFFetchOpBegin         2 1.0 2.1704e-05 8.1 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.0015e-03 71.2 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.0685e-03 4.6 0.00e+00 0.0 5.7e+03 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 2.2700e-02 1.4 0.00e+00 0.0 1.9e+05 1.6e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 1.0162e-02 7.0 0.00e+00 0.0 8.2e+04 9.4e+01 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4601 1.0 1.5177e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4603 1.0 7.1848e-02 10.3 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 115543
VecDot                91 1.0 3.5219e-01 8.9 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 74295
VecMDot             3963 1.0 4.7310e+01 2.9 1.71e+10 1.1 0.0e+00 0.0e+00 4.0e+03  2  2  0  0 31   6  5  0  0 42 289539
VecNorm             4428 1.0 9.0040e+00 2.3 1.59e+09 1.1 0.0e+00 0.0e+00 4.4e+03  0  0  0  0 34   1  0  0  0 47 141406
VecScale            4216 1.0 1.8199e-01 1.2 7.58e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3330512
VecCopy              727 1.0 4.3940e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               435 1.0 1.4123e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              253 1.0 1.1207e-01 1.5 9.09e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 649120
VecWAXPY             162 1.0 1.2529e-01 1.5 2.91e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 185899
VecMAXPY            4216 1.0 1.8215e+01 1.1 1.85e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   4  5  0  0  0 814603
VecScatterBegin     4125 1.0 1.5646e+00 3.0 0.00e+00 0.0 2.0e+07 1.2e+05 0.0e+00  0  0 20 24  0   0  0 86 78  0    -0
VecScatterEnd       4125 1.0 1.9176e+01 39.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       182 1.0 3.7391e-02 2.1 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1399594
VecReduceComm         91 1.0 6.4890e-02 6.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        1001 1.0 3.1767e+00 3.3 5.40e+08 1.1 0.0e+00 0.0e+00 1.0e+03  0  0  0  0  8   1  0  0  0 11 135908
MatMult             4125 1.0 1.1667e+02 1.2 8.22e+10 1.1 2.0e+07 1.2e+05 0.0e+00  9 10 20 24  0  26 24 86 78  0 562370
MatSolve            1001 1.0 2.3285e+01 1.1 1.86e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  5  0  0  0 634111
MatLUFactorSym         1 1.0 2.0438e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       182 1.0 4.7788e+01 1.1 1.95e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4  2  0  0  0  11  5  0  0  0 315606
MatILUFactorSym        1 1.0 9.7479e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     648 1.0 2.3210e+01 2.9 0.00e+00 0.0 4.4e+05 5.1e+05 4.6e+02  1  0  0  2  4   3  0  2  8  5    -0
MatAssemblyEnd       648 1.0 3.5127e+00 7.1 3.77e+07 0.0 1.9e+04 1.5e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  3692
MatGetRowIJ            1 1.0 5.7450e-06 49.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.6576e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.1191e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 9.1257e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.1851e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.3324e+00 1.4 2.62e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1566171
MatPtAPSymbolic        1 1.0 2.0629e-01 1.0 0.00e+00 0.0 1.4e+04 2.5e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 1.0444e+01 1.0 9.94e+09 1.1 4.4e+05 4.5e+05 9.6e+01  1  1  0  2  1   2  3  2  7  1 759175
MatGetLocalMat        91 1.0 4.1107e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 4.5687e-01 2.4 0.00e+00 0.0 4.4e+05 4.6e+05 0.0e+00  0  0  0  2  0   0  0  2  7  0    -0
PCSetUp               91 1.0 1.1299e+02 1.0 7.06e+10 1.1 4.8e+06 1.5e+05 2.1e+03  9  8  5  7 16  27 20 21 24 23 494286
PCApply             3053 1.0 8.4176e+02 1.0 4.90e+11 1.1 7.6e+07 8.8e+04 3.5e+03 66 59 77 70 27 Multiple stages 462866
PCApplyOnBlocks     1001 1.0 2.3298e+01 1.1 1.86e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  5  0  0  0 633767
KSPSetUp              91 1.0 1.3169e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 9.5100e+02 1.0 5.86e+11 1.1 9.1e+07 9.2e+04 9.8e+03 76 70 92 88 75 Multiple stages 490168
KSPGMRESOrthog      3963 1.0 6.2798e+01 1.9 3.42e+10 1.1 0.0e+00 0.0e+00 4.0e+03  3  4  0  0 31  10 10  0  0 42 436258
Mesh Partition         2 1.0 5.4484e-01 1.0 0.00e+00 0.0 5.9e+04 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 7.3716e-02 1.0 0.00e+00 0.0 2.0e+05 2.1e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 2.5622e-02 4928.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 6.0867e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.2458e-03 1.4 0.00e+00 0.0 1.1e+04 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.6820e-03 1.9 0.00e+00 0.0 5.7e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1180e-02 1.2 0.00e+00 0.0 6.5e+03 9.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.1182e-01 1.0 0.00e+00 0.0 3.2e+04 1.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 8.0016e-03 1.1 0.00e+00 0.0 3.4e+04 3.6e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 4.9943e-02 1.0 0.00e+00 0.0 9.3e+04 2.3e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 2.4944e-02 1.1 0.00e+00 0.0 2.3e+05 9.1e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.0167e-02 1.2 0.00e+00 0.0 5.2e+04 1.0e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.4458e-04 1.3 0.00e+00 0.0 2.4e+04 5.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.4868e-02 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 5.2797e-03 360.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 2.1998e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.2147e+03 1.0 8.46e+11 1.2 9.9e+07 9.7e+04 1.3e+04 97 100 99 100 98 Multiple stages 547600
SNESSetUp              1 1.0 4.1060e-05 6.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.6505e+01 1.1 7.85e+10 1.3 1.3e+06 1.1e+05 1.0e+00  4  9  1  2  0  11 21  6  5  0 1249877
SNESJacobianEval      91 1.0 1.0098e+02 1.0 1.13e+11 1.3 8.6e+05 3.0e+05 3.6e+02  8 13  1  3  3  24 30  4  9  4 826349
SNESLineSearch        91 1.0 2.4551e+01 1.0 6.10e+10 1.3 1.3e+06 1.2e+05 3.6e+02  2  7  1  2  3   6 16  6  5  4 1845354
firedrake              1 1.0 1.2455e+03 1.0 8.46e+11 1.2 9.9e+07 9.7e+04 1.3e+04 100 100 100 100 100 Multiple stages 534045
firedrake.__init__       1 1.0 1.6412e+01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 7.4573e+00 9.9 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  1  0  1   1  0  2  0  2    -0
CreateMesh             1 1.0 7.2989e-01 1.0 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  1  0  1   0  0  2  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.8306e-03 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.9010e-06 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 4.0241e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 7.6326e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 3.4630e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 8.2186e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 3.3391e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 3.2466e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 3.2420e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.3615e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.5518e-02 1.6 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.3321e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0710e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.8001e-02 9.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.5961e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.4546e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5920e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.9675e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.5919e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 3.9369e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3781e+02 1.2 1.91e+11 1.3 1.2e+06 1.1e+05 6.0e+00 10 21  1  1  0  31 51  5  5  0 1027107
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.5585e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.6204e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.2704e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 2.2466e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.9671e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.3468e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.3467e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 9.4916e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 9.3693e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 3.2349e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.7172e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 5.2120e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.5860e-01 1.0 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  2250
firedrake.interpolation.interpolate       2 1.0 6.4336e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 1.9860e+00 1.0 4.22e+06 1.1 2.9e+04 1.4e+04 2.4e+01  0  0  0  0  0   0  0  0  0  0  1701
firedrake.formmanipulation.split_form       3 1.0 2.7176e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.9442e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 6.1400e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.9736e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.3446e-01 4.9 0.00e+00 0.0 1.2e+06 1.1e+05 2.0e+00  0  0  1  1  0   0  0  5  5  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.8139e+00 1.0 4.22e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1863
firedrake.halo.Halo.global_to_local_end     243 1.0 9.8717e+00 266.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.0100e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.7031e-01 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8291e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 5.2211e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.2443e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6387e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.3516e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0334e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.4712e+00 1.0 0.00e+00 0.0 2.9e+04 6.4e+05 2.3e+01  1  0  0  0  0   2  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9499e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4613e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1445e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1445e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         2 1.0 2.6661e+00 1.3 0.00e+00 0.0 2.4e+04 3.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.5333e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.2148e+03 1.0 8.46e+11 1.2 9.9e+07 9.7e+04 1.3e+04 97 100 99 100 98 Multiple stages 547572
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.0955e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.6601e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.5042e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 1.0840e+01 1.5 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 1239369
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1680e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 10660
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.1303e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 10849
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0393e+01 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 1329188
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7797e+01 1.4 4.43e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   4 11  0  0  0 1731971
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.4695e-02 6.8 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.8699e+00 149.3 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2145
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.7275e+01 1.2 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   4  7  0  0  0 1065381
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4950e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  8462
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.4586e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  8587
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8034e+01 1.1 2.43e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   6  7  0  0  0 692550
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5445e+01 1.4 6.55e+10 1.5 0.0e+00 0.0e+00 0.0e+00  3  7  0  0  0   9 17  0  0  0 1002695
firedrake.dmhooks.get_function_space       1 1.0 1.3541e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.8783e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 3.9119e+01 1.0 2.47e+08 85.5 0.0e+00 0.0e+00 2.0e+00  3  0  0  0  0   9  0  0  0  0   193
MGSetup Level 1       91 1.0 6.2207e+01 1.0 6.06e+10 1.1 4.3e+06 1.2e+05 1.9e+03  5  7  4  5 15  15 17 19 17 20 770197

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 4.5743e-02 3.7 0.00e+00 0.0 4.8e+05 4.0e+00 9.1e+01  0  0  0  0  1   0  0  1  0  3    -0
SFSetGraph            91 1.0 3.3073e-03 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 5.5597e-02 2.9 0.00e+00 0.0 9.7e+05 8.9e+01 9.1e+01  0  0  1  0  1   0  0  1  0  3    -0
SFPack             21371 1.0 4.2833e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           21371 1.0 1.4464e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             9159 1.0 3.0735e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             12211 1.0 9.9347e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            18318 1.0 9.5191e+00 1.8 4.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 368884
VecAXPBYCZ          6106 1.0 4.4093e+00 1.4 5.49e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 995459
VecScatterBegin    21371 1.0 4.8389e+00 2.9 0.00e+00 0.0 7.4e+07 9.1e+04 0.0e+00  0  0 75 70  0   0  0 97 100  0    -0
VecScatterEnd      21371 1.0 4.9765e+01 34.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult            12212 1.0 3.4423e+02 1.2 2.43e+11 1.1 5.8e+07 1.2e+05 0.0e+00 25 29 58 70  0  38 50 76 100  0 564256
MatMultAdd          3053 1.0 8.9344e+00 1.2 4.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 393022
MatMultTranspose    3053 1.0 7.1003e+00 2.8 4.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 494545
MatSolve           15265 1.0 5.0640e+02 1.1 2.28e+11 1.2 1.9e+07 3.2e+02 4.6e+02 39 27 19  0  4  58 46 24  0 13 356358
MatResidual         3053 1.0 8.9271e+01 1.3 6.14e+10 1.1 1.4e+07 1.2e+05 0.0e+00  6  7 15 17  0  10 13 19 25  0 548865
PCSetUpOnBlocks     6106 1.0 5.7798e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            15265 1.0 5.0664e+02 1.1 2.28e+11 1.2 1.9e+07 3.2e+02 4.6e+02 39 27 19  0  4  58 46 24  0 13 356192
PCApplyOnBlocks    12212 1.0 3.0697e+02 1.2 2.27e+11 1.1 0.0e+00 0.0e+00 0.0e+00 22 27  0  0  0  34 46  0  0  0 586821
KSPSolve            9159 1.0 7.5267e+02 1.1 4.20e+11 1.1 6.2e+07 8.1e+04 3.5e+03 59 50 63 52 27  89 86 81 75 100 443219
MGSmooth Level 0    3053 1.0 2.2016e+02 1.1 1.23e+10 99.4 1.9e+07 3.2e+02 3.5e+03 16  0 19  0 27  25  0 24  0 100  1470
MGSmooth Level 1    6106 1.0 5.5549e+02 1.1 4.19e+11 1.1 4.3e+07 1.2e+05 0.0e+00 42 50 44 52  0  64 86 57 75  0 599963
MGResid Level 1     3053 1.0 8.9282e+01 1.3 6.14e+10 1.1 1.4e+07 1.2e+05 0.0e+00  6  7 15 17  0  10 13 19 25  0 548798
MGInterp Level 1    6106 1.0 1.5781e+01 1.5 8.78e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 445033
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
           Index Set  2673           2673
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
Average time to get PetscTime(): 2.67e-08
Average time for MPI_Barrier(): 8.0088e-06
Average time for zero size MPI_Send(): 2.18747e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_inexact/huge.profile # (source: environment)
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

