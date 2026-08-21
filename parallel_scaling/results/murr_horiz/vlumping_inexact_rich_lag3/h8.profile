****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0441.gadi.nci.org.au with 832 processes, by sg8812 on Fri Aug 21 17:33:22 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.607e+03     1.000   1.607e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.485e+12     1.132   1.401e+12  1.166e+15
Flops/sec:            9.240e+08     1.132   8.717e+08  7.252e+11
MPI Msg Count:        2.047e+05     5.492   1.047e+05  8.707e+07
MPI Msg Len (bytes):  1.353e+10     2.694   1.011e+05  8.802e+12
MPI Reductions:       1.185e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.5749e+02  34.7%  6.6001e+14  56.6%  2.080e+07  23.9%  1.678e+05       39.7%  8.831e+03  74.5%
 1:        MG Apply: 1.0497e+03  65.3%  5.0561e+14  43.4%  6.627e+07  76.1%  8.014e+04       60.3%  3.000e+03  25.3%

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

BuildTwoSided       1022 1.0 4.4759e+01 4.6 0.00e+00 0.0 6.5e+05 4.0e+00 1.0e+03  2  0  1  0  9   5  0  3  0 12    -0
BuildTwoSidedF       983 1.0 4.4744e+01 4.6 0.00e+00 0.0 1.1e+06 1.3e+06 9.8e+02  2  0  1 16  8   5  0  5 39 11    -0
SFSetGraph            42 1.0 5.7754e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 4.5731e-02 2.3 0.00e+00 0.0 2.1e+05 2.7e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         719 1.0 3.6679e-01 3.1 0.00e+00 0.0 3.3e+06 9.5e+04 0.0e+00  0  0  4  3  0   0  0 16  9  0    -0
SFBcastEnd           719 1.0 1.5666e+01 83.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        311 1.0 9.8944e-02 16.5 0.00e+00 0.0 1.5e+06 1.0e+05 0.0e+00  0  0  2  2  0   0  0  7  4  0    -0
SFReduceEnd          311 1.0 2.6130e+00 53.6 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7257
SFFetchOpBegin         2 1.0 2.7017e-05 8.1 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.5693e-03 76.6 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.5388e-03 3.2 0.00e+00 0.0 5.6e+03 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 3.9795e-02 1.4 0.00e+00 0.0 1.8e+05 2.7e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 1.2416e-02 6.0 0.00e+00 0.0 8.2e+04 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4068 1.0 1.3912e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4070 1.0 1.7858e-01 7.6 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 106182
VecDot               225 1.0 1.0433e+00 5.3 1.83e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  3 139286
VecMDot             2810 1.0 4.5430e+01 2.6 1.60e+10 1.1 0.0e+00 0.0e+00 2.8e+03  2  1  0  0 24   5  2  0  0 32 279296
VecNorm             3805 1.0 1.0267e+01 3.0 3.10e+09 1.1 0.0e+00 0.0e+00 3.8e+03  0  0  0  0 32   1  0  0  0 43 239337
VecScale            3046 1.0 9.4527e-01 1.2 1.24e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1040546
VecCopy             1585 1.0 2.1339e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               462 1.0 3.7780e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              236 1.0 4.0859e-01 1.2 1.92e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 373027
VecWAXPY             226 1.0 4.3547e-01 1.1 9.19e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 167584
VecMAXPY            3046 1.0 2.3097e+01 1.1 1.83e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   4  2  0  0  0 627928
VecScatterBegin     3036 1.0 1.2009e+00 2.6 0.00e+00 0.0 1.4e+07 1.1e+05 0.0e+00  0  0 17 17  0   0  0 69 44  0    -0
VecScatterEnd       3036 1.0 2.0568e+01 21.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSetRandom           9 1.0 3.3390e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       450 1.0 3.3743e-01 2.0 3.66e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 861285
VecReduceComm        225 1.0 3.1759e-01 14.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  2   0  0  0  0  3    -0
VecNormalize         200 1.0 7.4258e-01 2.6 2.44e+08 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2 260912
MatMult             3036 1.0 1.2804e+02 1.2 8.76e+10 1.1 1.4e+07 1.1e+05 0.0e+00  7  6 17 17  0  21 11 69 44  0 542419
MatSolve             200 1.0 8.2124e+00 1.2 5.60e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 538630
MatLUFactorSym         1 1.0 3.0214e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatLUFactorNum        87 1.0 7.0873e+01 1.0 2.74e+09 1.2 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0  13  0  0  0  0 28232
MatILUFactorSym        2 1.0 2.9982e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               75 1.0 3.9392e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatConvert             1 1.0 1.4972e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1142 1.0 4.5432e+01 2.7 0.00e+00 0.0 1.1e+06 1.3e+06 9.8e+02  2  0  1 16  8   6  0  5 39 11    -0
MatAssemblyEnd      1142 1.0 1.1348e+01 11.6 2.43e+08 0.0 1.9e+04 1.3e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  7519
MatGetRowIJ            2 1.0 4.3470e-06 19.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 1.2450e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       302 1.0 7.8087e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.4581e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2487e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        154 1.0 1.7461e+00 1.4 2.26e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1023871
MatPtAPSymbolic        1 1.0 2.3786e-01 1.0 0.00e+00 0.0 1.4e+04 1.8e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        77 1.0 1.2543e+01 1.0 9.01e+09 1.1 3.7e+05 3.1e+05 8.2e+01  1  1  0  1  1   2  1  2  3  1 569837
MatGetLocalMat        77 1.0 5.7396e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         77 1.0 2.9671e-01 1.9 0.00e+00 0.0 3.7e+05 3.1e+05 0.0e+00  0  0  0  1  0   0  0  2  3  0    -0
PCSetUp              225 1.0 1.1988e+02 1.0 3.33e+10 1.1 1.3e+06 1.7e+05 1.1e+03  7  2  1  2  9  22  4  6  6 12 219684
PCApply             2620 1.0 1.0673e+03 1.0 6.48e+11 1.1 6.6e+07 8.0e+04 3.0e+03 65 43 76 60 25 Multiple stages 473716
PCApplyOnBlocks      200 1.0 8.2149e+00 1.2 5.60e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 538467
KSPSetUp             225 1.0 1.3825e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 1.2039e+03 1.0 7.57e+11 1.1 7.9e+07 8.4e+04 8.5e+03 75 51 90 75 71 Multiple stages 492604
KSPGMRESOrthog      2810 1.0 6.4273e+01 1.7 3.20e+10 1.1 0.0e+00 0.0e+00 2.8e+03  3  2  0  0 24   9  4  0  0 32 394832
DMPlexCreateGmsh       1 1.0 4.2809e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.0913e+01 25.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         2 1.0 7.0017e-01 1.0 0.00e+00 0.0 5.9e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 1.1411e-01 1.0 0.00e+00 0.0 2.1e+05 3.5e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 7.7972e-02 15285.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1521e-01 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.5924e-03 1.5 0.00e+00 0.0 1.1e+04 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 5.9220e-03 1.4 0.00e+00 0.0 5.6e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 2.8958e-02 1.1 0.00e+00 0.0 6.4e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.3613e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 8.2494e-01 1.0 0.00e+00 0.0 3.4e+04 2.3e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 1.4735e-02 1.1 0.00e+00 0.0 3.3e+04 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 7.9843e-02 1.0 0.00e+00 0.0 1.1e+05 3.7e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 2.6272e-02 1.0 0.00e+00 0.0 2.4e+05 9.7e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.2116e-02 1.2 0.00e+00 0.0 5.1e+04 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 1.9006e-01 20.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9396e-02 656.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 1.5380e+03 1.0 1.49e+12 1.1 8.6e+07 1.0e+05 1.1e+04 96 100 99 100 96 Multiple stages 757832
SNESSetUp              1 1.0 6.1573e-05 7.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.2191e+01 1.2 2.71e+11 1.2 3.2e+06 1.1e+05 0.0e+00  2 18  4  4  0   5 32 15 10  0 6520102
SNESJacobianEval     225 1.0 1.7110e+02 1.0 4.26e+11 1.2 2.1e+06 6.9e+05 9.0e+02 11 28  2 17  8  31 50 10 42 10 1930552
SNESLineSearch       225 1.0 2.7436e+01 1.0 2.11e+11 1.2 3.2e+06 1.1e+05 9.0e+02  2 14  4  4  8   5 25 15 10 10 5954250
firedrake              1 1.0 1.6050e+03 1.0 1.49e+12 1.1 8.7e+07 1.0e+05 1.2e+04 100 100 100 100 100 Multiple stages 726222
firedrake.__init__       1 1.0 1.5090e+01 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
CreateMesh             1 1.0 1.1862e+01 8.6 0.00e+00 0.0 4.9e+05 2.6e+02 2.0e+02  0  0  1  0  2   1  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 1.0913e+01 25.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.1005e-03 55.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.8042e-04 195.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.7717e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 7.0419e-04 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.9648e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.2727e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 2.8150e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 2.6880e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 2.6815e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 1.3237e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 9.9348e-03 2.4 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.3107e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.9883e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 4.1563e-02 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.3797e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.5506e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.6011e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.2490e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.3755e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 9.8062e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2412 1.0 1.7883e+02 1.2 6.97e+11 1.2 2.9e+06 1.0e+05 1.5e+01 10 46  3  4  0  29 82 14  9  0 3020434
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.3428e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4824 1.0 2.5826e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.2754e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.5012e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 9.0186e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3771e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3770e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 9.5673e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 9.3850e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2412 1.0 7.6497e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2412 1.0 6.9213e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 8.7683e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8458e+00 1.0 6.87e+07 1.1 8.5e+04 4.5e+04 1.2e+01  0  0  0  0  0   1  0  0  0  0 11262
firedrake.interpolation.interpolate      11 1.0 4.3313e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.9301e+00 1.0 7.12e+07 1.1 9.5e+04 4.0e+04 3.4e+01  0  0  0  0  0   1  0  0  0  0  9529
firedrake.formmanipulation.split_form      12 1.0 4.1440e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 4.7805e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.6543e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0229e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     614 1.0 4.2223e-01 2.7 0.00e+00 0.0 2.9e+06 1.0e+05 2.0e+00  0  0  3  4  0   0  0 14  9  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.4072e+00 1.0 7.12e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 10451
firedrake.halo.Halo.global_to_local_end     614 1.0 1.5519e+01 180.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 1.7348e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.6557e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.4439e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.8074e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.4779e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 4.3549e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 3.2192e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.9179e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2168e+00 1.0 0.00e+00 0.0 2.8e+04 4.3e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 2.2444e-03 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8957e-04 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1230e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1229e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.0115e+00 1.1 0.00e+00 0.0 2.4e+04 2.6e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.5312e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 1.5383e+03 1.0 1.49e+12 1.1 8.6e+07 1.0e+05 1.2e+04 96 100 99 100 97 Multiple stages 757692
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.2881e-01 1172.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1416e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.2875e-01 1412.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.2872e-01 1596.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 8.1927e+00 1.4 6.94e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  8  0  0  0 6722147
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0324e+00 1.1 9.02e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6933
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2838e+00 1.1 6.49e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 26857
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.4635e+00 1.1 6.66e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   1  8  0  0  0 9681272
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.1729e+01 1.3 1.36e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   2 15  0  0  0 8684299
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.1035e-01 9.8 0.00e+00 0.0 1.4e+06 1.1e+05 0.0e+00  0  0  2  2  0   0  0  7  4  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.6150e+00 50.8 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7251
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.1336e+01 1.5 9.71e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   4 12  0  0  0 2459602
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 2.0249e+00 1.8 4.96e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13004
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 4.3227e+01 1.4 1.28e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0   6 15  0  0  0 2358945
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 7.8636e+01 1.3 2.01e+11 1.3 0.0e+00 0.0e+00 0.0e+00  4 13  0  0  0  12 23  0  0  0 1922323
firedrake.dmhooks.get_function_space       1 1.0 1.1763e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.4099e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       77 1.0 7.2262e+01 1.0 1.89e+08 48.8 0.0e+00 0.0e+00 2.0e+00  4  0  0  0  0  13  0  0  0  0   124
MGSetup Level 1       77 1.0 1.3333e+00 1.0 9.62e+08 1.1 4.7e+04 1.1e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 570043
firedrake.constant.Constant.assign      75 1.0 3.0480e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided         76 1.0 3.6795e-02 3.7 0.00e+00 0.0 4.2e+05 4.0e+00 7.6e+01  0  0  0  0  1   0  0  1  0  3    -0
SFSetGraph            76 1.0 3.5477e-03 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               76 1.0 4.2106e-02 2.6 0.00e+00 0.0 8.4e+05 2.0e+02 7.6e+01  0  0  1  0  1   0  0  1  0  3    -0
SFPack             18340 1.0 4.0434e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           18340 1.0 1.5479e-02 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2620 1.0 3.3355e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             10479 1.0 2.1595e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY            10480 1.0 1.3925e+01 1.5 8.53e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 486063
VecAYPX            10480 1.0 1.6672e+01 3.4 4.26e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 202989
VecScatterBegin    18340 1.0 4.6166e+00 2.9 0.00e+00 0.0 6.4e+07 8.3e+04 0.0e+00  0  0 74 60  0   0  0 97 100  0    -0
VecScatterEnd      18340 1.0 5.8683e+01 20.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult            10480 1.0 4.3356e+02 1.2 3.02e+11 1.1 5.0e+07 1.1e+05 0.0e+00 25 21 57 60  0  38 47 75 100  0 552953
MatMultAdd          2620 1.0 1.4232e+01 1.2 6.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 356675
MatMultTranspose    2620 1.0 1.1283e+01 2.7 6.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 449885
MatSolve           13100 1.0 6.1584e+02 1.1 3.04e+11 1.1 1.7e+07 7.1e+02 3.8e+02 37 20 19  0  3  56 46 25  0 13 377078
MatLUFactorNum        67 1.0 1.1662e+01 1.4 1.71e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  3  0  0  0 1144438
MatResidual         2620 1.0 1.1721e+02 1.2 7.67e+10 1.1 1.2e+07 1.1e+05 0.0e+00  7  5 14 15  0  10 12 19 25  0 518565
PCSetUpOnBlocks     5240 1.0 1.1710e+01 1.4 1.71e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  3  0  0  0 1139739
PCApply            13100 1.0 6.1607e+02 1.1 3.04e+11 1.1 1.7e+07 7.1e+02 3.8e+02 37 20 19  0  3  56 46 25  0 13 376935
PCApplyOnBlocks    10480 1.0 4.3896e+02 1.2 2.93e+11 1.1 0.0e+00 0.0e+00 0.0e+00 25 20  0  0  0  38 46  0  0  0 528044
KSPSolve            7860 1.0 9.3344e+02 1.1 5.41e+11 1.1 5.4e+07 7.4e+04 3.0e+03 57 36 62 45 25  87 83 81 75 100 451373
MGSmooth Level 0    2620 1.0 2.0477e+02 1.2 1.22e+10 87.1 1.7e+07 7.1e+02 3.0e+03 12  0 19  0 25  18  0 25  0 100  2105
MGSmooth Level 1    5240 1.0 7.6869e+02 1.1 5.49e+11 1.1 3.7e+07 1.1e+05 0.0e+00 46 37 43 45  0  70 86 56 75  0 564915
MGResid Level 1     2620 1.0 1.1722e+02 1.2 7.67e+10 1.1 1.2e+07 1.1e+05 0.0e+00  7  5 14 15  0  10 12 19 25  0 518515
MGInterp Level 1    5240 1.0 2.3778e+01 1.4 1.28e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 426972
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
         PetscRandom     9              9
           Index Set  2676           2676
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph   100            176
              Vector   736            736
              Matrix    28             28
      Preconditioner     6              6
       Krylov Solver    14             14
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    25             25
            DM Label    51             51
    GraphPartitioner     4              4
     Discrete System    33             33
           Weak Form    33             33

--- Event Stage 1: MG Apply

           Index Set   152            152
   Star Forest Graph    76              0
              Vector    76             76
========================================================================================================================
Average time to get PetscTime(): 2.63e-08
Average time for MPI_Barrier(): 6.7902e-06
Average time for zero size MPI_Send(): 2.19816e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/vlumping_inexact_rich_lag3/h8.profile # (source: code)
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

