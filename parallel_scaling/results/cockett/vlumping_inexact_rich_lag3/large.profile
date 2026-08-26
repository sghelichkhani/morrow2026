****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0556.gadi.nci.org.au with 416 processes, by sg8812 on Tue Aug 25 22:21:16 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.918e+02     1.000   9.918e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                7.787e+11     1.146   7.298e+11  3.036e+14
Flops/sec:            7.852e+08     1.146   7.359e+08  3.061e+11
MPI Msg Count:        1.619e+05     3.177   1.063e+05  4.421e+07
MPI Msg Len (bytes):  1.307e+10     2.763   8.633e+04  3.817e+12
MPI Reductions:       1.040e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.1574e+02  31.8%  1.1247e+14  37.0%  8.726e+06  19.7%  1.121e+05       25.6%  7.304e+03  70.2%
 1:        MG Apply: 6.7607e+02  68.2%  1.9114e+14  63.0%  3.549e+07  80.3%  8.000e+04       74.4%  3.081e+03  29.6%

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

BuildTwoSided        442 1.0 1.9200e+01 6.8 0.00e+00 0.0 1.6e+05 4.0e+00 4.4e+02  1  0  0  0  4   4  0  2  0  6    -0
BuildTwoSidedF       402 1.0 1.9004e+01 7.2 0.00e+00 0.0 2.2e+05 4.6e+05 4.0e+02  1  0  0  3  4   4  0  2 10  6    -0
SFSetGraph            43 1.0 5.3352e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 3.1446e-01 6.5 0.00e+00 0.0 1.1e+05 2.6e+03 4.0e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         340 1.0 1.6962e-01 3.2 0.00e+00 0.0 7.1e+05 8.2e+04 0.0e+00  0  0  2  2  0   0  0  8  6  0    -0
SFBcastEnd           340 1.0 8.7523e+00 153.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 3.1102e-02 4.3 0.00e+00 0.0 3.1e+05 9.5e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
SFReduceEnd          134 1.0 2.9667e+00 113.2 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1235
SFFetchOpBegin         2 1.0 1.8289e-05 5.7 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 9.6532e-04 73.0 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.0261e-03 2.3 0.00e+00 0.0 2.8e+03 8.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.6567e-02 1.2 0.00e+00 0.0 9.4e+04 2.0e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 5.6591e-03 4.9 0.00e+00 0.0 4.1e+04 1.1e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              3607 1.0 1.1232e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3609 1.0 6.6583e-02 4.6 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 55031
VecDot                91 1.0 3.0141e-01 11.5 3.34e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 43985
VecMDot             2976 1.0 3.3885e+01 3.1 1.55e+10 1.1 0.0e+00 0.0e+00 3.0e+03  2  2  0  0 29   7  5  0  0 41 181136
VecNorm             3378 1.0 5.7656e+00 3.0 1.24e+09 1.1 0.0e+00 0.0e+00 3.4e+03  0  0  0  0 32   1  0  0  0 46 85357
VecScale            3134 1.0 1.9434e-01 1.7 5.76e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1174673
VecCopy              639 1.0 4.1475e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               250 1.0 8.4847e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              158 1.0 7.0836e-02 1.3 5.81e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 324953
VecWAXPY             155 1.0 1.2141e-01 1.5 2.85e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 92995
VecMAXPY            3134 1.0 1.6272e+01 1.2 1.66e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  6  0  0  0 403844
VecScatterBegin     3131 1.0 1.1380e+00 2.6 0.00e+00 0.0 7.3e+06 1.0e+05 0.0e+00  0  0 16 20  0   0  0 84 78  0    -0
VecScatterEnd       3131 1.0 1.7348e+01 34.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 4.7395e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.5324e-02 2.2 6.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 750618
VecReduceComm         91 1.0 6.8149e-02 12.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize          53 1.0 4.6017e-01 6.4 2.92e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  1   0  0  0  0  1 25169
MatMult             3131 1.0 8.8242e+01 1.2 6.38e+10 1.1 7.3e+06 1.0e+05 0.0e+00  8  8 16 20  0  26 22 84 78  0 285696
MatSolve              53 1.0 1.2751e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 313504
MatLUFactorSym         1 1.0 6.4912e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum        35 1.0 7.2842e+00 1.0 6.84e+08 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0 35221
MatILUFactorSym        2 1.0 5.4582e-01 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               30 1.0 1.1001e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             1 1.0 1.2414e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     471 1.0 1.9374e+01 5.1 0.00e+00 0.0 2.2e+05 4.6e+05 4.0e+02  1  0  0  3  4   4  0  2 10  6    -0
MatAssemblyEnd       471 1.0 3.0069e+00 5.2 3.42e+07 0.0 9.3e+03 1.3e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  1903
MatGetRowIJ            2 1.0 2.2110e-06 9.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 4.1738e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       123 1.0 3.2602e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.4865e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.5102e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum         64 1.0 4.6926e-01 1.1 9.41e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 791673
MatPtAPSymbolic        1 1.0 2.1011e-01 1.0 0.00e+00 0.0 7.0e+03 2.3e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        32 1.0 2.5732e+00 1.0 3.57e+09 1.1 7.7e+04 3.9e+05 3.7e+01  0  0  0  1  0   1  1  1  3  1 548555
MatGetLocalMat        32 1.0 1.3897e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         32 1.0 1.4211e-01 2.0 0.00e+00 0.0 7.9e+04 4.0e+05 0.0e+00  0  0  0  1  0   0  0  1  3  0    -0
PCSetUp               91 1.0 1.6875e+01 1.0 6.68e+09 1.1 2.1e+05 2.1e+05 2.4e+02  2  1  0  1  2   5  2  2  4  3 156054
PCApply             2926 1.0 6.8695e+02 1.0 4.84e+11 1.1 3.5e+07 8.0e+04 3.1e+03 68 63 80 74 30 Multiple stages 278245
PCApplyOnBlocks       53 1.0 1.2757e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 313356
KSPSetUp              91 1.0 1.3813e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 7.9237e+02 1.0 5.78e+11 1.1 4.2e+07 8.4e+04 9.1e+03 80 75 96 93 87 Multiple stages 288350
KSPGMRESOrthog      2976 1.0 4.8106e+01 1.9 3.10e+10 1.1 0.0e+00 0.0e+00 3.0e+03  4  4  0  0 29  11 11  0  0 41 255178
Mesh Partition         2 1.0 2.5307e-01 1.0 0.00e+00 0.0 2.9e+04 1.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.7104e-02 1.0 0.00e+00 0.0 9.7e+04 2.5e+02 1.1e+02  0  0  0  0  1   0  0  1  0  2    -0
DMPlexPartSelf         1 1.0 1.5394e-02 4166.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 3.2488e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.2390e-03 1.1 0.00e+00 0.0 5.6e+03 1.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.6230e-03 2.8 0.00e+00 0.0 2.8e+03 7.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 7.2757e-03 1.3 0.00e+00 0.0 3.2e+03 1.2e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.9287e-01 1.0 0.00e+00 0.0 1.6e+04 1.4e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 4.4705e-03 1.1 0.00e+00 0.0 1.7e+04 4.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.1712e-02 1.0 0.00e+00 0.0 4.6e+04 2.8e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 1.4694e-02 1.2 0.00e+00 0.0 1.1e+05 1.0e+02 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 6.1304e-03 1.2 0.00e+00 0.0 2.5e+04 1.2e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.1688e-04 1.2 0.00e+00 0.0 1.2e+04 6.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 8.8746e-03 5.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 3.3530e-03 191.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.4610e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 9.5850e+02 1.0 7.79e+11 1.1 4.4e+07 8.7e+04 1.0e+04 97 100 99 100 97 Multiple stages 316754
SNESSetUp              1 1.0 4.2975e-05 6.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4902e+01 1.1 7.91e+10 1.3 6.4e+05 1.0e+05 1.0e+00  4 10  1  2  0  14 26  7  7  0 655502
SNESJacobianEval      91 1.0 1.0128e+02 1.0 1.14e+11 1.3 4.2e+05 2.7e+05 3.6e+02 10 14  1  3  3  32 38  5 12  5 417154
SNESLineSearch        91 1.0 2.3704e+01 1.0 6.16e+10 1.2 6.4e+05 1.0e+05 3.6e+02  2  8  1  2  3   8 20  7  7  5 967839
firedrake              1 1.0 9.8860e+02 1.0 7.79e+11 1.1 4.4e+07 8.6e+04 1.0e+04 100 100 100 100 100 Multiple stages 307110
firedrake.__init__       1 1.0 1.5882e+01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 6.0637e+00 15.3 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  1  0  2   1  0  3  0  3    -0
CreateMesh             1 1.0 3.8064e-01 1.0 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  1  0  2   0  0  3  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.3467e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7250e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.5141e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.8200e-04 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 3.1770e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 8.1436e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 3.0643e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 2.9730e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 2.9683e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.3559e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 7.9270e-03 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.3928e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.8825e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.8997e-02 10.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.5739e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.0218e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.7573e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.5051e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.5698e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 3.8460e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3824e+02 1.2 1.93e+11 1.3 5.8e+05 1.0e+05 6.0e+00 13 24  1  2  0  40 64  7  6  0 518479
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.5378e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.3796e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0  11  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.0103e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 1.8260e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.7867e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.3630e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.3629e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 9.3719e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 9.2806e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 3.0745e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.5748e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.3912e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.6432e-01 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  1133
firedrake.interpolation.interpolate       2 1.0 6.2039e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 1.9459e+00 1.0 4.32e+06 1.1 1.4e+04 1.2e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   880
firedrake.formmanipulation.split_form       3 1.0 2.7574e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.8465e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 5.9831e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 4.0164e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.4004e-01 3.4 0.00e+00 0.0 5.8e+05 1.0e+05 2.0e+00  0  0  1  2  0   0  0  7  6  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.7761e+00 1.0 4.32e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   964
firedrake.halo.Halo.global_to_local_end     243 1.0 8.1377e+00 247.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.7323e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.4827e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6796e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.9483e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.4364e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6132e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.2641e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 7.9978e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.5966e+00 1.0 0.00e+00 0.0 1.4e+04 5.7e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9597e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.4707e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1619e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1619e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         2 1.0 2.7483e+00 1.3 0.00e+00 0.0 1.2e+04 3.4e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.6060e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 9.5857e+02 1.0 7.79e+11 1.1 4.4e+07 8.7e+04 1.0e+04 97 100 99 100 98 Multiple stages 316730
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.6709e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.3987e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.1390e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.2806e+00 1.1 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  6  0  0  0 821994
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0326e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  7277
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0197e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  7324
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0123e+01 1.1 1.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   3  6  0  0  0 690831
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7325e+01 1.3 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   5 14  0  0  0 900494
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.4813e-02 3.3 0.00e+00 0.0 2.8e+05 1.0e+05 0.0e+00  0  0  1  1  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.9677e+00 108.8 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1235
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5659e+01 1.1 2.35e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   5  8  0  0  0 595500
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.2355e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  6044
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.2132e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  6105
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7838e+01 1.1 2.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   8  9  0  0  0 353062
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.6293e+01 1.4 6.54e+10 1.4 0.0e+00 0.0e+00 0.0e+00  4  8  0  0  0  12 21  0  0  0 498216
firedrake.dmhooks.get_function_space       1 1.0 1.4224e-03 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.7538e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       32 1.0 7.6015e+00 1.0 5.58e+07 45.1 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   203
MGSetup Level 1       32 1.0 1.1662e+00 1.0 6.85e+08 1.1 2.3e+04 1.0e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 230259

