****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0352.gadi.nci.org.au with 416 processes, by sg8812 on Sat Aug 29 17:08:03 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.015e+03     1.000   1.015e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                7.970e+11     1.148   7.470e+11  3.108e+14
Flops/sec:            7.855e+08     1.148   7.363e+08  3.063e+11
MPI Msg Count:        2.008e+05     3.676   1.086e+05  4.517e+07
MPI Msg Len (bytes):  1.325e+10     2.764   8.561e+04  3.867e+12
MPI Reductions:       1.086e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.4066e+02  33.6%  1.1490e+14  37.0%  8.850e+06  19.6%  1.168e+05       26.7%  7.471e+03  68.8%
 1:        MG Apply: 6.7390e+02  66.4%  1.9585e+14  63.0%  3.632e+07  80.4%  7.801e+04       73.3%  3.375e+03  31.1%

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

BuildTwoSided        501 1.0 2.0502e+01 6.5 0.00e+00 0.0 1.6e+05 4.0e+00 5.0e+02  1  0  0  0  5   3  0  2  0  7    -0
BuildTwoSidedF       461 1.0 2.0389e+01 6.6 0.00e+00 0.0 2.2e+05 4.6e+05 4.6e+02  1  0  0  3  4   3  0  2 10  6    -0
SFSetGraph            43 1.0 5.3837e-03 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 2.7104e-01 5.9 0.00e+00 0.0 1.1e+05 2.6e+03 4.0e+01  0  0  0  0  0   0  0  1  0  1    -0
SFBcastBegin         340 1.0 1.6739e-01 3.2 0.00e+00 0.0 7.1e+05 8.2e+04 0.0e+00  0  0  2  2  0   0  0  8  6  0    -0
SFBcastEnd           340 1.0 8.7312e+00 154.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 3.5216e-02 4.6 0.00e+00 0.0 3.1e+05 9.5e+04 0.0e+00  0  0  1  1  0   0  0  3  3  0    -0
SFReduceEnd          134 1.0 2.9508e+00 114.9 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1242
SFFetchOpBegin         2 1.0 1.7140e-05 6.1 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 8.1558e-04 78.7 0.00e+00 0.0 3.5e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.8180e-03 2.9 0.00e+00 0.0 2.8e+03 8.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.4642e-02 1.3 0.00e+00 0.0 9.4e+04 2.0e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 5.6042e-03 5.1 0.00e+00 0.0 4.1e+04 1.1e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              3601 1.0 1.1488e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            3603 1.0 6.7614e-02 4.6 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 54192
VecDot                91 1.0 2.9518e-01 11.7 3.34e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 44914
VecMDot             2970 1.0 3.4106e+01 2.7 1.54e+10 1.1 0.0e+00 0.0e+00 3.0e+03  2  2  0  0 27   6  5  0  0 40 179339
VecNorm             3433 1.0 5.2045e+00 4.1 1.26e+09 1.1 0.0e+00 0.0e+00 3.4e+03  0  0  0  0 32   1  0  0  0 46 96098
VecScale            3128 1.0 1.3548e-01 1.2 5.75e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1681771
VecCopy              639 1.0 4.2434e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               250 1.0 8.9909e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              158 1.0 7.1488e-02 1.3 5.81e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 321990
VecWAXPY             155 1.0 1.2160e-01 1.5 2.85e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 92853
VecMAXPY            3128 1.0 1.6293e+01 1.2 1.65e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  6  0  0  0 401965
VecScatterBegin     3125 1.0 1.1645e+00 2.8 0.00e+00 0.0 7.3e+06 1.0e+05 0.0e+00  0  0 16 20  0   0  0 82 73  0    -0
VecScatterEnd       3125 1.0 1.6310e+01 34.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 6.8937e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.6018e-02 2.2 6.69e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 736162
VecReduceComm         91 1.0 6.3437e-02 14.4 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize          53 1.0 1.1701e-01 4.5 2.92e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  0   0  0  0  0  1 98982
MatMult             3125 1.0 8.8703e+01 1.2 6.37e+10 1.1 7.3e+06 1.0e+05 0.0e+00  8  8 16 20  0  24 22 82 73  0 283666
MatSolve              53 1.0 1.3021e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 307010
MatLUFactorSym         1 1.0 5.9977e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum        93 1.0 1.9719e+01 1.0 5.76e+08 1.5 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0  8837
MatILUFactorSym        1 1.0 1.1285e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     648 1.0 2.0803e+01 5.3 0.00e+00 0.0 2.2e+05 4.6e+05 4.6e+02  1  0  0  3  4   4  0  2 10  6    -0
MatAssemblyEnd       648 1.0 3.0570e+00 7.7 3.42e+07 0.0 9.3e+03 1.3e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  1872
MatGetRowIJ            1 1.0 1.4740e-06 12.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 2.3964e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.2445e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.1370e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2485e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.3532e+00 1.2 2.68e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 780694
MatPtAPSymbolic        1 1.0 1.7989e-01 1.0 0.00e+00 0.0 7.0e+03 2.3e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.9523e+00 1.0 1.02e+10 1.1 2.1e+05 4.1e+05 9.6e+01  1  1  0  2  1   2  3  2  8  1 504774
MatGetLocalMat        91 1.0 4.2238e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 3.9856e-01 1.9 0.00e+00 0.0 2.2e+05 4.1e+05 0.0e+00  0  0  0  2  0   0  0  2  9  0    -0
PCSetUp               91 1.0 3.3297e+01 1.0 1.31e+10 1.1 3.4e+05 2.9e+05 4.2e+02  3  2  1  3  4  10  4  4 10  6 155046
PCApply             2920 1.0 6.8479e+02 1.0 4.97e+11 1.1 3.6e+07 7.8e+04 3.4e+03 66 63 80 73 31 Multiple stages 286008
PCApplyOnBlocks       53 1.0 1.3026e+00 1.2 1.01e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 306896
KSPSetUp              91 1.0 1.4397e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 7.8929e+02 1.0 5.91e+11 1.1 4.3e+07 8.2e+04 9.4e+03 78 75 96 92 86 Multiple stages 295330
KSPGMRESOrthog      2970 1.0 4.8224e+01 1.8 3.09e+10 1.1 0.0e+00 0.0e+00 3.0e+03  3  4  0  0 27  10 11  0  0 40 253670
Mesh Partition         2 1.0 2.5349e-01 1.0 0.00e+00 0.0 2.9e+04 1.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 4.6032e-02 1.0 0.00e+00 0.0 9.7e+04 2.5e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.5268e-02 4169.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 3.1447e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.3975e-03 1.1 0.00e+00 0.0 5.6e+03 1.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.2723e-03 2.3 0.00e+00 0.0 2.8e+03 7.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 7.1710e-03 1.3 0.00e+00 0.0 3.2e+03 1.2e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 2.9238e-01 1.0 0.00e+00 0.0 1.6e+04 1.4e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 4.4426e-03 1.1 0.00e+00 0.0 1.7e+04 4.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.0925e-02 1.0 0.00e+00 0.0 4.6e+04 2.8e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 1.4965e-02 1.2 0.00e+00 0.0 1.1e+05 1.0e+02 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 6.1402e-03 1.3 0.00e+00 0.0 2.5e+04 1.2e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.4489e-04 1.2 0.00e+00 0.0 1.2e+04 6.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.1340e-02 6.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 3.3382e-03 191.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.5095e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 9.7118e+02 1.0 7.97e+11 1.1 4.5e+07 8.6e+04 1.1e+04 96 100 99 100 97 Multiple stages 319977
SNESSetUp              1 1.0 3.7438e-05 6.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4579e+01 1.1 7.91e+10 1.3 6.4e+05 1.0e+05 1.0e+00  4  9  1  2  0  13 26  7  6  0 660254
SNESJacobianEval      91 1.0 1.0099e+02 1.0 1.14e+11 1.3 4.2e+05 2.7e+05 3.6e+02 10 14  1  3  3  30 37  5 11  5 418367
SNESLineSearch        91 1.0 2.3812e+01 1.0 6.16e+10 1.2 6.4e+05 1.0e+05 3.6e+02  2  7  1  2  3   7 20  7  6  5 963457
firedrake              1 1.0 1.0087e+03 1.0 7.97e+11 1.1 4.5e+07 8.6e+04 1.1e+04 99 100 100 100 100 Multiple stages 308065
firedrake.__init__       1 1.0 1.7455e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 4.6609e+00 11.8 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  1  0  2   1  0  3  0  3    -0
CreateMesh             1 1.0 3.7945e-01 1.0 0.00e+00 0.0 2.5e+05 1.9e+02 1.9e+02  0  0  1  0  2   0  0  3  0  3    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.0567e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.6200e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.7374e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.2794e-04 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 3.1761e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 1.1720e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 3.0730e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 2.9872e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 2.9828e-02 1.1 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.2673e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.2567e-02 1.7 0.00e+00 0.0 1.6e+04 8.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.3741e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.6119e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 3.1812e-02 10.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 5.7757e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.1039e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5661e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.2145e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 5.7715e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 3.8443e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.4363e+02 1.2 1.93e+11 1.3 5.8e+05 1.0e+05 6.0e+00 13 23  1  2  0  39 62  7  6  0 499040
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 5.7390e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.9528e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0  11  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 1.9505e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 1.7096e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.7284e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.9988e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.9987e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 1.1501e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 1.1398e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 2.9421e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.8099e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 3.9929e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 3.6414e+00 1.0 2.76e+06 1.1 9.5e+03 1.9e+04 2.0e+00  0  0  0  0  0   1  0  0  0  0   300
firedrake.interpolation.interpolate       2 1.0 6.9189e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 4.8963e+00 1.0 4.32e+06 1.1 1.4e+04 1.2e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   350
firedrake.formmanipulation.split_form       3 1.0 2.8452e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.9561e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 6.3715e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.9284e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 4.6772e-01 3.8 0.00e+00 0.0 5.8e+05 1.0e+05 2.0e+00  0  0  1  2  0   0  0  7  6  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 4.7184e+00 1.0 4.32e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   363
firedrake.halo.Halo.global_to_local_end     243 1.0 8.1933e+00 264.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.8191e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.5255e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.7547e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 4.6850e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.0847e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.3427e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.6294e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.6861e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.4785e+00 1.0 0.00e+00 0.0 1.4e+04 5.7e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9792e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6193e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1431e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1431e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         2 1.0 2.6807e+00 1.3 0.00e+00 0.0 1.2e+04 3.4e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.6355e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 9.7125e+02 1.0 7.97e+11 1.1 4.5e+07 8.6e+04 1.1e+04 96 100 99 100 98 Multiple stages 319954
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.6133e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 2.1403e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 3.2090e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.1706e+00 1.1 1.72e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  6  0  0  0 833068
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 1.9924e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  7424
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.9820e+00 1.0 3.73e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  7463
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.9818e+00 1.1 1.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   3  6  0  0  0 700582
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7233e+01 1.3 4.42e+10 1.4 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   4 14  0  0  0 905294
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.9571e-02 3.6 0.00e+00 0.0 2.8e+05 1.0e+05 0.0e+00  0  0  1  1  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 2.9519e+00 109.2 1.27e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1241
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5748e+01 1.1 2.35e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   4  8  0  0  0 592123
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.2996e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  5876
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.2558e+00 1.0 3.41e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  5990
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8239e+01 1.1 2.48e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  3  0  0  0   8  9  0  0  0 348046
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5451e+01 1.4 6.54e+10 1.4 0.0e+00 0.0e+00 0.0e+00  4  7  0  0  0  11 20  0  0  0 507447
firedrake.dmhooks.get_function_space       1 1.0 1.6751e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.7599e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 2.0100e+01 1.0 1.67e+08 53.4 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   6  0  0  0  0   211
MGSetup Level 1       91 1.0 8.3486e-01 1.0 6.85e+08 1.1 2.3e+04 1.0e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 321641

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 2.5657e-02 9.4 0.00e+00 0.0 2.5e+05 4.0e+00 9.1e+01  0  0  1  0  1   0  0  1  0  3    -0
SFSetGraph            91 1.0 2.4477e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 3.0738e-02 5.4 0.00e+00 0.0 4.9e+05 1.1e+02 9.1e+01  0  0  1  0  1   0  0  1  0  3    -0
SFPack             20440 1.0 4.0912e+00 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           20440 1.0 1.3541e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2920 1.0 1.1802e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             11679 1.0 9.5965e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY            11680 1.0 6.0725e+00 1.3 4.29e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 280216
VecAYPX            11680 1.0 6.2770e+00 2.3 2.15e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 135545
VecScatterBegin    20440 1.0 4.6191e+00 2.7 0.00e+00 0.0 3.5e+07 8.1e+04 0.0e+00  0  0 78 73  0   0  0 97 100  0    -0
VecScatterEnd      20440 1.0 5.1413e+01 42.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            11680 1.0 3.2697e+02 1.2 2.38e+11 1.1 2.7e+07 1.0e+05 0.0e+00 30 30 60 73  0  45 48 75 100  0 287625
MatMultAdd          2920 1.0 8.4600e+00 1.2 4.29e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 201138
MatMultTranspose    2920 1.0 6.9070e+00 2.5 4.29e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 246363
MatSolve           14600 1.0 3.6448e+02 1.2 2.25e+11 1.1 9.1e+06 4.0e+02 4.6e+02 33 28 20  0  4  50 45 25  0 13 242223
MatLUFactorNum        89 1.0 1.0846e+01 1.4 1.97e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  4  0  0  0 697517
MatResidual         2920 1.0 8.4780e+01 1.2 6.00e+10 1.1 6.8e+06 1.0e+05 0.0e+00  8  8 15 18  0  11 12 19 25  0 279831
PCSetUpOnBlocks     5840 1.0 1.0886e+01 1.4 1.97e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  4  0  0  0 694983
PCApply            14600 1.0 3.6468e+02 1.2 2.25e+11 1.1 9.1e+06 4.0e+02 4.6e+02 33 28 20  0  4  50 45 25  0 13 242095
PCApplyOnBlocks    11680 1.0 2.9696e+02 1.2 2.23e+11 1.1 0.0e+00 0.0e+00 0.0e+00 27 28  0  0  0  40 45  0  0  0 296664
KSPSetUp               1 1.0 2.0259e-03 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve            8760 1.0 5.8912e+02 1.0 4.09e+11 1.1 3.0e+07 7.2e+04 3.4e+03 57 52 65 55 31  85 82 81 75 100 273561
MGSmooth Level 0    2920 1.0 8.1063e+01 1.3 8.05e+09 53.5 9.1e+06 4.0e+02 3.4e+03  7  0 20  0 31  10  0 25  0 100  2330
MGSmooth Level 1    5840 1.0 5.3608e+02 1.1 4.27e+11 1.1 2.0e+07 1.0e+05 0.0e+00 51 54 45 55  0  77 86 56 75  0 314390
MGResid Level 1     2920 1.0 8.4789e+01 1.2 6.00e+10 1.1 6.8e+06 1.0e+05 0.0e+00  8  8 15 18  0  11 12 19 25  0 279803
MGInterp Level 1    5840 1.0 1.4736e+01 1.5 8.59e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 230941
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set  1416           1416
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
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 1.1943e-05
Average time for zero size MPI_Send(): 2.05055e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping/large.profile # (source: environment)
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

