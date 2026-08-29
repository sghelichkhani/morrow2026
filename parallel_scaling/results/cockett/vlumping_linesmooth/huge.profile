****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0344.gadi.nci.org.au with 832 processes, by sg8812 on Sat Aug 29 17:24:22 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.998e+03     1.000   1.998e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.032e+12     1.152   9.769e+11  8.128e+14
Flops/sec:            5.164e+08     1.152   4.888e+08  4.067e+11
MPI Msg Count:        5.904e+05     6.060   2.174e+05  1.808e+08
MPI Msg Len (bytes):  2.532e+10     2.992   8.556e+04  1.547e+13
MPI Reductions:       2.900e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 6.0605e+02  30.3%  3.7881e+14  46.6%  4.702e+07  26.0%  1.215e+05       36.9%  1.965e+04  67.8%
 1:        MG Apply: 1.3923e+03  69.7%  4.3396e+14  53.4%  1.338e+08  74.0%  7.293e+04       63.1%  9.331e+03  32.2%

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

BuildTwoSided        574 1.0 2.2041e+01 5.5 0.00e+00 0.0 3.3e+05 4.0e+00 5.0e+02  1  0  0  0  2   2  0  1  0  3    -0
BuildTwoSidedF       461 1.0 2.1966e+01 5.6 0.00e+00 0.0 4.4e+05 5.1e+05 4.6e+02  1  0  0  1  2   2  0  1  4  2    -0
SFSetGraph           116 1.1 9.4381e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              113 1.1 3.5324e-01 7.3 0.00e+00 0.0 2.2e+05 2.9e+03 4.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFBcastBegin         340 1.0 1.7749e-01 3.3 0.00e+00 0.0 1.5e+06 9.2e+04 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
SFBcastEnd           340 1.0 1.0302e+01 106.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 2.5974e-02 18.1 0.00e+00 0.0 6.2e+05 1.1e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
SFReduceEnd          134 1.0 3.5273e+00 185.5 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2354
SFFetchOpBegin         2 1.0 2.5052e-05 10.3 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.1259e-03 91.1 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.9664e-03 3.8 0.00e+00 0.0 5.7e+03 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 2.3039e-02 1.4 0.00e+00 0.0 1.9e+05 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           22 1.0 1.0059e-02 6.9 0.00e+00 0.0 8.2e+04 9.4e+01 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack             17482 1.0 3.7502e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           17484 1.0 6.6914e-02 9.1 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 124062
VecDot                91 1.0 3.5892e-01 11.5 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0 72901
VecMDot             8926 1.0 1.0689e+02 2.4 4.66e+10 1.1 0.0e+00 0.0e+00 8.9e+03  3  5  0  0 31  11 10  0  0 45 348906
VecNorm             9576 1.0 1.1240e+01 2.6 3.44e+09 1.1 0.0e+00 0.0e+00 9.6e+03  0  0  0  0 33   1  1  0  0 49 244970
VecScale            9271 1.0 4.2347e-01 1.4 1.67e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3147567
VecCopy              639 1.0 3.2435e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               543 1.0 1.8528e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              345 1.0 1.5294e-01 1.4 1.24e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 648620
VecWAXPY             342 1.0 2.8194e-01 2.2 6.15e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 174397
VecMAXPY            9271 1.0 4.8641e+01 1.1 4.98e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   8 11  0  0  0 819489
VecScatterBegin    17006 1.0 4.0903e+00 2.9 0.00e+00 0.0 4.4e+07 1.2e+05 0.0e+00  0  0 24 33  0   0  0 93 89  0    -0
VecScatterEnd      17006 1.0 4.1548e+01 39.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 6.1648e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.0329e-02 1.7 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1725495
VecReduceComm         91 1.0 7.5989e-02 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize          53 1.0 9.3845e-02 2.8 2.86e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  0   0  0  0  0  0 243587
MatMult             9268 1.0 2.6077e+02 1.2 1.85e+11 1.1 4.4e+07 1.2e+05 0.0e+00 12 18 24 33  0  40 39 93 89  0 565299
MatSolve            3816 1.1 8.2444e-01 1.7 4.47e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 433444
MatLUFactorSym        73 1.1 2.4441e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       235 1.1 3.5376e+01 1.0 3.19e+08 4.1 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0  2071
MatAssemblyBegin     792 1.0 2.2187e+01 4.4 0.00e+00 0.0 4.4e+05 5.1e+05 4.6e+02  1  0  0  1  2   2  0  1  4  2    -0
MatAssemblyEnd       792 1.0 3.4580e+00 7.6 3.77e+07 0.0 1.9e+04 1.5e+04 1.7e+01  0  0  0  0  0   0  0  0  0  0  3751
MatGetRowIJ           72 1.1 2.6752e-05 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats       2 1.0 2.9382e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 7.3e+01  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering        72 1.1 1.7624e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       182 1.0 2.3542e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatTranspose           2 1.0 9.2970e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.1847e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        182 1.0 1.3418e+00 1.2 2.62e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 1555156
MatPtAPSymbolic        1 1.0 1.9823e-01 1.0 0.00e+00 0.0 1.4e+04 2.5e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        91 1.0 7.8629e+00 1.0 9.94e+09 1.1 4.4e+05 4.5e+05 9.6e+01  0  1  0  1  0   1  2  1  3  0 1008411
MatGetLocalMat        91 1.0 4.1192e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         91 1.0 4.6133e-01 2.5 0.00e+00 0.0 4.4e+05 4.6e+05 0.0e+00  0  0  0  1  0   0  0  1  4  0    -0
PCSetUp               91 1.0 5.0482e+01 1.0 1.19e+10 1.1 7.0e+05 3.3e+05 4.9e+02  3  1  0  1  2   8  3  1  4  3 188071
PCApply             8876 1.0 1.4207e+03 1.0 5.55e+11 1.2 1.3e+08 7.3e+04 9.3e+03 70 53 74 63 32 Multiple stages 305450
PCApplyOnBlocks     3816 1.1 9.4141e-01 1.5 5.30e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 450023
KSPSetUp              91 1.0 1.5063e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.7517e+03 1.0 8.31e+11 1.1 1.8e+08 8.3e+04 2.7e+04 88 81 98 95 95 Multiple stages 376829
KSPGMRESOrthog      8926 1.0 1.4945e+02 1.7 9.32e+10 1.1 0.0e+00 0.0e+00 8.9e+03  6  9  0  0 31  18 20  0  0 45 499092
Mesh Partition         2 1.0 5.5178e-01 1.0 0.00e+00 0.0 5.9e+04 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 7.3942e-02 1.0 0.00e+00 0.0 2.0e+05 2.1e+02 1.1e+02  0  0  0  0  0   0  0  0  0  1    -0
DMPlexPartSelf         1 1.0 2.5642e-02 5126.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 6.1575e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 1.0523e-02 2.9 0.00e+00 0.0 1.1e+04 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.6133e-03 1.9 0.00e+00 0.0 5.7e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1303e-02 1.2 0.00e+00 0.0 6.5e+03 9.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.1584e-01 1.0 0.00e+00 0.0 3.2e+04 1.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 8.0332e-03 1.1 0.00e+00 0.0 3.4e+04 3.6e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 5.0131e-02 1.0 0.00e+00 0.0 9.3e+04 2.3e+02 7.6e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistOvrlp        1 1.0 2.3351e-02 1.0 0.00e+00 0.0 2.3e+05 9.1e+01 8.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistField        3 1.0 1.0088e-02 1.2 0.00e+00 0.0 5.2e+04 1.0e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.6155e-04 1.2 0.00e+00 0.0 2.4e+04 5.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.5532e-02 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 5.7753e-03 396.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 1.8802e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.9504e+03 1.0 1.03e+12 1.2 1.8e+08 8.6e+04 2.9e+04 98 100 100 100 99 Multiple stages 416723
SNESSetUp              1 1.0 4.1578e-05 6.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4901e+01 1.1 7.85e+10 1.3 1.3e+06 1.1e+05 1.0e+00  2  7  1  1  0   7 15  3  3  0 1294539
SNESJacobianEval      91 1.0 1.0010e+02 1.0 1.13e+11 1.3 8.6e+05 3.0e+05 3.6e+02  5 10  0  2  1  17 22  2  5  2 833609
SNESLineSearch        91 1.0 2.3779e+01 1.0 6.10e+10 1.3 1.3e+06 1.2e+05 3.6e+02  1  6  1  1  1   4 12  3  3  2 1905241
firedrake              1 1.0 1.9941e+03 1.0 1.03e+12 1.2 1.8e+08 8.6e+04 2.9e+04 100 100 100 100 100 Multiple stages 407592
firedrake.__init__       1 1.0 1.7215e+01 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 1.4521e+01 19.3 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  0  0  1   1  0  1  0  1    -0
CreateMesh             1 1.0 7.3286e-01 1.0 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  0  0  1   0  0  1  0  1    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.4291e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.2484e-05 13.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.8360e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.6109e-04 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       7 1.0 3.5969e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       8 1.0 1.2281e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       7 1.0 3.4427e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       6 1.0 3.3213e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       6 1.0 3.3139e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      12 1.0 1.3821e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 1.6225e-02 1.7 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.1168e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       8 1.0 8.3625e-04 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 1.8141e-01 61.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 7.0096e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.0728e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 5.0949e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.4651e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 7.0054e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 3.6391e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.4323e+02 1.2 1.91e+11 1.3 1.2e+06 1.1e+05 6.0e+00  7 17  1  1  0  22 37  3  2  0 988257
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 6.9661e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 4.2363e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.1214e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 2.1198e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.7899e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 2.1105e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.load      13 1.0 2.1104e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 1.1801e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 1.1674e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 3.1752e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.7605e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 4.5423e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 4.1206e+00 1.0 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   1  0  0  0  0   523
firedrake.interpolation.interpolate       2 1.0 6.5132e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 5.1861e+00 1.0 4.22e+06 1.1 2.9e+04 1.4e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0   651
firedrake.formmanipulation.split_form       3 1.0 2.8026e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 5.1655e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 5.9534e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 3.9857e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 5.5051e-01 4.4 0.00e+00 0.0 1.2e+06 1.1e+05 2.0e+00  0  0  1  1  0   0  0  3  2  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 5.0176e+00 1.0 4.22e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0   673
firedrake.halo.Halo.global_to_local_end     243 1.0 1.0019e+01 276.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 4.2006e-01 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 3.9227e-01 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6349e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 9.1437e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.3624e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.6482e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 4.5715e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.0065e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.6496e+00 1.0 0.00e+00 0.0 2.9e+04 6.4e+05 2.3e+01  0  0  0  0  0   2  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9492e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.3017e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1531e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1531e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         2 1.0 2.8650e+00 1.3 0.00e+00 0.0 2.4e+04 3.7e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 4.5925e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.9504e+03 1.0 1.03e+12 1.2 1.8e+08 8.6e+04 2.9e+04 98 100 100 100 99 Multiple stages 416712
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.0284e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 1.4636e-05 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 4.5724e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 9.1758e+00 1.3 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   1  4  0  0  0 1464092
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0732e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11147
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 2.0218e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11431
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 9.8160e+00 1.1 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  2  0  0  0   2  4  0  0  0 1407273
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7678e+01 1.4 4.43e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   2  8  0  0  0 1743600
firedrake.halo.Halo.local_to_global_begin     121 1.0 2.8164e-02 7.9 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  0  0  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.5285e+00 177.1 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2353
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.5844e+01 1.1 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  5  0  0  0 1161624
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.6232e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8049
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3850e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  8852
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 3.0111e+01 1.2 2.43e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   4  5  0  0  0 644776
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5481e+01 1.5 6.55e+10 1.5 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   6 12  0  0  0 1001890
firedrake.dmhooks.get_function_space       2 1.0 2.2542e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.6590e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       91 1.0 3.7734e+01 1.0 2.40e+08 99.2 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   6  0  0  0  0   184
MGSetup Level 1       91 1.0 8.9212e-01 1.0 3.83e+08 1.1 4.7e+04 1.2e+05 9.8e+01  0  0  0  0  0   0  0  0  0  0 342902

