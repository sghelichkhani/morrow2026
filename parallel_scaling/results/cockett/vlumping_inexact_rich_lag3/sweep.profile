****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0072.gadi.nci.org.au with 104 processes, by sg8812 on Tue Aug 25 22:15:39 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           6.540e+02     1.000   6.540e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.645e+11     1.128   5.338e+11  5.552e+13
Flops/sec:            8.631e+08     1.128   8.162e+08  8.488e+10
MPI Msg Count:        9.664e+04     2.381   6.660e+04  6.927e+06
MPI Msg Len (bytes):  5.987e+09     2.334   7.091e+04  4.912e+11
MPI Reductions:       7.345e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.5361e+02  38.8%  2.4052e+13  43.3%  1.435e+06  20.7%  9.501e+04       27.8%  5.243e+03  71.4%
 1:        MG Apply: 4.0044e+02  61.2%  3.1465e+13  56.7%  5.492e+06  79.3%  6.462e+04       72.2%  2.083e+03  28.4%

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

BuildTwoSided        442 1.0 1.2538e+01 7.1 0.00e+00 0.0 3.8e+04 4.0e+00 4.4e+02  1  0  1  0  6   3  0  3  0  8    -0
BuildTwoSidedF       402 1.0 1.2552e+01 7.3 0.00e+00 0.0 5.0e+04 3.7e+05 4.0e+02  1  0  1  4  5   3  0  3 14  8    -0
SFSetGraph            43 1.0 4.0988e-03 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 1.5838e-01 4.6 0.00e+00 0.0 2.5e+04 2.1e+03 4.0e+01  0  0  0  0  1   0  0  2  0  1    -0
SFBcastBegin         340 1.0 1.1921e-01 4.1 0.00e+00 0.0 1.6e+05 6.8e+04 0.0e+00  0  0  2  2  0   0  0 11  8  0    -0
SFBcastEnd           340 1.0 6.4614e+00 124.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.1254e-02 2.7 0.00e+00 0.0 7.0e+04 7.9e+04 0.0e+00  0  0  1  1  0   0  0  5  4  0    -0
SFReduceEnd          134 1.0 3.3017e+00 120.3 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   210
SFFetchOpBegin         2 1.0 1.6416e-05 4.8 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.9326e-04 13.7 0.00e+00 0.0 8.2e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 8.6113e-04 1.6 0.00e+00 0.0 6.5e+02 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 7.9632e-03 1.3 0.00e+00 0.0 2.2e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  2  0  0    -0
SFSectionSF           22 1.0 3.2598e-03 3.2 0.00e+00 0.0 1.0e+04 1.5e+02 2.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFPack              2545 1.0 5.6216e-01 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2547 1.0 4.4275e-02 4.5 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 15679
VecDot                91 1.0 2.5886e-01 12.9 3.29e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  2 12635
VecMDot             1978 1.0 1.8379e+01 3.7 7.95e+09 1.1 0.0e+00 0.0e+00 2.0e+03  2  1  0  0 27   4  3  0  0 38 42976
VecNorm             2316 1.0 3.3749e+00 5.1 8.38e+08 1.1 0.0e+00 0.0e+00 2.3e+03  0  0  0  0 32   1  0  0  0 44 24665
VecScale            2072 1.0 9.0352e-02 1.1 3.75e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 412126
VecCopy              639 1.0 4.0077e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               186 1.0 6.3479e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               94 1.0 4.2478e-02 1.5 3.40e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 79538
VecWAXPY              91 1.0 6.9053e-02 1.2 1.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 23683
VecMAXPY            2072 1.0 8.6339e+00 1.1 8.67e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   3  4  0  0  0 99719
VecScatterBegin     2069 1.0 5.3345e-01 3.3 0.00e+00 0.0 1.1e+06 8.6e+04 0.0e+00  0  0 16 19  0   0  0 77 70  0    -0
VecScatterEnd       2069 1.0 9.3401e+00 15.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSetRandom           2 1.0 3.3426e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 2.9026e-02 1.8 6.59e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 225368
VecReduceComm         91 1.0 7.5970e-02 59.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize          53 1.0 1.1102e-01 6.2 2.88e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  1   0  0  0  0  1 25737
MatMult             2069 1.0 5.6230e+01 1.1 4.15e+10 1.1 1.1e+06 8.6e+04 0.0e+00  8  7 16 19  0  20 17 77 70  0 72911
MatSolve              53 1.0 1.2766e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 78330
MatLUFactorSym         1 1.0 3.6255e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum        35 1.0 1.5644e+00 1.1 6.65e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 41334
MatILUFactorSym        2 1.0 1.9647e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               30 1.0 1.0779e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             1 1.0 1.0392e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     471 1.0 1.2958e+01 7.5 0.00e+00 0.0 5.0e+04 3.7e+05 4.0e+02  1  0  1  4  5   3  0  3 14  8    -0
MatAssemblyEnd       471 1.0 2.0379e+00 6.9 2.24e+07 0.0 2.1e+03 1.1e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0   525
MatGetRowIJ            2 1.0 1.6800e-06 6.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 4.7641e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       123 1.0 3.0849e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 7.9570e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2432e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum         64 1.0 4.2052e-01 1.1 9.27e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 217436
MatPtAPSymbolic        1 1.0 1.6340e-01 1.0 0.00e+00 0.0 1.6e+03 1.9e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        32 1.0 2.3040e+00 1.0 3.52e+09 1.1 1.8e+04 3.2e+05 3.7e+01  0  1  0  1  1   1  1  1  4  1 150786
MatGetLocalMat        32 1.0 1.3521e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         32 1.0 1.0030e-01 1.8 0.00e+00 0.0 1.8e+04 3.3e+05 0.0e+00  0  0  0  1  0   0  0  1  4  0    -0
PCSetUp               91 1.0 9.8116e+00 1.0 6.59e+09 1.1 4.7e+04 1.8e+05 2.4e+02  1  1  1  2  3   4  3  3  6  5 66386
PCApply             1928 1.0 4.0693e+02 1.0 3.18e+11 1.1 5.5e+06 6.5e+04 2.1e+03 61 57 79 72 28 Multiple stages 77322
PCApplyOnBlocks       53 1.0 1.2772e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 78291
KSPSetUp              91 1.0 1.4880e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 4.6897e+02 1.0 3.74e+11 1.1 6.5e+06 6.8e+04 6.0e+03 72 67 94 90 82 Multiple stages 78922
KSPGMRESOrthog      1978 1.0 2.5717e+01 2.0 1.59e+10 1.1 0.0e+00 0.0e+00 2.0e+03  3  3  0  0 27   7  7  0  0 38 61429
Mesh Partition         2 1.0 7.6690e-02 1.0 0.00e+00 0.0 6.8e+03 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.2492e-02 1.1 0.00e+00 0.0 2.3e+04 3.7e+02 1.1e+02  0  0  0  0  1   0  0  2  0  2    -0
DMPlexPartSelf         1 1.0 6.0053e-03 2368.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 9.8735e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.3882e-03 1.1 0.00e+00 0.0 1.3e+03 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.2264e-03 1.4 0.00e+00 0.0 6.5e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.7868e-03 1.7 0.00e+00 0.0 7.6e+02 1.9e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.7676e-02 1.0 0.00e+00 0.0 4.2e+03 2.1e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.5369e-03 1.0 0.00e+00 0.0 3.9e+03 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.3652e-02 1.0 0.00e+00 0.0 1.1e+04 3.9e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 4.6801e-03 1.1 0.00e+00 0.0 2.7e+04 1.3e+02 8.0e+01  0  0  0  0  1   0  0  2  0  2    -0
DMPlexDistField        3 1.0 2.9818e-03 1.2 0.00e+00 0.0 5.9e+03 1.8e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 8.1933e-05 1.1 0.00e+00 0.0 2.7e+03 8.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 3.9546e-03 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 1.2708e-03 50.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 9.9382e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 6.2329e+02 1.0 5.65e+11 1.1 6.9e+06 7.1e+04 7.0e+03 95 100 99 100 96 Multiple stages 89069
SNESSetUp              1 1.0 3.3949e-05 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4245e+01 1.1 7.57e+10 1.2 1.5e+05 8.5e+04 1.0e+00  7 13  2  3  0  17 30 10  9  0 163850
SNESJacobianEval      91 1.0 9.7402e+01 1.0 1.09e+11 1.2 9.7e+04 2.2e+05 3.6e+02 15 19  1  4  5  38 43  7 16  7 106813
SNESLineSearch        91 1.0 2.3042e+01 1.0 5.89e+10 1.2 1.5e+05 8.6e+04 3.6e+02  4 10  2  3  5   9 23 10  9  7 245224
firedrake              1 1.0 6.5097e+02 1.0 5.65e+11 1.1 6.9e+06 7.1e+04 7.3e+03 100 100 100 100 100 Multiple stages 85283
firedrake.__init__       1 1.0 1.4698e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 2.0418e+00 12.7 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  3   0  0  4  0  4    -0
CreateMesh             1 1.0 1.4965e-01 1.0 0.00e+00 0.0 5.9e+04 2.7e+02 1.9e+02  0  0  1  0  3   0  0  4  0  4    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 8.4546e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.9610e-06 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.7854e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 4.1385e-04 4.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 2.8763e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 8.2708e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 2.7382e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 2.6362e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 2.6312e-02 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.2766e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 4.8823e-03 1.1 0.00e+00 0.0 3.8e+03 1.1e+02 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.2818e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.0289e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 1.0904e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.8720e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.7471e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.6266e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.4105e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.8678e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 4.6555e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3434e+02 1.1 1.84e+11 1.2 1.3e+05 8.4e+04 6.0e+00 20 32  2  2  0  50 73  9  8  0 131398
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.8349e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.4486e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0  14  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.1410e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   8  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 2.4828e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.8503e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.3022e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.3021e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 8.7472e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 8.5975e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 2.9633e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.2699e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.9056e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.5105e-01 1.0 2.71e+06 1.1 2.2e+03 1.5e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   283
firedrake.interpolation.interpolate       2 1.0 5.9117e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 1.9350e+00 1.0 4.25e+06 1.1 3.3e+03 1.0e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   218
firedrake.formmanipulation.split_form       3 1.0 3.1133e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.3443e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 5.9714e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.8629e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 2.9197e-01 2.4 0.00e+00 0.0 1.3e+05 8.4e+04 2.0e+00  0  0  2  2  0   0  0  9  8  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.7714e+00 1.0 4.25e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   238
firedrake.halo.Halo.global_to_local_end     243 1.0 6.1697e+00 158.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.4334e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.1779e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2563e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.9222e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 8.0602e-05 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.5591e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2568e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 7.9508e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.2398e+00 1.0 0.00e+00 0.0 3.2e+03 4.7e+05 2.3e+01  1  0  0  0  0   4  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9388e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.0092e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1392e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1392e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
CreateSparsity         2 1.0 2.3828e+00 1.2 0.00e+00 0.0 2.7e+03 2.7e+05 1.8e+01  0  0  0  0  0   1  0  0  1  0    -0
MatZeroInitial         2 1.0 4.3216e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 6.2336e+02 1.0 5.65e+11 1.1 6.9e+06 7.1e+04 7.1e+03 95 100 99 100 97 Multiple stages 89060
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 8.8811e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.1653e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 2.9583e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1895e+00 1.1 1.69e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  7  0  0  0 205051
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0894e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2765
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0674e+00 1.0 5.82e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2795
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.8748e+00 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   4  7  0  0  0 174299
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6592e+01 1.2 4.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   6 16  0  0  0 231245
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.4865e-02 2.3 0.00e+00 0.0 6.5e+04 8.6e+04 0.0e+00  0  0  1  1  0   0  0  5  4  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.3027e+00 116.2 8.61e+06 2.4 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   210
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5639e+01 1.1 2.32e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   6 10  0  0  0 147101
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.4269e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2175
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3878e+00 1.0 5.31e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  2211
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 3.6584e+01 1.4 2.44e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  4  0  0  0  11 10  0  0  0 66123
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.2756e+01 1.3 6.18e+10 1.3 0.0e+00 0.0e+00 0.0e+00  6 10  0  0  0  15 24  0  0  0 132674
firedrake.dmhooks.get_function_space       1 1.0 1.1937e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 6.3113e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       32 1.0 1.5928e+00 1.0 2.35e+07 17.9 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   1  0  0  0  0   265
MGSetup Level 1       32 1.0 7.8795e-01 1.0 6.77e+08 1.1 5.3e+03 8.6e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0 84935

