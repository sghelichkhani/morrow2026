****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0405.gadi.nci.org.au with 416 processes, by sg8812 on Fri Aug 21 23:55:46 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           2.279e+03     1.000   2.279e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                2.904e+12     1.142   2.765e+12  1.150e+15
Flops/sec:            1.274e+09     1.142   1.213e+09  5.047e+11
MPI Msg Count:        7.773e+04     3.991   5.328e+04  2.216e+07
MPI Msg Len (bytes):  1.568e+10     2.875   1.910e+05  4.234e+12
MPI Reductions:       1.875e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.2793e+03 100.0%  1.1503e+15 100.0%  2.216e+07 100.0%  1.910e+05      100.0%  1.873e+04  99.9%

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

BuildTwoSided       1001 1.0 7.0271e+01 5.1 0.00e+00 0.0 4.0e+05 4.0e+00 1.0e+03  2  0  2  0  5   2  0  2  0  5    -0
BuildTwoSidedF       906 1.0 6.9910e+01 5.8 0.00e+00 0.0 5.2e+05 1.9e+06 9.1e+02  2  0  2 23  5   2  0  2 23  5    -0
SFSetGraph           102 1.0 1.1433e-02 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               95 1.0 4.7216e+00 134.8 0.00e+00 0.0 2.9e+05 1.6e+03 9.5e+01  0  0  1  0  1   0  0  1  0  1    -0
SFBcastBegin         888 1.0 6.3657e-01 3.7 0.00e+00 0.0 1.9e+06 1.2e+05 0.0e+00  0  0  9  5  0   0  0  9  5  0    -0
SFBcastEnd           888 1.0 2.3313e+01 92.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFReduceBegin        342 1.0 1.6641e-01 5.0 0.00e+00 0.0 7.6e+05 1.4e+05 0.0e+00  0  0  3  3  0   0  0  3  3  0    -0
SFReduceEnd          342 1.0 6.2371e+00 65.9 4.98e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2157
SFFetchOpBegin         6 1.0 3.6610e-05 5.3 0.00e+00 0.0 1.1e+04 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 1.0383e-03 23.9 0.00e+00 0.0 1.1e+04 9.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.9578e-03 3.1 0.00e+00 0.0 5.2e+03 1.7e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 1.0539e-02 1.2 0.00e+00 0.0 2.5e+05 1.1e+02 5.8e+01  0  0  1  0  0   0  0  1  0  0    -0
SFSectionSF           51 1.0 5.9174e-03 2.7 0.00e+00 0.0 1.2e+05 5.2e+01 5.1e+01  0  0  1  0  0   0  0  1  0  0    -0
SFRemoteOff            2 1.0 9.5488e-05 3.0 0.00e+00 0.0 4.7e+03 2.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              9424 1.0 5.3841e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            9430 1.0 3.5434e-01 4.6 4.98e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 37965
VecDot               226 1.0 1.6164e+00 3.7 3.78e+08 1.1 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  1 93548
VecMDot             7836 1.0 2.4570e+02 1.7 1.78e+11 1.1 0.0e+00 0.0e+00 7.8e+03  9  6  0  0 42   9  6  0  0 42 290024
VecNorm             8715 1.0 5.9661e+01 3.2 1.46e+10 1.1 0.0e+00 0.0e+00 8.7e+03  2  1  0  0 46   2  1  0  0 47 97735
VecScale            8188 1.0 1.4985e+01 1.1 6.84e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0 182795
VecCopy             2413 1.0 6.5802e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               578 1.0 9.8023e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              478 1.0 1.6192e+00 1.9 7.98e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 197520
VecWAXPY             226 1.0 9.7218e-01 1.2 1.89e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 77770
VecMAXPY            8188 1.0 2.4067e+02 1.1 1.91e+11 1.1 0.0e+00 0.0e+00 0.0e+00 10  7  0  0  0  10  7  0  0  0 317870
VecScatterBegin     8188 1.0 5.0533e+00 2.6 0.00e+00 0.0 1.9e+07 1.6e+05 0.0e+00  0  0 84 69  0   0  0 84 69  0    -0
VecScatterEnd       8188 1.0 1.3400e+02 102.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
VecReduceArith       452 1.0 7.4886e-01 3.8 7.55e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 403849
VecReduceComm        226 1.0 3.3046e+00 12.4 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  1   0  0  0  0  1    -0
VecNormalize        8188 1.0 6.5970e+01 2.3 2.05e+10 1.1 0.0e+00 0.0e+00 8.2e+03  2  1  0  0 44   2  1  0  0 44 124566
MatMult             8188 1.0 7.0760e+02 1.2 4.85e+11 1.1 1.9e+07 1.6e+05 0.0e+00 28 17 84 69  0  28 17 84 69  0 274247
MatSolve            8188 1.0 7.3588e+02 1.2 4.76e+11 1.1 0.0e+00 0.0e+00 0.0e+00 28 16  0  0  0  28 16  0  0  0 257734
MatLUFactorNum       226 1.0 7.9115e+01 1.3 1.20e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 599725
MatILUFactorSym        1 1.0 3.3010e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     950 1.0 7.5877e+01 5.4 0.00e+00 0.0 5.2e+05 1.9e+06 9.1e+02  2  0  2 23  5   2  0  2 23  5    -0
MatAssemblyEnd       950 1.0 1.8893e+01 25.2 3.71e+08 0.0 4.6e+03 3.9e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  3210
MatGetRowIJ            1 1.0 6.6890e-06 59.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.2420e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       226 1.0 1.6861e+01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatSetPreallCOO       32 1.0 6.9902e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.9776e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              226 1.0 4.3223e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks      226 1.0 7.9440e+01 1.3 1.20e+11 1.2 0.0e+00 0.0e+00 0.0e+00  3  4  0  0  0   3  4  0  0  0 597274
PCApply             8188 1.0 7.3604e+02 1.2 4.76e+11 1.1 0.0e+00 0.0e+00 0.0e+00 28 16  0  0  0  28 16  0  0  0 257675
PCApplyOnBlocks     8188 1.0 7.3599e+02 1.2 4.76e+11 1.1 0.0e+00 0.0e+00 0.0e+00 28 16  0  0  0  28 16  0  0  0 257694
KSPSetUp             226 1.0 4.0115e-02 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 1.7414e+03 1.0 1.34e+12 1.1 1.8e+07 1.6e+05 1.6e+04 76 46 82 67 85  76 46 82 67 86 307034
KSPGMRESOrthog      7836 1.0 4.5504e+02 1.3 3.56e+11 1.1 0.0e+00 0.0e+00 7.8e+03 18 12  0  0 42  18 12  0  0 42 313198
DMRefine               2 1.0 2.9093e-02 1.0 2.09e+03 1.0 3.2e+04 4.5e+01 6.3e+01  0  0  0  0  0   0  0  0  0  0    30
DMPlexCreateGmsh       1 1.0 3.0444e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 5.7004e+00 180.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         4 1.0 1.9351e-01 1.0 0.00e+00 0.0 7.7e+04 8.6e+01 5.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         4 1.0 2.8841e-02 1.0 0.00e+00 0.0 2.8e+05 1.0e+02 2.4e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 5.5893e-03 1759.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 3.4819e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.6545e-03 1.3 0.00e+00 0.0 1.5e+04 6.9e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 1.5817e-03 3.7 0.00e+00 0.0 7.5e+03 2.7e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 3.1152e-03 1.8 0.00e+00 0.0 8.0e+03 3.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 1.5706e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 1.9238e-01 1.0 0.00e+00 0.0 1.7e+04 3.4e+02 6.3e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistCones        4 1.0 3.6524e-03 1.1 0.00e+00 0.0 4.5e+04 1.6e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 1.2558e-02 1.0 0.00e+00 0.0 1.4e+05 9.9e+01 1.5e+02  0  0  1  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        3 1.0 3.3820e-02 1.0 0.00e+00 0.0 3.5e+05 9.2e+01 2.4e+02  0  0  2  0  1   0  0  2  0  1    -0
DMPlexDistField        7 1.0 5.7383e-03 1.3 0.00e+00 0.0 6.5e+04 7.7e+01 2.0e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify        41 1.0 1.2702e-02 7.9 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 1.0918e-03 12.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1768e-04 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.8387e-03 1.5 0.00e+00 0.0 1.8e+04 3.7e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.9218e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 5.1533e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 4.0748e-04 2.0 0.00e+00 0.0 1.4e+04 3.5e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 1.4628e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 1.0202e-03 1.7 0.00e+00 0.0 3.5e+03 4.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 2.2050e+03 1.0 2.90e+12 1.1 2.1e+07 2.0e+05 1.8e+04 97 100 96 100 95  97 100 96 100 96 521658
SNESSetUp              1 1.0 6.0354e-05 8.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 5.2574e+01 1.1 5.58e+11 1.2 1.5e+06 1.6e+05 0.0e+00  2 19  7  6  0   2 19  7  6  0 4149702
SNESJacobianEval     226 1.0 3.2597e+02 1.0 8.78e+11 1.2 1.0e+06 1.0e+06 9.0e+02 14 30  5 25  5  14 30  5 25  5 1054525
SNESLineSearch       226 1.0 5.7233e+01 1.1 4.34e+11 1.2 1.5e+06 1.6e+05 9.0e+02  2 15  7  6  5   2 15  7  6  5 2970240
DualSpaceSetUp         8 1.0 6.1179e-03 1.3 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     7
FESetUp                8 1.0 1.0613e-02 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 2.2771e+03 1.0 2.90e+12 1.1 2.2e+07 1.9e+05 1.9e+04 100 100 100 100 100 100 100 100 100 100 505168
firedrake.__init__       1 1.0 1.0746e+01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateMesh             3 1.0 5.9736e+00 19.6 0.00e+00 0.0 6.9e+05 1.0e+02 4.4e+02  0  0  3  0  2   0  0  3  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 5.7011e+00 179.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.2980e-03 3.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 7.3310e-06 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 6.5208e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.2376e-03 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      13 1.0 2.6127e-02 1.1 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      17 1.0 1.8826e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      17 1.0 2.4896e-02 1.1 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      16 1.0 2.2934e-02 1.2 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      16 1.0 2.2826e-02 1.2 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      32 1.0 8.3467e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 6.7421e-03 1.3 0.00e+00 0.0 1.4e+04 1.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5964e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3768e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 3.9670e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.8799e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.3981e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.0918e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.1251e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.8125e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     642 1.0 1.3414e-02 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2428 1.0 3.3399e+02 1.2 1.44e+12 1.2 1.4e+06 1.5e+05 3.2e+01 13 49  6  5  0  13 49  6  5  0 1682415
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.3654e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4856 1.0 2.3722e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0332e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.2071e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.4829e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3124e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3123e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.6402e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.4886e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednBegin    2428 1.0 8.6036e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2428 1.0 7.1891e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.6931e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 1.0357e+01 1.0 2.82e+07 1.1 3.8e+04 1.8e+04 1.3e+01  0  0  0  0  0   0  0  0  0  0  1090
firedrake.interpolation.interpolate      12 1.0 4.7203e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      12 1.0 5.0748e+00 1.0 1.69e+08 1.1 5.4e+04 6.0e+04 1.5e+01  0  0  0  0  0   0  0  0  0  0 13366
firedrake.formmanipulation.split_form      14 1.0 5.2538e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.6022e-04 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      12 1.0 2.1237e-01 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.2 1.8397e-01 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     623 1.0 5.7418e+00 22.8 0.00e+00 0.0 1.5e+06 1.5e+05 4.0e+00  0  0  7  5  0   0  0  7  5  0    -0
Parloop_Cells_wrap_expression_kernel      24 1.0 4.5793e+00 1.0 1.69e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 14812
firedrake.halo.Halo.global_to_local_end     623 1.0 2.1040e+01 115.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.5443e+00 72.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da0ac8cd90_wrap_pyop2_kernel_prolong       4 0.0 7.4358e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da0adfc490_wrap_pyop2_kernel_prolong       4 0.0 1.0832e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.1004e+00 1.0 1.41e+08 1.1 3.5e+04 7.9e+04 1.1e+01  0  0  0  0  0   0  0  0  0  0 13788
firedrake.function.Function.assign     314 1.0 3.6280e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 3.5366e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 6.0314e-04 7.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 2.3443e-03 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.2590e-05 3.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 1.4078e-01 4.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9793e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 1.3819e-01 4.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 1.1822e+01 1.0 0.00e+00 0.0 1.4e+04 6.3e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 1.0081e-03 2.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 3.1522e-04 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.1190e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.1190e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateSparsity         1 1.0 7.6757e+00 1.1 0.00e+00 0.0 7.0e+03 6.2e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 1.1465e+00 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 2.2055e+03 1.0 2.90e+12 1.1 2.1e+07 2.0e+05 1.8e+04 97 100 96 100 96  97 100 96 100 96 521537
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.4247e-01 1095.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 1.1237e-05 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.4242e-01 1301.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.4239e-01 1472.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 1.5262e+01 1.5 1.43e+11 1.1 0.0e+00 0.0e+00 0.0e+00  1  5  0  0  0   1  5  0  0  0 3750808
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 1.0360e+00 1.0 1.86e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  7182
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.2902e+00 1.1 9.48e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 27180
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 1.0362e+01 1.3 1.37e+11 1.1 0.0e+00 0.0e+00 0.0e+00  0  5  0  0  0   0  5  0  0  0 5306265
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 2.0857e+01 1.3 2.78e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1  9  0  0  0   1  9  0  0  0 5076580
firedrake.halo.Halo.local_to_global_begin     301 1.0 1.8434e-01 4.5 0.00e+00 0.0 6.9e+05 1.6e+05 0.0e+00  0  0  3  3  0   0  0  3  3  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 6.2400e+00 62.1 4.98e+07 2.9 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  2156
Parloop_Cells_wrap_form00_cell_integral     452 1.0 5.8924e+01 1.4 2.00e+11 1.1 0.0e+00 0.0e+00 0.0e+00  2  7  0  0  0   2  7  0  0  0 1361170
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 2.2635e+00 2.1 7.25e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 11845
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 7.3208e+01 1.2 2.65e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   3  9  0  0  0 1449450
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 1.6435e+02 1.4 4.13e+11 1.2 0.0e+00 0.0e+00 0.0e+00  6 14  0  0  0   6 14  0  0  0 957348
firedrake.constant.Constant.assign      75 1.0 3.8263e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464dcc35910_wrap_pyop2_kernel_prolong       4 0.0 7.4383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464dcc2e050_wrap_pyop2_kernel_prolong       4 0.0 1.1023e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481501e1b50_wrap_pyop2_kernel_prolong       4 0.0 7.4315e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14814bbd2050_wrap_pyop2_kernel_prolong       4 0.0 9.8486e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc5f29f950_wrap_pyop2_kernel_prolong       4 0.0 7.4362e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc5f2acc50_wrap_pyop2_kernel_prolong       4 0.0 1.1015e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ba26c6b10_wrap_pyop2_kernel_prolong       4 0.0 7.4345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ba26cfc10_wrap_pyop2_kernel_prolong       4 0.0 1.0073e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f01af49f10_wrap_pyop2_kernel_prolong       4 0.0 7.4480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f01af48350_wrap_pyop2_kernel_prolong       4 0.0 1.3395e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc59c6fd90_wrap_pyop2_kernel_prolong       4 0.0 7.4332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc59551a50_wrap_pyop2_kernel_prolong       4 0.0 9.6183e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cd42a5d50_wrap_pyop2_kernel_prolong       4 0.0 7.4437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cd42a5610_wrap_pyop2_kernel_prolong       4 0.0 1.1883e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f6f3dde50_wrap_pyop2_kernel_prolong       4 0.0 7.4429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146f6f293cd0_wrap_pyop2_kernel_prolong       4 0.0 1.2285e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddb43b1790_wrap_pyop2_kernel_prolong       4 0.0 7.4369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ddaf8f8f10_wrap_pyop2_kernel_prolong       4 0.0 1.0698e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b2a0b9d50_wrap_pyop2_kernel_prolong       4 0.0 7.4442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b2a0bb050_wrap_pyop2_kernel_prolong       4 0.0 1.2645e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151911425250_wrap_pyop2_kernel_prolong       4 0.0 7.4464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151910a2a690_wrap_pyop2_kernel_prolong       4 0.0 1.2536e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530d1797410_wrap_pyop2_kernel_prolong       4 0.0 7.4439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530d1795310_wrap_pyop2_kernel_prolong       4 0.0 1.2655e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147101ed5650_wrap_pyop2_kernel_prolong       4 0.0 7.4392e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147101ed7050_wrap_pyop2_kernel_prolong       4 0.0 1.1213e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b125f09910_wrap_pyop2_kernel_prolong       4 0.0 7.4311e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b125fa43d0_wrap_pyop2_kernel_prolong       4 0.0 1.0232e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ebb7216d0_wrap_pyop2_kernel_prolong       4 0.0 7.4451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ebb954610_wrap_pyop2_kernel_prolong       4 0.0 1.3316e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdaf19fa50_wrap_pyop2_kernel_prolong       4 0.0 7.4225e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bdaf15ecd0_wrap_pyop2_kernel_prolong       4 0.0 1.0623e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b893558190_wrap_pyop2_kernel_prolong       4 0.0 7.4366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8933e9e50_wrap_pyop2_kernel_prolong       4 0.0 1.2304e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14700daa5a10_wrap_pyop2_kernel_prolong       4 0.0 7.4325e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14700daa6350_wrap_pyop2_kernel_prolong       4 0.0 1.1187e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef222abc90_wrap_pyop2_kernel_prolong       4 0.0 7.4217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef219035d0_wrap_pyop2_kernel_prolong       4 0.0 1.1216e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9d8d110d0_wrap_pyop2_kernel_prolong       4 0.0 7.4257e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9d8d10910_wrap_pyop2_kernel_prolong       4 0.0 1.1729e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508bc675c90_wrap_pyop2_kernel_prolong       4 0.0 7.4365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508bc669ad0_wrap_pyop2_kernel_prolong       4 0.0 1.2027e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519c785d510_wrap_pyop2_kernel_prolong       4 0.0 7.4288e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1519c785fe10_wrap_pyop2_kernel_prolong       4 0.0 1.2286e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdace10f10_wrap_pyop2_kernel_prolong       4 0.0 7.4469e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdace0a050_wrap_pyop2_kernel_prolong       4 0.0 1.4338e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cbc14dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146cbc1b34d0_wrap_pyop2_kernel_prolong       4 0.0 1.2225e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d34e8fb490_wrap_pyop2_kernel_prolong       4 0.0 7.4293e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d34e8fbe50_wrap_pyop2_kernel_prolong       4 0.0 1.2246e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494ad1094d0_wrap_pyop2_kernel_prolong       4 0.0 7.4347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494ac904190_wrap_pyop2_kernel_prolong       4 0.0 1.1431e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499fd7bed50_wrap_pyop2_kernel_prolong       4 0.0 7.4379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1499fd7b6790_wrap_pyop2_kernel_prolong       4 0.0 1.1079e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482687f7010_wrap_pyop2_kernel_prolong       4 0.0 7.4299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482687f4bd0_wrap_pyop2_kernel_prolong       4 0.0 1.2471e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d649abed0_wrap_pyop2_kernel_prolong       4 0.0 7.4405e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d649b0810_wrap_pyop2_kernel_prolong       4 0.0 1.2056e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456dfbb3a90_wrap_pyop2_kernel_prolong       4 0.0 7.4402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456dfb5bf50_wrap_pyop2_kernel_prolong       4 0.0 1.1542e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cd614db10_wrap_pyop2_kernel_prolong       4 0.0 7.4387e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153cd60e0290_wrap_pyop2_kernel_prolong       4 0.0 1.2672e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1ff85fd90_wrap_pyop2_kernel_prolong       4 0.0 7.4381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1ff7fdd50_wrap_pyop2_kernel_prolong       4 0.0 1.0995e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15468ecd2dd0_wrap_pyop2_kernel_prolong       4 0.0 7.4442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15468e10fd10_wrap_pyop2_kernel_prolong       4 0.0 1.4238e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3a8d81e50_wrap_pyop2_kernel_prolong       4 0.0 7.4404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3a8d81b90_wrap_pyop2_kernel_prolong       4 0.0 1.2954e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15311d946490_wrap_pyop2_kernel_prolong       4 0.0 7.4336e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15311d945c10_wrap_pyop2_kernel_prolong       4 0.0 1.1436e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4740e2610_wrap_pyop2_kernel_prolong       4 0.0 7.4365e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4740e3b90_wrap_pyop2_kernel_prolong       4 0.0 1.0910e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b4fb4ced0_wrap_pyop2_kernel_prolong       4 0.0 7.4436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b4fdc9250_wrap_pyop2_kernel_prolong       4 0.0 1.2454e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551a2fe7290_wrap_pyop2_kernel_prolong       4 0.0 7.4481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551a2fbbd50_wrap_pyop2_kernel_prolong       4 0.0 1.3233e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151acb4fe8d0_wrap_pyop2_kernel_prolong       4 0.0 7.4354e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151acb4c7e90_wrap_pyop2_kernel_prolong       4 0.0 1.0858e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15070e111410_wrap_pyop2_kernel_prolong       4 0.0 7.4332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15070dfe9210_wrap_pyop2_kernel_prolong       4 0.0 1.0188e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c8a0876d0_wrap_pyop2_kernel_prolong       4 0.0 7.4416e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154c8a0eb650_wrap_pyop2_kernel_prolong       4 0.0 1.2107e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501a74f1990_wrap_pyop2_kernel_prolong       4 0.0 7.4464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501a74d5990_wrap_pyop2_kernel_prolong       4 0.0 1.3195e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151549187450_wrap_pyop2_kernel_prolong       4 0.0 7.4324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151548df71d0_wrap_pyop2_kernel_prolong       4 0.0 1.1435e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153085c65690_wrap_pyop2_kernel_prolong       4 0.0 7.4430e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153085c39d50_wrap_pyop2_kernel_prolong       4 0.0 1.3159e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f9ab9e250_wrap_pyop2_kernel_prolong       4 0.0 7.4373e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f9ab9d910_wrap_pyop2_kernel_prolong       4 0.0 1.1386e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d3a8ba1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4391e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d3a88ddd0_wrap_pyop2_kernel_prolong       4 0.0 1.1556e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd694f2b50_wrap_pyop2_kernel_prolong       4 0.0 7.4479e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cd697a7090_wrap_pyop2_kernel_prolong       4 0.0 1.3510e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152139065990_wrap_pyop2_kernel_prolong       4 0.0 7.4410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152139306610_wrap_pyop2_kernel_prolong       4 0.0 1.1060e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf69ef190_wrap_pyop2_kernel_prolong       4 0.0 7.4253e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14acf6a515d0_wrap_pyop2_kernel_prolong       4 0.0 1.2047e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbf4969f90_wrap_pyop2_kernel_prolong       4 0.0 7.4370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbf4970950_wrap_pyop2_kernel_prolong       4 0.0 1.2603e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501b016e350_wrap_pyop2_kernel_prolong       4 0.0 7.4499e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501abf7a310_wrap_pyop2_kernel_prolong       4 0.0 1.4215e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153131bb2390_wrap_pyop2_kernel_prolong       4 0.0 7.4142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153131bb3cd0_wrap_pyop2_kernel_prolong       4 0.0 1.0636e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15428cf18410_wrap_pyop2_kernel_prolong       4 0.0 7.4267e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15428cef9910_wrap_pyop2_kernel_prolong       4 0.0 1.0861e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ada5f9f50_wrap_pyop2_kernel_prolong       4 0.0 7.4184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ada5fb6d0_wrap_pyop2_kernel_prolong       4 0.0 1.1445e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6fb431c90_wrap_pyop2_kernel_prolong       4 0.0 7.4226e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6fab797d0_wrap_pyop2_kernel_prolong       4 0.0 1.1959e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14927aa75b50_wrap_pyop2_kernel_prolong       4 0.0 7.4324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14927ab09390_wrap_pyop2_kernel_prolong       4 0.0 1.1554e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc360d4090_wrap_pyop2_kernel_prolong       4 0.0 7.4239e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bc36286590_wrap_pyop2_kernel_prolong       4 0.0 1.2226e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522fe00a7d0_wrap_pyop2_kernel_prolong       4 0.0 7.4148e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1522fe27cc50_wrap_pyop2_kernel_prolong       4 0.0 1.0619e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4877d86d0_wrap_pyop2_kernel_prolong       4 0.0 7.4268e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b4877babd0_wrap_pyop2_kernel_prolong       4 0.0 1.0763e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a1b78a1d0_wrap_pyop2_kernel_prolong       4 0.0 7.4266e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a1b789150_wrap_pyop2_kernel_prolong       4 0.0 1.2627e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15165c8a5750_wrap_pyop2_kernel_prolong       4 0.0 7.4263e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15165c8c3b50_wrap_pyop2_kernel_prolong       4 0.0 1.2517e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152079d4ffd0_wrap_pyop2_kernel_prolong       4 0.0 7.4347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152079d4d990_wrap_pyop2_kernel_prolong       4 0.0 1.3319e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490c54be9d0_wrap_pyop2_kernel_prolong       4 0.0 7.4273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490c54bc390_wrap_pyop2_kernel_prolong       4 0.0 1.1756e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502d94cbbd0_wrap_pyop2_kernel_prolong       4 0.0 7.4363e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1502d94cea90_wrap_pyop2_kernel_prolong       4 0.0 1.3703e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150efa5e6210_wrap_pyop2_kernel_prolong       4 0.0 7.4248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150efa5e6c90_wrap_pyop2_kernel_prolong       4 0.0 1.1699e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3b7a51d50_wrap_pyop2_kernel_prolong       4 0.0 7.4237e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3b7a516d0_wrap_pyop2_kernel_prolong       4 0.0 1.2553e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458dc2234d0_wrap_pyop2_kernel_prolong       4 0.0 7.4296e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458dc222410_wrap_pyop2_kernel_prolong       4 0.0 1.3234e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d948ed7990_wrap_pyop2_kernel_prolong       4 0.0 7.4307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d948501990_wrap_pyop2_kernel_prolong       4 0.0 1.1596e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147692631f10_wrap_pyop2_kernel_prolong       4 0.0 7.4305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147692f6dfd0_wrap_pyop2_kernel_prolong       4 0.0 1.1876e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ca4495690_wrap_pyop2_kernel_prolong       4 0.0 7.4339e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ca431d910_wrap_pyop2_kernel_prolong       4 0.0 1.3243e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154eb8857990_wrap_pyop2_kernel_prolong       4 0.0 7.4160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154eb8856550_wrap_pyop2_kernel_prolong       4 0.0 1.0875e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d625b17850_wrap_pyop2_kernel_prolong       4 0.0 7.4232e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d625b27990_wrap_pyop2_kernel_prolong       4 0.0 1.1067e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149abf5c2410_wrap_pyop2_kernel_prolong       4 0.0 7.4310e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149abf5c1810_wrap_pyop2_kernel_prolong       4 0.0 1.2659e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f56ce8050_wrap_pyop2_kernel_prolong       4 0.0 7.4254e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f564e4fd0_wrap_pyop2_kernel_prolong       4 0.0 1.1550e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15149896e550_wrap_pyop2_kernel_prolong       4 0.0 7.4193e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15149326a090_wrap_pyop2_kernel_prolong       4 0.0 1.0792e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b6ed80110_wrap_pyop2_kernel_prolong       4 0.0 7.4337e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b6ed88f50_wrap_pyop2_kernel_prolong       4 0.0 1.1949e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14653c8ec610_wrap_pyop2_kernel_prolong       4 0.0 7.4334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146537f61710_wrap_pyop2_kernel_prolong       4 0.0 1.4312e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a6a414210_wrap_pyop2_kernel_prolong       4 0.0 7.4184e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a6a416210_wrap_pyop2_kernel_prolong       4 0.0 9.6712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a24f7e390_wrap_pyop2_kernel_prolong       4 0.0 7.4300e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a2469d250_wrap_pyop2_kernel_prolong       4 0.0 1.1924e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14839ba40a90_wrap_pyop2_kernel_prolong       4 0.0 7.4324e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14839b207790_wrap_pyop2_kernel_prolong       4 0.0 1.3239e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531e8565cd0_wrap_pyop2_kernel_prolong       4 0.0 7.4332e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1531e8567150_wrap_pyop2_kernel_prolong       4 0.0 1.3460e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2efa56bd0_wrap_pyop2_kernel_prolong       4 0.0 7.4224e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2eef4b790_wrap_pyop2_kernel_prolong       4 0.0 1.1234e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147afe0a4190_wrap_pyop2_kernel_prolong       4 0.0 7.4340e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147afe2f2d50_wrap_pyop2_kernel_prolong       4 0.0 1.2465e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148990cc31d0_wrap_pyop2_kernel_prolong       4 0.0 7.4198e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148990c94890_wrap_pyop2_kernel_prolong       4 0.0 1.0399e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bfc84ef50_wrap_pyop2_kernel_prolong       4 0.0 7.4345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149bfc807410_wrap_pyop2_kernel_prolong       4 0.0 1.2022e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f955b2ed0_wrap_pyop2_kernel_prolong       4 0.0 7.4353e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f955b1590_wrap_pyop2_kernel_prolong       4 0.0 1.2395e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afc30d9450_wrap_pyop2_kernel_prolong       4 0.0 7.4345e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14afc30dba10_wrap_pyop2_kernel_prolong       4 0.0 1.1748e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adaf9d1990_wrap_pyop2_kernel_prolong       4 0.0 7.4375e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adaf9d1cd0_wrap_pyop2_kernel_prolong       4 0.0 1.3385e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7e15f590_wrap_pyop2_kernel_prolong       4 0.0 7.4232e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14be7e15f610_wrap_pyop2_kernel_prolong       4 0.0 1.1617e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d569256650_wrap_pyop2_kernel_prolong       4 0.0 7.4317e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5687e9550_wrap_pyop2_kernel_prolong       4 0.0 1.3141e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eadf2c23d0_wrap_pyop2_kernel_prolong       4 0.0 7.4299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eafbf34690_wrap_pyop2_kernel_prolong       4 0.0 1.1163e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481189035d0_wrap_pyop2_kernel_prolong       4 0.0 7.4362e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148118900290_wrap_pyop2_kernel_prolong       4 0.0 1.2948e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef1bb50910_wrap_pyop2_kernel_prolong       4 0.0 7.4304e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ef1bb53d10_wrap_pyop2_kernel_prolong       4 0.0 1.1076e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491217c1e90_wrap_pyop2_kernel_prolong       4 0.0 7.4372e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491217a1650_wrap_pyop2_kernel_prolong       4 0.0 1.3429e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1454a050e590_wrap_pyop2_kernel_prolong       4 0.0 7.4371e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14549bb49810_wrap_pyop2_kernel_prolong       4 0.0 1.2380e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a959ffd090_wrap_pyop2_kernel_prolong       4 0.0 7.4303e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a959ff5350_wrap_pyop2_kernel_prolong       4 0.0 1.0966e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d94958ca50_wrap_pyop2_kernel_prolong       4 0.0 7.4307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d949585b90_wrap_pyop2_kernel_prolong       4 0.0 1.2568e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544fe748990_wrap_pyop2_kernel_prolong       4 0.0 7.4352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1544fe717690_wrap_pyop2_kernel_prolong       4 0.0 1.1937e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d85d21b90_wrap_pyop2_kernel_prolong       4 0.0 7.4364e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d85d20210_wrap_pyop2_kernel_prolong       4 0.0 1.2716e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490d06bbfd0_wrap_pyop2_kernel_prolong       4 0.0 7.4234e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490d0733890_wrap_pyop2_kernel_prolong       4 0.0 1.2585e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca0102390_wrap_pyop2_kernel_prolong       4 0.0 7.4306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aca01028d0_wrap_pyop2_kernel_prolong       4 0.0 1.1799e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a3d114c50_wrap_pyop2_kernel_prolong       4 0.0 7.4347e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148a3d114150_wrap_pyop2_kernel_prolong       4 0.0 1.2738e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d384e0c10_wrap_pyop2_kernel_prolong       4 0.0 7.4273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d38699850_wrap_pyop2_kernel_prolong       4 0.0 1.1227e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553ecda1f90_wrap_pyop2_kernel_prolong       4 0.0 7.6585e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553ecde85d0_wrap_pyop2_kernel_prolong       4 0.0 1.0682e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14600cc58f50_wrap_pyop2_kernel_prolong       4 0.0 7.6473e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14600cda1910_wrap_pyop2_kernel_prolong       4 0.0 1.0695e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbdf4ad210_wrap_pyop2_kernel_prolong       4 0.0 7.6397e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbdf485b10_wrap_pyop2_kernel_prolong       4 0.0 1.1520e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15465423d990_wrap_pyop2_kernel_prolong       4 0.0 7.6108e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546543958d0_wrap_pyop2_kernel_prolong       4 0.0 1.0987e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c371aee3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c371aedcd0_wrap_pyop2_kernel_prolong       4 0.0 1.1627e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb8c97ff10_wrap_pyop2_kernel_prolong       4 0.0 7.6534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb8c97c910_wrap_pyop2_kernel_prolong       4 0.0 1.2280e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc66cb2050_wrap_pyop2_kernel_prolong       4 0.0 7.6208e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc66ef6d90_wrap_pyop2_kernel_prolong       4 0.0 1.1784e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f62af00390_wrap_pyop2_kernel_prolong       4 0.0 7.5761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f62ac55910_wrap_pyop2_kernel_prolong       4 0.0 1.2107e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba63285590_wrap_pyop2_kernel_prolong       4 0.0 7.5858e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ba63286050_wrap_pyop2_kernel_prolong       4 0.0 1.3007e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150861911b50_wrap_pyop2_kernel_prolong       4 0.0 7.6552e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1508619120d0_wrap_pyop2_kernel_prolong       4 0.0 1.1779e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147205e6a310_wrap_pyop2_kernel_prolong       4 0.0 7.5857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147205e6a450_wrap_pyop2_kernel_prolong       4 0.0 1.3465e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7711fba10_wrap_pyop2_kernel_prolong       4 0.0 7.5975e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7711fb090_wrap_pyop2_kernel_prolong       4 0.0 1.1868e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f7d17ead0_wrap_pyop2_kernel_prolong       4 0.0 7.5847e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f7d17e4d0_wrap_pyop2_kernel_prolong       4 0.0 1.4791e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14babe96df50_wrap_pyop2_kernel_prolong       4 0.0 7.5162e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14babe96e310_wrap_pyop2_kernel_prolong       4 0.0 1.0916e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d652d5fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5940e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d652d5cd0_wrap_pyop2_kernel_prolong       4 0.0 1.1428e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15488e635550_wrap_pyop2_kernel_prolong       4 0.0 7.5476e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15488e634710_wrap_pyop2_kernel_prolong       4 0.0 1.1850e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b31fa59e90_wrap_pyop2_kernel_prolong       4 0.0 7.5275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b31fa59a10_wrap_pyop2_kernel_prolong       4 0.0 1.2907e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5b19c9c90_wrap_pyop2_kernel_prolong       4 0.0 7.5988e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5b0dc2c10_wrap_pyop2_kernel_prolong       4 0.0 1.3009e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150afc4f5490_wrap_pyop2_kernel_prolong       4 0.0 7.6578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150afccc7490_wrap_pyop2_kernel_prolong       4 0.0 1.2201e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155433b29bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6306e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15543325d0d0_wrap_pyop2_kernel_prolong       4 0.0 1.1087e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14765bb69590_wrap_pyop2_kernel_prolong       4 0.0 7.6370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14765bb61ed0_wrap_pyop2_kernel_prolong       4 0.0 1.2841e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14910c955750_wrap_pyop2_kernel_prolong       4 0.0 7.5654e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14910c955b50_wrap_pyop2_kernel_prolong       4 0.0 1.3132e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d041709bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6043e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d041700310_wrap_pyop2_kernel_prolong       4 0.0 1.1788e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca9290e590_wrap_pyop2_kernel_prolong       4 0.0 7.5217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ca91ea7190_wrap_pyop2_kernel_prolong       4 0.0 1.2654e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6c1eb1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5297e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6c1ec1890_wrap_pyop2_kernel_prolong       4 0.0 1.3001e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146172cda2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5273e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146172cd9b10_wrap_pyop2_kernel_prolong       4 0.0 1.4512e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb26655350_wrap_pyop2_kernel_prolong       4 0.0 7.5167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb26657b90_wrap_pyop2_kernel_prolong       4 0.0 1.1342e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14977c22a4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14977c208650_wrap_pyop2_kernel_prolong       4 0.0 1.2350e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485d5db7490_wrap_pyop2_kernel_prolong       4 0.0 7.6299e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1485d5d8db50_wrap_pyop2_kernel_prolong       4 0.0 1.1095e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15111ddd5c90_wrap_pyop2_kernel_prolong       4 0.0 7.5636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15111e81d750_wrap_pyop2_kernel_prolong       4 0.0 1.3368e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed10b9e650_wrap_pyop2_kernel_prolong       4 0.0 7.5261e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed10a4fbd0_wrap_pyop2_kernel_prolong       4 0.0 1.2607e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c57956590_wrap_pyop2_kernel_prolong       4 0.0 7.5217e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c57955b10_wrap_pyop2_kernel_prolong       4 0.0 1.2629e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb742cd750_wrap_pyop2_kernel_prolong       4 0.0 7.5351e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb741216d0_wrap_pyop2_kernel_prolong       4 0.0 1.1891e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14971a7b9cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6644e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14971aa0b4d0_wrap_pyop2_kernel_prolong       4 0.0 1.2548e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489139520d0_wrap_pyop2_kernel_prolong       4 0.0 7.5684e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14891395b990_wrap_pyop2_kernel_prolong       4 0.0 1.2294e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153186c5a9d0_wrap_pyop2_kernel_prolong       4 0.0 7.6417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153186252310_wrap_pyop2_kernel_prolong       4 0.0 1.3007e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5ad2d4550_wrap_pyop2_kernel_prolong       4 0.0 7.5803e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f5ad36b410_wrap_pyop2_kernel_prolong       4 0.0 1.3794e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15021ee65b10_wrap_pyop2_kernel_prolong       4 0.0 7.5539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15021ee66c90_wrap_pyop2_kernel_prolong       4 0.0 1.2373e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc459ddd10_wrap_pyop2_kernel_prolong       4 0.0 7.6057e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dc459dd910_wrap_pyop2_kernel_prolong       4 0.0 1.2510e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec2b61e390_wrap_pyop2_kernel_prolong       4 0.0 7.6055e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ec2b3e4510_wrap_pyop2_kernel_prolong       4 0.0 1.0931e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e03908f10_wrap_pyop2_kernel_prolong       4 0.0 7.5675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e038fa090_wrap_pyop2_kernel_prolong       4 0.0 1.2050e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e891d06b10_wrap_pyop2_kernel_prolong       4 0.0 7.6179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e891f41c10_wrap_pyop2_kernel_prolong       4 0.0 1.4260e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15310643a910_wrap_pyop2_kernel_prolong       4 0.0 7.6141e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153106439a10_wrap_pyop2_kernel_prolong       4 0.0 1.1702e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472a7379090_wrap_pyop2_kernel_prolong       4 0.0 7.5714e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1472a7321790_wrap_pyop2_kernel_prolong       4 0.0 1.3233e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479415c5f90_wrap_pyop2_kernel_prolong       4 0.0 7.6831e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479415a8bd0_wrap_pyop2_kernel_prolong       4 0.0 1.4432e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14632d1a2290_wrap_pyop2_kernel_prolong       4 0.0 7.5370e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14632d1a1910_wrap_pyop2_kernel_prolong       4 0.0 1.1096e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d16ec361d0_wrap_pyop2_kernel_prolong       4 0.0 7.5874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d16ec358d0_wrap_pyop2_kernel_prolong       4 0.0 1.2696e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ce6ad9d10_wrap_pyop2_kernel_prolong       4 0.0 7.5344e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ce6adb4d0_wrap_pyop2_kernel_prolong       4 0.0 1.4554e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15232dcf7410_wrap_pyop2_kernel_prolong       4 0.0 7.6226e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15232de45e10_wrap_pyop2_kernel_prolong       4 0.0 1.1947e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd1dc545d0_wrap_pyop2_kernel_prolong       4 0.0 7.6074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd1da23a10_wrap_pyop2_kernel_prolong       4 0.0 1.3386e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d2dceec50_wrap_pyop2_kernel_prolong       4 0.0 7.5404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d2dcee210_wrap_pyop2_kernel_prolong       4 0.0 1.2728e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147595f501d0_wrap_pyop2_kernel_prolong       4 0.0 7.5943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1475955ce3d0_wrap_pyop2_kernel_prolong       4 0.0 1.4798e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ac2e4ea90_wrap_pyop2_kernel_prolong       4 0.0 7.5164e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ac2e4d050_wrap_pyop2_kernel_prolong       4 0.0 1.1241e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee10d55610_wrap_pyop2_kernel_prolong       4 0.0 7.5163e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee10d54210_wrap_pyop2_kernel_prolong       4 0.0 1.1919e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cb5787290_wrap_pyop2_kernel_prolong       4 0.0 7.6173e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154cb4e46ad0_wrap_pyop2_kernel_prolong       4 0.0 1.3769e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c6af219d0_wrap_pyop2_kernel_prolong       4 0.0 7.6636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c6af21310_wrap_pyop2_kernel_prolong       4 0.0 1.2837e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460bfebd450_wrap_pyop2_kernel_prolong       4 0.0 7.6503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1460bfe71010_wrap_pyop2_kernel_prolong       4 0.0 1.1905e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554536c4d10_wrap_pyop2_kernel_prolong       4 0.0 7.5501e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1554536a7ed0_wrap_pyop2_kernel_prolong       4 0.0 1.2903e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9124c0110_wrap_pyop2_kernel_prolong       4 0.0 7.5275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9124c3110_wrap_pyop2_kernel_prolong       4 0.0 1.1329e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a01fd29650_wrap_pyop2_kernel_prolong       4 0.0 7.5524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a01fd89690_wrap_pyop2_kernel_prolong       4 0.0 1.1136e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520e730d9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1520e730e090_wrap_pyop2_kernel_prolong       4 0.0 1.2472e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f21dbb9e50_wrap_pyop2_kernel_prolong       4 0.0 7.6143e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f21dbb9810_wrap_pyop2_kernel_prolong       4 0.0 1.2445e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369c08a590_wrap_pyop2_kernel_prolong       4 0.0 7.5178e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369c089f10_wrap_pyop2_kernel_prolong       4 0.0 1.1233e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ea23ebd10_wrap_pyop2_kernel_prolong       4 0.0 7.6442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ea1a6bcd0_wrap_pyop2_kernel_prolong       4 0.0 1.2306e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15068b35f410_wrap_pyop2_kernel_prolong       4 0.0 7.6036e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15068b56d650_wrap_pyop2_kernel_prolong       4 0.0 1.4110e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb20b5f290_wrap_pyop2_kernel_prolong       4 0.0 7.5379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb20b5d790_wrap_pyop2_kernel_prolong       4 0.0 1.1754e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147817d7e610_wrap_pyop2_kernel_prolong       4 0.0 7.5749e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147817d7e210_wrap_pyop2_kernel_prolong       4 0.0 1.1793e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd73a5a110_wrap_pyop2_kernel_prolong       4 0.0 7.6386e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd73a5aa90_wrap_pyop2_kernel_prolong       4 0.0 1.3134e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148319d0a390_wrap_pyop2_kernel_prolong       4 0.0 7.5188e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148319d0bc10_wrap_pyop2_kernel_prolong       4 0.0 1.2094e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510d10c9090_wrap_pyop2_kernel_prolong       4 0.0 7.6623e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510d0f61b10_wrap_pyop2_kernel_prolong       4 0.0 1.2438e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bce43b2990_wrap_pyop2_kernel_prolong       4 0.0 7.5307e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bce43b22d0_wrap_pyop2_kernel_prolong       4 0.0 1.3402e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15105a64ff10_wrap_pyop2_kernel_prolong       4 0.0 7.5282e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15105a57e2d0_wrap_pyop2_kernel_prolong       4 0.0 1.2570e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cacd0b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5219e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147cacd09610_wrap_pyop2_kernel_prolong       4 0.0 1.2005e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d70cdadf50_wrap_pyop2_kernel_prolong       4 0.0 7.5242e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d70cdad790_wrap_pyop2_kernel_prolong       4 0.0 1.2938e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d0398a210_wrap_pyop2_kernel_prolong       4 0.0 7.5249e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d02ec2850_wrap_pyop2_kernel_prolong       4 0.0 1.2684e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153465d6e950_wrap_pyop2_kernel_prolong       4 0.0 7.5286e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153465d6e150_wrap_pyop2_kernel_prolong       4 0.0 1.3187e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146431d4c910_wrap_pyop2_kernel_prolong       4 0.0 7.5593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146431d4e550_wrap_pyop2_kernel_prolong       4 0.0 1.3372e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a272fbe90_wrap_pyop2_kernel_prolong       4 0.0 7.6419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152a272fb010_wrap_pyop2_kernel_prolong       4 0.0 1.3460e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14643f965250_wrap_pyop2_kernel_prolong       4 0.0 7.5602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14643f9679d0_wrap_pyop2_kernel_prolong       4 0.0 1.0894e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d05c43c990_wrap_pyop2_kernel_prolong       4 0.0 7.6384e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d05c43fbd0_wrap_pyop2_kernel_prolong       4 0.0 1.2108e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2d00ec410_wrap_pyop2_kernel_prolong       4 0.0 7.5489e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2cba55390_wrap_pyop2_kernel_prolong       4 0.0 1.1439e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d60472550_wrap_pyop2_kernel_prolong       4 0.0 7.5352e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d6049b310_wrap_pyop2_kernel_prolong       4 0.0 1.3086e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15344684dcd0_wrap_pyop2_kernel_prolong       4 0.0 7.5185e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15344684d2d0_wrap_pyop2_kernel_prolong       4 0.0 1.1526e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463d41f6810_wrap_pyop2_kernel_prolong       4 0.0 7.5379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463d41f4e50_wrap_pyop2_kernel_prolong       4 0.0 1.3709e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479ba435050_wrap_pyop2_kernel_prolong       4 0.0 7.5167e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479ba1d8e90_wrap_pyop2_kernel_prolong       4 0.0 1.1836e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151270e81d10_wrap_pyop2_kernel_prolong       4 0.0 7.5168e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151270e3a150_wrap_pyop2_kernel_prolong       4 0.0 1.1229e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151773769050_wrap_pyop2_kernel_prolong       4 0.0 7.5538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1517737c5250_wrap_pyop2_kernel_prolong       4 0.0 1.2980e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a56028e1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a56028ac10_wrap_pyop2_kernel_prolong       4 0.0 1.2908e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151dad579d90_wrap_pyop2_kernel_prolong       4 0.0 7.5791e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151dacce9e90_wrap_pyop2_kernel_prolong       4 0.0 1.3831e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15470f4df4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15470f4dd450_wrap_pyop2_kernel_prolong       4 0.0 1.3983e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a6fb0850_wrap_pyop2_kernel_prolong       4 0.0 7.5711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1533a78d2490_wrap_pyop2_kernel_prolong       4 0.0 1.3154e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5a9257850_wrap_pyop2_kernel_prolong       4 0.0 7.6507e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a5a924ddd0_wrap_pyop2_kernel_prolong       4 0.0 1.1087e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149137a5a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5380e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149137a59650_wrap_pyop2_kernel_prolong       4 0.0 1.2535e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfc0b68a50_wrap_pyop2_kernel_prolong       4 0.0 7.6638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfc0b6af50_wrap_pyop2_kernel_prolong       4 0.0 1.3599e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e747a2d10_wrap_pyop2_kernel_prolong       4 0.0 7.5437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e6fe4ca10_wrap_pyop2_kernel_prolong       4 0.0 1.2756e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfd9185e90_wrap_pyop2_kernel_prolong       4 0.0 7.6130e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfd919da50_wrap_pyop2_kernel_prolong       4 0.0 1.3985e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150758877e50_wrap_pyop2_kernel_prolong       4 0.0 7.5638e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150758aa5450_wrap_pyop2_kernel_prolong       4 0.0 1.3060e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518356e6510_wrap_pyop2_kernel_prolong       4 0.0 7.6787e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1518356b9cd0_wrap_pyop2_kernel_prolong       4 0.0 1.2930e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505948c7950_wrap_pyop2_kernel_prolong       4 0.0 7.5172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150594afd050_wrap_pyop2_kernel_prolong       4 0.0 1.1659e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de72da9c50_wrap_pyop2_kernel_prolong       4 0.0 7.6064e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de72560050_wrap_pyop2_kernel_prolong       4 0.0 1.5013e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d617dbb50_wrap_pyop2_kernel_prolong       4 0.0 7.6754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d617ad810_wrap_pyop2_kernel_prolong       4 0.0 1.2701e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14825f922610_wrap_pyop2_kernel_prolong       4 0.0 7.6771e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14825f922490_wrap_pyop2_kernel_prolong       4 0.0 1.3278e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abc6b5fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5277e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14abc6b5d890_wrap_pyop2_kernel_prolong       4 0.0 1.3538e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b296ba610_wrap_pyop2_kernel_prolong       4 0.0 7.5275e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145b28d35950_wrap_pyop2_kernel_prolong       4 0.0 1.3979e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15179790d250_wrap_pyop2_kernel_prolong       4 0.0 7.6131e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15177cf44890_wrap_pyop2_kernel_prolong       4 0.0 1.0729e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d97a8d60d0_wrap_pyop2_kernel_prolong       4 0.0 7.6683e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d97a8d7e90_wrap_pyop2_kernel_prolong       4 0.0 1.0833e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464060c9e50_wrap_pyop2_kernel_prolong       4 0.0 7.5564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464060c8550_wrap_pyop2_kernel_prolong       4 0.0 1.2199e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514fcc6b390_wrap_pyop2_kernel_prolong       4 0.0 7.5538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514fd08d0d0_wrap_pyop2_kernel_prolong       4 0.0 1.1927e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b664b78bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5574e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b664b72190_wrap_pyop2_kernel_prolong       4 0.0 1.2528e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c82cbe250_wrap_pyop2_kernel_prolong       4 0.0 7.6707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c82cbc150_wrap_pyop2_kernel_prolong       4 0.0 1.1639e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7bfad4cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7bf14b110_wrap_pyop2_kernel_prolong       4 0.0 1.1197e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc1d5cd390_wrap_pyop2_kernel_prolong       4 0.0 7.5530e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc1d633c90_wrap_pyop2_kernel_prolong       4 0.0 1.1387e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb80ed7f90_wrap_pyop2_kernel_prolong       4 0.0 7.5573e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb80574290_wrap_pyop2_kernel_prolong       4 0.0 1.2599e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146820ca8d90_wrap_pyop2_kernel_prolong       4 0.0 7.5548e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146820eba050_wrap_pyop2_kernel_prolong       4 0.0 1.1601e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbb9d8d9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbb9de9710_wrap_pyop2_kernel_prolong       4 0.0 1.2418e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e745806fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5577e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e745681450_wrap_pyop2_kernel_prolong       4 0.0 1.2603e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f3962f210_wrap_pyop2_kernel_prolong       4 0.0 7.6381e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f39695790_wrap_pyop2_kernel_prolong       4 0.0 1.3202e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c04fc5e90_wrap_pyop2_kernel_prolong       4 0.0 7.5436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c04e6db10_wrap_pyop2_kernel_prolong       4 0.0 9.8302e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ebc1cbf50_wrap_pyop2_kernel_prolong       4 0.0 7.6715e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149eb7b6b310_wrap_pyop2_kernel_prolong       4 0.0 1.1006e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa70b57710_wrap_pyop2_kernel_prolong       4 0.0 7.5744e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa70b4d610_wrap_pyop2_kernel_prolong       4 0.0 1.2866e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ce3961d10_wrap_pyop2_kernel_prolong       4 0.0 7.5798e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ce3963790_wrap_pyop2_kernel_prolong       4 0.0 1.2109e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15464c5c2bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154647b2e450_wrap_pyop2_kernel_prolong       4 0.0 1.2502e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145be153b010_wrap_pyop2_kernel_prolong       4 0.0 7.5728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145be1368fd0_wrap_pyop2_kernel_prolong       4 0.0 1.1628e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b2db35b50_wrap_pyop2_kernel_prolong       4 0.0 7.5707e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b2db369d0_wrap_pyop2_kernel_prolong       4 0.0 1.1705e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d19421aa10_wrap_pyop2_kernel_prolong       4 0.0 7.5965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d19421bb90_wrap_pyop2_kernel_prolong       4 0.0 1.2937e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bbf110d90_wrap_pyop2_kernel_prolong       4 0.0 7.5774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bbef35b90_wrap_pyop2_kernel_prolong       4 0.0 1.1784e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7480f5010_wrap_pyop2_kernel_prolong       4 0.0 7.5479e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a7480f7c10_wrap_pyop2_kernel_prolong       4 0.0 1.0970e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a53a65f10_wrap_pyop2_kernel_prolong       4 0.0 7.5849e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a53baee50_wrap_pyop2_kernel_prolong       4 0.0 1.3303e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad7dc35610_wrap_pyop2_kernel_prolong       4 0.0 7.5662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad7d599350_wrap_pyop2_kernel_prolong       4 0.0 1.1900e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510d4aaad90_wrap_pyop2_kernel_prolong       4 0.0 7.5889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510d4b0fa50_wrap_pyop2_kernel_prolong       4 0.0 1.3777e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481b2952650_wrap_pyop2_kernel_prolong       4 0.0 7.5832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481b2951e10_wrap_pyop2_kernel_prolong       4 0.0 1.1805e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b925e9da50_wrap_pyop2_kernel_prolong       4 0.0 7.5551e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b925e95f90_wrap_pyop2_kernel_prolong       4 0.0 1.2809e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462b0e1d510_wrap_pyop2_kernel_prolong       4 0.0 7.5569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1462b0bddc90_wrap_pyop2_kernel_prolong       4 0.0 1.3239e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb11450d10_wrap_pyop2_kernel_prolong       4 0.0 7.5555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb1161d8d0_wrap_pyop2_kernel_prolong       4 0.0 1.1807e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490b13dd490_wrap_pyop2_kernel_prolong       4 0.0 7.6420e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490b13cb710_wrap_pyop2_kernel_prolong       4 0.0 1.1913e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149849d99750_wrap_pyop2_kernel_prolong       4 0.0 7.6329e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149849d84310_wrap_pyop2_kernel_prolong       4 0.0 1.3280e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ae430c8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6283e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ae4104bd0_wrap_pyop2_kernel_prolong       4 0.0 1.1050e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528036da990_wrap_pyop2_kernel_prolong       4 0.0 7.6017e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528038e5350_wrap_pyop2_kernel_prolong       4 0.0 1.2176e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c09fbdb4d0_wrap_pyop2_kernel_prolong       4 0.0 7.5874e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c09fbd9750_wrap_pyop2_kernel_prolong       4 0.0 1.1969e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a4d753f50_wrap_pyop2_kernel_prolong       4 0.0 7.5973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a4d751190_wrap_pyop2_kernel_prolong       4 0.0 1.2780e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146fff45a450_wrap_pyop2_kernel_prolong       4 0.0 7.5994e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ffea9a610_wrap_pyop2_kernel_prolong       4 0.0 1.4013e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f42b3d8690_wrap_pyop2_kernel_prolong       4 0.0 7.5583e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f42b3acd10_wrap_pyop2_kernel_prolong       4 0.0 1.1903e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15537bd92450_wrap_pyop2_kernel_prolong       4 0.0 7.6625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15537bd89f50_wrap_pyop2_kernel_prolong       4 0.0 1.1714e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe0dc8d490_wrap_pyop2_kernel_prolong       4 0.0 7.6074e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe0dc8f450_wrap_pyop2_kernel_prolong       4 0.0 1.1438e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e470504e10_wrap_pyop2_kernel_prolong       4 0.0 7.6334e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e470e45390_wrap_pyop2_kernel_prolong       4 0.0 1.3940e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b467428310_wrap_pyop2_kernel_prolong       4 0.0 7.6252e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b466c7d550_wrap_pyop2_kernel_prolong       4 0.0 1.2846e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d07267450_wrap_pyop2_kernel_prolong       4 0.0 7.6471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151d07239910_wrap_pyop2_kernel_prolong       4 0.0 1.1109e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15013c245250_wrap_pyop2_kernel_prolong       4 0.0 7.6648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15013c290dd0_wrap_pyop2_kernel_prolong       4 0.0 1.3291e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e44e592150_wrap_pyop2_kernel_prolong       4 0.0 7.5673e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e44e4f28d0_wrap_pyop2_kernel_prolong       4 0.0 1.4281e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da44751950_wrap_pyop2_kernel_prolong       4 0.0 7.5544e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14da445f2710_wrap_pyop2_kernel_prolong       4 0.0 1.1759e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eae7e5fd10_wrap_pyop2_kernel_prolong       4 0.0 7.6175e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eaec094e50_wrap_pyop2_kernel_prolong       4 0.0 1.1901e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154613b08310_wrap_pyop2_kernel_prolong       4 0.0 7.6614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546181cba90_wrap_pyop2_kernel_prolong       4 0.0 1.3284e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ee34fd5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5612e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153ee34c5f50_wrap_pyop2_kernel_prolong       4 0.0 1.2802e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c5e0b5d10_wrap_pyop2_kernel_prolong       4 0.0 7.6693e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c5de77f10_wrap_pyop2_kernel_prolong       4 0.0 1.3544e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ea4fc2210_wrap_pyop2_kernel_prolong       4 0.0 7.6075e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149ea4114290_wrap_pyop2_kernel_prolong       4 0.0 1.3088e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab8ff45d10_wrap_pyop2_kernel_prolong       4 0.0 7.6086e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab8fef9a50_wrap_pyop2_kernel_prolong       4 0.0 1.4759e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486c36d48d0_wrap_pyop2_kernel_prolong       4 0.0 7.5449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1486c2bff990_wrap_pyop2_kernel_prolong       4 0.0 1.1224e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8d7890a50_wrap_pyop2_kernel_prolong       4 0.0 7.5510e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c8d7861e90_wrap_pyop2_kernel_prolong       4 0.0 1.0896e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c6f0b9390_wrap_pyop2_kernel_prolong       4 0.0 7.5519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c6f0601d0_wrap_pyop2_kernel_prolong       4 0.0 1.1892e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdccd999d0_wrap_pyop2_kernel_prolong       4 0.0 7.6144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cdccd99210_wrap_pyop2_kernel_prolong       4 0.0 1.2900e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac3c6c2590_wrap_pyop2_kernel_prolong       4 0.0 7.6441e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac37d8a750_wrap_pyop2_kernel_prolong       4 0.0 1.2010e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151910e5d3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5529e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151910b7cb90_wrap_pyop2_kernel_prolong       4 0.0 1.3118e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6ee616890_wrap_pyop2_kernel_prolong       4 0.0 7.5602e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e6ee8542d0_wrap_pyop2_kernel_prolong       4 0.0 1.2164e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14739332dc50_wrap_pyop2_kernel_prolong       4 0.0 7.6321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14739332f590_wrap_pyop2_kernel_prolong       4 0.0 1.1080e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8f43e5190_wrap_pyop2_kernel_prolong       4 0.0 7.5640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8f43dec90_wrap_pyop2_kernel_prolong       4 0.0 1.2668e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c4e6c8710_wrap_pyop2_kernel_prolong       4 0.0 7.5575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c4d5233d0_wrap_pyop2_kernel_prolong       4 0.0 1.3275e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458f4554c50_wrap_pyop2_kernel_prolong       4 0.0 7.5485e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458f4554b90_wrap_pyop2_kernel_prolong       4 0.0 1.1503e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149841e04610_wrap_pyop2_kernel_prolong       4 0.0 7.6309e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498413b6190_wrap_pyop2_kernel_prolong       4 0.0 1.2145e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154520b1a090_wrap_pyop2_kernel_prolong       4 0.0 7.5600e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154520b19710_wrap_pyop2_kernel_prolong       4 0.0 1.3497e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1532112cdbd0_wrap_pyop2_kernel_prolong       4 0.0 7.6068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15321116a410_wrap_pyop2_kernel_prolong       4 0.0 1.2537e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516c1ba7410_wrap_pyop2_kernel_prolong       4 0.0 7.5837e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1516c1ba55d0_wrap_pyop2_kernel_prolong       4 0.0 1.0643e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d991a57610_wrap_pyop2_kernel_prolong       4 0.0 7.6209e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d991a559d0_wrap_pyop2_kernel_prolong       4 0.0 1.3511e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f77f89410_wrap_pyop2_kernel_prolong       4 0.0 7.5522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f77f5c750_wrap_pyop2_kernel_prolong       4 0.0 1.2103e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14befd800e50_wrap_pyop2_kernel_prolong       4 0.0 7.5537e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14befd61e490_wrap_pyop2_kernel_prolong       4 0.0 1.2949e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e988cf90_wrap_pyop2_kernel_prolong       4 0.0 7.6312e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497e988fa10_wrap_pyop2_kernel_prolong       4 0.0 1.2613e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507f33db390_wrap_pyop2_kernel_prolong       4 0.0 7.5491e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1507f33d8b50_wrap_pyop2_kernel_prolong       4 0.0 1.2224e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15388c9ffe50_wrap_pyop2_kernel_prolong       4 0.0 7.5465e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15388cb6a390_wrap_pyop2_kernel_prolong       4 0.0 1.1225e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146047e7bc50_wrap_pyop2_kernel_prolong       4 0.0 7.5553e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146047e799d0_wrap_pyop2_kernel_prolong       4 0.0 1.2916e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553c3962550_wrap_pyop2_kernel_prolong       4 0.0 7.6172e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553c3942a10_wrap_pyop2_kernel_prolong       4 0.0 1.2851e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151415a23e50_wrap_pyop2_kernel_prolong       4 0.0 7.5718e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151415a71b10_wrap_pyop2_kernel_prolong       4 0.0 1.3574e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fa8086190_wrap_pyop2_kernel_prolong       4 0.0 7.6455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fa81e5850_wrap_pyop2_kernel_prolong       4 0.0 1.3222e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bde50b3e90_wrap_pyop2_kernel_prolong       4 0.0 7.6136e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bde50cddd0_wrap_pyop2_kernel_prolong       4 0.0 1.4024e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d2ac46a10_wrap_pyop2_kernel_prolong       4 0.0 7.5547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d2ac462d0_wrap_pyop2_kernel_prolong       4 0.0 1.2636e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484edbbe350_wrap_pyop2_kernel_prolong       4 0.0 7.5477e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1484edbbc4d0_wrap_pyop2_kernel_prolong       4 0.0 1.1480e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7ceb04850_wrap_pyop2_kernel_prolong       4 0.0 7.5670e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b7ceb97990_wrap_pyop2_kernel_prolong       4 0.0 1.3452e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14614b900ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14614b902150_wrap_pyop2_kernel_prolong       4 0.0 1.0515e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fad66ead0_wrap_pyop2_kernel_prolong       4 0.0 7.5734e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154fad560350_wrap_pyop2_kernel_prolong       4 0.0 1.1674e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc3581f910_wrap_pyop2_kernel_prolong       4 0.0 7.6076e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc3581f790_wrap_pyop2_kernel_prolong       4 0.0 1.4478e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df3f878990_wrap_pyop2_kernel_prolong       4 0.0 7.6731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df3fb5b6d0_wrap_pyop2_kernel_prolong       4 0.0 1.3269e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152896583d10_wrap_pyop2_kernel_prolong       4 0.0 7.6517e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15289655b2d0_wrap_pyop2_kernel_prolong       4 0.0 1.2343e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f5b22bc50_wrap_pyop2_kernel_prolong       4 0.0 7.5893e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153f5b2a7610_wrap_pyop2_kernel_prolong       4 0.0 1.3484e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525a795ae10_wrap_pyop2_kernel_prolong       4 0.0 7.6625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525a7943310_wrap_pyop2_kernel_prolong       4 0.0 1.2119e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3906a0790_wrap_pyop2_kernel_prolong       4 0.0 7.6336e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e390699890_wrap_pyop2_kernel_prolong       4 0.0 1.2256e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1f9f41450_wrap_pyop2_kernel_prolong       4 0.0 7.6575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c1f9f40c90_wrap_pyop2_kernel_prolong       4 0.0 1.3856e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d37f6a110_wrap_pyop2_kernel_prolong       4 0.0 7.6470e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147d37f6b810_wrap_pyop2_kernel_prolong       4 0.0 1.2687e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a96216e90_wrap_pyop2_kernel_prolong       4 0.0 7.5611e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150a96214b50_wrap_pyop2_kernel_prolong       4 0.0 1.1324e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f767489c50_wrap_pyop2_kernel_prolong       4 0.0 7.6681e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7674892d0_wrap_pyop2_kernel_prolong       4 0.0 1.0832e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501280a4090_wrap_pyop2_kernel_prolong       4 0.0 7.6432e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501280a6dd0_wrap_pyop2_kernel_prolong       4 0.0 1.3234e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530ef695cd0_wrap_pyop2_kernel_prolong       4 0.0 7.6692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530ef6972d0_wrap_pyop2_kernel_prolong       4 0.0 1.2446e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545cc8b1050_wrap_pyop2_kernel_prolong       4 0.0 7.5539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1545cc8a7b50_wrap_pyop2_kernel_prolong       4 0.0 1.2169e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d32627b890_wrap_pyop2_kernel_prolong       4 0.0 7.5609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d325891850_wrap_pyop2_kernel_prolong       4 0.0 1.2543e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff8ef1f450_wrap_pyop2_kernel_prolong       4 0.0 7.6054e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff8ef1ebd0_wrap_pyop2_kernel_prolong       4 0.0 1.1711e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fffd72210_wrap_pyop2_kernel_prolong       4 0.0 7.5943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148fffd4e590_wrap_pyop2_kernel_prolong       4 0.0 1.0025e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529fd7ce890_wrap_pyop2_kernel_prolong       4 0.0 7.6248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529fc365950_wrap_pyop2_kernel_prolong       4 0.0 1.4175e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f8123bd90_wrap_pyop2_kernel_prolong       4 0.0 7.6463e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f812385d0_wrap_pyop2_kernel_prolong       4 0.0 1.2083e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d2eda7010_wrap_pyop2_kernel_prolong       4 0.0 7.5592e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150d2e4ba110_wrap_pyop2_kernel_prolong       4 0.0 1.3304e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac932412d0_wrap_pyop2_kernel_prolong       4 0.0 7.6692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac9311af90_wrap_pyop2_kernel_prolong       4 0.0 1.3089e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14869ce0fc50_wrap_pyop2_kernel_prolong       4 0.0 7.5957e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14869ccd2290_wrap_pyop2_kernel_prolong       4 0.0 1.4222e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153293fe5490_wrap_pyop2_kernel_prolong       4 0.0 7.5738e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153293fd0e50_wrap_pyop2_kernel_prolong       4 0.0 1.1364e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e0449c410_wrap_pyop2_kernel_prolong       4 0.0 7.5662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154e057f5750_wrap_pyop2_kernel_prolong       4 0.0 1.0929e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151182ada050_wrap_pyop2_kernel_prolong       4 0.0 7.5757e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151182adb610_wrap_pyop2_kernel_prolong       4 0.0 1.2990e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458e4c9ff50_wrap_pyop2_kernel_prolong       4 0.0 7.5754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458e4e84dd0_wrap_pyop2_kernel_prolong       4 0.0 1.2859e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153729c132d0_wrap_pyop2_kernel_prolong       4 0.0 7.5674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153729c1da10_wrap_pyop2_kernel_prolong       4 0.0 1.2185e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baa66ae610_wrap_pyop2_kernel_prolong       4 0.0 7.5668e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14baa6650bd0_wrap_pyop2_kernel_prolong       4 0.0 1.3962e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c65378410_wrap_pyop2_kernel_prolong       4 0.0 7.5679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c6537a010_wrap_pyop2_kernel_prolong       4 0.0 1.1630e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470f48c47d0_wrap_pyop2_kernel_prolong       4 0.0 7.5706e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1470f4898390_wrap_pyop2_kernel_prolong       4 0.0 1.1996e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148056571d10_wrap_pyop2_kernel_prolong       4 0.0 7.5781e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148056573310_wrap_pyop2_kernel_prolong       4 0.0 1.3649e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d8fa95150_wrap_pyop2_kernel_prolong       4 0.0 7.5752e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d8f95f7d0_wrap_pyop2_kernel_prolong       4 0.0 1.3472e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e67a61f50_wrap_pyop2_kernel_prolong       4 0.0 7.5702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e67a61690_wrap_pyop2_kernel_prolong       4 0.0 1.1870e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455d891de90_wrap_pyop2_kernel_prolong       4 0.0 7.5765e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455d891f290_wrap_pyop2_kernel_prolong       4 0.0 1.2875e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf4ddf5f10_wrap_pyop2_kernel_prolong       4 0.0 7.5714e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf4ddf7ed0_wrap_pyop2_kernel_prolong       4 0.0 1.1406e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146467245f90_wrap_pyop2_kernel_prolong       4 0.0 7.5694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14646745a510_wrap_pyop2_kernel_prolong       4 0.0 1.2502e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c76f1c7d90_wrap_pyop2_kernel_prolong       4 0.0 7.5663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c76f1bed90_wrap_pyop2_kernel_prolong       4 0.0 9.9658e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cb74d2f10_wrap_pyop2_kernel_prolong       4 0.0 7.5747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145cb74d0a90_wrap_pyop2_kernel_prolong       4 0.0 1.3155e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e6b30a8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e6b309790_wrap_pyop2_kernel_prolong       4 0.0 1.2393e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151175eb19d0_wrap_pyop2_kernel_prolong       4 0.0 7.5605e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151175ea9310_wrap_pyop2_kernel_prolong       4 0.0 1.1399e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546738dac10_wrap_pyop2_kernel_prolong       4 0.0 7.5790e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154673078fd0_wrap_pyop2_kernel_prolong       4 0.0 1.4057e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cdfb4e090_wrap_pyop2_kernel_prolong       4 0.0 7.5550e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148cdfb4e210_wrap_pyop2_kernel_prolong       4 0.0 1.1446e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15058f4f9690_wrap_pyop2_kernel_prolong       4 0.0 7.5632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15058f55a450_wrap_pyop2_kernel_prolong       4 0.0 1.2010e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553fab1bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5727e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1553fad93890_wrap_pyop2_kernel_prolong       4 0.0 1.3900e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3e93b1350_wrap_pyop2_kernel_prolong       4 0.0 7.5679e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3e95c1310_wrap_pyop2_kernel_prolong       4 0.0 1.3083e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b25d6b8410_wrap_pyop2_kernel_prolong       4 0.0 7.5717e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b25cd21750_wrap_pyop2_kernel_prolong       4 0.0 1.4246e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148899fac290_wrap_pyop2_kernel_prolong       4 0.0 7.5728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148899fb6610_wrap_pyop2_kernel_prolong       4 0.0 1.2001e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f4d733d90_wrap_pyop2_kernel_prolong       4 0.0 7.5865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f4d4f9a90_wrap_pyop2_kernel_prolong       4 0.0 1.5400e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500af7f4f50_wrap_pyop2_kernel_prolong       4 0.0 7.5699e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500af7ca150_wrap_pyop2_kernel_prolong       4 0.0 1.1763e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149288943b50_wrap_pyop2_kernel_prolong       4 0.0 7.5758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149288963f90_wrap_pyop2_kernel_prolong       4 0.0 1.2494e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc9b892590_wrap_pyop2_kernel_prolong       4 0.0 7.5750e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc9b892e90_wrap_pyop2_kernel_prolong       4 0.0 1.2693e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebd2046c50_wrap_pyop2_kernel_prolong       4 0.0 7.5742e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ebd203e2d0_wrap_pyop2_kernel_prolong       4 0.0 1.3037e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f5a278610_wrap_pyop2_kernel_prolong       4 0.0 7.5697e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f5a2496d0_wrap_pyop2_kernel_prolong       4 0.0 1.2203e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b179a390_wrap_pyop2_kernel_prolong       4 0.0 7.5775e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1510b165e110_wrap_pyop2_kernel_prolong       4 0.0 1.4030e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15113e33f190_wrap_pyop2_kernel_prolong       4 0.0 7.5545e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15113e336b50_wrap_pyop2_kernel_prolong       4 0.0 1.2176e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa6982a290_wrap_pyop2_kernel_prolong       4 0.0 7.5528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aa6982b550_wrap_pyop2_kernel_prolong       4 0.0 1.1882e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e03c7b0090_wrap_pyop2_kernel_prolong       4 0.0 7.5487e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e03c763e50_wrap_pyop2_kernel_prolong       4 0.0 1.1611e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d7b56e650_wrap_pyop2_kernel_prolong       4 0.0 7.5640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d7b56d890_wrap_pyop2_kernel_prolong       4 0.0 1.3361e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15327af1f9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5769e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15327a321bd0_wrap_pyop2_kernel_prolong       4 0.0 1.3517e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d207fcc90_wrap_pyop2_kernel_prolong       4 0.0 7.5640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d207d8bd0_wrap_pyop2_kernel_prolong       4 0.0 1.3488e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d9665abd0_wrap_pyop2_kernel_prolong       4 0.0 7.5639e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d9688d910_wrap_pyop2_kernel_prolong       4 0.0 1.4027e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e533568f10_wrap_pyop2_kernel_prolong       4 0.0 7.5660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5335426d0_wrap_pyop2_kernel_prolong       4 0.0 1.1420e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b26b0267d0_wrap_pyop2_kernel_prolong       4 0.0 7.5504e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b26ae87bd0_wrap_pyop2_kernel_prolong       4 0.0 1.2238e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f73522690_wrap_pyop2_kernel_prolong       4 0.0 7.5667e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f73521f90_wrap_pyop2_kernel_prolong       4 0.0 1.4064e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f964f8c910_wrap_pyop2_kernel_prolong       4 0.0 7.5626e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f964f8d110_wrap_pyop2_kernel_prolong       4 0.0 1.3311e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f466f3f850_wrap_pyop2_kernel_prolong       4 0.0 7.5555e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4670dda50_wrap_pyop2_kernel_prolong       4 0.0 1.3531e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552b08666d0_wrap_pyop2_kernel_prolong       4 0.0 7.5678e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1552b085d190_wrap_pyop2_kernel_prolong       4 0.0 1.4860e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524fed39b50_wrap_pyop2_kernel_prolong       4 0.0 7.5557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1524fe4291d0_wrap_pyop2_kernel_prolong       4 0.0 1.3245e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4e52dc690_wrap_pyop2_kernel_prolong       4 0.0 7.5617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d4e5199210_wrap_pyop2_kernel_prolong       4 0.0 1.1414e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c59efa250_wrap_pyop2_kernel_prolong       4 0.0 7.5651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c59efa290_wrap_pyop2_kernel_prolong       4 0.0 1.3485e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd0ba39cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fd100c56d0_wrap_pyop2_kernel_prolong       4 0.0 1.3357e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d904dc73d0_wrap_pyop2_kernel_prolong       4 0.0 7.5694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d904b69350_wrap_pyop2_kernel_prolong       4 0.0 1.3956e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369393c850_wrap_pyop2_kernel_prolong       4 0.0 7.5613e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15369393da90_wrap_pyop2_kernel_prolong       4 0.0 1.3637e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482717375d0_wrap_pyop2_kernel_prolong       4 0.0 7.5689e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482715b3e10_wrap_pyop2_kernel_prolong       4 0.0 1.3559e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d2cdfa850_wrap_pyop2_kernel_prolong       4 0.0 7.5651e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d2cdfaa90_wrap_pyop2_kernel_prolong       4 0.0 1.2430e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15140a557a90_wrap_pyop2_kernel_prolong       4 0.0 7.5708e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15140a789550_wrap_pyop2_kernel_prolong       4 0.0 1.2228e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512c4af8350_wrap_pyop2_kernel_prolong       4 0.0 7.5549e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512c4b48890_wrap_pyop2_kernel_prolong       4 0.0 1.1846e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15211a4364d0_wrap_pyop2_kernel_prolong       4 0.0 7.5507e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15211a411b90_wrap_pyop2_kernel_prolong       4 0.0 1.1884e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523cead9290_wrap_pyop2_kernel_prolong       4 0.0 7.5622e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523ceab0b50_wrap_pyop2_kernel_prolong       4 0.0 1.3625e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2be441850_wrap_pyop2_kernel_prolong       4 0.0 7.5575e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2be440e90_wrap_pyop2_kernel_prolong       4 0.0 1.4221e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ed5c12590_wrap_pyop2_kernel_prolong       4 0.0 7.5508e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147ed51a9990_wrap_pyop2_kernel_prolong       4 0.0 1.1153e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfcc0fcd90_wrap_pyop2_kernel_prolong       4 0.0 7.5691e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bfcc0fdf10_wrap_pyop2_kernel_prolong       4 0.0 1.2112e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c150430c90_wrap_pyop2_kernel_prolong       4 0.0 7.5614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c150433bd0_wrap_pyop2_kernel_prolong       4 0.0 1.3695e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540e2c13e50_wrap_pyop2_kernel_prolong       4 0.0 7.5610e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540e2cef9d0_wrap_pyop2_kernel_prolong       4 0.0 1.2535e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c23a29a90_wrap_pyop2_kernel_prolong       4 0.0 7.5547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147c23847f90_wrap_pyop2_kernel_prolong       4 0.0 1.2778e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537c65da590_wrap_pyop2_kernel_prolong       4 0.0 7.5599e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1537c65dbc50_wrap_pyop2_kernel_prolong       4 0.0 1.2453e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7a44d6f50_wrap_pyop2_kernel_prolong       4 0.0 7.5646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d7a424e0d0_wrap_pyop2_kernel_prolong       4 0.0 1.1361e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498d6ff3850_wrap_pyop2_kernel_prolong       4 0.0 7.5526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498d7001dd0_wrap_pyop2_kernel_prolong       4 0.0 1.2349e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d78d1add0_wrap_pyop2_kernel_prolong       4 0.0 7.5675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d783cd110_wrap_pyop2_kernel_prolong       4 0.0 1.3563e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f55aeeaf90_wrap_pyop2_kernel_prolong       4 0.0 7.5680e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f55aebd090_wrap_pyop2_kernel_prolong       4 0.0 1.2848e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154003277550_wrap_pyop2_kernel_prolong       4 0.0 7.5640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154001fdbad0_wrap_pyop2_kernel_prolong       4 0.0 1.1782e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463cd750b90_wrap_pyop2_kernel_prolong       4 0.0 7.5634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463cd7eb3d0_wrap_pyop2_kernel_prolong       4 0.0 1.2511e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152df0e75190_wrap_pyop2_kernel_prolong       4 0.0 7.5528e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152df0e77790_wrap_pyop2_kernel_prolong       4 0.0 1.1996e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14919574b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1491955d48d0_wrap_pyop2_kernel_prolong       4 0.0 1.1766e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147761679010_wrap_pyop2_kernel_prolong       4 0.0 7.5479e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147761705a90_wrap_pyop2_kernel_prolong       4 0.0 1.1277e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf2e142d50_wrap_pyop2_kernel_prolong       4 0.0 7.5711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bf2e005c10_wrap_pyop2_kernel_prolong       4 0.0 1.3891e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffed7e3cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ffee0f7b90_wrap_pyop2_kernel_prolong       4 0.0 1.3456e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa092e1d90_wrap_pyop2_kernel_prolong       4 0.0 7.5703e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa08994390_wrap_pyop2_kernel_prolong       4 0.0 1.3102e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152aec5c0a90_wrap_pyop2_kernel_prolong       4 0.0 7.5692e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152aec5c3510_wrap_pyop2_kernel_prolong       4 0.0 1.4193e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504dc113e90_wrap_pyop2_kernel_prolong       4 0.0 7.5844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1504dc110850_wrap_pyop2_kernel_prolong       4 0.0 1.4362e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f5ee2b6d0_wrap_pyop2_kernel_prolong       4 0.0 7.5659e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149f5ee2a990_wrap_pyop2_kernel_prolong       4 0.0 1.1901e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b7d7889d0_wrap_pyop2_kernel_prolong       4 0.0 7.5512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b7d6ac750_wrap_pyop2_kernel_prolong       4 0.0 1.2051e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a65b1b5210_wrap_pyop2_kernel_prolong       4 0.0 7.5758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a65a67ac50_wrap_pyop2_kernel_prolong       4 0.0 1.3167e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f7aa01d50_wrap_pyop2_kernel_prolong       4 0.0 7.5732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154f7ac0e2d0_wrap_pyop2_kernel_prolong       4 0.0 1.3059e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c5b1ba850_wrap_pyop2_kernel_prolong       4 0.0 7.5562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c5b222b10_wrap_pyop2_kernel_prolong       4 0.0 1.2030e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474dfe86910_wrap_pyop2_kernel_prolong       4 0.0 7.5761e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1474dfe86450_wrap_pyop2_kernel_prolong       4 0.0 1.4687e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b52a7f550_wrap_pyop2_kernel_prolong       4 0.0 7.5472e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b52b145d0_wrap_pyop2_kernel_prolong       4 0.0 1.0281e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14569cd6dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14569cdb02d0_wrap_pyop2_kernel_prolong       4 0.0 1.2200e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3a2d9b010_wrap_pyop2_kernel_prolong       4 0.0 7.5558e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3a2d91c90_wrap_pyop2_kernel_prolong       4 0.0 1.3110e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146995d34a90_wrap_pyop2_kernel_prolong       4 0.0 7.5646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1469952b1490_wrap_pyop2_kernel_prolong       4 0.0 1.1639e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb5792f9d0_wrap_pyop2_kernel_prolong       4 0.0 7.5731e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb57933d90_wrap_pyop2_kernel_prolong       4 0.0 1.3873e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b83240ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5514e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153b8321ced0_wrap_pyop2_kernel_prolong       4 0.0 1.2716e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514c9fe23d0_wrap_pyop2_kernel_prolong       4 0.0 7.5705e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514c9fbebd0_wrap_pyop2_kernel_prolong       4 0.0 1.2589e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac51a62b90_wrap_pyop2_kernel_prolong       4 0.0 7.5615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac51c94150_wrap_pyop2_kernel_prolong       4 0.0 1.2781e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cc4aa4890_wrap_pyop2_kernel_prolong       4 0.0 7.5598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150cc4a7b010_wrap_pyop2_kernel_prolong       4 0.0 1.2532e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f7dd1ec90_wrap_pyop2_kernel_prolong       4 0.0 7.5656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148f7dd1ca90_wrap_pyop2_kernel_prolong       4 0.0 1.2125e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150646579d90_wrap_pyop2_kernel_prolong       4 0.0 7.5663e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15064657b810_wrap_pyop2_kernel_prolong       4 0.0 1.2638e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc9ba638d0_wrap_pyop2_kernel_prolong       4 0.0 7.5732e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc9ba62a10_wrap_pyop2_kernel_prolong       4 0.0 1.2606e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9ff8e6090_wrap_pyop2_kernel_prolong       4 0.0 7.5619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9ff66c250_wrap_pyop2_kernel_prolong       4 0.0 1.2350e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e6b34f7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5660e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e6b4dde10_wrap_pyop2_kernel_prolong       4 0.0 1.2435e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6f87b2550_wrap_pyop2_kernel_prolong       4 0.0 7.5713e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d6f87b14d0_wrap_pyop2_kernel_prolong       4 0.0 1.2364e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ac87aa050_wrap_pyop2_kernel_prolong       4 0.0 7.5653e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ac8908110_wrap_pyop2_kernel_prolong       4 0.0 1.4127e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e5edb5610_wrap_pyop2_kernel_prolong       4 0.0 7.5607e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e5edb4f50_wrap_pyop2_kernel_prolong       4 0.0 1.2556e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512085c0e50_wrap_pyop2_kernel_prolong       4 0.0 7.5704e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151203b598d0_wrap_pyop2_kernel_prolong       4 0.0 1.3422e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a03fb51310_wrap_pyop2_kernel_prolong       4 0.0 7.5554e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a03fb25150_wrap_pyop2_kernel_prolong       4 0.0 1.3287e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473f417d750_wrap_pyop2_kernel_prolong       4 0.0 7.5620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473f417f210_wrap_pyop2_kernel_prolong       4 0.0 1.4830e-02 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   225            225
              Viewer     3              3
           Index Set  2425           2425
   IS L to G Mapping   206            206
             Section   468            468
   Star Forest Graph   361            361
              Vector   138            138
              Matrix   116            116
      Preconditioner     2              2
       Krylov Solver     2              2
     DMKSP interface     1              1
                SNES     1              1
              DMSNES     1              1
      SNESLineSearch     1              1
    Distributed Mesh   108            108
            DM Label   333            333
          Quadrature   144            144
      Mesh Transform     2              2
    GraphPartitioner    41             41
     Discrete System   163            163
           Weak Form   163            163
        Linear Space    12             12
          Dual Space    52             52
            FE Space     8              8
========================================================================================================================
Average time to get PetscTime(): 2.6e-08
Average time for MPI_Barrier(): 1.09202e-05
Average time for zero size MPI_Send(): 2.68884e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_strong/bjacobi/s4.profile # (source: code)
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

