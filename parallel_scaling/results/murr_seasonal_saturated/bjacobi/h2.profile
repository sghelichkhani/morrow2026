****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0429.gadi.nci.org.au with 208 processes, by sg8812 on Thu Aug 27 15:13:23 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           2.726e+02     1.000   2.726e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.907e+11     1.109   1.845e+11  3.838e+13
Flops/sec:            6.996e+08     1.109   6.769e+08  1.408e+11
MPI Msg Count:        1.868e+04     4.370   1.097e+04  2.281e+06
MPI Msg Len (bytes):  2.011e+09     3.600   1.077e+05  2.456e+11
MPI Reductions:       3.977e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 2.7258e+02 100.0%  3.8377e+13 100.0%  2.281e+06 100.0%  1.077e+05      100.0%  3.958e+03  99.5%

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

BuildTwoSided        177 1.0 8.2427e+00 5.3 0.00e+00 0.0 8.3e+04 4.0e+00 1.8e+02  2  0  4  0  4   2  0  4  0  4    -0
BuildTwoSidedF        82 1.0 4.6041e+00 3.6 0.00e+00 0.0 2.4e+04 1.4e+06 8.2e+01  1  0  1 14  2   1  0  1 14  2    -0
SFSetGraph           102 1.0 8.5152e-03 5.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               95 1.0 4.7089e+00 194.1 0.00e+00 0.0 1.4e+05 1.1e+03 9.5e+01  1  0  6  0  2   1  0  6  0  2    -0
SFBcastBegin         332 1.0 5.8654e-02 4.2 0.00e+00 0.0 3.1e+05 2.4e+04 0.0e+00  0  0 13  3  0   0  0 13  3  0    -0
SFBcastEnd           332 1.0 5.1673e+00 154.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin         61 1.0 2.1864e-02 13.3 0.00e+00 0.0 5.8e+04 4.3e+04 0.0e+00  0  0  3  1  0   0  0  3  1  0    -0
SFReduceEnd           61 1.0 2.0881e-01 21.2 2.59e+06 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1516
SFFetchOpBegin         6 1.0 3.3457e-05 4.6 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 9.9077e-04 23.0 0.00e+00 0.0 5.3e+03 7.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 1.2128e-03 2.0 0.00e+00 0.0 2.6e+03 1.1e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 6.8993e-03 1.4 0.00e+00 0.0 1.2e+05 7.8e+01 5.8e+01  0  0  5  0  1   0  0  5  0  1    -0
SFSectionSF           51 1.0 4.3092e-03 3.1 0.00e+00 0.0 5.9e+04 3.7e+01 5.1e+01  0  0  3  0  1   0  0  3  0  1    -0
SFRemoteOff            2 1.0 9.8036e-05 2.8 0.00e+00 0.0 2.3e+03 1.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              1996 1.0 7.5760e-01 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            2002 1.0 1.9294e-02 5.3 2.59e+06 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16405
VecDot                14 1.0 6.1435e-02 8.4 1.13e+07 1.1 0.0e+00 0.0e+00 1.4e+01  0  0  0  0  0   0  0  0  0  0 37357
VecMDot             1538 1.0 2.5484e+01 1.6 1.82e+10 1.1 0.0e+00 0.0e+00 1.5e+03  7 10  0  0 39   7 10  0  0 39 145288
VecNorm             1637 1.0 4.2431e+00 3.2 1.32e+09 1.1 0.0e+00 0.0e+00 1.6e+03  1  1  0  0 41   1  1  0  0 41 63245
VecScale            1603 1.0 4.4562e-01 1.2 6.46e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 294850
VecCopy              291 1.0 3.5162e-01 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet                85 1.0 6.5874e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              110 1.0 1.9955e-01 2.1 8.87e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 90366
VecWAXPY              14 1.0 2.7115e-02 1.2 5.64e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 42320
VecMAXPY            1603 1.0 2.3505e+01 1.1 1.95e+10 1.1 0.0e+00 0.0e+00 0.0e+00  8 10  0  0  0   8 10  0  0  0 168243
VecScatterBegin     1597 1.0 7.9108e-01 3.8 0.00e+00 0.0 1.7e+06 1.2e+05 0.0e+00  0  0 76 82  0   0  0 76 82  0    -0
VecScatterEnd       1597 1.0 1.0111e+01 51.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith        28 1.0 1.7479e-02 2.8 2.26e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 262604
VecReduceComm         14 1.0 1.5583e-01 6.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.4e+01  0  0  0  0  0   0  0  0  0  0    -0
VecNormalize        1603 1.0 4.4328e+00 2.6 1.94e+09 1.1 0.0e+00 0.0e+00 1.6e+03  1  1  0  0 40   1  1  0  0 41 88921
MatMult             1597 1.0 6.7012e+01 1.2 4.57e+10 1.1 1.7e+06 1.2e+05 0.0e+00 22 24 76 82  0  22 24 76 82  0 138231
MatSolve            1603 1.0 6.5520e+01 1.2 4.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00 23 23  0  0  0  23 23  0  0  0 137242
MatLUFactorNum        20 1.0 3.2221e+00 1.3 5.11e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 312767
MatILUFactorSym        1 1.0 1.6362e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     126 1.0 4.6989e+00 2.1 0.00e+00 0.0 2.4e+04 1.4e+06 8.2e+01  1  0  1 14  2   1  0  1 14  2    -0
MatAssemblyEnd       126 1.0 1.6124e+00 2.3 2.22e+07 0.0 2.2e+03 2.9e+04 6.0e+00  0  0  0  0  0   0  0  0  0  0  1180
MatGetRowIJ            1 1.0 5.8950e-06 53.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 4.2614e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries        20 1.0 6.8313e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetPreallCOO       32 1.0 7.7449e-05 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 3.1672e-05 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp               20 1.0 2.4476e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks       20 1.0 3.3689e+00 1.3 5.11e+09 1.2 0.0e+00 0.0e+00 0.0e+00  1  3  0  0  0   1  3  0  0  0 299133
PCApply             1603 1.0 6.5544e+01 1.2 4.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00 23 23  0  0  0  23 23  0  0  0 137192
PCApplyOnBlocks     1603 1.0 6.5537e+01 1.2 4.45e+10 1.1 0.0e+00 0.0e+00 0.0e+00 23 23  0  0  0  23 23  0  0  0 137207
KSPSetUp              20 1.0 7.6578e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve              20 1.0 1.6695e+02 1.0 1.29e+11 1.1 1.7e+06 1.2e+05 3.1e+03 61 68 76 82 79  61 68 76 82 79 157197
KSPGMRESOrthog      1538 1.0 4.5592e+01 1.2 3.64e+10 1.1 0.0e+00 0.0e+00 1.5e+03 15 19  0  0 39  15 19  0  0 39 162418
DMRefine               2 1.0 2.3032e-01 1.0 2.09e+03 1.0 1.6e+04 3.3e+01 6.3e+01  0  0  1  0  2   0  0  1  0  2     2
DMPlexCreateGmsh       1 1.0 1.7904e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 2.7119e+00 145.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 8.2128e-02 1.0 0.00e+00 0.0 3.8e+04 6.1e+01 5.1e+01  0  0  2  0  1   0  0  2  0  1    -0
Mesh Migration         4 1.0 1.7694e-02 1.1 0.00e+00 0.0 1.4e+05 7.1e+01 2.4e+02  0  0  6  0  6   0  0  6  0  6    -0
DMPlexPartSelf         1 1.0 2.0857e-03 824.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 1.5737e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 5.7539e-03 1.2 0.00e+00 0.0 7.5e+03 4.8e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 2.9040e-03 1.5 0.00e+00 0.0 3.7e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 2.1907e-03 3.3 0.00e+00 0.0 3.9e+03 2.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 7.5184e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 8.4229e-02 1.0 0.00e+00 0.0 8.6e+03 1.8e+02 6.3e+01  0  0  0  0  2   0  0  0  0  2    -0
DMPlexDistCones        4 1.0 2.1156e-03 1.1 0.00e+00 0.0 2.2e+04 1.1e+02 8.0e+00  0  0  1  0  0   0  0  1  0  0    -0
DMPlexDistLabels       4 1.0 7.0071e-03 1.0 0.00e+00 0.0 7.1e+04 6.8e+01 1.5e+02  0  0  3  0  4   0  0  3  0  4    -0
DMPlexDistOvrlp        3 1.0 1.7729e-02 1.0 0.00e+00 0.0 1.7e+05 6.7e+01 2.4e+02  0  0  8  0  6   0  0  8  0  6    -0
DMPlexDistField        7 1.0 3.7670e-03 1.4 0.00e+00 0.0 3.2e+04 5.5e+01 2.0e+01  0  0  1  0  1   0  0  1  0  1    -0
DMPlexStratify        41 1.0 6.3373e-03 6.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 3.2193e-04 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.4289e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 3.1019e-03 1.6 0.00e+00 0.0 8.6e+03 2.8e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.0799e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.4505e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.5828e-04 1.9 0.00e+00 0.0 6.9e+03 2.6e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.6422e-05 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 8.0950e-04 2.1 0.00e+00 0.0 1.7e+03 3.5e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve              6 1.0 2.0677e+02 1.0 1.91e+11 1.1 1.8e+06 1.3e+05 3.3e+03 76 100 81 98 83  76 100 81 98 83 185527
SNESSetUp              1 1.0 6.1276e-05 3.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval      20 1.0 1.1675e+01 1.0 1.81e+10 1.2 5.2e+04 1.2e+05 0.0e+00  4  9  2  2  0   4  9  2  2  0 304805
SNESJacobianEval      20 1.0 2.4657e+01 1.0 3.79e+10 1.2 4.4e+04 7.6e+05 8.0e+01  9 19  2 13  2   9 19  2 13  2 302387
SNESLineSearch        14 1.0 1.7771e+00 1.1 1.32e+10 1.2 4.6e+04 1.2e+05 5.6e+01  1  7  2  2  1   1  7  2  2  1 1454465
DualSpaceSetUp         8 1.0 5.3614e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     4
FESetUp                8 1.0 1.9448e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 2.7036e+02 1.0 1.91e+11 1.1 2.3e+06 1.1e+05 4.0e+03 99 100 100 100 99  99 100 100 100 100 141947
firedrake.__init__       1 1.0 1.0422e+01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
CreateMesh             3 1.0 2.8604e+00 17.2 0.00e+00 0.0 3.4e+05 7.2e+01 4.4e+02  1  0 15  0 11   1  0 15  0 11    -0
firedrake.mesh._from_gmsh       1 1.0 2.7127e+00 145.2 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.1464e-03 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.6650e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.9424e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 1.0716e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      13 1.0 2.9700e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      17 1.0 1.4097e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      17 1.0 2.8537e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      16 1.0 2.6490e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      16 1.0 2.6395e-02 1.1 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      32 1.0 1.3021e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 5.9932e-03 1.3 0.00e+00 0.0 7.1e+03 8.5e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5721e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.3593e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.3514e-02 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 2.4188e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.5401e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.1064e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 4.9555e-04 5.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 2.4122e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     226 1.0 4.6212e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute       199 1.0 3.8525e+01 1.1 5.61e+10 1.2 7.8e+04 9.2e+04 3.2e+01 14 29  3  3  1  14 29  3  3  1 286281
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 2.3688e+00 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)     398 1.0 2.5238e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  9  0  0  0  0   9  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0647e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.5660e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.3196e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.4619e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.4618e+01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  5  0  0  0  0   5  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 9.5846e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 9.4038e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin     199 1.0 1.0676e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd       199 1.0 5.6404e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.9893e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 8.7484e+00 1.0 1.36e+07 1.1 1.9e+04 1.3e+04 1.3e+01  3  0  1  0  0   3  0  1  0  0   316
firedrake.interpolation.interpolate      12 1.0 4.4103e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      12 1.0 4.9382e+00 1.0 8.22e+07 1.1 2.6e+04 4.4e+04 1.5e+01  2  0  1  0  0   2  0  1  0  0  3382
firedrake.formmanipulation.split_form      14 1.0 4.6474e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.4714e-04 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      12 1.0 1.4932e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 9.7636e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin      67 1.0 5.0727e+00 77.9 0.00e+00 0.0 8.8e+04 8.3e+04 4.0e+00  1  0  4  3  0   1  0  4  3  0    -0
Parloop_Cells_wrap_expression_kernel      24 1.0 4.6147e+00 1.0 8.22e+07 1.1 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0  3619
firedrake.halo.Halo.global_to_local_end      67 1.0 1.1910e+00 82.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 4.7407e+00 74.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501c9f70150_wrap_pyop2_kernel_prolong       4 0.0 7.6844e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1501ca268390_wrap_pyop2_kernel_prolong       4 0.0 4.8616e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9829e+00 1.0 6.85e+07 1.1 1.7e+04 5.8e+04 1.1e+01  1  0  1  0  0   1  0  1  0  0  3498
firedrake.function.Function.assign      37 1.0 2.1992e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign      36 1.0 2.0527e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.4988e-04 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate       4 1.0 5.1294e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 5.7204e-05 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4643e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9750e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.2092e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.4761e+00 1.0 0.00e+00 0.0 6.7e+03 4.7e+05 2.3e+01  3  0  0  1  1   3  0  0  1  1    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.8913e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.8143e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2144e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2144e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateSparsity         1 1.0 3.9034e+00 1.1 0.00e+00 0.0 3.4e+03 4.5e+05 8.0e+00  1  0  0  1  0   1  0  0  1  0    -0
MatZeroInitial         1 1.0 5.3625e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve       6 1.0 2.0678e+02 1.0 1.91e+11 1.1 1.8e+06 1.3e+05 3.3e+03 76 100 81 98 83  76 100 81 98 83 185509
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.4340e-01 1281.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.9920e-06 1.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.4335e-01 1584.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.4331e-01 1833.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral      40 1.0 2.1835e+00 1.2 4.63e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 431321
Parloop_Cells_wrap_form0_exterior_facet_top_integral      40 1.0 1.1143e+00 1.0 5.96e+05 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   109
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral      40 1.0 1.2338e+00 1.0 4.78e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   943
Parloop_Cells_wrap_form0_interior_facet_horiz_integral      40 1.0 1.8892e+00 1.0 4.40e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  2  0  0  0   1  2  0  0  0 473779
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral      40 1.0 3.1899e+00 1.0 9.10e+09 1.3 0.0e+00 0.0e+00 0.0e+00  1  4  0  0  0   1  4  0  0  0 539210
firedrake.halo.Halo.local_to_global_begin      20 1.0 2.2216e-02 12.7 0.00e+00 0.0 2.2e+04 1.2e+05 0.0e+00  0  0  1  1  0   0  0  1  1  0    -0
firedrake.halo.Halo.local_to_global_end      20 1.0 2.0837e-01 22.2 2.59e+06 3.6 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  1519
Parloop_Cells_wrap_form00_cell_integral      40 1.0 4.5480e+00 1.2 8.60e+09 1.1 0.0e+00 0.0e+00 0.0e+00  2  5  0  0  0   2  5  0  0  0 384529
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral      40 1.0 1.3451e+00 1.1 4.81e+07 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   870
Parloop_Cells_wrap_form00_interior_facet_horiz_integral      40 1.0 5.3592e+00 1.1 1.13e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  6  0  0  0   2  6  0  0  0 429304
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral      40 1.0 1.0398e+01 1.3 1.80e+10 1.3 0.0e+00 0.0e+00 0.0e+00  3  9  0  0  0   3  9  0  0  0 327314
firedrake.constant.Constant.assign       5 1.0 7.9570e-04 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b24d33dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149b24bea010_wrap_pyop2_kernel_prolong       4 0.0 5.0102e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4d678a610_wrap_pyop2_kernel_prolong       4 0.0 7.6143e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4d6788990_wrap_pyop2_kernel_prolong       4 0.0 6.1793e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546e4cae010_wrap_pyop2_kernel_prolong       4 0.0 7.6754e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546e4cad550_wrap_pyop2_kernel_prolong       4 0.0 5.7706e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14642c57d950_wrap_pyop2_kernel_prolong       4 0.0 7.6337e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14642c5a4510_wrap_pyop2_kernel_prolong       4 0.0 6.9119e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e0545721d0_wrap_pyop2_kernel_prolong       4 0.0 7.5446e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e054579d90_wrap_pyop2_kernel_prolong       4 0.0 5.9117e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15412cc33b90_wrap_pyop2_kernel_prolong       4 0.0 7.6714e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15412cd6da10_wrap_pyop2_kernel_prolong       4 0.0 5.2504e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5cf7dca10_wrap_pyop2_kernel_prolong       4 0.0 7.6863e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5cf7da490_wrap_pyop2_kernel_prolong       4 0.0 5.2480e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae5ebd3fd0_wrap_pyop2_kernel_prolong       4 0.0 7.6868e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ae5e9b31d0_wrap_pyop2_kernel_prolong       4 0.0 5.4928e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea6d37d150_wrap_pyop2_kernel_prolong       4 0.0 7.6153e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ea6d37ddd0_wrap_pyop2_kernel_prolong       4 0.0 5.5611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500b9cf6a10_wrap_pyop2_kernel_prolong       4 0.0 7.6892e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1500b95ffbd0_wrap_pyop2_kernel_prolong       4 0.0 6.3879e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c8b988f50_wrap_pyop2_kernel_prolong       4 0.0 7.6694e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149c8b965510_wrap_pyop2_kernel_prolong       4 0.0 6.0819e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14958d9ef5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6792e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14958d0720d0_wrap_pyop2_kernel_prolong       4 0.0 6.9360e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0af366650_wrap_pyop2_kernel_prolong       4 0.0 7.5688e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f0af39f390_wrap_pyop2_kernel_prolong       4 0.0 6.0657e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d133a3410_wrap_pyop2_kernel_prolong       4 0.0 7.5540e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153d133a1110_wrap_pyop2_kernel_prolong       4 0.0 6.2159e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515af53f210_wrap_pyop2_kernel_prolong       4 0.0 7.5829e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1515af53d210_wrap_pyop2_kernel_prolong       4 0.0 7.6284e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498ca0bd390_wrap_pyop2_kernel_prolong       4 0.0 7.5382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1498ca129490_wrap_pyop2_kernel_prolong       4 0.0 5.0299e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529d980ed90_wrap_pyop2_kernel_prolong       4 0.0 7.5505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1529d9a62210_wrap_pyop2_kernel_prolong       4 0.0 5.6834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14943164cf90_wrap_pyop2_kernel_prolong       4 0.0 7.5832e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1494315e5e50_wrap_pyop2_kernel_prolong       4 0.0 7.0414e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493f607ca10_wrap_pyop2_kernel_prolong       4 0.0 7.5480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493f713e390_wrap_pyop2_kernel_prolong       4 0.0 5.6057e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a13466390_wrap_pyop2_kernel_prolong       4 0.0 7.5943e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a1342ebd0_wrap_pyop2_kernel_prolong       4 0.0 5.1042e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f0ba64590_wrap_pyop2_kernel_prolong       4 0.0 7.6037e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152f0ba660d0_wrap_pyop2_kernel_prolong       4 0.0 5.5176e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a882134450_wrap_pyop2_kernel_prolong       4 0.0 7.5801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a8820ccd50_wrap_pyop2_kernel_prolong       4 0.0 6.4043e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd5f76eb10_wrap_pyop2_kernel_prolong       4 0.0 7.6579e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd5f769f10_wrap_pyop2_kernel_prolong       4 0.0 7.1258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a25464a10_wrap_pyop2_kernel_prolong       4 0.0 7.5539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a24123fd0_wrap_pyop2_kernel_prolong       4 0.0 6.1571e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146035cd29d0_wrap_pyop2_kernel_prolong       4 0.0 7.5910e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146035d19190_wrap_pyop2_kernel_prolong       4 0.0 7.3300e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2e779ea50_wrap_pyop2_kernel_prolong       4 0.0 7.5728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a2e6e85f10_wrap_pyop2_kernel_prolong       4 0.0 5.5627e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490cc2ba850_wrap_pyop2_kernel_prolong       4 0.0 7.6817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1490cc2b9e90_wrap_pyop2_kernel_prolong       4 0.0 5.3245e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149769a01490_wrap_pyop2_kernel_prolong       4 0.0 7.5648e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149769a03e90_wrap_pyop2_kernel_prolong       4 0.0 6.0053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505d65b8790_wrap_pyop2_kernel_prolong       4 0.0 7.5816e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505d5bb16d0_wrap_pyop2_kernel_prolong       4 0.0 6.2917e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f17c6d3850_wrap_pyop2_kernel_prolong       4 0.0 7.5484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f17749dc90_wrap_pyop2_kernel_prolong       4 0.0 6.2407e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb4ec1bbd0_wrap_pyop2_kernel_prolong       4 0.0 7.5711e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb4ee92790_wrap_pyop2_kernel_prolong       4 0.0 5.5892e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528e5d7abd0_wrap_pyop2_kernel_prolong       4 0.0 7.6646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528e5d7af10_wrap_pyop2_kernel_prolong       4 0.0 5.6258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15527f002450_wrap_pyop2_kernel_prolong       4 0.0 7.6144e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15527f0012d0_wrap_pyop2_kernel_prolong       4 0.0 6.0361e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e9adebdd0_wrap_pyop2_kernel_prolong       4 0.0 7.6068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148e9add9b10_wrap_pyop2_kernel_prolong       4 0.0 6.5822e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed4b11b1d0_wrap_pyop2_kernel_prolong       4 0.0 7.6672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed4b1198d0_wrap_pyop2_kernel_prolong       4 0.0 5.5285e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528edd699d0_wrap_pyop2_kernel_prolong       4 0.0 7.5895e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1528eddb5350_wrap_pyop2_kernel_prolong       4 0.0 6.9055e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f785925350_wrap_pyop2_kernel_prolong       4 0.0 7.6601e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7858a2390_wrap_pyop2_kernel_prolong       4 0.0 6.3574e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4d7ab7150_wrap_pyop2_kernel_prolong       4 0.0 7.6885e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c4d7ab5290_wrap_pyop2_kernel_prolong       4 0.0 7.6139e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153839a170d0_wrap_pyop2_kernel_prolong       4 0.0 7.6801e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1538390f46d0_wrap_pyop2_kernel_prolong       4 0.0 5.7431e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14975d8edf50_wrap_pyop2_kernel_prolong       4 0.0 7.6484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14975d8d2890_wrap_pyop2_kernel_prolong       4 0.0 6.2516e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c6291d510_wrap_pyop2_kernel_prolong       4 0.0 7.6210e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c61fd5d90_wrap_pyop2_kernel_prolong       4 0.0 6.2731e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153406d6b5d0_wrap_pyop2_kernel_prolong       4 0.0 7.6728e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153406d69310_wrap_pyop2_kernel_prolong       4 0.0 6.2870e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bad5892110_wrap_pyop2_kernel_prolong       4 0.0 7.6002e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bad5891210_wrap_pyop2_kernel_prolong       4 0.0 5.4879e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f09cecbd0_wrap_pyop2_kernel_prolong       4 0.0 7.6142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f09c6d790_wrap_pyop2_kernel_prolong       4 0.0 7.3801e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f8cd32510_wrap_pyop2_kernel_prolong       4 0.0 7.5955e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151f8cd91bd0_wrap_pyop2_kernel_prolong       4 0.0 5.8612e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d70593ed0_wrap_pyop2_kernel_prolong       4 0.0 7.6776e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149d70348d50_wrap_pyop2_kernel_prolong       4 0.0 7.1897e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1a9d3e690_wrap_pyop2_kernel_prolong       4 0.0 7.6127e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d1a9d3ddd0_wrap_pyop2_kernel_prolong       4 0.0 6.6746e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152682d72490_wrap_pyop2_kernel_prolong       4 0.0 7.6068e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152682d71bd0_wrap_pyop2_kernel_prolong       4 0.0 5.9807e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bfdf8f350_wrap_pyop2_kernel_prolong       4 0.0 7.7182e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153bfdf8dbd0_wrap_pyop2_kernel_prolong       4 0.0 7.0862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ef8d83d50_wrap_pyop2_kernel_prolong       4 0.0 7.5973e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151ef8d91b90_wrap_pyop2_kernel_prolong       4 0.0 6.3660e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d63f75e50_wrap_pyop2_kernel_prolong       4 0.0 7.7038e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d63fed150_wrap_pyop2_kernel_prolong       4 0.0 7.6046e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15140c8f3990_wrap_pyop2_kernel_prolong       4 0.0 7.5379e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15140c7aded0_wrap_pyop2_kernel_prolong       4 0.0 5.2444e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151871f5d950_wrap_pyop2_kernel_prolong       4 0.0 7.5388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151871027b90_wrap_pyop2_kernel_prolong       4 0.0 5.2007e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14783ccfca90_wrap_pyop2_kernel_prolong       4 0.0 7.6586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14783cae5c90_wrap_pyop2_kernel_prolong       4 0.0 5.4712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489190fe4d0_wrap_pyop2_kernel_prolong       4 0.0 7.6258e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1489190fcb50_wrap_pyop2_kernel_prolong       4 0.0 5.1132e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488cf126650_wrap_pyop2_kernel_prolong       4 0.0 7.6474e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1488d03da790_wrap_pyop2_kernel_prolong       4 0.0 5.8615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512a2b4e710_wrap_pyop2_kernel_prolong       4 0.0 7.6461e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1512a2b4de90_wrap_pyop2_kernel_prolong       4 0.0 6.2107e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15217fb90ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5828e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15217fbcf690_wrap_pyop2_kernel_prolong       4 0.0 4.5100e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fc1de7490_wrap_pyop2_kernel_prolong       4 0.0 7.5909e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149fc1dc1510_wrap_pyop2_kernel_prolong       4 0.0 5.8017e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149236892f90_wrap_pyop2_kernel_prolong       4 0.0 7.5396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149235e697d0_wrap_pyop2_kernel_prolong       4 0.0 5.5654e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0895e5f90_wrap_pyop2_kernel_prolong       4 0.0 7.5452e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c086f8d750_wrap_pyop2_kernel_prolong       4 0.0 5.6194e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b46d31690_wrap_pyop2_kernel_prolong       4 0.0 7.5437e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148b46d32850_wrap_pyop2_kernel_prolong       4 0.0 6.1856e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479d8537610_wrap_pyop2_kernel_prolong       4 0.0 7.5448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1479d8537e90_wrap_pyop2_kernel_prolong       4 0.0 6.8171e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5df6864d0_wrap_pyop2_kernel_prolong       4 0.0 7.6422e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d5ded4d490_wrap_pyop2_kernel_prolong       4 0.0 6.9114e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487dbb51610_wrap_pyop2_kernel_prolong       4 0.0 7.5518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1487db1d67d0_wrap_pyop2_kernel_prolong       4 0.0 5.4000e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496e1a10d50_wrap_pyop2_kernel_prolong       4 0.0 7.6163e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496e1c25390_wrap_pyop2_kernel_prolong       4 0.0 6.1655e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c32a326390_wrap_pyop2_kernel_prolong       4 0.0 7.5589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c3298fd550_wrap_pyop2_kernel_prolong       4 0.0 6.6609e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb042ce810_wrap_pyop2_kernel_prolong       4 0.0 7.6581e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cb042cdcd0_wrap_pyop2_kernel_prolong       4 0.0 5.7424e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b676b1450_wrap_pyop2_kernel_prolong       4 0.0 7.6645e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147b676a9310_wrap_pyop2_kernel_prolong       4 0.0 6.1343e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e95054bd0_wrap_pyop2_kernel_prolong       4 0.0 7.6569e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153e9508ff10_wrap_pyop2_kernel_prolong       4 0.0 7.0511e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15111851ded0_wrap_pyop2_kernel_prolong       4 0.0 7.5444e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15111851ce50_wrap_pyop2_kernel_prolong       4 0.0 6.2475e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f84514c50_wrap_pyop2_kernel_prolong       4 0.0 7.5562e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f844bc250_wrap_pyop2_kernel_prolong       4 0.0 5.3258e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbeb94a0d0_wrap_pyop2_kernel_prolong       4 0.0 7.5690e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fbf0262490_wrap_pyop2_kernel_prolong       4 0.0 6.8359e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0c8de550_wrap_pyop2_kernel_prolong       4 0.0 7.5559e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fa0c8bc4d0_wrap_pyop2_kernel_prolong       4 0.0 5.7638e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1a43b0cd0_wrap_pyop2_kernel_prolong       4 0.0 7.5945e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1a43d9a10_wrap_pyop2_kernel_prolong       4 0.0 6.2545e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fe9ae6750_wrap_pyop2_kernel_prolong       4 0.0 7.6593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152fe9ae4250_wrap_pyop2_kernel_prolong       4 0.0 7.0732e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14712a9ee390_wrap_pyop2_kernel_prolong       4 0.0 7.6632e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14712a9e00d0_wrap_pyop2_kernel_prolong       4 0.0 7.4031e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155467a60990_wrap_pyop2_kernel_prolong       4 0.0 7.5894e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155467a29750_wrap_pyop2_kernel_prolong       4 0.0 6.0439e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14928cd737d0_wrap_pyop2_kernel_prolong       4 0.0 7.6652e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14928cd71550_wrap_pyop2_kernel_prolong       4 0.0 6.0056e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f68080d1d0_wrap_pyop2_kernel_prolong       4 0.0 7.6361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f68182c750_wrap_pyop2_kernel_prolong       4 0.0 6.1973e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151467608d50_wrap_pyop2_kernel_prolong       4 0.0 7.5628e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514675cbe50_wrap_pyop2_kernel_prolong       4 0.0 6.1982e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0c8cf7fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5636e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0c8cf5cd0_wrap_pyop2_kernel_prolong       4 0.0 5.3577e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fad5fe410_wrap_pyop2_kernel_prolong       4 0.0 7.5777e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150fad62be90_wrap_pyop2_kernel_prolong       4 0.0 7.3375e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b1f6b8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6187e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b9b1f69750_wrap_pyop2_kernel_prolong       4 0.0 5.2705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf95dfee90_wrap_pyop2_kernel_prolong       4 0.0 7.5564e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cf95ff16d0_wrap_pyop2_kernel_prolong       4 0.0 5.6138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9fc3c9990_wrap_pyop2_kernel_prolong       4 0.0 7.6179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9fc3c9190_wrap_pyop2_kernel_prolong       4 0.0 5.8247e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0bc65b850_wrap_pyop2_kernel_prolong       4 0.0 7.5661e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a0bc658f90_wrap_pyop2_kernel_prolong       4 0.0 6.6948e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15118b9d4d50_wrap_pyop2_kernel_prolong       4 0.0 7.5412e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15118b9d7dd0_wrap_pyop2_kernel_prolong       4 0.0 5.7705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc175f4e90_wrap_pyop2_kernel_prolong       4 0.0 7.5459e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fc17275590_wrap_pyop2_kernel_prolong       4 0.0 6.6521e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150372eb6b50_wrap_pyop2_kernel_prolong       4 0.0 7.5879e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150372eb9a50_wrap_pyop2_kernel_prolong       4 0.0 7.0773e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ef8c25b10_wrap_pyop2_kernel_prolong       4 0.0 7.5698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ef830a090_wrap_pyop2_kernel_prolong       4 0.0 6.2053e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bae5f8a790_wrap_pyop2_kernel_prolong       4 0.0 7.6305e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bae5f8a090_wrap_pyop2_kernel_prolong       4 0.0 5.4265e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b4889eb90_wrap_pyop2_kernel_prolong       4 0.0 7.6051e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146b48ad2190_wrap_pyop2_kernel_prolong       4 0.0 6.8913e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b360b1da50_wrap_pyop2_kernel_prolong       4 0.0 7.6212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b360b1cb10_wrap_pyop2_kernel_prolong       4 0.0 5.5451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523527329d0_wrap_pyop2_kernel_prolong       4 0.0 7.6321e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152352725ad0_wrap_pyop2_kernel_prolong       4 0.0 6.8796e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6a1cbd410_wrap_pyop2_kernel_prolong       4 0.0 7.6330e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b6a1cb1910_wrap_pyop2_kernel_prolong       4 0.0 7.0862e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4dd7f9a90_wrap_pyop2_kernel_prolong       4 0.0 7.6361e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f4dd7d14d0_wrap_pyop2_kernel_prolong       4 0.0 5.9884e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a106fb5050_wrap_pyop2_kernel_prolong       4 0.0 7.6023e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a106fac590_wrap_pyop2_kernel_prolong       4 0.0 7.0839e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed50722110_wrap_pyop2_kernel_prolong       4 0.0 7.5453e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed5081ee50_wrap_pyop2_kernel_prolong       4 0.0 6.7002e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467c693e810_wrap_pyop2_kernel_prolong       4 0.0 7.5936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467c693d910_wrap_pyop2_kernel_prolong       4 0.0 6.6963e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473c8ab5990_wrap_pyop2_kernel_prolong       4 0.0 7.5891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1473c93f5250_wrap_pyop2_kernel_prolong       4 0.0 6.4112e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d82c60290_wrap_pyop2_kernel_prolong       4 0.0 7.6425e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148d82c69ed0_wrap_pyop2_kernel_prolong       4 0.0 6.4027e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c3d64e3d0_wrap_pyop2_kernel_prolong       4 0.0 7.6492e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146c3d64dc90_wrap_pyop2_kernel_prolong       4 0.0 7.3339e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14574e4a6510_wrap_pyop2_kernel_prolong       4 0.0 7.5617e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14574e508850_wrap_pyop2_kernel_prolong       4 0.0 5.3182e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d52916fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5429e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146d52a91590_wrap_pyop2_kernel_prolong       4 0.0 5.2506e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153837729b50_wrap_pyop2_kernel_prolong       4 0.0 7.5503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15383774c2d0_wrap_pyop2_kernel_prolong       4 0.0 5.3869e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152954ebaa50_wrap_pyop2_kernel_prolong       4 0.0 7.5586e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152954c11350_wrap_pyop2_kernel_prolong       4 0.0 6.3183e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d940ac0b10_wrap_pyop2_kernel_prolong       4 0.0 7.5565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d940ac1450_wrap_pyop2_kernel_prolong       4 0.0 5.9839e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2044cb3d0_wrap_pyop2_kernel_prolong       4 0.0 7.5672e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b2044c9050_wrap_pyop2_kernel_prolong       4 0.0 7.1597e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a61c6de1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5557e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a61c6e1f10_wrap_pyop2_kernel_prolong       4 0.0 5.3980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540dcb01b50_wrap_pyop2_kernel_prolong       4 0.0 7.5596e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1540dcb01c10_wrap_pyop2_kernel_prolong       4 0.0 5.8158e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2ed1f9610_wrap_pyop2_kernel_prolong       4 0.0 7.5587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c2ed202050_wrap_pyop2_kernel_prolong       4 0.0 5.6004e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c8b016710_wrap_pyop2_kernel_prolong       4 0.0 7.5635e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c8b2a8a90_wrap_pyop2_kernel_prolong       4 0.0 5.7260e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497b4881190_wrap_pyop2_kernel_prolong       4 0.0 7.5616e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1497b4892090_wrap_pyop2_kernel_prolong       4 0.0 6.1886e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503c6830d10_wrap_pyop2_kernel_prolong       4 0.0 7.5656e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1503c571bb10_wrap_pyop2_kernel_prolong       4 0.0 7.3090e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148339e86090_wrap_pyop2_kernel_prolong       4 0.0 7.5646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148339cc2450_wrap_pyop2_kernel_prolong       4 0.0 6.4405e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecadebbc90_wrap_pyop2_kernel_prolong       4 0.0 7.5468e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ecadebb590_wrap_pyop2_kernel_prolong       4 0.0 4.8453e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147176a29650_wrap_pyop2_kernel_prolong       4 0.0 7.5620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1471757f1ad0_wrap_pyop2_kernel_prolong       4 0.0 5.6903e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7a8fabf90_wrap_pyop2_kernel_prolong       4 0.0 7.5614e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7a8faa350_wrap_pyop2_kernel_prolong       4 0.0 6.8778e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b07aa57210_wrap_pyop2_kernel_prolong       4 0.0 7.5503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b07aae1ad0_wrap_pyop2_kernel_prolong       4 0.0 5.4429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14964ce68450_wrap_pyop2_kernel_prolong       4 0.0 7.5589e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14964c580f10_wrap_pyop2_kernel_prolong       4 0.0 5.6616e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a0a47e850_wrap_pyop2_kernel_prolong       4 0.0 7.5458e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147a09a5dfd0_wrap_pyop2_kernel_prolong       4 0.0 6.4102e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee872b5110_wrap_pyop2_kernel_prolong       4 0.0 7.5423e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee870e1c50_wrap_pyop2_kernel_prolong       4 0.0 5.1815e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b055823e50_wrap_pyop2_kernel_prolong       4 0.0 7.5531e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b0557d1bd0_wrap_pyop2_kernel_prolong       4 0.0 4.7086e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de93539850_wrap_pyop2_kernel_prolong       4 0.0 7.5525e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14de92d21d10_wrap_pyop2_kernel_prolong       4 0.0 5.7655e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ea9e8bf10_wrap_pyop2_kernel_prolong       4 0.0 7.5464e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152ea9e7a390_wrap_pyop2_kernel_prolong       4 0.0 5.4942e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c21f42fd0_wrap_pyop2_kernel_prolong       4 0.0 7.5547e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c21f41390_wrap_pyop2_kernel_prolong       4 0.0 6.9020e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b338e9e810_wrap_pyop2_kernel_prolong       4 0.0 7.5449e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b338e9e290_wrap_pyop2_kernel_prolong       4 0.0 5.2866e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c61fec74d0_wrap_pyop2_kernel_prolong       4 0.0 7.5534e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c61fec5c50_wrap_pyop2_kernel_prolong       4 0.0 6.8246e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd3bdc2450_wrap_pyop2_kernel_prolong       4 0.0 7.5516e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bd3bdc0f90_wrap_pyop2_kernel_prolong       4 0.0 5.2820e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d179721110_wrap_pyop2_kernel_prolong       4 0.0 7.5565e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d17938a250_wrap_pyop2_kernel_prolong       4 0.0 6.0627e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df2b934ed0_wrap_pyop2_kernel_prolong       4 0.0 7.5640e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14df2b9398d0_wrap_pyop2_kernel_prolong       4 0.0 6.7881e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15410eb75b50_wrap_pyop2_kernel_prolong       4 0.0 7.5521e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15410e217e10_wrap_pyop2_kernel_prolong       4 0.0 5.4561e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b3459bebd0_wrap_pyop2_kernel_prolong       4 0.0 7.5519e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b344ee2b10_wrap_pyop2_kernel_prolong       4 0.0 6.2980e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c5c06a550_wrap_pyop2_kernel_prolong       4 0.0 7.5595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c5c0689d0_wrap_pyop2_kernel_prolong       4 0.0 6.4282e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1505760d1bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5385e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150575e715d0_wrap_pyop2_kernel_prolong       4 0.0 5.2330e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cf6b569d0_wrap_pyop2_kernel_prolong       4 0.0 7.5484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152cf6a06d10_wrap_pyop2_kernel_prolong       4 0.0 6.7680e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14909a0d59d0_wrap_pyop2_kernel_prolong       4 0.0 7.5419e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14909a0d5b90_wrap_pyop2_kernel_prolong       4 0.0 5.5588e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac1433d390_wrap_pyop2_kernel_prolong       4 0.0 7.5512e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ac0f8bb6d0_wrap_pyop2_kernel_prolong       4 0.0 5.8274e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e22899f10_wrap_pyop2_kernel_prolong       4 0.0 7.5572e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150e22745ad0_wrap_pyop2_kernel_prolong       4 0.0 6.8919e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee3f98c690_wrap_pyop2_kernel_prolong       4 0.0 7.5578e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ee3f985f50_wrap_pyop2_kernel_prolong       4 0.0 6.2167e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15400c3a90d0_wrap_pyop2_kernel_prolong       4 0.0 7.5503e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154007bc9ed0_wrap_pyop2_kernel_prolong       4 0.0 6.5141e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523e9104bd0_wrap_pyop2_kernel_prolong       4 0.0 7.5462e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523e3ed4310_wrap_pyop2_kernel_prolong       4 0.0 6.0681e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f25903cf50_wrap_pyop2_kernel_prolong       4 0.0 7.5538e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f253e8a050_wrap_pyop2_kernel_prolong       4 0.0 6.2868e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155192805590_wrap_pyop2_kernel_prolong       4 0.0 7.5497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551927faed0_wrap_pyop2_kernel_prolong       4 0.0 5.8791e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4dc355a90_wrap_pyop2_kernel_prolong       4 0.0 7.5539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4dc358410_wrap_pyop2_kernel_prolong       4 0.0 5.9294e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c3c8fb310_wrap_pyop2_kernel_prolong       4 0.0 7.5490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150c3c8fb350_wrap_pyop2_kernel_prolong       4 0.0 6.1847e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149280184050_wrap_pyop2_kernel_prolong       4 0.0 7.5455e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149280187190_wrap_pyop2_kernel_prolong       4 0.0 7.1634e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149408f377d0_wrap_pyop2_kernel_prolong       4 0.0 7.5620e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149408f3abd0_wrap_pyop2_kernel_prolong       4 0.0 6.0106e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154658f4e350_wrap_pyop2_kernel_prolong       4 0.0 7.5518e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154658cff890_wrap_pyop2_kernel_prolong       4 0.0 6.1619e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adac37bc50_wrap_pyop2_kernel_prolong       4 0.0 7.5502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14adac39de90_wrap_pyop2_kernel_prolong       4 0.0 5.7077e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523f01deb90_wrap_pyop2_kernel_prolong       4 0.0 7.5427e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1523f01dcbd0_wrap_pyop2_kernel_prolong       4 0.0 6.0385e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff335c4d10_wrap_pyop2_kernel_prolong       4 0.0 7.5625e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ff335c6a50_wrap_pyop2_kernel_prolong       4 0.0 7.1712e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467575e6750_wrap_pyop2_kernel_prolong       4 0.0 7.5634e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1467575cc8d0_wrap_pyop2_kernel_prolong       4 0.0 6.6847e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e6a9aefd0_wrap_pyop2_kernel_prolong       4 0.0 7.5563e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e6ac2bbd0_wrap_pyop2_kernel_prolong       4 0.0 6.8613e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d354871d0_wrap_pyop2_kernel_prolong       4 0.0 7.5433e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145d348be890_wrap_pyop2_kernel_prolong       4 0.0 5.4135e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8fe8a0c10_wrap_pyop2_kernel_prolong       4 0.0 7.5451e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b8fe90f810_wrap_pyop2_kernel_prolong       4 0.0 6.0404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14caec97f1d0_wrap_pyop2_kernel_prolong       4 0.0 7.5439e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14caec97d750_wrap_pyop2_kernel_prolong       4 0.0 6.4666e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b05e7c6650_wrap_pyop2_kernel_prolong       4 0.0 7.5388e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b05e7f9c10_wrap_pyop2_kernel_prolong       4 0.0 5.7595e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530fee009d0_wrap_pyop2_kernel_prolong       4 0.0 7.5413e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1530fedd5e10_wrap_pyop2_kernel_prolong       4 0.0 5.8443e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152150729610_wrap_pyop2_kernel_prolong       4 0.0 7.5408e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15215056a390_wrap_pyop2_kernel_prolong       4 0.0 5.1285e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d092af7890_wrap_pyop2_kernel_prolong       4 0.0 7.5366e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d092af5b90_wrap_pyop2_kernel_prolong       4 0.0 4.7653e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb4a614a10_wrap_pyop2_kernel_prolong       4 0.0 7.5442e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb4a442690_wrap_pyop2_kernel_prolong       4 0.0 5.6677e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15359ae5fad0_wrap_pyop2_kernel_prolong       4 0.0 7.5404e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15359ac46610_wrap_pyop2_kernel_prolong       4 0.0 6.4309e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e87bacb10_wrap_pyop2_kernel_prolong       4 0.0 7.5410e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146e87a8de50_wrap_pyop2_kernel_prolong       4 0.0 6.2368e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d73f796490_wrap_pyop2_kernel_prolong       4 0.0 7.5467e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d73f795cd0_wrap_pyop2_kernel_prolong       4 0.0 6.8490e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1129bfd0_wrap_pyop2_kernel_prolong       4 0.0 7.5369e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ce1116fd50_wrap_pyop2_kernel_prolong       4 0.0 5.6002e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed06db0e50_wrap_pyop2_kernel_prolong       4 0.0 7.5486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed062b9f90_wrap_pyop2_kernel_prolong       4 0.0 6.9278e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145904307b10_wrap_pyop2_kernel_prolong       4 0.0 7.5619e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459040b2fd0_wrap_pyop2_kernel_prolong       4 0.0 5.8084e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455b6040450_wrap_pyop2_kernel_prolong       4 0.0 7.5524e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1455b5e26b90_wrap_pyop2_kernel_prolong       4 0.0 6.0488e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153392c0c5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5747e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153392441550_wrap_pyop2_kernel_prolong       4 0.0 6.6949e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e263793510_wrap_pyop2_kernel_prolong       4 0.0 7.5484e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2637cd950_wrap_pyop2_kernel_prolong       4 0.0 6.4586e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2da632690_wrap_pyop2_kernel_prolong       4 0.0 7.5382e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2da632050_wrap_pyop2_kernel_prolong       4 0.0 6.0238e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151117d78410_wrap_pyop2_kernel_prolong       4 0.0 7.5456e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151117d47c10_wrap_pyop2_kernel_prolong       4 0.0 7.3929e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1a9544310_wrap_pyop2_kernel_prolong       4 0.0 7.5367e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f1a9f5fb10_wrap_pyop2_kernel_prolong       4 0.0 5.0067e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458580a22d0_wrap_pyop2_kernel_prolong       4 0.0 7.5481e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1458580a1490_wrap_pyop2_kernel_prolong       4 0.0 5.8819e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cea4c16b50_wrap_pyop2_kernel_prolong       4 0.0 7.5413e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cea4c1d2d0_wrap_pyop2_kernel_prolong       4 0.0 6.4795e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e118818ad0_wrap_pyop2_kernel_prolong       4 0.0 7.5396e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e11880f150_wrap_pyop2_kernel_prolong       4 0.0 5.7963e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e061ca610_wrap_pyop2_kernel_prolong       4 0.0 7.5525e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149e061ca150_wrap_pyop2_kernel_prolong       4 0.0 6.8426e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14565676b7d0_wrap_pyop2_kernel_prolong       4 0.0 7.5486e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145656769a50_wrap_pyop2_kernel_prolong       4 0.0 6.1890e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af2379d8d0_wrap_pyop2_kernel_prolong       4 0.0 7.5491e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af2379dd10_wrap_pyop2_kernel_prolong       4 0.0 7.6283e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a1529a910_wrap_pyop2_kernel_prolong       4 0.0 7.5426e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a1505aa50_wrap_pyop2_kernel_prolong       4 0.0 6.0349e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15371c553450_wrap_pyop2_kernel_prolong       4 0.0 7.5348e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15371c771310_wrap_pyop2_kernel_prolong       4 0.0 5.0592e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546a8749950_wrap_pyop2_kernel_prolong       4 0.0 7.5360e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1546a874b990_wrap_pyop2_kernel_prolong       4 0.0 5.7958e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb94269610_wrap_pyop2_kernel_prolong       4 0.0 7.5513e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14eb8fbca850_wrap_pyop2_kernel_prolong       4 0.0 5.2178e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14612f5f3950_wrap_pyop2_kernel_prolong       4 0.0 7.5595e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14612f5f3690_wrap_pyop2_kernel_prolong       4 0.0 6.2749e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb668d3090_wrap_pyop2_kernel_prolong       4 0.0 7.5674e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fb671f82d0_wrap_pyop2_kernel_prolong       4 0.0 7.0485e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155027f877d0_wrap_pyop2_kernel_prolong       4 0.0 7.5346e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x155027f55750_wrap_pyop2_kernel_prolong       4 0.0 5.4150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14888f4b5050_wrap_pyop2_kernel_prolong       4 0.0 7.5598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14888f4c6090_wrap_pyop2_kernel_prolong       4 0.0 6.4676e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514c2359e50_wrap_pyop2_kernel_prolong       4 0.0 7.5475e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1514c235b350_wrap_pyop2_kernel_prolong       4 0.0 6.6460e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14976d7ec5d0_wrap_pyop2_kernel_prolong       4 0.0 7.5502e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14976d78d710_wrap_pyop2_kernel_prolong       4 0.0 6.1789e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d742365d0_wrap_pyop2_kernel_prolong       4 0.0 7.5568e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152d741efc50_wrap_pyop2_kernel_prolong       4 0.0 7.4292e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15343b2dfa50_wrap_pyop2_kernel_prolong       4 0.0 7.5480e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15343b09ded0_wrap_pyop2_kernel_prolong       4 0.0 5.9324e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15455dda2050_wrap_pyop2_kernel_prolong       4 0.0 7.5522e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15455dc76090_wrap_pyop2_kernel_prolong       4 0.0 7.6565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e3195a2650_wrap_pyop2_kernel_prolong       4 0.0 7.5490e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e318c07e50_wrap_pyop2_kernel_prolong       4 0.0 5.4155e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad3f045dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5561e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ad3f03df50_wrap_pyop2_kernel_prolong       4 0.0 5.7010e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152edd94e490_wrap_pyop2_kernel_prolong       4 0.0 7.5667e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152edd925690_wrap_pyop2_kernel_prolong       4 0.0 6.8352e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463f1c8b2d0_wrap_pyop2_kernel_prolong       4 0.0 7.5675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1463f1c88090_wrap_pyop2_kernel_prolong       4 0.0 6.3615e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152663d25610_wrap_pyop2_kernel_prolong       4 0.0 7.5615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152663d121d0_wrap_pyop2_kernel_prolong       4 0.0 6.4660e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7b0c40190_wrap_pyop2_kernel_prolong       4 0.0 7.5615e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e7b0ca8390_wrap_pyop2_kernel_prolong       4 0.0 6.4956e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496c1442dd0_wrap_pyop2_kernel_prolong       4 0.0 7.5604e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1496c14758d0_wrap_pyop2_kernel_prolong       4 0.0 6.0033e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b94ba6ed50_wrap_pyop2_kernel_prolong       4 0.0 7.5621e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b94bac8850_wrap_pyop2_kernel_prolong       4 0.0 6.0552e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c6c099810_wrap_pyop2_kernel_prolong       4 0.0 7.5609e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145c678cea10_wrap_pyop2_kernel_prolong       4 0.0 7.1633e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2489f4710_wrap_pyop2_kernel_prolong       4 0.0 7.5417e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f248869010_wrap_pyop2_kernel_prolong       4 0.0 6.2255e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4dec7ded0_wrap_pyop2_kernel_prolong       4 0.0 7.5598e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e4dec7f550_wrap_pyop2_kernel_prolong       4 0.0 6.9904e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149462e79d90_wrap_pyop2_kernel_prolong       4 0.0 7.5526e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149462ae2110_wrap_pyop2_kernel_prolong       4 0.0 6.6907e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fefa1d5890_wrap_pyop2_kernel_prolong       4 0.0 7.5608e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fefa0a14d0_wrap_pyop2_kernel_prolong       4 0.0 7.2012e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container    87             87
              Viewer     3              3
           Index Set  1815           1815
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
Average time for MPI_Barrier(): 7.9384e-06
Average time for zero size MPI_Send(): 2.54661e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murr_monthly3/bjacobi/h2.profile # (source: code)
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