--- Event Stage 1: MG Apply

BuildTwoSided         91 1.0 4.2244e-02 2.8 0.00e+00 0.0 4.9e+05 4.0e+00 9.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            91 1.0 2.1231e-03 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               91 1.0 4.9314e-02 2.1 0.00e+00 0.0 9.7e+05 8.8e+01 9.1e+01  0  0  1  0  0   0  0  1  0  1    -0
SFPack           2636172 1.1 7.0220e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack         2636172 1.1 1.9041e-01 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             8876 1.0 3.6708e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             71007 1.0 1.6119e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecAXPY            17752 1.0 8.4751e+00 1.5 6.38e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 602281
VecAYPX            17752 1.0 1.0543e+01 2.4 3.19e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 242065
VecScatterBegin  2636172 1.1 4.4565e+01 1.2 0.00e+00 0.0 1.3e+08 7.4e+04 0.0e+00  2  0 73 63  0   3  0 98 100  0    -0
VecScatterEnd    2636172 1.1 6.5249e+01 24.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult            17752 1.0 4.9482e+02 1.2 3.54e+11 1.1 8.4e+07 1.2e+05 0.0e+00 23 35 46 63  0  33 65 63 100  0 570617
MatMultAdd          8876 1.0 2.5195e+01 1.2 1.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 405186
MatMultTranspose    8876 1.0 2.0277e+01 2.5 1.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 503468
MatSolve         1287020 1.1 8.5023e+02 1.1 1.78e+11 1.3 5.0e+07 3.3e+02 4.6e+02 40 15 28  0  2  58 28 37  0  5 141829
MatLUFactorNum      6408 1.1 3.0353e+00 1.4 3.69e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 972095
MatResidual         8876 1.0 2.5417e+02 1.2 1.78e+11 1.1 4.2e+07 1.2e+05 0.0e+00 12 18 23 31  0  17 33 31 50  0 560457
MatAssemblyBegin    6408 1.1 3.0386e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyEnd      6408 1.1 2.2175e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCreateSubMats      89 1.0 7.7013e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
PCSetUp             6497 1.1 1.0683e+01 1.3 3.69e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 276209
PCApply            26628 1.0 9.1637e+02 1.1 1.82e+11 1.3 5.0e+07 3.3e+02 4.6e+02 43 15 28  0  2  62 28 37  0  5 134812
PCApplyOnBlocks  1278144 1.1 2.7798e+02 1.3 1.53e+11 1.1 0.0e+00 0.0e+00 0.0e+00 11 15  0  0  0  16 28  0  0  0 441187
KSPSetUp            6409 1.1 2.9498e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve           26628 1.0 1.1566e+03 1.1 3.59e+11 1.2 9.2e+07 5.3e+04 9.3e+03 56 33 51 32 32  80 62 69 50 100 234385
MGSmooth Level 0    8876 1.0 6.0591e+02 1.1 3.50e+10 96.2 5.0e+07 3.3e+02 9.3e+03 29  0 28  0 32  42  0 37  0 100  1477
MGSmooth Level 1   17752 1.0 5.8529e+02 1.2 3.38e+11 1.1 4.2e+07 1.2e+05 0.0e+00 27 33 23 31  0  38 62 31 50  0 461649
MGResid Level 1     8876 1.0 2.5420e+02 1.2 1.78e+11 1.1 4.2e+07 1.2e+05 0.0e+00 12 18 23 31  0  17 33 31 50  0 560390
MGInterp Level 1   17752 1.0 4.3786e+01 1.4 2.55e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   3  5  0  0  0 466307
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set  3301           3301
   IS L to G Mapping    75             75
             Section    76             76
   Star Forest Graph   154            245
              Vector   580            579
              Matrix   372            372
      Preconditioner    76             76
       Krylov Solver    76             76
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
Average time to get PetscTime(): 2.61e-08
Average time for MPI_Barrier(): 7.3126e-06
Average time for zero size MPI_Send(): 2.05849e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_linesmooth/huge.profile # (source: environment)
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