--- Event Stage 1: MG Apply

BuildTwoSided         31 1.0 1.1213e-02 3.1 0.00e+00 0.0 8.3e+04 4.0e+00 3.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            31 1.0 7.5423e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               31 1.0 1.5352e-02 2.0 0.00e+00 0.0 1.7e+05 1.1e+02 3.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFPack             20482 1.0 3.9926e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           20482 1.0 1.2972e-02 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2926 1.0 1.1867e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             11703 1.0 9.7384e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY            11704 1.0 6.0310e+00 1.3 4.30e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 282727
VecAYPX            11704 1.0 6.5268e+00 2.4 2.15e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 130624
VecScatterBegin    20482 1.0 4.5364e+00 2.7 0.00e+00 0.0 3.5e+07 8.1e+04 0.0e+00  0  0 79 74  0   0  0 99 100  0    -0
VecScatterEnd      20482 1.0 5.1355e+01 37.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            11704 1.0 3.2688e+02 1.2 2.38e+11 1.1 2.7e+07 1.0e+05 0.0e+00 30 31 62 74  0  45 49 77 100  0 288298
MatMultAdd          2926 1.0 8.1437e+00 1.2 4.30e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 209378
MatMultTranspose    2926 1.0 6.3793e+00 2.6 4.30e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 267288
MatSolve           14630 1.0 3.6803e+02 1.1 2.24e+11 1.1 8.2e+06 4.3e+02 1.6e+02 35 29 19  0  1  51 46 23  0  5 240387
MatLUFactorNum        29 1.0 3.3727e+00 1.4 6.41e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 730908
MatResidual         2926 1.0 8.4033e+01 1.2 6.02e+10 1.1 6.8e+06 1.0e+05 0.0e+00  8  8 15 19  0  11 12 19 25  0 282900
PCSetUpOnBlocks     5852 1.0 3.4094e+00 1.4 6.41e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 723045
PCApply            14630 1.0 3.6823e+02 1.1 2.24e+11 1.1 8.2e+06 4.3e+02 1.6e+02 35 29 19  0  1  51 46 23  0  5 240254
PCApplyOnBlocks    11704 1.0 2.9276e+02 1.2 2.24e+11 1.1 0.0e+00 0.0e+00 0.0e+00 27 29  0  0  0  40 46  0  0  0 301545
KSPSolve            8778 1.0 5.9699e+02 1.0 4.09e+11 1.1 2.9e+07 7.4e+04 3.1e+03 59 53 65 56 30  86 84 81 75 100 270513
MGSmooth Level 0    2926 1.0 8.5998e+01 1.3 7.54e+09 45.2 8.2e+06 4.3e+02 3.1e+03  8  0 19  0 30  11  0 23  0 100  2212
MGSmooth Level 1    5852 1.0 5.3108e+02 1.1 4.15e+11 1.1 2.0e+07 1.0e+05 0.0e+00 52 54 46 56  0  76 86 58 75  0 308366
MGResid Level 1     2926 1.0 8.4044e+01 1.2 6.02e+10 1.1 6.8e+06 1.0e+05 0.0e+00  8  8 15 19  0  11 12 19 25  0 282864
MGInterp Level 1    5852 1.0 1.4140e+01 1.4 8.60e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 241168
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set  1421           1421
   IS L to G Mapping     5              5
             Section    76             76
   Star Forest Graph    82            113
              Vector   253            253
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
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 1.22424e-05
Average time for zero size MPI_Send(): 2.17841e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_inexact_rich_lag3/large.profile # (source: environment)
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

