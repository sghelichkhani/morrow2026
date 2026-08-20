****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0035.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 15:42:49 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.787e+01     1.000   8.787e+01
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.218e+10     1.234   2.959e+10  3.077e+12
Flops/sec:            3.662e+08     1.234   3.368e+08  3.502e+10
MPI Msg Count:        1.434e+05     3.150   9.844e+04  1.024e+07
MPI Msg Len (bytes):  4.983e+08     2.243   3.972e+03  4.067e+10
MPI Reductions:       1.605e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 7.8145e+01  88.9%  2.4791e+12  80.6%  4.301e+06  42.0%  5.352e+03       56.6%  1.288e+04  80.2%
 1:        MG Apply: 9.7230e+00  11.1%  5.9833e+11  19.4%  5.937e+06  58.0%  2.973e+03       43.4%  3.153e+03  19.6%

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

BuildTwoSided       1130 1.0 7.4589e-01 2.8 0.00e+00 0.0 7.0e+04 4.0e+00 1.1e+03  1  0  1  0  7   1  0  2  0  9    -0
BuildTwoSidedF      1091 1.0 7.4561e-01 2.7 0.00e+00 0.0 1.2e+05 4.8e+04 1.1e+03  1  0  1 14  7   1  0  3 24  8    -0
SFSetGraph            42 1.0 2.2690e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 5.3764e-03 1.4 0.00e+00 0.0 2.5e+04 1.2e+02 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin        1793 1.0 2.5814e-02 2.5 0.00e+00 0.0 9.3e+05 3.8e+03 0.0e+00  0  0  9  9  0   0  0 22 15  0    -0
SFBcastEnd          1793 1.0 5.1330e-01 37.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin       1462 1.0 1.6762e-02 3.3 0.00e+00 0.0 7.7e+05 4.0e+03 0.0e+00  0  0  8  8  0   0  0 18 13  0    -0
SFReduceEnd         1462 1.0 2.9652e-01 35.7 4.70e+06 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1293
SFFetchOpBegin         2 1.0 7.5730e-06 4.0 0.00e+00 0.0 8.2e+02 4.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.2216e-04 29.4 0.00e+00 0.0 8.2e+02 4.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 7.1431e-04 1.4 0.00e+00 0.0 6.6e+02 2.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 3.7036e-03 1.3 0.00e+00 0.0 2.1e+04 6.3e+01 2.4e+01  0  0  0  0  0   0  0  0  0  0    -0
SFSectionSF           21 1.0 1.8174e-03 2.4 0.00e+00 0.0 9.9e+03 3.5e+01 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              7716 1.0 2.2645e-02 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            7718 1.0 8.3538e-03 3.5 4.71e+06 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 46023
VecDot               217 1.0 1.5749e-02 4.3 2.19e+06 1.1 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2 14116
VecMDot             4238 1.0 1.1351e+00 4.5 2.40e+08 1.1 0.0e+00 0.0e+00 4.2e+03  1  1  0  0 26   1  1  0  0 33 21471
VecNorm             6340 1.0 6.0943e-01 2.2 6.39e+07 1.1 0.0e+00 0.0e+00 6.3e+03  1  0  0  0 39   1  0  0  0 49 10658
VecScale            4672 1.0 1.0362e-02 1.3 2.35e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 230978
VecCopy             3985 1.0 1.3283e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               876 1.0 9.1095e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              434 1.0 6.7586e-03 1.2 4.37e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 65792
VecWAXPY            1445 1.0 6.4901e-03 1.5 1.35e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 210985
VecMAXPY            4672 1.0 4.1942e-02 1.2 2.83e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   0  1  0  0  0 684649
VecScatterBegin     4459 1.0 7.7130e-02 2.5 0.00e+00 0.0 2.3e+06 4.0e+03 0.0e+00  0  0 23 23  0   0  0 55 41  0    -0
VecScatterEnd       4459 1.0 2.1077e-01 11.4 1.30e+04 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     5
VecReduceArith       434 1.0 2.5955e-03 2.2 4.37e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 171302
VecReduceComm        217 1.0 3.3000e-02 19.0 0.00e+00 0.0 0.0e+00 0.0e+00 2.2e+02  0  0  0  0  1   0  0  0  0  2    -0
VecNormalize        2387 1.0 8.9803e-02 2.3 3.61e+07 1.1 0.0e+00 0.0e+00 2.4e+03  0  0  0  0 15   0  0  0  0 19 40847
MatMult             4455 1.0 1.4442e+00 1.2 1.58e+09 1.1 2.3e+06 4.0e+03 0.0e+00  2  5 23 23  0   2  6 54 41  0 109959
MatMultTranspose       4 1.0 2.4780e-03 1.4 1.45e+06 1.1 2.1e+03 4.0e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0 58794
MatSolve            2387 1.0 5.1681e-01 1.4 7.72e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 149916
MatLUFactorSym         1 1.0 5.3263e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       434 1.0 1.8860e+00 1.0 6.33e+08 1.2 0.0e+00 0.0e+00 0.0e+00  2  2  0  0  0   2  2  0  0  0 31822
MatILUFactorSym        1 1.0 7.2091e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1530 1.0 7.7954e-01 2.3 0.00e+00 0.0 1.2e+05 4.8e+04 1.1e+03  1  0  1 14  7   1  0  3 24  8    -0
MatAssemblyEnd      1530 1.0 3.3608e-01 13.8 8.44e+06 0.0 2.1e+03 5.1e+02 1.7e+01  0  0  0  0  0   0  0  0  0  0  1028
MatGetRowIJ            1 1.0 3.4310e-06 27.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.0357e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       434 1.0 5.5238e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatView              259 1.0 7.6980e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 2.4e+02  0  0  0  0  2   0  0  0  0  2    -0
MatTranspose           2 1.0 2.0880e-04 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.7524e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        434 1.0 3.9443e-02 1.2 7.90e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 200875
MatPtAPSymbolic        1 1.0 4.3347e-03 1.1 0.00e+00 0.0 1.6e+03 6.7e+03 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       217 1.0 2.7248e-01 1.0 3.13e+08 1.1 1.1e+05 1.2e+04 2.2e+02  0  1  1  3  1   0  1  3  6  2 115549
MatGetLocalMat       217 1.0 1.2666e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        217 1.0 3.8766e-02 1.6 0.00e+00 0.0 1.2e+05 1.2e+04 0.0e+00  0  0  1  3  0   0  0  3  6  0    -0
PCSetUp              217 1.0 4.4283e+00 1.0 2.78e+09 1.1 1.3e+06 4.7e+03 5.0e+03  5  9 12 15 31   6 11 29 26 39 62531
PCApply             2068 1.0 1.0239e+01 1.1 6.03e+09 1.1 5.9e+06 3.0e+03 3.2e+03 11 19 58 43 20 Multiple stages 58437
PCApplyOnBlocks     2387 1.0 5.2290e-01 1.4 7.72e+08 1.1 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 148170
KSPSetUp             217 1.0 1.6828e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             217 1.0 1.1023e+01 1.0 7.06e+09 1.1 7.0e+06 3.1e+03 7.5e+03 13 23 69 54 47 Multiple stages 63700
KSPGMRESOrthog      4238 1.0 1.1607e+00 4.1 4.80e+08 1.1 0.0e+00 0.0e+00 4.2e+03  1  2  0  0 26   1  2  0  0 33 41994
DMPlexCreateGmsh       1 1.0 1.4648e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 6.5048e-01 41.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 5.1523e-02 1.0 0.00e+00 0.0 6.7e+03 6.1e+01 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 9.3191e-03 1.1 0.00e+00 0.0 2.5e+04 7.1e+01 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 1.5528e-03 743.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 5.8562e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 2.5859e-03 1.1 0.00e+00 0.0 1.3e+03 5.4e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.0341e-03 1.5 0.00e+00 0.0 6.6e+02 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 1.1134e-03 1.9 0.00e+00 0.0 7.6e+02 3.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 6.0586e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 5.8577e-02 1.0 0.00e+00 0.0 4.4e+03 3.2e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        2 1.0 1.1724e-03 1.0 0.00e+00 0.0 3.9e+03 1.3e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 3.9740e-03 1.0 0.00e+00 0.0 1.3e+04 7.3e+01 7.6e+01  0  0  0  0  0   0  0  0  0  1    -0
DMPlexDistOvrlp        1 1.0 3.3176e-03 1.1 0.00e+00 0.0 2.8e+04 3.7e+01 8.0e+01  0  0  0  0  0   0  0  1  0  1    -0
DMPlexDistField        3 1.0 1.8954e-03 1.2 0.00e+00 0.0 5.9e+03 3.5e+01 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 4.9129e-03 15.8 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 2.5955e-04 45.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 3.9123e+01 1.0 3.22e+10 1.2 1.0e+07 4.0e+03 1.6e+04 45 100 99 100 98 Multiple stages 78658
SNESSetUp              1 1.0 1.2451e-05 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval    1451 1.0 1.2283e+01 1.0 1.70e+10 1.3 1.5e+06 4.0e+03 0.0e+00 14 52 15 15  0  15 64 36 27  0 129373
SNESJacobianEval     217 1.0 1.1038e+01 1.0 5.30e+09 1.3 2.3e+05 2.6e+04 8.7e+02 13 16  2 15  5  14 20  5 26  7 45074
SNESLineSearch       217 1.0 2.3273e+00 1.0 1.71e+10 1.3 1.6e+06 4.0e+03 2.1e+03  3 52 16 16 13   3 64 38 29 16 684911
firedrake              1 1.0 8.5697e+01 1.0 3.22e+10 1.2 1.0e+07 4.0e+03 1.6e+04 98 100 100 100 100 Multiple stages 35911
firedrake.__init__       1 1.0 6.6696e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  8  0  0  0  0   8  0  0  0  0    -0
CreateMesh             1 1.0 7.4139e-01 7.0 0.00e+00 0.0 5.7e+04 6.2e+01 2.0e+02  0  0  1  0  1   1  0  1  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 6.5100e-01 41.6 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 1.0711e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5960e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 2.0110e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.3308e-04 5.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.4733e-02 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.0797e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 2.3104e-02 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 2.1971e-02 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 2.1897e-02 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 1.3510e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.0631e-03 1.1 0.00e+00 0.0 1.1e+03 5.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 3.0068e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 8.1346e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 4.7200e-02 8.7 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.6970e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.5675e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 4.1652e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.8584e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.6927e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  2  0  0  0  0   2  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     218 1.0 2.9679e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      8135 1.0 2.7424e+01 1.0 2.23e+10 1.3 8.9e+05 4.0e+03 1.5e+01 31 68  9  9  0  34 84 21 15  0 76064
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.6604e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)   16270 1.0 2.4235e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 27  0  0  0  0  31  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0238e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 11  0  0  0  0  13  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.3671e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.2833e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3777e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 16  0  0  0  0  18  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3776e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 16  0  0  0  0  18  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.7523e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 10  0  0  0  0  11  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.6143e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00 10  0  0  0  0  11  0  0  0  0    -0
ParLoopRednBegin    8135 1.0 5.5023e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      8135 1.0 8.1732e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 8.1104e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.5761e+00 1.0 8.52e+05 1.1 9.6e+03 1.7e+03 1.2e+01  5  0  0  0  0   6  0  0  0  0    19
firedrake.interpolation.interpolate      11 1.0 3.6651e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.4429e+00 1.0 8.82e+05 1.1 1.1e+04 1.5e+03 3.4e+01  6  0  0  0  0   7  0  0  0  0    16
firedrake.formmanipulation.split_form      12 1.0 3.6691e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.5575e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5928e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 1.0258e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin    1688 1.0 3.6312e-02 1.7 0.00e+00 0.0 8.9e+05 4.0e+03 2.0e+00  0  0  9  9  0   0  0 21 15  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.2541e+00 1.0 8.82e+05 1.1 0.0e+00 0.0e+00 0.0e+00  6  0  0  0  0   7  0  0  0  0    17
firedrake.halo.Halo.global_to_local_end    1688 1.0 5.1377e-01 45.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.assign      37 1.0 6.4593e-02 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 5.2088e-02 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.7396e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 5.3389e-05 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 4.9013e-05 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.2472e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.8697e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.0039e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 2.9886e+00 1.0 0.00e+00 0.0 3.2e+03 1.6e+04 2.3e+01  3  0  0  0  0   4  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 5.5213e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 1.2814e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9705e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   6  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9705e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   6  0  0  0  0    -0
CreateSparsity         2 1.0 1.0776e-01 4.0 0.00e+00 0.0 2.7e+03 9.4e+03 1.8e+01  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         2 1.0 5.8485e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 3.9158e+01 1.0 3.22e+10 1.2 1.0e+07 4.0e+03 1.6e+04 45 100 99 100 98 Multiple stages 78587
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.7791e-01 1037.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.1390e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.7786e-01 1254.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.7783e-01 1439.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral    2902 1.0 2.1797e+00 1.2 4.16e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2 14  0  0  0   3 17  0  0  0 193866
Parloop_Cells_wrap_form0_exterior_facet_top_integral    2902 1.0 1.0023e+00 1.0 5.40e+06 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   548
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral    2902 1.0 1.3606e+00 1.0 1.14e+08 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0  1532
Parloop_Cells_wrap_form0_interior_facet_horiz_integral    2902 1.0 2.0027e+00 1.1 3.87e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2 13  0  0  0   2 16  0  0  0 196558
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral    2902 1.0 3.3077e+00 1.1 8.99e+09 1.6 0.0e+00 0.0e+00 0.0e+00  4 25  0  0  0   4 31  0  0  0 232752
firedrake.halo.Halo.local_to_global_begin    1451 1.0 2.4300e-02 2.0 0.00e+00 0.0 7.6e+05 4.0e+03 0.0e+00  0  0  7  8  0   0  0 18 13  0    -0
firedrake.halo.Halo.local_to_global_end    1451 1.0 3.0093e-01 24.0 4.70e+06 2.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1274
Parloop_Cells_wrap_form00_cell_integral     434 1.0 2.4297e+00 1.0 1.16e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  5  0  0  0 48535
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     434 1.0 1.0975e+00 1.0 1.74e+07 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   289
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     434 1.0 2.6456e+00 1.0 1.49e+09 1.1 0.0e+00 0.0e+00 0.0e+00  3  5  0  0  0   3  6  0  0  0 57197
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     434 1.0 4.1661e+00 1.1 2.66e+09 1.6 0.0e+00 0.0e+00 0.0e+00  5  7  0  0  0   5  9  0  0  0 54633
firedrake.dmhooks.get_function_space       1 1.0 5.8906e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 4.7581e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      217 1.0 1.6617e+00 1.0 8.15e+06 44.4 0.0e+00 0.0e+00 2.0e+00  2  0  0  0  0   2  0  0  0  0    87
MGSetup Level 1      217 1.0 1.5977e+00 1.0 2.47e+09 1.1 1.1e+06 4.0e+03 4.6e+03  2  8 11 11 28   2 10 27 20 35 153513
firedrake.constant.Constant.assign       5 1.0 1.5452e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        217 1.0 7.9481e-03 2.1 0.00e+00 0.0 1.1e+05 4.0e+00 2.2e+02  0  0  1  0  1   0  0  2  0  7    -0
SFSetGraph           217 1.0 1.2442e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              217 1.0 1.2300e-02 1.7 0.00e+00 0.0 2.2e+05 3.6e+01 2.2e+02  0  0  2  0  1   0  0  4  0  7    -0
SFPack             14476 1.0 3.3989e-02 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack           14476 1.0 2.7196e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             6204 1.0 1.0793e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet              8271 1.0 2.1497e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX            12408 1.0 2.9305e-02 1.4 8.34e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 289209
VecAXPBYCZ          4136 1.0 1.4703e-02 1.5 1.04e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  2  0  0  0 720541
VecScatterBegin    14476 1.0 2.3848e-01 3.5 0.00e+00 0.0 5.4e+06 3.3e+03 0.0e+00  0  0 53 43  0   1  0 91 100  0    -0
VecScatterEnd      14476 1.0 5.3459e-01 15.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
MatMult             8272 1.0 3.3096e+00 1.3 2.93e+09 1.1 4.4e+06 4.0e+03 0.0e+00  3 10 43 43  0  30 49 73 99  0 89096
MatMultAdd          2068 1.0 4.2189e-02 1.7 6.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  1  0  0  0 150665
MatMultTranspose    2068 1.0 6.3654e-02 1.3 6.25e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 99858
MatSolve           10340 1.0 6.7157e+00 1.1 2.80e+09 1.2 1.6e+06 1.0e+02 1.1e+03  8  9 15  0  7  68 45 27  1 34 40454
MatResidual         2068 1.0 7.8050e-01 1.3 7.42e+08 1.1 1.1e+06 4.0e+03 0.0e+00  1  2 11 11  0   7 12 18 25  0 95806
PCSetUpOnBlocks     4136 1.0 9.6701e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply            10340 1.0 6.7410e+00 1.1 2.80e+09 1.2 1.6e+06 1.0e+02 1.1e+03  8  9 15  0  7  68 45 27  1 34 40302
PCApplyOnBlocks     8272 1.0 1.9816e+00 1.5 2.68e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  9  0  0  0  18 45  0  0  0 135492
KSPSolve            6204 1.0 9.3742e+00 1.1 5.17e+09 1.1 4.8e+06 2.7e+03 3.2e+03 10 17 47 33 20  92 85 82 75 100 54494
MGSmooth Level 0    2068 1.0 5.1568e+00 1.1 1.54e+08 17.6 1.6e+06 1.0e+02 3.2e+03  6  0 15  0 20  50  1 27  1 100   617
MGSmooth Level 1    4136 1.0 4.4812e+00 1.3 5.05e+09 1.1 3.3e+06 4.0e+03 0.0e+00  5 16 32 32  0  41 85 55 74  0 113287
MGResid Level 1     2068 1.0 7.8265e-01 1.3 7.42e+08 1.1 1.1e+06 4.0e+03 0.0e+00  1  2 11 11  0   7 12 18 25  0 95543
MGInterp Level 1    4136 1.0 1.0742e-01 1.4 1.25e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 118344
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    22             22
              Viewer     9              9
           Index Set   495            495
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            299
              Vector  1001           1001
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

           Index Set   434            434
   Star Forest Graph   217              0
              Vector   217            217
========================================================================================================================
Average time to get PetscTime(): 2.56e-08
Average time for MPI_Barrier(): 4.0728e-06
Average time for zero size MPI_Send(): 2.10395e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/smoke/results/vlumping_inexact/smoke.profile # (source: code)
-options_left # (source: code)
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

