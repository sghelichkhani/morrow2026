****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/cockett_3d.py on a default named gadi-cpu-spr-0419.gadi.nci.org.au with 832 processes, by sg8812 on Tue Aug 25 22:27:11 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           1.346e+03     1.000   1.346e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                9.066e+11     1.151   8.579e+11  7.137e+14
Flops/sec:            6.737e+08     1.151   6.375e+08  5.304e+11
MPI Msg Count:        1.989e+05     3.669   1.348e+05  1.121e+08
MPI Msg Len (bytes):  1.766e+10     2.991   9.629e+04  1.080e+13
MPI Reductions:       1.276e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.5371e+02  26.3%  2.3944e+14  33.5%  2.151e+07  19.2%  1.235e+05       24.6%  8.885e+03  69.6%
 1:        MG Apply: 9.9193e+02  73.7%  4.7430e+14  66.5%  9.061e+07  80.8%  8.983e+04       75.4%  3.859e+03  30.2%

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

BuildTwoSided        442 1.0 1.9310e+01 6.8 0.00e+00 0.0 3.3e+05 4.0e+00 4.4e+02  1  0  0  0  3   3  0  2  0  5    -0
BuildTwoSidedF       402 1.0 1.9047e+01 7.0 0.00e+00 0.0 4.4e+05 5.1e+05 4.0e+02  1  0  0  2  3   3  0  2  8  5    -0
SFSetGraph            43 1.0 5.9940e-03 4.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               40 1.0 4.2302e-01 8.2 0.00e+00 0.0 2.2e+05 2.9e+03 4.0e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         340 1.0 1.8609e-01 3.4 0.00e+00 0.0 1.5e+06 9.2e+04 0.0e+00  0  0  1  1  0   0  0  7  5  0    -0
SFBcastEnd           340 1.0 1.0508e+01 142.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        134 1.0 3.9948e-02 21.1 0.00e+00 0.0 6.2e+05 1.1e+05 0.0e+00  0  0  1  1  0   0  0  3  3  0    -0
SFReduceEnd          134 1.0 3.3076e+00 150.2 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2510
SFFetchOpBegin         2 1.0 1.7441e-05 6.2 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 8.1416e-04 50.8 0.00e+00 0.0 7.2e+03 9.8e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 3.1555e-03 4.2 0.00e+00 0.0 5.7e+03 7.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         22 1.0 2.3342e-02 1.4 0.00e+00 0.0 1.9e+05 1.6e+02 2.5e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           22 1.0 1.0569e-02 7.2 0.00e+00 0.0 8.2e+04 9.4e+01 2.2e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4410 1.0 1.5162e+00 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4412 1.0 8.5842e-02 13.6 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 96707
VecDot                91 1.0 3.4902e-01 9.4 3.27e+07 1.1 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1 74971
VecMDot             3754 1.0 4.7523e+01 3.3 1.76e+10 1.1 0.0e+00 0.0e+00 3.8e+03  2  2  0  0 29   8  6  0  0 42 296904
VecNorm             4181 1.0 6.6689e+00 3.4 1.50e+09 1.1 0.0e+00 0.0e+00 4.2e+03  0  0  0  0 33   1  1  0  0 47 180269
VecScale            3937 1.0 1.7064e-01 1.3 7.08e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 3317093
VecCopy              639 1.0 4.1670e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               275 1.0 9.4602e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              183 1.0 8.4309e-02 1.4 6.58e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 624127
VecWAXPY             180 1.0 1.3995e-01 1.7 3.23e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 184910
VecMAXPY            3937 1.0 1.8727e+01 1.2 1.90e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   5  6  0  0  0 811090
VecScatterBegin     3934 1.0 1.5272e+00 2.9 0.00e+00 0.0 1.9e+07 1.2e+05 0.0e+00  0  0 17 20  0   0  0 86 81  0    -0
VecScatterEnd       3934 1.0 2.2712e+01 56.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
VecSetRandom           2 1.0 4.7447e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecReduceArith       182 1.0 3.2018e-02 1.6 6.54e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1634464
VecReduceComm         91 1.0 6.1713e-02 5.1 0.00e+00 0.0 0.0e+00 0.0e+00 9.1e+01  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize          53 1.0 2.1985e-01 3.7 2.86e+07 1.1 0.0e+00 0.0e+00 5.3e+01  0  0  0  0  0   0  0  0  0  1 103979
MatMult             3934 1.0 1.1406e+02 1.2 7.84e+10 1.1 1.9e+07 1.2e+05 0.0e+00  8  9 17 20  0  29 26 86 81  0 548587
MatSolve              53 1.0 1.2691e+00 1.2 9.84e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 616031
MatLUFactorSym         1 1.0 2.2811e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatLUFactorNum        35 1.0 1.3740e+01 1.0 6.80e+08 1.3 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0 36358
MatILUFactorSym        2 1.0 1.9482e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatCopy               30 1.0 1.0816e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatConvert             1 1.0 1.0845e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     471 1.0 1.9312e+01 4.9 0.00e+00 0.0 4.4e+05 5.1e+05 4.0e+02  1  0  0  2  3   3  0  2  8  5    -0
MatAssemblyEnd       471 1.0 3.9925e+00 8.2 3.77e+07 0.0 1.9e+04 1.5e+04 1.7e+01  0  0  0  0  0   1  0  0  0  0  3249
MatGetRowIJ            2 1.0 5.9880e-06 25.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         2 1.0 4.6998e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       123 1.0 3.2188e+00 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 8.5844e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.1901e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum         64 1.0 4.8065e-01 1.2 9.20e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 1526678
MatPtAPSymbolic        1 1.0 2.0387e-01 1.0 0.00e+00 0.0 1.4e+04 2.5e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric        32 1.0 2.7603e+00 1.0 3.49e+09 1.1 1.6e+05 4.4e+05 3.7e+01  0  0  0  1  0   1  1  1  3  0 1010097
MatGetLocalMat        32 1.0 1.5030e-01 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol         32 1.0 1.9685e-01 2.8 0.00e+00 0.0 1.6e+05 4.5e+05 0.0e+00  0  0  0  1  0   0  0  1  3  0    -0
PCSetUp               91 1.0 2.4563e+01 1.0 6.53e+09 1.1 4.2e+05 2.4e+05 2.4e+02  2  1  0  1  2   7  2  2  4  3 211153
PCApply             3704 1.0 1.0126e+03 1.0 5.98e+11 1.1 9.1e+07 9.0e+04 3.9e+03 74 66 81 75 30 Multiple stages 468416
PCApplyOnBlocks       53 1.0 1.2696e+00 1.2 9.84e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 615794
KSPSetUp              91 1.0 1.3692e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              91 1.0 1.1382e+03 1.0 7.12e+11 1.1 1.1e+08 9.4e+04 1.1e+04 85 79 97 95 90 Multiple stages 496746
KSPGMRESOrthog      3754 1.0 6.4338e+01 2.1 3.53e+10 1.1 0.0e+00 0.0e+00 3.8e+03  3  4  0  0 29  13 12  0  0 42 438617
Mesh Partition         2 1.0 5.4167e-01 1.0 0.00e+00 0.0 5.9e+04 1.6e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 7.5242e-02 1.0 0.00e+00 0.0 2.0e+05 2.1e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 2.5299e-02 4981.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 6.0373e-02 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 6.6093e-03 1.2 0.00e+00 0.0 1.1e+04 1.5e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 2.8453e-03 1.8 0.00e+00 0.0 5.7e+03 5.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1967e-02 1.2 0.00e+00 0.0 6.5e+03 9.8e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.1160e-01 1.0 0.00e+00 0.0 3.2e+04 1.1e+03 6.3e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 8.1137e-03 1.1 0.00e+00 0.0 3.4e+04 3.6e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 5.0836e-02 1.0 0.00e+00 0.0 9.3e+04 2.3e+02 7.6e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 2.4315e-02 1.1 0.00e+00 0.0 2.3e+05 9.1e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.0424e-02 1.2 0.00e+00 0.0 5.2e+04 1.0e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistData         1 1.0 1.3543e-04 1.3 0.00e+00 0.0 2.4e+04 5.9e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         3 1.0 1.4428e-02 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       3 1.0 5.1849e-03 362.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexGenerate         1 1.0 2.2159e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             30 1.0 1.3119e+03 1.0 9.07e+11 1.2 1.1e+08 9.7e+04 1.2e+04 97 100 99 100 98 Multiple stages 544038
SNESSetUp              1 1.0 3.6470e-05 6.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     121 1.0 4.4600e+01 1.1 7.85e+10 1.3 1.3e+06 1.1e+05 1.0e+00  3  8  1  1  0  12 24  6  6  0 1303268
SNESJacobianEval      91 1.0 1.0105e+02 1.0 1.13e+11 1.3 8.6e+05 3.0e+05 3.6e+02  8 12  1  2  3  29 35  4 10  4 825733
SNESLineSearch        91 1.0 2.3964e+01 1.0 6.10e+10 1.3 1.3e+06 1.2e+05 3.6e+02  2  6  1  1  3   7 19  6  6  4 1890561
firedrake              1 1.0 1.3425e+03 1.0 9.07e+11 1.2 1.1e+08 9.6e+04 1.3e+04 100 100 100 100 100 Multiple stages 531633
firedrake.__init__       1 1.0 1.6290e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
firedrake.utility_meshes.RectangleMesh       1 1.0 5.0469e+00 6.7 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  0  0  2   1  0  2  0  2    -0
CreateMesh             1 1.0 7.2557e-01 1.0 0.00e+00 0.0 5.0e+05 1.6e+02 1.9e+02  0  0  0  0  1   0  0  2  0  2    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.7782e-03 5.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.7000e-06 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.7983e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.0084e-04 4.3 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       6 1.0 3.3640e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element       7 1.0 7.8050e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       6 1.0 3.2528e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       5 1.0 3.1642e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       5 1.0 3.1597e-02 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      10 1.0 1.4232e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 8.9500e-03 1.1 0.00e+00 0.0 3.4e+04 7.7e+01 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.2931e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 1.0350e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      17 1.0 2.9722e-02 9.8 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 2.4019e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 9.3129e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       1 1.0 3.5888e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.7459e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 2.3979e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     248 1.0 3.9918e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      1063 1.0 1.3645e+02 1.2 1.91e+11 1.3 1.2e+06 1.1e+05 6.0e+00  9 20  1  1  0  36 59  5  5  0 1037380
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 2.3649e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    2126 1.0 3.4065e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0  10  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      13 1.0 2.0767e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   6  0  0  0  0    -0
GlobalKernel: generate loopy      13 0.0 1.8875e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      13 0.0 1.8051e+01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      13 1.0 1.3332e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      13 1.0 1.3331e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      13 1.0 9.3373e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      13 1.0 9.2196e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    1063 1.0 3.2474e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      1063 1.0 2.7117e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 6.9815e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate       1 1.0 9.6473e-01 1.0 2.70e+06 1.1 1.9e+04 2.1e+04 2.0e+00  0  0  0  0  0   0  0  0  0  0  2235
firedrake.interpolation.interpolate       2 1.0 6.3958e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble       2 1.0 1.9761e+00 1.0 4.22e+06 1.1 2.9e+04 1.4e+04 2.4e+01  0  0  0  0  0   1  0  0  0  0  1710
firedrake.formmanipulation.split_form       3 1.0 2.6593e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split       3 1.0 3.0487e-04 8.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)       2 1.0 6.2560e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       2 1.0 4.2244e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     243 1.0 6.7166e-01 5.2 0.00e+00 0.0 1.2e+06 1.1e+05 2.0e+00  0  0  1  1  0   0  0  5  5  0    -0
Parloop_Cells_wrap_expression_kernel       4 1.0 1.8074e+00 1.0 4.22e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1869
firedrake.halo.Halo.global_to_local_end     243 1.0 1.0277e+01 274.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign      95 1.0 3.1948e-01 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      94 1.0 2.9229e-01 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.6723e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate      34 1.0 6.2497e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.3151e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 8.9185e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 5.0910e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 8.2977e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 9.5668e+00 1.0 0.00e+00 0.0 2.9e+04 6.4e+05 2.3e+01  1  0  0  0  0   3  0  0  1  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.9189e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.7002e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 1.1570e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 1.1570e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   3  0  0  0  0    -0
CreateSparsity         2 1.0 2.7938e+00 1.3 0.00e+00 0.0 2.4e+04 3.7e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 4.5091e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      30 1.0 1.3120e+03 1.0 9.07e+11 1.2 1.1e+08 9.7e+04 1.3e+04 97 100 99 100 98 Multiple stages 544012
firedrake.mesh.AbstractMeshTopology.measure_set      10 1.0 1.1812e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       8 1.0 3.0812e-05 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       8 1.0 6.5432e-05 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     242 1.0 8.9092e+00 1.2 1.68e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   2  6  0  0  0 1507892
Parloop_Cells_wrap_form0_exterior_facet_bottom_integral     242 1.0 2.0413e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 11322
Parloop_Cells_wrap_form0_exterior_facet_top_integral     242 1.0 1.7716e+00 1.0 2.89e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13046
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     242 1.0 1.0576e+01 1.2 1.73e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   3  6  0  0  0 1306126
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     242 1.0 1.7696e+01 1.4 4.43e+10 1.5 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   4 13  0  0  0 1741859
firedrake.halo.Halo.local_to_global_begin     121 1.0 4.4254e-02 9.2 0.00e+00 0.0 5.7e+05 1.2e+05 0.0e+00  0  0  1  1  0   0  0  3  2  0    -0
firedrake.halo.Halo.local_to_global_end     121 1.0 3.3086e+00 141.0 1.36e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2509
Parloop_Cells_wrap_form00_cell_integral     182 1.0 1.6960e+01 1.2 2.30e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   4  8  0  0  0 1085180
Parloop_Cells_wrap_form00_exterior_facet_bottom_integral     182 1.0 2.3601e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  8946
Parloop_Cells_wrap_form00_exterior_facet_top_integral     182 1.0 2.3327e+00 1.0 2.64e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0  9051
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     182 1.0 2.8097e+01 1.2 2.43e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  3  0  0  0   7  8  0  0  0 691008
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     182 1.0 4.5973e+01 1.5 6.55e+10 1.5 0.0e+00 0.0e+00 0.0e+00  3  6  0  0  0  11 19  0  0  0 991181
firedrake.dmhooks.get_function_space       1 1.0 1.3727e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.5895e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0       32 1.0 1.5645e+01 1.0 8.64e+07 89.0 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   4  0  0  0  0   165
MGSetup Level 1       32 1.0 8.5579e-01 1.0 6.66e+08 1.1 4.7e+04 1.2e+05 2.1e+01  0  0  0  0  0   0  0  0  0  0 615226