--- Event Stage 1: MG Apply

BuildTwoSided         31 1.0 2.6586e-03 6.2 0.00e+00 0.0 2.0e+04 4.0e+00 3.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            31 1.0 1.1623e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               31 1.0 3.5957e-03 2.7 0.00e+00 0.0 4.1e+04 1.7e+02 3.1e+01  0  0  1  0  0   0  0  1  0  1    -0
SFPack             13496 1.0 1.6845e+00 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           13496 1.0 8.2017e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             1928 1.0 7.7651e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              7711 1.0 6.2923e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             7712 1.0 3.7862e+00 1.3 2.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 73210
VecAYPX             7712 1.0 4.0130e+00 2.6 1.40e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 34536
VecScatterBegin    13496 1.0 1.9747e+00 3.0 0.00e+00 0.0 5.4e+06 6.6e+04 0.0e+00  0  0 78 72  0   0  0 98 100  0    -0
VecScatterEnd      13496 1.0 2.5884e+01 19.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
MatMult             7712 1.0 2.0176e+02 1.1 1.55e+11 1.1 4.1e+06 8.6e+04 0.0e+00 29 28 59 72  0  48 49 75 100  0 75743
MatMultAdd          1928 1.0 5.0254e+00 1.2 2.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 55158
MatMultTranspose    1928 1.0 3.9630e+00 2.2 2.79e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 69943
MatSolve            9640 1.0 2.0023e+02 1.1 1.47e+11 1.1 1.4e+06 6.6e+02 1.6e+02 29 26 20  0  2  47 46 25  0  7 72875
MatLUFactorNum        29 1.0 3.1600e+00 1.3 6.32e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  2  0  0  0 196517
MatResidual         1928 1.0 5.2709e+01 1.2 3.90e+10 1.1 1.0e+06 8.6e+04 0.0e+00  7  7 15 18  0  12 12 19 25  0 73138
PCSetUpOnBlocks     3856 1.0 3.1888e+00 1.3 6.32e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  2  0  0  0 194742
PCApply             9640 1.0 2.0037e+02 1.1 1.47e+11 1.1 1.4e+06 6.6e+02 1.6e+02 29 26 20  0  2  47 46 25  0  7 72826
PCApplyOnBlocks     7712 1.0 1.8939e+02 1.2 1.47e+11 1.1 0.0e+00 0.0e+00 0.0e+00 27 26  0  0  0  44 46  0  0  0 76829
KSPSolve            5784 1.0 3.4728e+02 1.1 2.67e+11 1.1 4.5e+06 6.0e+04 2.1e+03 52 48 64 54 28  85 84 81 75 100 76119
MGSmooth Level 0    1928 1.0 1.9718e+01 2.9 2.12e+09 11.3 1.4e+06 6.6e+02 2.1e+03  2  0 20  0 28   3  0 25  0 100  2112
MGSmooth Level 1    3856 1.0 3.4294e+02 1.1 2.73e+11 1.1 3.1e+06 8.6e+04 0.0e+00 51 49 45 54  0  83 86 56 75  0 78772
MGResid Level 1     1928 1.0 5.2716e+01 1.2 3.90e+10 1.1 1.0e+06 8.6e+04 0.0e+00  7  7 15 18  0  12 12 19 25  0 73129
MGInterp Level 1    3856 1.0 8.8617e+00 1.4 5.58e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 62559
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set   485            485
   IS L to G Mapping     5              5
             Section    76             76
   Star Forest Graph    82            113
              Vector   243            243
              Matrix    28             28
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

           Index Set    62             62
   Star Forest Graph    31              0
              Vector    31             31
========================================================================================================================
Average time to get PetscTime(): 2.64e-08
Average time for MPI_Barrier(): 4.697e-06
Average time for zero size MPI_Send(): 2.00168e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_inexact_rich_lag3/sweep.profile # (source: environment)
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

