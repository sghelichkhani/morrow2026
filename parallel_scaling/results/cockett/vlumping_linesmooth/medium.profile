****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0574.gadi.nci.org.au with 208 processes, by sg8812 on Sat Aug 29 17:07:07 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           9.474e+02     1.000   9.474e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                7.115e+11     1.142   6.707e+11  1.395e+14
Flops/sec:            7.510e+08     1.142   7.079e+08  1.472e+11
MPI Msg Count:        1.957e+05     3.082   1.309e+05  2.723e+07
MPI Msg Len (bytes):  1.171e+10     2.406   6.844e+04  1.864e+12
MPI Reductions:       1.846e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 4.0488e+02  42.7%  7.2862e+13  52.2%  7.168e+06  26.3%  1.004e+05       38.6%  1.259e+04  68.2%
 1:        MG Apply: 5.4249e+02  57.3%  6.6633e+13  47.8%  2.006e+07  73.7%  5.703e+04       61.4%  5.844e+03  31.7%

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

BuildTwoSided        618 1.0 1.6924e+01 9.3 0.00e+00 0.0 7.9e+04 4.0e+00 5.0e+02  1  0  0  0  3   2  0  1  0  4    -0
BuildTwoSidedF       461 1.0 1.6870e+01 9.5 0.00e+00 0.0 1.1e+05 4.1e+05 4.6e+02  1  0  0  2  2   2  0  1  6  4    -0
SFSetGraph           160 1.1 8.2526e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              157 1.1 2.3442e-01 4.8 0.00e+00 0.0 5.2e+04 2.3e+03 4.1e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         340 1.0 1.3344e-01 2.9 0.00e+00 0.0 3.5e+05 7.4e+04 0.0e+00  0  0  1  1  0   0  0  5  4  0    -0
SFBcastEnd           340 1.0 7.3177e+00 163.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.6436e-02 3.5 0.00e+00 0.0 1.5e+05 8.6e+04 0.0e+00  0  0  1  1  0   0  0  2  2  0    -0
SFReduceEnd          134 1.0 3.4591e+00 155.7 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   463
SFFetchOpBegin         2 1.0 1.7889e-05 4.7 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 6.2370e-04 41.6 0.00e+00 0.0 1.7e+03 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.6766e-03 2.7 0.00e+00 0.0 1.4e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 1.1472e-02 1.4 0.00e+00 0.0 4.6e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 5.3583e-03 6.3 0.00e+00 0.0 2.1e+04 1.3e+02 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             18536 1.1 1.6702e+00 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           18538 1.1 5.6678e-02 3.5 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 28229
VecDot                91 1.0 2.3082e-01 11.9 3.31e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1 28564
VecMDot             5439 1.0 4.6797e+01 2.1 2.87e+10 1.1 0.0e+00 0.0e+00 5.4e+03  3  4  0  0 29   8  8  0  0 43 122107
VecNorm             5966 1.0 5.1364e+00 3.6 2.17e+09 1.1 0.0e+00 0.0e+00 6.0e+03  0  0  0  0 32   1  1  0  0 47 84157
VecScale            5661 1.0 2.5466e-01 1.2 1.03e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 805329
VecCopy              639 1.0 4.1107e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               420 1.0 1.4094e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              222 1.0 9.8825e-02 1.4 8.08e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 162761
VecWAXPY             219 1.0 1.6834e-01 1.6 3.98e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 47129
VecMAXPY            5661 1.0 2.9797e+01 1.1 3.07e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   7  8  0  0  0 205003
VecScatterBegin    18060 1.1 1.8579e+00 2.2 0.00e+00 0.0 6.4e+06 9.3e+04 0.0e+00  0  0 24 32  0   0  0 89 83  0    -0
VecScatterEnd      18060 1.1 2.5682e+01 23.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
VecSetRandom           2 1.0 6.2154e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.2851e-02 1.8 6.62e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 401406
VecReduceComm         91 1.0 6.6271e-02 8.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
VecNormalize          53 1.0 8.2362e-02 2.9 2.89e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  0   0  0  0  0  0 69937
MatMult             5658 1.0 1.5880e+02 1.2 1.14e+11 1.1 6.4e+06 9.3e+04 0.0e+00 15 16 24 32  0  36 31 89 83  0 142523
MatSolve            6148 1.1 8.1584e-01 1.6 4.52e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 110228
MatLUFactorSym       117 1.1 3.7084e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       323 1.1 5.5542e+00 1.0 1.78e+08 2.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  3393
MatAssemblyBegin     880 1.0 1.7023e+01 6.7 0.00e+00 0.0 1.1e+05 4.1e+05 4.6e+02  1  0  0  2  2   2  0  1  6  4    -0
MatAssemblyEnd       880 1.0 2.8079e+00 6.3 2.93e+07 0.0 4.5e+03 1.2e+04 1.7e+01  0  0  0  0  0   0  0  0  0  0   890
MatGetRowIJ          116 1.1 2.0240e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 3.4894e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+02  0  0  0  0  1   0  0  0  0  1    -0
MatGetOrdering       116 1.1 1.7730e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 3.1114e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.2490e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2916e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.3169e+00 1.2 2.65e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 398551
MatPtAPSymbolic        1 1.0 1.8566e-01 1.0 0.00e+00 0.0 3.4e+03 2.0e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.7622e+00 1.0 1.01e+10 1.1 1.0e+05 3.7e+05 9.6e+01  1  1  0  2  1   2  3  1  5  1 256914
MatGetLocalMat        91 1.0 4.1186e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 3.3513e-01 2.0 0.00e+00 0.0 1.1e+05 3.7e+05 0.0e+00  0  0  0  2  0   0  0  1  5  0    -0
PCSetUp               91 1.0 1.8469e+01 1.0 1.20e+10 1.1 1.7e+05 2.6e+05 5.4e+02  2  2  1  2  3   5  3  2  6  4 129323
PCApply             5389 1.0 5.5832e+02 1.1 3.38e+11 1.1 2.0e+07 5.7e+04 5.8e+03 57 48 74 61 32 Multiple stages 119347
PCApplyOnBlocks     6148 1.1 9.4001e-01 1.6 5.35e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 113411
KSPSetUp              91 1.0 1.3595e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 7.4735e+02 1.0 5.10e+11 1.1 2.6e+07 6.6e+04 1.7e+04 79 72 97 93 91 Multiple stages 135253
KSPGMRESOrthog      5439 1.0 7.3978e+01 1.5 5.74e+10 1.1 0.0e+00 0.0e+00 5.4e+03  6  8  0  0 29  14 16  0  0 43 154486
Mesh Partition         2 1.0 1.3741e-01 1.0 0.00e+00 0.0 1.4e+04 2.3e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 3.1955e-02 1.0 0.00e+00 0.0 4.8e+04 3.1e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 9.6470e-03 3390.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.8871e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.3421e-03 1.1 0.00e+00 0.0 2.7e+03 2.2e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.3753e-03 2.1 0.00e+00 0.0 1.4e+03 8.6e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 4.9052e-03 1.5 0.00e+00 0.0 1.6e+03 1.5e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.6561e-01 1.0 0.00e+00 0.0 8.1e+03 1.7e+03 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 3.3339e-03 1.0 0.00e+00 0.0 8.1e+03 5.5e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.9911e-02 1.0 0.00e+00 0.0 2.3e+04 3.3e+02 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 8.7746e-03 1.1 0.00e+00 0.0 5.5e+04 1.1e+02 8.0e+01  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        3 1.0 4.8991e-03 1.3 0.00e+00 0.0 1.2e+04 1.5e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.1325e-04 1.2 0.00e+00 0.0 5.7e+03 7.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 7.6768e-03 6.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 2.1624e-03 101.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.0974e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 9.1115e+02 1.0 7.12e+11 1.1 2.7e+07 6.9e+04 1.8e+04 96 100 100 100 98 Multiple stages 153098
SNESSetUp              1 1.0 3.7249e-05 5.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4671e+01 1.0 7.74e+10 1.2 3.1e+05 9.3e+04 1.0e+00  5 10  1  2  0  11 20  4  4  0 327449
SNESJacobianEval      91 1.0 9.7722e+01 1.0 1.11e+11 1.2 2.1e+05 2.4e+05 3.6e+02 10 15  1  3  2  24 29  3  7  3 214843
SNESLineSearch        91 1.0 2.3127e+01 1.0 6.02e+10 1.2 3.1e+05 9.3e+04 3.6e+02  2  8  1  2  2   6 16  4  4  3 492972
firedrake              1 1.0 9.4292e+02 1.0 7.12e+11 1.1 2.7e+07 6.8e+04 1.8e+04 99 100 100 100 100 Multiple stages 147939
firedrake.__init__       1 1.0 1.8024e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   4  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 2.7983e+00 11.4 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  0  0  1   0  0  2  0  2    -0
CreateMesh             1 1.0 2.3302e-01 1.0 0.00e+00 0.0 1.2e+05 2.3e+02 1.9e+02  0  0  0  0  1   0  0  2  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.3389e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5980e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.6129e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.9523e-04 6.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 2.9476e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       8 1.0 9.9305e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 2.7970e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 2.6853e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 2.6790e-02 1.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.2162e-02 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.0164e-02 2.1 0.00e+00 0.0 8.0e+03 9.8e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.1847e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       8 1.0 1.2488e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 1.2395e-02 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.4358e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.1068e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 4.7620e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.0359e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.4317e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 4.7770e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3458e+02 1.1 1.89e+11 1.2 2.8e+05 9.1e+04 6.0e+00 13 26  1  1  0  32 49  4  4  0 264671
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.3997e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.4458e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   8  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.0144e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 2.0365e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.7660e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.4244e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.4243e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 9.5678e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 9.4507e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 3.1626e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.6662e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.3138e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 1.0144e+00 1.0 2.73e+06 1.1 4.6e+03 1.7e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0   536
firedrake.interpolation.interpolate       2 1.0 6.1035e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 2.0818e+00 1.0 4.27e+06 1.1 6.9e+03 1.1e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   409
firedrake.formmanipulation.split_form       3 1.0 2.2318e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 4.6969e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 6.7086e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.9560e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 3.8482e-01 3.9 0.00e+00 0.0 2.8e+05 9.1e+04 2.0e+00  0  0  1  1  0   0  0  4  4  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.9159e+00 1.0 4.27e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   444
firedrake.halo.Halo.global_to_local_end     243 1.0 7.1404e+00 240.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 2.9113e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.5905e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.8497e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 6.4504e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.9383e-05 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 9.1419e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.7010e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.5419e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.3898e+00 1.0 0.00e+00 0.0 6.8e+03 5.2e+05 2.3e+01  1  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.0899e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2529e-04 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1404e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1404e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         2 1.0 2.5655e+00 1.2 0.00e+00 0.0 5.7e+03 3.0e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.3292e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 9.1121e+02 1.0 7.12e+11 1.1 2.7e+07 6.9e+04 1.8e+04 96 100 100 100 99 Multiple stages 153087
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 9.9827e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.2941e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 4.4337e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.2021e+00 1.1 1.70e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 412717
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.1099e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  4394
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0899e+00 1.0 4.65e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  4436
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0106e+01 1.1 1.74e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 343785
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.6978e+01 1.3 4.29e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   4 11  0  0  0 456365
firedrake.halo.Halo.local_to_global_begin     121 1.0 3.0101e-02 2.8 0.00e+00 0.0 1.4e+05 9.3e+04 0.0e+00  0  0  1  1  0   0  0  2  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.4602e+00 148.0 1.02e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   462
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.6719e+01 1.2 2.33e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   4  6  0  0  0 277383
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3490e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  3605
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.1061e+00 1.0 4.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  4021
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.7924e+01 1.1 2.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   7  7  0  0  0 174862
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.3691e+01 1.3 6.34e+10 1.3 0.0e+00 0.0e+00 0.0e+00  4  8  0  0  0   9 16  0  0  0 262181
firedrake.dmhooks.get_function_space       2 1.0 1.9790e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 8.1435e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 5.8230e+00 1.0 9.93e+07 34.4 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   372
MGSetup Level 1       91 1.0 9.3577e-01 1.0 3.87e+08 1.1 1.1e+04 9.3e+04 1.4e+02  0  0  0  0  1   0  0  0  0  1 82250

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 1.5260e-02 4.5 0.00e+00 0.0 1.2e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  1  0  2    -0
SFSetGraph            91 1.0 2.7208e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 1.9851e-02 2.7 0.00e+00 0.0 2.4e+05 1.4e+02 9.1e+01  0  0  1  0  0   0  0  1  0  2    -0
SFPack           2548997 1.1 3.1130e+00 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2548997 1.1 1.4259e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             5389 1.0 2.1923e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             43111 1.0 9.2235e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecAXPY            10778 1.0 4.5223e+00 1.5 3.92e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 172680
VecAYPX            10778 1.0 5.8753e+00 1.7 1.96e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 66457
VecScatterBegin  2548997 1.1 2.7402e+01 1.2 0.00e+00 0.0 1.9e+07 5.9e+04 0.0e+00  3  0 71 61  0   5  0 97 100  0    -0
VecScatterEnd    2548997 1.1 3.7221e+01 14.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   3  0  0  0  0    -0
MatMult            10778 1.0 2.8974e+02 1.1 2.17e+11 1.1 1.2e+07 9.3e+04 0.0e+00 29 31 45 61  0  50 65 61 100  0 148797
MatMultAdd          5389 1.0 1.4705e+01 1.2 7.84e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   3  2  0  0  0 106212
MatMultTranspose    5389 1.0 1.1833e+01 2.2 7.84e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 131986
MatSolve         1255637 1.1 2.0580e+02 1.2 9.73e+10 1.2 7.9e+06 5.2e+02 4.6e+02 20 13 29  0  2  34 28 39  0  8 89811
MatLUFactorNum     10324 1.1 3.0602e+00 1.4 3.73e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 242549
MatResidual         5389 1.0 1.5490e+02 1.2 1.10e+11 1.1 6.1e+06 9.3e+04 0.0e+00 15 16 22 31  0  26 33 30 50  0 140418
MatAssemblyBegin   10324 1.1 2.2208e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd     10324 1.1 2.7457e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 9.6947e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
PCSetUp            10413 1.1 1.2718e+01 1.2 3.73e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  1  0  0  0 58360
PCApply            16167 1.0 2.5452e+02 1.2 1.01e+11 1.2 7.9e+06 5.2e+02 4.6e+02 25 14 29  0  2  43 29 39  0  8 75537
PCApplyOnBlocks  1250248 1.1 1.6814e+02 1.4 9.55e+10 1.1 0.0e+00 0.0e+00 0.0e+00 15 14  0  0  0  27 29  0  0  0 113182
KSPSetUp           10325 1.1 2.7669e-03 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           16167 1.0 4.0090e+02 1.1 2.14e+11 1.1 1.4e+07 4.1e+04 5.8e+03 40 30 51 31 32  70 63 70 50 100 104160
MGSmooth Level 0    5389 1.0 6.0404e+01 1.5 8.80e+09 23.9 7.9e+06 5.2e+02 5.8e+03  5  0 29  0 32   9  0 39  0 100  3242
MGSmooth Level 1   10778 1.0 3.5790e+02 1.2 2.09e+11 1.1 6.1e+06 9.3e+04 0.0e+00 35 30 22 31  0  61 62 30 50  0 116130
MGResid Level 1     5389 1.0 1.5492e+02 1.2 1.10e+11 1.1 6.1e+06 9.3e+04 0.0e+00 15 16 22 31  0  26 33 30 50  0 140404
MGInterp Level 1   10778 1.0 2.6096e+01 1.4 1.57e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   4  5  0  0  0 119699
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set  1798           1798
   IS L to G Mapping   116            116
             Section    76             76
   Star Forest Graph   195            286
              Vector   703            702
              Matrix   580            580
      Preconditioner   117            117
       Krylov Solver   117            117
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
Average time to get PetscTime(): 2.55e-08
Average time for MPI_Barrier(): 8.083e-06
Average time for zero size MPI_Send(): 2.00091e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_linesmooth/medium.profile # (source: environment)
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