--- Event Stage 1: MG Apply

BuildTwoSided         31 1.0 1.1856e-02 6.0 0.00e+00 0.0 1.6e+05 4.0e+00 3.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFSetGraph            31 1.0 7.5223e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               31 1.0 1.4671e-02 3.2 0.00e+00 0.0 3.3e+05 8.9e+01 3.1e+01  0  0  0  0  0   0  0  0  0  1    -0
SFPack             25928 1.0 5.0953e+00 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           25928 1.0 1.9262e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             3704 1.0 1.4748e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet             14815 1.0 1.2192e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY            14816 1.0 7.7044e+00 1.3 5.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 552951
VecAYPX            14816 1.0 8.4166e+00 2.5 2.66e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0 253083
VecScatterBegin    25928 1.0 5.8353e+00 2.8 0.00e+00 0.0 9.0e+07 9.1e+04 0.0e+00  0  0 80 75  0   0  0 99 100  0    -0
VecScatterEnd      25928 1.0 7.2837e+01 43.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
MatMult            14816 1.0 4.2175e+02 1.2 2.95e+11 1.1 7.0e+07 1.2e+05 0.0e+00 29 33 63 75  0  39 50 77 100  0 558748
MatMultAdd          3704 1.0 1.1356e+01 1.3 5.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   1  1  0  0  0 375144
MatMultTranspose    3704 1.0 9.3015e+00 3.1 5.33e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 458010
MatSolve           18520 1.0 6.1038e+02 1.1 2.82e+11 1.2 2.1e+07 3.4e+02 1.6e+02 43 31 18  0  1  58 46 23  0  4 358679
MatLUFactorNum        29 1.0 3.6693e+00 1.5 6.20e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 1309254
MatResidual         3704 1.0 1.0835e+02 1.3 7.45e+10 1.1 1.8e+07 1.2e+05 0.0e+00  7  8 16 19  0  10 13 19 25  0 548627
PCSetUpOnBlocks     7408 1.0 3.7218e+00 1.5 6.20e+09 1.2 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 1290760
PCApply            18520 1.0 6.1067e+02 1.1 2.82e+11 1.2 2.1e+07 3.4e+02 1.6e+02 43 31 18  0  1  58 46 23  0  4 358510
PCApplyOnBlocks    14816 1.0 3.8376e+02 1.3 2.75e+11 1.1 0.0e+00 0.0e+00 0.0e+00 25 31  0  0  0  34 46  0  0  0 569485
KSPSolve           11112 1.0 9.0512e+02 1.1 5.07e+11 1.1 7.3e+07 8.4e+04 3.9e+03 65 56 65 57 30  88 85 81 75 100 443618
MGSmooth Level 0    3704 1.0 2.5506e+02 1.1 1.49e+10 86.5 2.1e+07 3.4e+02 3.9e+03 18  0 18  0 30  24  0 23  0 100  1496
MGSmooth Level 1    7408 1.0 6.8134e+02 1.1 5.10e+11 1.1 5.3e+07 1.2e+05 0.0e+00 48 57 47 56  0  65 86 58 75  0 595810
MGResid Level 1     3704 1.0 1.0837e+02 1.3 7.45e+10 1.1 1.8e+07 1.2e+05 0.0e+00  7  8 16 19  0  10 13 19 25  0 548567
MGInterp Level 1    7408 1.0 1.9832e+01 1.6 1.07e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  1  0  0  0   2  2  0  0  0 429619
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    69             69
              Viewer     1              1
         PetscRandom     2              2
           Index Set  2678           2678
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
Average time to get PetscTime(): 2.58e-08
Average time for MPI_Barrier(): 8.2082e-06
Average time for zero size MPI_Send(): 2.1988e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett/vlumping_inexact_rich_lag3/huge.profile # (source: environment)
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

