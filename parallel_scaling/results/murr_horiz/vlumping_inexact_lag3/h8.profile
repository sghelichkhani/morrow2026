****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0197.gadi.nci.org.au with 832 processes, by sg8812 on Thu Aug 20 22:55:32 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.951e+03     1.000   1.951e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.632e+12     1.129   1.541e+12  1.282e+15
Flops/sec:            8.363e+08     1.129   7.896e+08  6.569e+11
MPI Msg Count:        2.219e+05     4.577   1.162e+05  9.672e+07
MPI Msg Len (bytes):  1.479e+10     2.695   9.949e+04  9.623e+12
MPI Reductions:       1.623e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 9.2850e+02  47.6%  8.1783e+14  63.8%  3.043e+07  31.5%  1.534e+05       48.5%  1.264e+04  77.9%
 1:        MG Apply: 1.0227e+03  52.4%  4.6393e+14  36.2%  6.628e+07  68.5%  7.476e+04       51.5%  3.569e+03  22.0%

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

BuildTwoSided       1170 1.0 5.6979e+01 2.4 0.00e+00 0.0 6.5e+05 4.0e+00 1.2e+03  2  0  1  0  7   4  0  2  0  9    -0
BuildTwoSidedF      1131 1.0 5.6971e+01 2.4 0.00e+00 0.0 1.1e+06 1.3e+06 1.1e+03  2  0  1 14  7   4  0  4 30  9    -0
SFSetGraph            42 1.0 5.6857e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 4.5423e-02 2.6 0.00e+00 0.0 2.1e+05 2.7e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         719 1.0 3.7177e-01 3.3 0.00e+00 0.0 3.3e+06 9.5e+04 0.0e+00  0  0  3  3  0   0  0 11  7  0    -0
SFBcastEnd           719 1.0 1.4082e+01 76.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        311 1.0 9.6510e-02 16.0 0.00e+00 0.0 1.5e+06 1.0e+05 0.0e+00  0  0  2  2  0   0  0  5  3  0    -0
SFReduceEnd          311 1.0 2.9781e+00 62.1 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6367
SFFetchOpBegin         2 1.0 2.5069e-05 6.7 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 1.4786e-03 73.6 0.00e+00 0.0 7.1e+03 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.5037e-03 3.4 0.00e+00 0.0 5.6e+03 1.3e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 3.8101e-02 1.4 0.00e+00 0.0 1.8e+05 2.7e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 1.2133e-02 5.8 0.00e+00 0.0 8.2e+04 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              5951 1.0 1.9891e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            5953 1.0 1.7575e-01 6.7 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 107894
VecDot               225 1.0 9.6212e-01 5.4 1.83e+08 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2 151031
VecMDot             4694 1.0 7.0100e+01 2.4 2.23e+10 1.1 0.0e+00 0.0e+00 4.7e+03  2  1  0  0 29   5  2  0  0 37 252638
VecNorm             5669 1.0 1.7518e+01 2.4 4.61e+09 1.1 0.0e+00 0.0e+00 5.7e+03  1  0  0  0 35   1  0  0  0 45 208996
VecScale            5144 1.0 1.5449e+00 1.2 2.09e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1075170
VecCopy             1800 1.0 2.3951e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               900 1.0 7.4468e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              450 1.0 7.3416e-01 1.2 3.66e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 395855
VecWAXPY             225 1.0 4.3304e-01 1.1 9.15e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 167782
VecMAXPY            5144 1.0 3.3149e+01 1.1 2.61e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   3  3  0  0  0 625708
VecScatterBegin     4919 1.0 1.8672e+00 2.8 0.00e+00 0.0 2.3e+07 1.1e+05 0.0e+00  0  0 24 26  0   0  0 77 53  0    -0
VecScatterEnd       4919 1.0 2.7954e+01 24.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       450 1.0 3.3064e-01 3.1 3.66e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 878970
VecReduceComm        225 1.0 2.8935e-01 14.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        2475 1.0 1.0617e+01 2.3 3.02e+09 1.1 0.0e+00 0.0e+00 2.5e+03  0  0  0  0 15   1  0  0  0 20 225835
MatMult             4919 1.0 2.0494e+02 1.2 1.42e+11 1.1 2.3e+07 1.1e+05 0.0e+00 10  9 24 26  0  20 14 77 53  0 549059
MatSolve            2475 1.0 9.7972e+01 1.2 6.93e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0  10  7  0  0  0 558732
MatLUFactorSym         1 1.0 2.9250e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       450 1.0 2.4207e+02 1.0 5.75e+10 1.1 0.0e+00 0.0e+00 0.0e+00 12  3  0  0  0  25  5  0  0  0 185260
MatILUFactorSym        1 1.0 1.5068e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1586 1.0 5.9591e+01 2.1 0.00e+00 0.0 1.1e+06 1.3e+06 1.1e+03  2  0  1 14  7   5  0  4 30  9    -0
MatAssemblyEnd      1586 1.0 1.1750e+01 11.5 2.43e+08 0.0 1.9e+04 1.3e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  7262
MatGetRowIJ            1 1.0 7.1440e-06 61.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 5.9562e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       450 1.0 7.9400e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.4700e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2549e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        450 1.0 5.6730e+00 1.6 6.59e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 920875
MatPtAPSymbolic        1 1.0 2.2729e-01 1.0 0.00e+00 0.0 1.4e+04 1.8e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       225 1.0 3.8116e+01 1.0 2.63e+10 1.1 1.1e+06 3.2e+05 2.3e+02  2  2  1  4  1   4  3  4  7  2 547918
MatGetLocalMat       225 1.0 1.6415e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        225 1.0 8.2093e-01 1.7 0.00e+00 0.0 1.1e+06 3.2e+05 0.0e+00  0  0  1  4  0   0  0  4  7  0    -0
PCSetUp              225 1.0 4.9854e+02 1.0 2.43e+11 1.1 1.2e+07 1.3e+05 5.2e+03 26 15 12 15 32  54 23 39 32 41 384967
PCApply             2444 1.0 1.3789e+03 1.0 7.47e+11 1.1 7.4e+07 8.0e+04 7.0e+03 69 46 77 62 43 Multiple stages 429237
PCApplyOnBlocks     2475 1.0 9.7999e+01 1.2 6.93e+10 1.1 0.0e+00 0.0e+00 0.0e+00  5  4  0  0  0  10  7  0  0  0 558577
KSPSetUp             225 1.0 1.4182e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             225 1.0 1.5000e+03 1.0 8.48e+11 1.1 8.6e+07 8.4e+04 1.2e+04 77 52 89 75 75 Multiple stages 447672
KSPGMRESOrthog      4694 1.0 9.6136e+01 1.7 4.46e+10 1.1 0.0e+00 0.0e+00 4.7e+03  4  3  0  0 29   8  4  0  0 37 368431
DMPlexCreateGmsh       1 1.0 4.0887e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.4575e+00 15.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 6.7371e-01 1.0 0.00e+00 0.0 5.9e+04 2.8e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 1.1026e-01 1.0 0.00e+00 0.0 2.1e+05 3.5e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 7.6105e-02 15737.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.0989e-01 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 1.1167e-02 4.2 0.00e+00 0.0 1.1e+04 2.7e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 5.5297e-03 1.4 0.00e+00 0.0 5.6e+03 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 2.8185e-02 1.1 0.00e+00 0.0 6.4e+03 2.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.2604e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 7.9035e-01 1.0 0.00e+00 0.0 3.4e+04 2.3e+03 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 1.3808e-02 1.1 0.00e+00 0.0 3.3e+04 6.7e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 7.7196e-02 1.0 0.00e+00 0.0 1.1e+05 3.7e+02 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 2.3914e-02 1.0 0.00e+00 0.0 2.4e+05 9.7e+01 8.0e+01  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.1868e-02 1.2 0.00e+00 0.0 5.1e+04 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 1.8371e-01 20.6 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.8183e-02 610.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 1.8872e+03 1.0 1.63e+12 1.1 9.6e+07 1.0e+05 1.6e+04 97 100 99 100 97 Multiple stages 679164
SNESSetUp              1 1.0 6.3366e-05 8.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     300 1.0 3.2406e+01 1.2 2.71e+11 1.2 3.2e+06 1.1e+05 0.0e+00  2 16  3  4  0   3 26 11  7  0 6476735
SNESJacobianEval     225 1.0 1.7467e+02 1.0 4.26e+11 1.2 2.1e+06 6.9e+05 9.0e+02  9 26  2 15  6  19 40  7 32  7 1891091
SNESLineSearch       225 1.0 2.7660e+01 1.0 2.11e+11 1.2 3.2e+06 1.1e+05 9.0e+02  1 13  3  4  6   3 20 11  7  7 5905946
firedrake              1 1.0 1.9491e+03 1.0 1.63e+12 1.1 9.7e+07 9.9e+04 1.6e+04 100 100 100 100 100 Multiple stages 657630
firedrake.__init__       1 1.0 1.1343e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 7.3578e+00 5.6 0.00e+00 0.0 4.9e+05 2.6e+02 2.0e+02  0  0  1  0  1   1  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 6.4584e+00 15.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.1498e-03 46.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 2.9910e-06 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.6687e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 6.8954e-04 4.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.2643e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.9080e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 2.0961e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 1.9702e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 1.9622e-02 1.2 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 8.3376e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 3.9853e-03 1.4 0.00e+00 0.0 9.5e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 4.1962e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0743e-04 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 2.0545e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.1068e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.5684e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.9106e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.9728e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.1024e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 8.7906e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2412 1.0 1.7971e+02 1.2 6.97e+11 1.2 2.9e+06 1.0e+05 1.5e+01  8 42  3  3  0  18 66 10  7  0 3005725
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.0692e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4824 1.0 2.4256e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.1724e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.5222e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.6891e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3109e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3108e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.7654e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.5826e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
ParLoopRednBegin    2412 1.0 9.2333e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2412 1.0 7.4385e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 8.1550e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.8458e+00 1.0 6.87e+07 1.1 8.5e+04 4.5e+04 1.2e+01  0  0  0  0  0   1  0  0  0  0 11262
firedrake.interpolation.interpolate      11 1.0 4.1996e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.9269e+00 1.0 7.12e+07 1.1 9.5e+04 4.0e+04 3.4e+01  0  0  0  0  0   1  0  0  0  0  9534
firedrake.formmanipulation.split_form      12 1.0 5.5288e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 3.6554e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.6406e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.2 1.0669e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     614 1.0 4.2284e-01 2.8 0.00e+00 0.0 2.9e+06 1.0e+05 2.0e+00  0  0  3  3  0   0  0 10  7  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.4086e+00 1.0 7.12e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 10448
firedrake.halo.Halo.global_to_local_end     614 1.0 1.4010e+01 163.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 1.7370e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.6423e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2784e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.7220e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 7.4086e-05 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4026e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9850e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1464e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2802e+00 1.0 0.00e+00 0.0 2.8e+04 4.3e+05 2.3e+01  0  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 7.2693e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.0234e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.0685e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.0685e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 4.0870e+00 1.1 0.00e+00 0.0 2.4e+04 2.6e+05 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.4822e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 1.8875e+03 1.0 1.63e+12 1.1 9.6e+07 1.0e+05 1.6e+04 97 100 99 100 98 Multiple stages 679062
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.9978e-01 989.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1047e-05 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.9973e-01 1165.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.9969e-01 1322.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     600 1.0 8.6907e+00 1.5 6.94e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  7  0  0  0 6337003
Parloop_Cells_wrap_form0_exterior_facet_top_integral     600 1.0 1.0234e+00 1.0 9.02e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6994
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     600 1.0 1.2629e+00 1.1 6.49e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 27301
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     600 1.0 5.6497e+00 1.2 6.66e+10 1.1 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  6  0  0  0 9362224
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     600 1.0 1.2072e+01 1.3 1.36e+11 1.3 0.0e+00 0.0e+00 0.0e+00  1  8  0  0  0   1 12  0  0  0 8437390
firedrake.halo.Halo.local_to_global_begin     300 1.0 1.0946e-01 9.2 0.00e+00 0.0 1.4e+06 1.1e+05 0.0e+00  0  0  1  2  0   0  0  5  3  0    -0
firedrake.halo.Halo.local_to_global_end     300 1.0 2.9812e+00 58.3 2.92e+07 2.7 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  6360
Parloop_Cells_wrap_form00_cell_integral     450 1.0 3.2886e+01 1.6 9.71e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   3  9  0  0  0 2343678
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     450 1.0 2.0296e+00 1.8 4.96e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 12974
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     450 1.0 3.6287e+01 1.2 1.28e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  8  0  0  0   4 12  0  0  0 2810058
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     450 1.0 7.8891e+01 1.3 2.01e+11 1.3 0.0e+00 0.0e+00 0.0e+00  4 12  0  0  0   7 18  0  0  0 1916101
firedrake.dmhooks.get_function_space       1 1.0 1.3791e-03 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 6.3054e-05 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      225 1.0 2.0802e+02 1.0 5.90e+08 49.9 0.0e+00 0.0e+00 2.0e+00 11  0  0  0  0  22  0  0  0  0   125
MGSetup Level 1      225 1.0 2.5144e+02 1.0 2.16e+11 1.1 1.1e+07 1.1e+05 4.7e+03 13 13 11 12 29  27 21 35 24 37 680134
firedrake.constant.Constant.assign      75 1.0 3.5255e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        225 1.0 1.4672e-01 3.2 0.00e+00 0.0 1.3e+06 4.0e+00 2.2e+02  0  0  1  0  1   0  0  2  0  6    -0
SFSetGraph           225 1.0 2.6269e-02 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              225 1.0 1.8318e-01 2.6 0.00e+00 0.0 2.5e+06 1.9e+02 2.2e+02  0  0  3  0  1   0  0  4  0  6    -0
SFPack             17108 1.0 3.7966e+00 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           17108 1.0 2.4313e-02 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             7332 1.0 8.6238e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              9775 1.0 2.0936e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            14664 1.0 1.9991e+01 2.2 7.95e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 315818
VecAXPBYCZ          4888 1.0 9.0121e+00 1.6 9.94e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  2  0  0  0 875707
VecScatterBegin    17108 1.0 4.2836e+00 3.1 0.00e+00 0.0 6.0e+07 8.3e+04 0.0e+00  0  0 62 51  0   0  0 91 100  0    -0
VecScatterEnd      17108 1.0 7.6517e+01 32.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
MatMult             9776 1.0 4.2564e+02 1.2 2.82e+11 1.1 4.6e+07 1.1e+05 0.0e+00 20 17 48 51  0  37 48 70 100  0 525404
MatMultAdd          2444 1.0 1.2541e+01 1.2 5.97e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 377583
MatMultTranspose    2444 1.0 9.4559e+00 2.3 5.97e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 500765
MatSolve           12220 1.0 6.4044e+02 1.2 2.74e+11 1.1 2.0e+07 6.0e+02 1.1e+03 30 17 21  0  7  58 47 30  0 32 338237
MatResidual         2444 1.0 1.1636e+02 1.4 7.15e+10 1.1 1.2e+07 1.1e+05 0.0e+00  5  4 12 13  0  10 12 17 25  0 487272
PCSetUpOnBlocks     4888 1.0 5.9971e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            12220 1.0 6.4064e+02 1.2 2.74e+11 1.1 2.0e+07 6.0e+02 1.1e+03 30 17 21  0  7  58 47 30  0 32 338132
PCApplyOnBlocks     9776 1.0 4.3269e+02 1.4 2.74e+11 1.1 0.0e+00 0.0e+00 0.0e+00 19 17  0  0  0  37 47  0  0  0 499702
KSPSolve            7332 1.0 9.4585e+02 1.1 5.02e+11 1.1 5.5e+07 6.8e+04 3.6e+03 46 31 57 39 22  88 86 83 75 100 420533
MGSmooth Level 0    2444 1.0 2.3174e+02 1.1 1.22e+10 81.7 2.0e+07 6.0e+02 3.6e+03 11  0 21  0 22  21  0 30  0 100  1732
MGSmooth Level 1    4888 1.0 7.3929e+02 1.2 5.02e+11 1.1 3.5e+07 1.1e+05 0.0e+00 35 31 36 39  0  67 86 52 75  0 537489
MGResid Level 1     2444 1.0 1.1637e+02 1.4 7.15e+10 1.1 1.2e+07 1.1e+05 0.0e+00  5  4 12 13  0  10 12 17 25  0 487230
MGInterp Level 1    4888 1.0 2.1452e+01 1.4 1.19e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 441460
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set  2671           2671
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
Average time to get PetscTime(): 2.57e-08
Average time for MPI_Barrier(): 6.5918e-06
Average time for zero size MPI_Send(): 2.13126e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_horiz/vlumping_inexact_lag3/h8.profile # (source: code)
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

