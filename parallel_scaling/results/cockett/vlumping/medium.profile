****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0141.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 17:04:39 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.053e+02     1.000   8.053e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.740e+11     1.141   6.347e+11  1.320e+14
Flops/sec:            8.369e+08     1.141   7.881e+08  1.639e+11
MPI Msg Count:        1.379e+05     3.532   8.624e+04  1.794e+07
MPI Msg Len (bytes):  8.643e+09     2.408   7.667e+04  1.375e+12
MPI Reductions:       9.060e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.9659e+02  36.8%  5.2951e+13  40.1%  3.572e+06  19.9%  1.073e+05       27.9%  6.246e+03  68.9%
 1:        MG Apply: 5.0872e+02  63.2%  7.9057e+13  59.9%  1.437e+07  80.1%  6.905e+04       72.1%  2.795e+03  30.8%

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

BuildTwoSided        501 1.0 1.7845e+01 8.9 0.00e+00 0.0 7.9e+04 4.0e+00 5.0e+02  1  0  0  0  6   4  0  2  0  8    -0
BuildTwoSidedF       461 1.0 1.7666e+01 8.8 0.00e+00 0.0 1.1e+05 4.1e+05 4.6e+02  1  0  1  3  5   4  0  3 11  7    -0
SFSetGraph            43 1.0 4.9841e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 2.7622e-01 6.3 0.00e+00 0.0 5.2e+04 2.3e+03 4.0e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         340 1.0 1.4972e-01 3.3 0.00e+00 0.0 3.5e+05 7.4e+04 0.0e+00  0  0  2  2  0   0  0 10  7  0    -0
SFBcastEnd           340 1.0 7.1893e+00 181.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.7346e-02 4.2 0.00e+00 0.0 1.5e+05 8.6e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
SFReduceEnd          134 1.0 3.5088e+00 142.4 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   456
SFFetchOpBegin         2 1.0 1.6772e-05 8.6 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 6.4946e-04 43.5 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.5065e-03 2.6 0.00e+00 0.0 1.4e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.0968e-02 1.4 0.00e+00 0.0 4.6e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 4.8121e-03 5.7 0.00e+00 0.0 2.1e+04 1.3e+02 2.2e+01  0  0  0  0  0   0  0  1  0  0    -0
SFPack              2957 1.0 7.3946e-01 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2959 1.0 5.6616e-02 3.6 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 28260
VecDot                91 1.0 2.2476e-01 10.1 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 29335
VecMDot             2390 1.0 2.3582e+01 2.7 1.16e+10 1.1 0.0e+00 0.0e+00 2.4e+03  2  2  0  0 26   5  4  0  0 38 98092
VecNorm             2789 1.0 3.7097e+00 4.1 1.01e+09 1.1 0.0e+00 0.0e+00 2.8e+03  0  0  0  0 31   1  0  0  0 45 54472
VecScale            2484 1.0 1.0940e-01 1.2 4.52e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 822548
VecCopy              639 1.0 4.2215e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               186 1.0 6.4908e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY               94 1.0 5.5746e-02 2.1 3.42e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 122174
VecWAXPY              91 1.0 6.9397e-02 1.2 1.66e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47504
VecMAXPY            2484 1.0 1.2343e+01 1.1 1.25e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   4  5  0  0  0 201442
VecScatterBegin     2481 1.0 7.4936e-01 2.4 0.00e+00 0.0 2.8e+06 9.3e+04 0.0e+00  0  0 16 19  0   0  0 79 68  0    -0
VecScatterEnd       2481 1.0 1.1551e+01 25.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 5.8364e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.0066e-02 2.0 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 438592
VecReduceComm         91 1.0 7.0557e-02 6.7 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize          53 1.0 1.0807e-01 4.3 2.89e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  1   0  0  0  0  1 53302
MatMult             2481 1.0 6.8479e+01 1.2 5.00e+10 1.1 2.8e+06 9.3e+04 0.0e+00  8  8 16 19  0  21 19 79 68  0 144921
MatSolve              53 1.0 1.2972e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 154343
MatLUFactorSym         1 1.0 3.0860e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum        93 1.0 5.6116e+00 1.0 5.24e+08 1.4 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0 15617
MatILUFactorSym        1 1.0 1.1900e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     648 1.0 1.7673e+01 6.4 0.00e+00 0.0 1.1e+05 4.1e+05 4.6e+02  1  0  1  3  5   4  0  3 11  7    -0
MatAssemblyEnd       648 1.0 2.7087e+00 7.2 2.93e+07 0.0 4.5e+03 1.2e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0   923
MatGetRowIJ            1 1.0 7.0380e-06 55.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.7577e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.1842e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.3192e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2043e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.2908e+00 1.1 2.65e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 406624
MatPtAPSymbolic        1 1.0 1.7476e-01 1.0 0.00e+00 0.0 3.4e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.7582e+00 1.0 1.01e+10 1.1 1.0e+05 3.7e+05 9.6e+01  1  2  1  3  1   3  4  3 10  2 257048
MatGetLocalMat        91 1.0 4.2207e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 3.1671e-01 1.8 0.00e+00 0.0 1.1e+05 3.7e+05 0.0e+00  0  0  1  3  0   0  0  3 10  0    -0
PCSetUp               91 1.0 1.8523e+01 1.0 1.30e+10 1.1 1.7e+05 2.6e+05 4.2e+02  2  2  1  3  5   6  5  5 11  7 138618
PCApply             2340 1.0 5.1791e+02 1.0 3.99e+11 1.1 1.4e+07 6.9e+04 2.8e+03 63 60 80 72 31 Multiple stages 152647
PCApplyOnBlocks       53 1.0 1.2977e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 154285
KSPSetUp              91 1.0 1.3722e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 5.9545e+02 1.0 4.71e+11 1.1 1.7e+07 7.3e+04 7.6e+03 74 71 95 90 84 Multiple stages 156883
KSPGMRESOrthog      2390 1.0 3.4619e+01 1.7 2.32e+10 1.1 0.0e+00 0.0e+00 2.4e+03  3  4  0  0 26   8  9  0  0 38 133641
Mesh Partition         2 1.0 1.3781e-01 1.0 0.00e+00 0.0 1.4e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.1345e-02 1.0 0.00e+00 0.0 4.8e+04 3.1e+02 1.1e+02  0  0  0  0  1   0  0  1  0  2    -0
DMPlexPartSelf         1 1.0 9.6419e-03 3245.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.8948e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.4752e-03 1.2 0.00e+00 0.0 2.7e+03 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.3545e-03 2.1 0.00e+00 0.0 1.4e+03 8.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.0366e-03 1.4 0.00e+00 0.0 1.6e+03 1.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.6535e-01 1.0 0.00e+00 0.0 8.1e+03 1.7e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 3.2326e-03 1.0 0.00e+00 0.0 8.1e+03 5.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.9618e-02 1.0 0.00e+00 0.0 2.3e+04 3.3e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 8.5395e-03 1.1 0.00e+00 0.0 5.5e+04 1.1e+02 8.0e+01  0  0  0  0  1   0  0  2  0  1    -0
DMPlexDistField        3 1.0 4.7884e-03 1.3 0.00e+00 0.0 1.2e+04 1.5e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.1157e-04 1.2 0.00e+00 0.0 5.7e+03 7.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 6.5314e-03 4.8 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 2.0841e-03 96.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.3819e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 7.6265e+02 1.0 6.74e+11 1.1 1.8e+07 7.7e+04 8.7e+03 95 100 99 100 96 Multiple stages 173092
SNESSetUp              1 1.0 3.6681e-05 5.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.5355e+01 1.0 7.74e+10 1.2 3.1e+05 9.3e+04 1.0e+00  6 11  2  2  0  15 28  9  8  0 322507
SNESJacobianEval      91 1.0 1.0032e+02 1.0 1.11e+11 1.2 2.1e+05 2.4e+05 3.6e+02 12 16  1  4  4  34 40  6 13  6 209277
SNESLineSearch        91 1.0 2.3476e+01 1.0 6.02e+10 1.2 3.1e+05 9.3e+04 3.6e+02  3  9  2  2  4   8 22  9  8  6 485651
firedrake              1 1.0 7.9880e+02 1.0 6.74e+11 1.1 1.8e+07 7.7e+04 9.0e+03 99 100 100 100 100 Multiple stages 165259
firedrake.__init__       1 1.0 2.1999e+01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 9.2997e+00 37.2 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  1  0  2   1  0  3  0  3    -0
CreateMesh             1 1.0 2.3489e-01 1.0 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  1  0  2   0  0  3  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 2.1027e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 5.6030e-05 57.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.5555e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.5839e-04 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 3.0363e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 7.4406e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 2.9183e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 2.8274e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 2.8230e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.3374e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 7.3371e-03 1.2 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.3820e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.8276e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.5860e-02 7.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.5723e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.0246e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.6228e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.7626e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.5683e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 4.3390e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3824e+02 1.1 1.89e+11 1.2 2.8e+05 9.1e+04 6.0e+00 16 27  2  2  0  44 67  8  7  0 257670
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.5351e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.6519e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0  12  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.1652e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   7  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 2.0204e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.9196e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.4815e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.4814e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 9.8657e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 9.7414e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 2.9226e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.6893e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.2620e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 1.0713e+00 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   507
firedrake.interpolation.interpolate       2 1.0 6.1506e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 2.1928e+00 1.0 4.27e+06 1.1 6.9e+03 1.1e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   388
firedrake.formmanipulation.split_form       3 1.0 2.2862e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.2607e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 6.0848e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.9357e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.7051e-01 4.8 0.00e+00 0.0 2.8e+05 9.1e+04 2.0e+00  0  0  2  2  0   0  0  8  7  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 2.0285e+00 1.0 4.27e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   420
firedrake.halo.Halo.global_to_local_end     243 1.0 6.7143e+00 207.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.6494e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.3979e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5538e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.5151e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.5124e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.3826e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.4918e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.7684e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.4774e+00 1.0 0.00e+00 0.0 6.8e+03 5.2e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.1224e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.1242e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1553e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1553e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
CreateSparsity         2 1.0 2.6392e+00 1.3 0.00e+00 0.0 5.7e+03 3.0e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.2952e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 7.6271e+02 1.0 6.74e+11 1.1 1.8e+07 7.7e+04 8.8e+03 95 100 99 100 97 Multiple stages 173077
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.5902e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2573e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.5479e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.3460e+00 1.1 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  6  0  0  0 405599
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1953e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  4223
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.1659e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  4280
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0324e+01 1.1 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   3  7  0  0  0 336504
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7112e+01 1.3 4.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   5 15  0  0  0 452787
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.0769e-02 3.1 0.00e+00 0.0 1.4e+05 9.3e+04 0.0e+00  0  0  1  1  0   0  0  4  3  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.5098e+00 135.3 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   456
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.6320e+01 1.1 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  4  0  0  0   5  9  0  0  0 284157
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.5023e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3384
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.4663e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3434
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8428e+01 1.1 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   9  9  0  0  0 171760
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.4637e+01 1.4 6.34e+10 1.3 0.0e+00 0.0e+00 0.0e+00  5  9  0  0  0  13 22  0  0  0 256623
firedrake.dmhooks.get_function_space       1 1.0 1.3340e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 6.4008e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 5.7008e+00 1.0 1.01e+08 42.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   2  0  0  0  0   397
MGSetup Level 1       91 1.0 8.2288e-01 1.0 6.80e+08 1.1 1.1e+04 9.3e+04 2.1e+01  0  0  0  0  0   0  0  0  0  0 163091

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 1.1040e-02 3.5 0.00e+00 0.0 1.2e+05 4.0e+00 9.1e+01  0  0  1  0  1   0  0  1  0  3    -0
SFSetGraph            91 1.0 2.7633e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 1.6364e-02 2.2 0.00e+00 0.0 2.5e+05 1.4e+02 9.1e+01  0  0  1  0  1   0  0  2  0  3    -0
SFPack             16380 1.0 2.4903e+00 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           16380 1.0 9.5518e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2340 1.0 9.4631e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              9359 1.0 7.6750e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY             9360 1.0 4.7103e+00 1.3 3.40e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 143977
VecAYPX             9360 1.0 4.6482e+00 1.8 1.70e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 72950
VecScatterBegin    16380 1.0 2.8431e+00 2.3 0.00e+00 0.0 1.4e+07 7.2e+04 0.0e+00  0  0 77 72  0   0  0 96 100  0    -0
VecScatterEnd      16380 1.0 3.8614e+01 18.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult             9360 1.0 2.5630e+02 1.2 1.89e+11 1.1 1.1e+07 9.3e+04 0.0e+00 30 28 59 72  0  47 47 74 100  0 146080
MatMultAdd          2340 1.0 6.8317e+00 1.2 3.40e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 99268
MatMultTranspose    2340 1.0 4.6118e+00 2.2 3.40e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 147053
MatSolve           11700 1.0 2.5786e+02 1.1 1.79e+11 1.1 3.8e+06 4.8e+02 4.6e+02 30 27 21  0  5  48 45 26  0 16 137453
MatLUFactorNum        89 1.0 1.0539e+01 1.4 1.95e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 360481
MatResidual         2340 1.0 6.5674e+01 1.2 4.76e+10 1.1 2.6e+06 9.3e+04 0.0e+00  8  7 15 18  0  12 12 18 25  0 143815
PCSetUpOnBlocks     4680 1.0 1.0571e+01 1.4 1.95e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   2  5  0  0  0 359404
PCApply            11700 1.0 2.5802e+02 1.1 1.79e+11 1.1 3.8e+06 4.8e+02 4.6e+02 30 27 21  0  5  48 45 26  0 16 137370
PCApplyOnBlocks     9360 1.0 2.3615e+02 1.2 1.78e+11 1.1 0.0e+00 0.0e+00 0.0e+00 27 27  0  0  0  43 45  0  0  0 149732
KSPSetUp               1 1.0 1.9885e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            7020 1.0 4.4079e+02 1.1 3.25e+11 1.1 1.2e+07 6.4e+04 2.8e+03 53 49 65 54 31  84 82 82 75 100 146230
MGSmooth Level 0    2340 1.0 3.4816e+01 1.6 3.87e+09 31.8 3.8e+06 4.8e+02 2.8e+03  3  0 21  0 31   5  0 26  0 100  2451
MGSmooth Level 1    4680 1.0 4.2914e+02 1.1 3.44e+11 1.1 7.9e+06 9.3e+04 0.0e+00 51 52 44 54  0  81 86 55 75  0 158856
MGResid Level 1     2340 1.0 6.5681e+01 1.2 4.76e+10 1.1 2.6e+06 9.3e+04 0.0e+00  8  7 15 18  0  12 12 18 25  0 143799
MGInterp Level 1    4680 1.0 1.1174e+01 1.4 6.81e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 121387
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set   801            801
   IS L to G Mapping     5              5
             Section    76             76
   Star Forest Graph    82            173
              Vector   369            368
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
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 8.3098e-06
Average time for zero size MPI_Send(): 2.05006e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping/medium.profile # (source: environment)
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

