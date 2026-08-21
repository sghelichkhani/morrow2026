****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0530.gadi.nci.org.au with 208 processes, by sg8812 on Fri Aug 21 01:09:49 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           5.812e+03     1.000   5.812e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                6.498e+12     1.105   6.179e+12  1.285e+15
Flops/sec:            1.118e+09     1.105   1.063e+09  2.211e+11
MPI Msg Count:        1.772e+05     3.668   1.112e+05  2.313e+07
MPI Msg Len (bytes):  3.309e+10     2.806   2.056e+05  4.754e+12
MPI Reductions:       1.620e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.5304e+03  43.5%  8.1962e+14  63.8%  7.225e+06  31.2%  3.193e+05       48.5%  1.262e+04  77.9%
 1:        MG Apply: 3.2818e+03  56.5%  4.6557e+14  36.2%  1.590e+07  68.8%  1.539e+05       51.5%  3.558e+03  22.0%

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

BuildTwoSided       1170 1.0 1.2341e+02 6.1 0.00e+00 0.0 1.5e+05 4.0e+00 1.2e+03  1  0  1  0  7   2  0  2  0  9    -0
BuildTwoSidedF      1131 1.0 1.2339e+02 6.0 0.00e+00 0.0 2.6e+05 2.7e+06 1.1e+03  1  0  1 14  7   2  0  4 30  9    -0
SFSetGraph            42 1.0 1.3719e-02 3.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 6.2285e-02 2.6 0.00e+00 0.0 5.1e+04 5.8e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         719 1.0 7.0644e-01 3.4 0.00e+00 0.0 7.7e+05 2.0e+05 0.0e+00  0  0  3  3  0   0  0 11  7  0    -0
SFBcastEnd           719 1.0 3.0501e+01 103.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        311 1.0 2.5664e-01 48.5 0.00e+00 0.0 3.5e+05 2.2e+05 0.0e+00  0  0  2  2  0   0  0  5  3  0    -0
SFReduceEnd          311 1.0 6.3799e+00 30.1 6.53e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1471
SFFetchOpBegin         2 1.0 3.3495e-05 10.6 0.00e+00 0.0 1.7e+03 2.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.3208e-03 26.0 0.00e+00 0.0 1.7e+03 2.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 2.3829e-03 2.1 0.00e+00 0.0 1.3e+03 4.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 2.6248e-02 1.7 0.00e+00 0.0 4.3e+04 8.7e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 9.5261e-03 4.5 0.00e+00 0.0 2.0e+04 5.5e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              5940 1.0 5.2064e+00 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            5942 1.0 4.9830e-01 11.3 6.53e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 18832
VecDot               225 1.0 2.5703e+00 3.3 7.33e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2 56534
VecMDot             4683 1.0 2.2584e+02 3.0 8.89e+10 1.1 0.0e+00 0.0e+00 4.7e+03  2  1  0  0 29   6  2  0  0 37 78033
VecNorm             5658 1.0 6.5779e+01 2.9 1.84e+10 1.1 0.0e+00 0.0e+00 5.7e+03  1  0  0  0 35   2  0  0  0 45 55551
VecScale            5133 1.0 2.3981e+01 1.1 8.36e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 69117
VecCopy             1800 1.0 1.0602e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               900 1.0 3.1146e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              450 1.0 3.5427e+00 1.2 1.47e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 82033
VecWAXPY             225 1.0 1.9095e+00 1.2 3.67e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 38050
VecMAXPY            5133 1.0 1.4071e+02 1.1 1.04e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   5  3  0  0  0 146738
VecScatterBegin     4908 1.0 4.6767e+00 2.7 0.00e+00 0.0 5.5e+06 2.2e+05 0.0e+00  0  0 24 26  0   0  0 77 53  0    -0
VecScatterEnd       4908 1.0 8.1700e+01 39.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       450 1.0 1.3996e+00 1.6 1.47e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 207651
VecReduceComm        225 1.0 6.4867e-01 32.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        2475 1.0 5.6216e+01 2.7 1.21e+10 1.1 0.0e+00 0.0e+00 2.5e+03  1  0  0  0 15   1  0  0  0 20 42650
MatMult             4908 1.0 7.7526e+02 1.1 5.67e+11 1.1 5.5e+06 2.2e+05 0.0e+00 13  9 24 26  0  29 14 77 53  0 144821
MatSolve            2475 1.0 3.9706e+02 1.3 2.81e+11 1.1 0.0e+00 0.0e+00 0.0e+00  6  4  0  0  0  15  7  0  0  0 140250
MatLUFactorSym         1 1.0 2.1938e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       450 1.0 2.1230e+02 1.2 2.35e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   8  6  0  0  0 217334
MatILUFactorSym        1 1.0 1.3085e+00 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1586 1.0 1.2341e+02 5.4 0.00e+00 0.0 2.6e+05 2.7e+06 1.1e+03  1  0  1 14  7   3  0  4 30  9    -0
MatAssemblyEnd      1586 1.0 3.5541e+01 8.3 4.47e+08 0.0 4.5e+03 2.8e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  1188
MatGetRowIJ            1 1.0 1.6350e-06 12.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.6526e-02 4.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       450 1.0 3.0564e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 5.3237e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 4.9011e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        450 1.0 1.6479e+01 1.1 2.64e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 317022
MatPtAPSymbolic        1 1.0 7.6905e-01 1.0 0.00e+00 0.0 3.4e+03 3.7e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       225 1.0 1.0061e+02 1.0 1.05e+11 1.1 2.5e+05 6.6e+05 2.3e+02  2  2  1  4  1   4  3  4  7  2 207589
MatGetLocalMat       225 1.0 6.7516e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        225 1.0 1.7748e+00 2.1 0.00e+00 0.0 2.6e+05 6.6e+05 0.0e+00  0  0  1  4  0   0  0  4  7  0    -0
PCSetUp              225 1.0 1.1750e+03 1.0 9.82e+11 1.1 2.8e+06 2.6e+05 5.2e+03 20 15 12 15 32  46 24 39 32 41 165245
PCApply             2433 1.0 3.3381e+03 1.0 2.35e+12 1.1 1.6e+07 1.5e+05 3.6e+03 56 36 69 51 22 Multiple stages 139473
PCApplyOnBlocks     2475 1.0 3.9709e+02 1.3 2.81e+11 1.1 0.0e+00 0.0e+00 0.0e+00  6  4  0  0  0  15  7  0  0  0 140242
KSPSetUp             225 1.0 1.1723e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 3.8277e+03 1.0 2.75e+12 1.1 1.9e+07 1.6e+05 8.6e+03 66 42 81 64 53 Multiple stages 142326
KSPGMRESOrthog      4683 1.0 3.4171e+02 1.8 1.78e+11 1.1 0.0e+00 0.0e+00 4.7e+03  4  3  0  0 29  10  4  0  0 37 103148
DMPlexCreateGmsh       1 1.0 4.0293e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.3096e+00 15.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 3.2264e-01 1.1 0.00e+00 0.0 1.4e+04 9.5e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 9.4558e-02 1.0 0.00e+00 0.0 5.0e+04 1.2e+03 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 8.0136e-02 26196.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 9.1878e-02 8.1 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 8.3928e-03 2.3 0.00e+00 0.0 2.7e+03 9.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 6.1864e-03 1.5 0.00e+00 0.0 1.3e+03 3.8e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 3.0919e-02 1.0 0.00e+00 0.0 1.5e+03 7.6e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.2351e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 4.3664e-01 1.0 0.00e+00 0.0 8.6e+03 8.9e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 1.5145e-02 1.2 0.00e+00 0.0 8.0e+03 2.5e+03 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 6.6489e-02 1.0 0.00e+00 0.0 2.6e+04 1.3e+03 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 1.1671e-02 1.0 0.00e+00 0.0 5.7e+04 2.0e+02 8.0e+01  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        3 1.0 7.5105e-03 1.2 0.00e+00 0.0 1.2e+04 4.3e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 1.8378e-01 20.3 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.8511e-02 179.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 5.7297e+03 1.0 6.50e+12 1.1 2.3e+07 2.1e+05 1.6e+04 99 100 99 100 97 Multiple stages 224294
SNESSetUp              1 1.0 6.0657e-05 8.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 9.1859e+01 1.2 1.06e+12 1.1 7.6e+05 2.2e+05 0.0e+00  1 16  3  4  0   3 26 11  7  0 2284762
SNESJacobianEval     225 1.0 5.9277e+02 1.0 1.67e+12 1.1 5.1e+05 1.4e+06 9.0e+02 10 26  2 15  6  23 40  7 32  7 557249
SNESLineSearch       225 1.0 1.0353e+02 1.0 8.28e+11 1.1 7.6e+05 2.2e+05 9.0e+02  2 13  3  4  6   4 20 11  7  7 1577895
firedrake              1 1.0 5.8098e+03 1.0 6.50e+12 1.1 2.3e+07 2.1e+05 1.6e+04 100 100 100 100 100 Multiple stages 221213
firedrake.__init__       1 1.0 1.0814e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             1 1.0 6.8414e+00 7.3 0.00e+00 0.0 1.2e+05 8.6e+02 2.0e+02  0  0  1  0  1   0  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 6.3103e+00 15.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 9.2458e-04 39.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.8950e-06 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 6.1746e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 9.7154e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.2184e-02 1.1 0.00e+00 0.0 2.3e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.2047e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 2.0602e-02 1.2 0.00e+00 0.0 2.3e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 1.9314e-02 1.2 0.00e+00 0.0 2.3e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 1.9235e-02 1.2 0.00e+00 0.0 2.3e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 8.2639e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.3069e-03 1.2 0.00e+00 0.0 2.3e+03 2.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.0776e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.1041e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 6.4387e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 9.8072e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.6472e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.0693e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 8.0751e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 9.7654e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 1.5128e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2412 1.0 6.0154e+02 1.1 2.74e+12 1.1 7.0e+05 2.2e+05 1.5e+01 10 42  3  3  0  22 66 10  7  0 898035
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 9.4199e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4824 1.0 2.4716e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.1461e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.4712e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 9.2093e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.2997e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.2996e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.5643e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.4254e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin    2412 1.0 1.0347e-02 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2412 1.0 8.5470e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 8.4746e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 5.1390e+00 1.0 2.75e+08 1.1 2.0e+04 9.3e+04 1.2e+01  0  0  0  0  0   0  0  0  0  0 10619
firedrake.interpolation.interpolate      11 1.0 4.5614e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 6.8985e+00 1.0 2.85e+08 1.1 2.3e+04 8.4e+04 3.4e+01  0  0  0  0  0   0  0  0  0  0  8192
firedrake.formmanipulation.split_form      12 1.0 5.3210e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.8978e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5167e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0099e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     614 1.0 7.9588e-01 2.8 0.00e+00 0.0 7.0e+05 2.2e+05 2.0e+00  0  0  3  3  0   0  0 10  7  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.5051e+00 1.0 2.85e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 10265
firedrake.halo.Halo.global_to_local_end     614 1.0 3.0208e+01 127.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 8.9352e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 8.8478e+00 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2785e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 2.0754e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.7325e-05 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.7097e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9369e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.4516e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 2.0472e+01 1.0 0.00e+00 0.0 6.8e+03 9.1e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.3198e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.4572e-04 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9111e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9111e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         2 1.0 1.5842e+01 1.0 0.00e+00 0.0 5.6e+03 5.3e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 2.2848e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 5.7306e+03 1.0 6.50e+12 1.1 2.3e+07 2.1e+05 1.6e+04 99 100 99 100 98 Multiple stages 224258
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.0801e-01 676.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 8.8480e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.0796e-01 808.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.0792e-01 917.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 2.6771e+01 1.4 2.78e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  7  0  0  0 2057199
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0748e+00 1.1 3.61e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6660
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.3322e+00 1.1 1.30e+09 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 25882
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 1.6979e+01 1.2 2.67e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  6  0  0  0 3115304
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 3.5840e+01 1.2 5.23e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1 12  0  0  0 2842066
firedrake.halo.Halo.local_to_global_begin     300 1.0 2.7996e-01 18.6 0.00e+00 0.0 3.4e+05 2.2e+05 0.0e+00  0  0  1  2  0   0  0  5  3  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 6.3828e+00 29.4 6.53e+07 2.8 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1470
Parloop_Cells_wrap_form00_cell_integral     450 1.0 1.1151e+02 1.4 3.89e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   4  9  0  0  0 691211
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 2.7404e+00 2.4 9.92e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9609
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 1.4244e+02 1.2 5.14e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   5 12  0  0  0 715860
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 2.8862e+02 1.2 7.76e+11 1.1 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0  10 18  0  0  0 523899
firedrake.dmhooks.get_function_space       1 1.0 1.0422e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.9551e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 6.3719e+01 1.0 2.83e+08 4.1 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   3  0  0  0  0   409
MGSetup Level 1      225 1.0 1.0088e+03 1.0 8.76e+11 1.1 2.5e+06 2.2e+05 4.7e+03 17 13 11 12 29  40 21 35 24 37 171742
firedrake.constant.Constant.assign      75 1.0 3.9275e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 7.6090e-02 7.5 0.00e+00 0.0 3.1e+05 4.0e+00 2.2e+02  0  0  1  0  1   0  0  2  0  6    -0
SFSetGraph           225 1.0 3.9739e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 9.7336e-02 3.0 0.00e+00 0.0 6.2e+05 7.8e+02 2.2e+02  0  0  3  0  1   0  0  4  0  6    -0
SFPack             17031 1.0 8.3472e+00 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           17031 1.0 2.7211e-02 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             7299 1.0 3.8897e+01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecSet              9731 1.0 8.7107e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            14598 1.0 9.3772e+01 2.6 3.17e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 67026
VecAXPBYCZ          4866 1.0 4.1162e+01 1.8 3.96e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  2  0  0  0 190867
VecScatterBegin    17031 1.0 8.8362e+00 2.6 0.00e+00 0.0 1.4e+07 1.7e+05 0.0e+00  0  0 62 51  0   0  0 90 100  0    -0
VecScatterEnd      17031 1.0 1.9889e+02 55.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult             9732 1.0 1.6122e+03 1.2 1.12e+12 1.1 1.1e+07 2.2e+05 0.0e+00 25 17 47 51  0  44 48 69 100  0 138088
MatMultAdd          2433 1.0 4.7404e+01 1.1 2.38e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 99441
MatMultTranspose    2433 1.0 4.0106e+01 2.4 2.38e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 117536
MatSolve           12165 1.0 1.6962e+03 1.2 1.11e+12 1.1 4.9e+06 2.4e+03 1.1e+03 28 17 21  0  7  49 47 31  0 32 129329
MatResidual         2433 1.0 4.3077e+02 1.2 2.85e+11 1.1 2.7e+06 2.2e+05 0.0e+00  7  4 12 13  0  12 12 17 25  0 131027
PCSetUpOnBlocks     4866 1.0 6.6481e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            12165 1.0 1.6965e+03 1.2 1.11e+12 1.1 4.9e+06 2.4e+03 1.1e+03 28 17 21  0  7  49 47 31  0 32 129312
PCApplyOnBlocks     9732 1.0 1.6460e+03 1.2 1.11e+12 1.1 0.0e+00 0.0e+00 0.0e+00 26 17  0  0  0  46 47  0  0  0 133034
KSPSolve            7299 1.0 2.8919e+03 1.1 2.02e+12 1.1 1.3e+07 1.4e+05 3.6e+03 48 31 57 39 22  86 86 83 75 100 138212
MGSmooth Level 0    2433 1.0 1.3728e+02 2.7 4.37e+09 4.4 4.9e+06 2.4e+03 3.6e+03  1  0 21  0 22   3  0 31  0 100  2916
MGSmooth Level 1    4866 1.0 2.8413e+03 1.1 2.02e+12 1.1 8.2e+06 2.2e+05 0.0e+00 47 31 36 38  0  83 86 52 75  0 140532
MGResid Level 1     2433 1.0 4.3079e+02 1.2 2.85e+11 1.1 2.7e+06 2.2e+05 0.0e+00  7  4 12 13  0  12 12 17 25  0 131022
MGInterp Level 1    4866 1.0 8.5561e+01 1.4 4.76e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 110187
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set   799            799
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            307
              Vector  1009           1009
              Matrix    24             24
      Preconditioner     6              6
       Krylov Solver     5              5
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh    16             16
            DM Label    51             51
    GraphPartitioner     4              4
     Discrete System    24             24
           Weak Form    24             24

--- Event Stage 1: MG Apply

           Index Set   450            450
   Star Forest Graph   225              0
              Vector   225            225
========================================================================================================================
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 8.3234e-06
Average time for zero size MPI_Send(): 2.05418e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_strong/vlumping_inexact/s2.profile # (source: code)
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

