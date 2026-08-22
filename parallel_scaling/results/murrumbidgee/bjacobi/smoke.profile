****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0336.gadi.nci.org.au with 104 processes, by sg8812 on Fri Aug 21 23:29:09 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           3.432e+02     1.000   3.432e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                5.205e+11     1.201   4.896e+11  5.092e+13
Flops/sec:            1.517e+09     1.201   1.426e+09  1.483e+11
MPI Msg Count:        3.266e+04     3.495   2.342e+04  2.436e+06
MPI Msg Len (bytes):  2.922e+09     3.000   8.798e+04  2.143e+11
MPI Reductions:       8.723e+03     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 3.4324e+02 100.0%  5.0919e+13 100.0%  2.436e+06 100.0%  8.798e+04      100.0%  8.704e+03  99.8%

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

BuildTwoSided       1001 1.0 2.1708e+01 8.6 0.00e+00 0.0 9.4e+04 4.0e+00 1.0e+03  4  0  4  0 11   4  0  4  0 12    -0
BuildTwoSidedF       906 1.0 2.1270e+01 11.3 0.00e+00 0.0 1.2e+05 7.3e+05 9.1e+02  3  0  5 40 10   3  0  5 40 10    -0
SFSetGraph           102 1.0 3.6344e-03 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               95 1.0 1.8491e+00 96.8 0.00e+00 0.0 6.8e+04 6.0e+02 9.5e+01  0  0  3  0  1   0  0  3  0  1    -0
SFBcastBegin         888 1.0 2.0645e-01 3.6 0.00e+00 0.0 4.4e+05 4.4e+04 0.0e+00  0  0 18  9  0   0  0 18  9  0    -0
SFBcastEnd           888 1.0 9.2737e+00 59.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        342 1.0 3.2726e-02 7.9 0.00e+00 0.0 1.8e+05 5.4e+04 0.0e+00  0  0  7  4  0   0  0  7  4  0    -0
SFReduceEnd          342 1.0 1.9274e+00 63.2 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   618
SFFetchOpBegin         6 1.0 2.7306e-05 3.7 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           6 1.0 3.9919e-04 7.9 0.00e+00 0.0 2.5e+03 7.3e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          4 1.0 7.0335e-04 1.1 0.00e+00 0.0 1.2e+03 1.2e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         49 1.0 4.8801e-03 1.3 0.00e+00 0.0 5.9e+04 8.2e+01 5.8e+01  0  0  2  0  1   0  0  2  0  1    -0
SFSectionSF           51 1.0 3.1497e-03 1.9 0.00e+00 0.0 2.9e+04 3.8e+01 5.1e+01  0  0  1  0  1   0  0  1  0  1    -0
SFRemoteOff            2 1.0 8.6476e-05 2.3 0.00e+00 0.0 1.1e+03 1.6e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4347 1.0 8.2936e-01 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4353 1.0 7.2459e-02 11.5 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 16450
VecDot               226 1.0 4.3642e-01 4.9 9.76e+07 1.2 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  3   0  0  0  0  3 22431
VecMDot             2885 1.0 1.4596e+01 1.9 9.25e+09 1.2 0.0e+00 0.0e+00 2.9e+03  3  2  0  0 33   3  2  0  0 33 63550
VecNorm             3638 1.0 6.9419e+00 5.9 1.57e+09 1.2 0.0e+00 0.0e+00 3.6e+03  1  0  0  0 42   1  0  0  0 42 22700
VecScale            3111 1.0 1.7646e-01 1.2 6.72e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 381829
VecCopy             2035 1.0 9.9774e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               452 1.0 1.5978e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              226 1.0 1.4346e-01 2.1 9.76e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 68237
VecWAXPY             226 1.0 2.1290e-01 1.2 4.88e+07 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 22990
VecMAXPY            3111 1.0 1.1714e+01 1.2 1.05e+10 1.2 0.0e+00 0.0e+00 0.0e+00  3  2  0  0  0   3  2  0  0  0 89851
VecScatterBegin     3111 1.0 7.4161e-01 2.9 0.00e+00 0.0 1.6e+06 6.0e+04 0.0e+00  0  0 67 46  0   0  0 67 46  0    -0
VecScatterEnd       3111 1.0 1.3111e+01 47.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       452 1.0 9.1734e-02 1.7 1.95e+08 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 213426
VecReduceComm        226 1.0 8.6426e-01 28.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.3e+02  0  0  0  0  3   0  0  0  0  3    -0
VecNormalize        3111 1.0 5.2206e+00 4.9 2.02e+09 1.2 0.0e+00 0.0e+00 3.1e+03  1  0  0  0 36   1  0  0  0 36 38718
MatMult             3111 1.0 7.0140e+01 1.2 4.76e+10 1.2 1.6e+06 6.0e+04 0.0e+00 18  9 67 46  0  18  9 67 46  0 67846
MatSolve            3111 1.0 6.5704e+01 1.2 4.64e+10 1.2 0.0e+00 0.0e+00 0.0e+00 18  9  0  0  0  18  9  0  0  0 70172
MatLUFactorNum       226 1.0 1.6884e+01 1.2 3.08e+10 1.2 0.0e+00 0.0e+00 0.0e+00  5  6  0  0  0   5  6  0  0  0 178299
MatILUFactorSym        1 1.0 5.8098e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin     950 1.0 2.2304e+01 4.0 0.00e+00 0.0 1.2e+05 7.3e+05 9.1e+02  4  0  5 40 10   4  0  5 40 10    -0
MatAssemblyEnd       950 1.0 5.2763e+00 16.3 1.27e+08 0.0 1.0e+03 1.5e+04 6.0e+00  1  0  0  0  0   1  0  0  0  0  1019
MatGetRowIJ            1 1.0 4.9150e-06 40.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 1.8222e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       226 1.0 4.1069e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatSetPreallCOO       32 1.0 6.3678e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatSetValuesCOO       32 1.0 2.6696e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUp              226 1.0 4.3039e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCSetUpOnBlocks      226 1.0 1.6945e+01 1.2 3.08e+10 1.2 0.0e+00 0.0e+00 0.0e+00  5  6  0  0  0   5  6  0  0  0 177653
PCApply             3111 1.0 6.5751e+01 1.2 4.64e+10 1.2 0.0e+00 0.0e+00 0.0e+00 18  9  0  0  0  18  9  0  0  0 70123
PCApplyOnBlocks     3111 1.0 6.5739e+01 1.2 4.64e+10 1.2 0.0e+00 0.0e+00 0.0e+00 18  9  0  0  0  18  9  0  0  0 70135
KSPSetUp             226 1.0 4.4338e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             226 1.0 1.4586e+02 1.0 1.12e+11 1.2 1.5e+06 6.0e+04 6.0e+03 42 22 62 43 69  42 22 62 43 69 76891
KSPGMRESOrthog      2885 1.0 2.3928e+01 1.4 1.85e+10 1.2 0.0e+00 0.0e+00 2.9e+03  6  4  0  0 33   6  4  0  0 33 77533
DMRefine               2 1.0 2.6798e-02 1.0 2.09e+03 1.0 7.4e+03 3.5e+01 6.3e+01  0  0  0  0  1   0  0  0  0  1     8
DMPlexCreateGmsh       1 1.0 1.1536e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 3.7693e+00 297.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
Mesh Partition         4 1.0 5.5379e-02 1.0 0.00e+00 0.0 1.8e+04 6.4e+01 5.1e+01  0  0  1  0  1   0  0  1  0  1    -0
Mesh Migration         4 1.0 1.2561e-02 1.1 0.00e+00 0.0 6.7e+04 7.4e+01 2.4e+02  0  0  3  0  3   0  0  3  0  3    -0
DMPlexPartSelf         1 1.0 1.2319e-03 547.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       4 1.0 6.0871e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        4 1.0 3.8593e-03 1.2 0.00e+00 0.0 3.6e+03 5.1e+01 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       4 1.0 6.4570e-04 2.4 0.00e+00 0.0 1.8e+03 1.9e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          4 1.0 1.3555e-03 2.6 0.00e+00 0.0 1.9e+03 2.2e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp          29 1.0 5.2483e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 6.0097e-02 1.0 0.00e+00 0.0 4.3e+03 1.8e+02 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        4 1.0 1.5664e-03 1.0 0.00e+00 0.0 1.1e+04 1.1e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       4 1.0 5.0716e-03 1.0 0.00e+00 0.0 3.5e+04 7.1e+01 1.5e+02  0  0  1  0  2   0  0  1  0  2    -0
DMPlexDistOvrlp        3 1.0 9.2524e-03 1.0 0.00e+00 0.0 8.3e+04 7.0e+01 2.4e+02  0  0  3  0  3   0  0  3  0  3    -0
DMPlexDistField        7 1.0 2.2186e-03 1.1 0.00e+00 0.0 1.5e+04 5.8e+01 2.0e+01  0  0  1  0  0   0  0  1  0  0    -0
DMPlexStratify        41 1.0 3.2711e-03 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize      41 1.0 2.1064e-04 3.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSetUp          2 1.0 1.1484e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrApply          2 1.0 2.9238e-03 1.6 0.00e+00 0.0 4.1e+03 2.9e+01 1.9e+01  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSizes          2 1.0 1.1391e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCones          2 1.0 3.2563e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrSF             2 1.0 3.4386e-04 2.1 0.00e+00 0.0 3.3e+03 2.7e+01 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrLabels         2 1.0 8.9996e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexTrCoords         2 1.0 7.1883e-04 1.8 0.00e+00 0.0 8.2e+02 3.7e+01 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 2.8485e+02 1.0 5.20e+11 1.2 2.2e+06 9.6e+04 7.9e+03 83 100 91 99 90  83 100 91 99 91 178744
SNESSetUp              1 1.0 3.0180e-05 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     301 1.0 2.2211e+01 1.1 1.46e+11 1.2 3.6e+05 6.0e+04 0.0e+00  6 28 15 10  0   6 28 15 10  0 634406
SNESJacobianEval     226 1.0 9.6265e+01 1.0 2.29e+11 1.2 2.4e+05 3.9e+05 9.0e+02 28 44 10 43 10  28 44 10 43 10 230562
SNESLineSearch       226 1.0 1.5162e+01 1.1 1.13e+11 1.2 3.6e+05 6.0e+04 9.0e+02  4 22 15 10 10   4 22 15 10 10 724139
DualSpaceSetUp         8 1.0 5.4427e-03 1.1 1.08e+02 1.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     2
FESetUp                8 1.0 1.1762e-02 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake              1 1.0 3.4112e+02 1.0 5.21e+11 1.2 2.4e+06 8.8e+04 8.7e+03 99 100 100 100 100  99 100 100 100 100 149269
firedrake.__init__       1 1.0 9.7683e+00 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
CreateMesh             3 1.0 3.8750e+00 32.9 0.00e+00 0.0 1.6e+05 7.5e+01 4.4e+02  1  0  7  0  5   1  0  7  0  5    -0
firedrake.mesh._from_gmsh       1 1.0 3.7704e+00 296.5 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       3 1.0 1.1815e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       3 1.0 6.8530e-06 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        3 1.0 4.6694e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 1.2e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          3 1.0 9.1766e-04 2.6 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace      13 1.0 2.3507e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      17 1.0 1.4432e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__      17 1.0 2.2403e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data      16 1.0 2.0222e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__      16 1.0 2.0123e-02 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      32 1.0 8.1135e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       6 1.0 3.7683e-03 1.1 0.00e+00 0.0 3.4e+03 9.0e+01 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__      12 1.0 7.5662e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space      10 1.0 1.2229e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      65 1.0 2.2412e-02 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          3 1.0 9.6838e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       3 1.0 2.4783e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       4 1.0 6.0179e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       4 1.0 1.0718e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       3 1.0 9.6197e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     642 1.0 9.6659e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2428 1.0 1.0749e+02 1.2 3.75e+11 1.2 3.3e+05 5.9e+04 3.2e+01 29 71 14  9  0  29 71 14  9  0 337547
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       6 1.0 9.2096e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4856 1.0 2.4011e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  7  0  0  0  0   7  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0468e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.2426e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 8.6271e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3341e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3341e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  4  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.8198e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.6151e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   3  0  0  0  0    -0
ParLoopRednBegin    2428 1.0 7.1857e-03 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2428 1.0 5.7446e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       3 1.0 9.0336e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mg.interface.prolong       4 1.0 4.8768e+00 1.0 7.29e+06 1.2 8.9e+03 6.7e+03 1.3e+01  1  0  0  0  0   1  0  0  0  0   150
firedrake.interpolation.interpolate      12 1.0 4.5880e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      12 1.0 4.8953e+00 1.0 4.38e+07 1.2 1.2e+04 2.3e+04 1.5e+01  1  0  1  0  0   1  0  1  0  0   897
firedrake.formmanipulation.split_form      14 1.0 5.0314e-03 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      14 1.0 2.0063e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      12 1.0 1.4219e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       5 1.0 9.7085e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     623 1.0 2.1524e+00 13.4 0.00e+00 0.0 3.3e+05 5.8e+04 4.0e+00  0  0 14  9  0   0  0 14  9  0    -0
Parloop_Cells_wrap_expression_kernel      24 1.0 4.6396e+00 1.0 4.38e+07 1.2 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0   946
firedrake.halo.Halo.global_to_local_end     623 1.0 7.3543e+00 102.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
firedrake.pointquery_utils.to_reference_coords_newton_step       1 1.0 3.4644e-01 5.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15162c44bb10_wrap_pyop2_kernel_prolong       4 0.0 7.7804e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15162c3116d0_wrap_pyop2_kernel_prolong       4 0.0 2.9658e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 3.9281e+00 1.0 3.65e+07 1.2 8.1e+03 3.0e+04 1.1e+01  1  0  0  0  0   1  0  0  0  0   932
firedrake.function.Function.assign     314 1.0 8.9207e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 7.9409e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 1.5055e-04 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.6636e-03 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 3.7742e-05 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.4246e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9784e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 3.1727e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 4.9429e+00 1.0 0.00e+00 0.0 3.2e+03 2.4e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 6.2557e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.2874e-04 2.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 5.2692e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 5.2692e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         1 1.0 1.6250e+00 1.1 0.00e+00 0.0 1.6e+03 2.3e+05 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroInitial         1 1.0 2.8941e-01 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 2.8500e+02 1.0 5.20e+11 1.2 2.2e+06 9.6e+04 8.0e+03 83 100 91 99 92  83 100 91 99 92 178650
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 3.4290e-01 1260.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 9.9290e-06 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 3.4284e-01 1538.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 3.4281e-01 1783.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     602 1.0 5.2513e+00 1.3 3.70e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 705727
Parloop_Cells_wrap_form0_exterior_facet_top_integral     602 1.0 1.0123e+00 1.0 9.61e+06 1.2 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   952
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     602 1.0 1.2632e+00 1.0 3.55e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4971
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     602 1.0 3.7915e+00 1.1 3.54e+10 1.2 0.0e+00 0.0e+00 0.0e+00  1  7  0  0  0   1  7  0  0  0 935646
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     602 1.0 7.3907e+00 1.2 7.35e+10 1.3 0.0e+00 0.0e+00 0.0e+00  2 13  0  0  0   2 13  0  0  0 923992
firedrake.halo.Halo.local_to_global_begin     301 1.0 3.8748e-02 3.7 0.00e+00 0.0 1.6e+05 6.0e+04 0.0e+00  0  0  6  4  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     301 1.0 1.9289e+00 61.2 1.63e+07 3.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   618
Parloop_Cells_wrap_form00_cell_integral     452 1.0 1.7588e+01 1.4 5.18e+10 1.2 0.0e+00 0.0e+00 0.0e+00  4 10  0  0  0   4 10  0  0  0 295230
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     452 1.0 1.5771e+00 1.4 2.72e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  3044
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     452 1.0 2.1210e+01 1.2 6.83e+10 1.2 0.0e+00 0.0e+00 0.0e+00  6 13  0  0  0   6 13  0  0  0 322789
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     452 1.0 4.3458e+01 1.3 1.09e+11 1.3 0.0e+00 0.0e+00 0.0e+00 11 20  0  0  0  11 20  0  0  0 233470
firedrake.constant.Constant.assign      75 1.0 3.4830e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f3865a8e50_wrap_pyop2_kernel_prolong       4 0.0 7.7212e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f385bce010_wrap_pyop2_kernel_prolong       4 0.0 2.7393e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15218642f810_wrap_pyop2_kernel_prolong       4 0.0 7.6925e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152186436610_wrap_pyop2_kernel_prolong       4 0.0 3.4366e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e687f721d0_wrap_pyop2_kernel_prolong       4 0.0 7.6964e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e687f4a050_wrap_pyop2_kernel_prolong       4 0.0 3.2488e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c86409d90_wrap_pyop2_kernel_prolong       4 0.0 7.6896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152c8640a990_wrap_pyop2_kernel_prolong       4 0.0 3.4507e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464283c9c50_wrap_pyop2_kernel_prolong       4 0.0 7.7166e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464283c9790_wrap_pyop2_kernel_prolong       4 0.0 3.8398e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15200703af10_wrap_pyop2_kernel_prolong       4 0.0 7.7702e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152006ffd050_wrap_pyop2_kernel_prolong       4 0.0 3.1811e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149246d97e90_wrap_pyop2_kernel_prolong       4 0.0 7.6886e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149246d88c50_wrap_pyop2_kernel_prolong       4 0.0 2.6835e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14569fe870d0_wrap_pyop2_kernel_prolong       4 0.0 7.6952e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14569fe84110_wrap_pyop2_kernel_prolong       4 0.0 3.5199e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15141d039d90_wrap_pyop2_kernel_prolong       4 0.0 7.7316e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15141cf37750_wrap_pyop2_kernel_prolong       4 0.0 2.6663e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1cbd9c350_wrap_pyop2_kernel_prolong       4 0.0 7.7142e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a1cbdeb350_wrap_pyop2_kernel_prolong       4 0.0 3.8289e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c469c9a210_wrap_pyop2_kernel_prolong       4 0.0 7.7164e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c469c9ba90_wrap_pyop2_kernel_prolong       4 0.0 3.3336e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15060ba8b9d0_wrap_pyop2_kernel_prolong       4 0.0 7.6984e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15060ba73dd0_wrap_pyop2_kernel_prolong       4 0.0 3.4493e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14911a7d4110_wrap_pyop2_kernel_prolong       4 0.0 7.6972e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14911aedec10_wrap_pyop2_kernel_prolong       4 0.0 2.8118e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493e597abd0_wrap_pyop2_kernel_prolong       4 0.0 7.7080e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1493e5bec210_wrap_pyop2_kernel_prolong       4 0.0 3.2781e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8aa802790_wrap_pyop2_kernel_prolong       4 0.0 7.6953e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f8aa817d50_wrap_pyop2_kernel_prolong       4 0.0 3.4328e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e950f2aa10_wrap_pyop2_kernel_prolong       4 0.0 7.6940e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e950f29e50_wrap_pyop2_kernel_prolong       4 0.0 2.7537e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152510908910_wrap_pyop2_kernel_prolong       4 0.0 7.6855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1525106fa8d0_wrap_pyop2_kernel_prolong       4 0.0 3.5494e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14771ccfe850_wrap_pyop2_kernel_prolong       4 0.0 7.7497e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14771ca9a0d0_wrap_pyop2_kernel_prolong       4 0.0 3.2739e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15312eead910_wrap_pyop2_kernel_prolong       4 0.0 7.6981e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15312e5404d0_wrap_pyop2_kernel_prolong       4 0.0 3.1253e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f55bbae8d0_wrap_pyop2_kernel_prolong       4 0.0 7.6891e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f55b215a10_wrap_pyop2_kernel_prolong       4 0.0 3.1154e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14845e3ce450_wrap_pyop2_kernel_prolong       4 0.0 7.6983e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14845e39fad0_wrap_pyop2_kernel_prolong       4 0.0 4.1539e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7c5118f90_wrap_pyop2_kernel_prolong       4 0.0 7.6934e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c7c5145cd0_wrap_pyop2_kernel_prolong       4 0.0 3.6765e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150356a93dd0_wrap_pyop2_kernel_prolong       4 0.0 7.6967e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150356a92210_wrap_pyop2_kernel_prolong       4 0.0 3.2755e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b7b3a8a50_wrap_pyop2_kernel_prolong       4 0.0 7.6968e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152b7b38e050_wrap_pyop2_kernel_prolong       4 0.0 3.6844e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551599bb910_wrap_pyop2_kernel_prolong       4 0.0 7.6905e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15515975b650_wrap_pyop2_kernel_prolong       4 0.0 4.2533e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe03b2e5d0_wrap_pyop2_kernel_prolong       4 0.0 7.7179e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14fe03d6eb10_wrap_pyop2_kernel_prolong       4 0.0 2.7834e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481f312dd90_wrap_pyop2_kernel_prolong       4 0.0 7.6899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1481f312f7d0_wrap_pyop2_kernel_prolong       4 0.0 2.9318e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b709ee8710_wrap_pyop2_kernel_prolong       4 0.0 7.7308e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b709a97b50_wrap_pyop2_kernel_prolong       4 0.0 3.5671e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547458b9ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6987e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547458b8bd0_wrap_pyop2_kernel_prolong       4 0.0 3.0530e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151637ad7350_wrap_pyop2_kernel_prolong       4 0.0 7.6917e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15163c230790_wrap_pyop2_kernel_prolong       4 0.0 3.7909e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147248421550_wrap_pyop2_kernel_prolong       4 0.0 7.6995e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147248328710_wrap_pyop2_kernel_prolong       4 0.0 3.2387e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4e5cbb510_wrap_pyop2_kernel_prolong       4 0.0 7.6876e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a4e5d03110_wrap_pyop2_kernel_prolong       4 0.0 3.0409e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af2b2c1490_wrap_pyop2_kernel_prolong       4 0.0 7.7084e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14af2b230290_wrap_pyop2_kernel_prolong       4 0.0 3.1398e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482a6a40f90_wrap_pyop2_kernel_prolong       4 0.0 7.6896e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1482a6a53890_wrap_pyop2_kernel_prolong       4 0.0 3.1193e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c5caaec90_wrap_pyop2_kernel_prolong       4 0.0 7.6857e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151c5cb0a9d0_wrap_pyop2_kernel_prolong       4 0.0 3.5387e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ce9a8dd10_wrap_pyop2_kernel_prolong       4 0.0 7.6936e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146ce9a8d350_wrap_pyop2_kernel_prolong       4 0.0 3.6554e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152062bd59d0_wrap_pyop2_kernel_prolong       4 0.0 7.6944e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152062bd5490_wrap_pyop2_kernel_prolong       4 0.0 3.9203e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f78c8c8150_wrap_pyop2_kernel_prolong       4 0.0 7.7436e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f78c8e1f90_wrap_pyop2_kernel_prolong       4 0.0 4.1718e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2bd8691d0_wrap_pyop2_kernel_prolong       4 0.0 7.7413e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2bd7933d0_wrap_pyop2_kernel_prolong       4 0.0 2.7688e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c24b94c10_wrap_pyop2_kernel_prolong       4 0.0 7.6865e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c249d54d0_wrap_pyop2_kernel_prolong       4 0.0 3.0138e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15339d928c90_wrap_pyop2_kernel_prolong       4 0.0 7.6965e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15339cee60d0_wrap_pyop2_kernel_prolong       4 0.0 3.6133e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd60acff90_wrap_pyop2_kernel_prolong       4 0.0 7.6850e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd60acf010_wrap_pyop2_kernel_prolong       4 0.0 3.0196e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1464142596d0_wrap_pyop2_kernel_prolong       4 0.0 7.6846e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14641425aed0_wrap_pyop2_kernel_prolong       4 0.0 3.3264e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6dc53ddd0_wrap_pyop2_kernel_prolong       4 0.0 7.6996e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a6dc53fe50_wrap_pyop2_kernel_prolong       4 0.0 3.5635e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15171327f590_wrap_pyop2_kernel_prolong       4 0.0 7.6866e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151712eb11d0_wrap_pyop2_kernel_prolong       4 0.0 3.8030e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7104629d0_wrap_pyop2_kernel_prolong       4 0.0 7.6890e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f7104b3cd0_wrap_pyop2_kernel_prolong       4 0.0 3.5526e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bae83c9490_wrap_pyop2_kernel_prolong       4 0.0 7.6995e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14bae83cbad0_wrap_pyop2_kernel_prolong       4 0.0 3.5150e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a008ba7090_wrap_pyop2_kernel_prolong       4 0.0 7.7061e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a008ba5fd0_wrap_pyop2_kernel_prolong       4 0.0 3.3540e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc2a4da390_wrap_pyop2_kernel_prolong       4 0.0 7.7028e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cc2a4d9ed0_wrap_pyop2_kernel_prolong       4 0.0 3.6608e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e11063f450_wrap_pyop2_kernel_prolong       4 0.0 7.6960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e110685790_wrap_pyop2_kernel_prolong       4 0.0 3.7743e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c83f599d0_wrap_pyop2_kernel_prolong       4 0.0 7.6915e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c83f59a10_wrap_pyop2_kernel_prolong       4 0.0 3.6404e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149282ef6150_wrap_pyop2_kernel_prolong       4 0.0 7.7230e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149283160450_wrap_pyop2_kernel_prolong       4 0.0 2.8582e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c495e5d410_wrap_pyop2_kernel_prolong       4 0.0 7.6903e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c495c7f390_wrap_pyop2_kernel_prolong       4 0.0 3.2205e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3cf578790_wrap_pyop2_kernel_prolong       4 0.0 7.7338e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d3cf34dcd0_wrap_pyop2_kernel_prolong       4 0.0 3.8567e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aafc11d050_wrap_pyop2_kernel_prolong       4 0.0 7.6959e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14aafc3c00d0_wrap_pyop2_kernel_prolong       4 0.0 3.3289e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c25de6b850_wrap_pyop2_kernel_prolong       4 0.0 7.7817e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c25de10710_wrap_pyop2_kernel_prolong       4 0.0 3.1902e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513a7a4b050_wrap_pyop2_kernel_prolong       4 0.0 7.6855e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1513a6dd53d0_wrap_pyop2_kernel_prolong       4 0.0 2.9785e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bb7868e10_wrap_pyop2_kernel_prolong       4 0.0 7.6916e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150bb6ddd850_wrap_pyop2_kernel_prolong       4 0.0 2.7705e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c19c5fbd0_wrap_pyop2_kernel_prolong       4 0.0 7.7137e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148c19ccf010_wrap_pyop2_kernel_prolong       4 0.0 2.8429e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15115440b990_wrap_pyop2_kernel_prolong       4 0.0 7.6976e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15114f8795d0_wrap_pyop2_kernel_prolong       4 0.0 3.1126e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd9b00f110_wrap_pyop2_kernel_prolong       4 0.0 7.6887e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dd9b00eb90_wrap_pyop2_kernel_prolong       4 0.0 3.6926e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dca4c4ad0_wrap_pyop2_kernel_prolong       4 0.0 7.7267e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x149dca70a510_wrap_pyop2_kernel_prolong       4 0.0 3.3266e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d42a9ba450_wrap_pyop2_kernel_prolong       4 0.0 7.7590e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d42a0aa9d0_wrap_pyop2_kernel_prolong       4 0.0 3.7114e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f541977590_wrap_pyop2_kernel_prolong       4 0.0 7.6882e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f541bcdf50_wrap_pyop2_kernel_prolong       4 0.0 3.9983e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a0c3a19d0_wrap_pyop2_kernel_prolong       4 0.0 7.6935e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x146a0c3a20d0_wrap_pyop2_kernel_prolong       4 0.0 2.8537e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2b9ca7c50_wrap_pyop2_kernel_prolong       4 0.0 7.7539e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f2b9ca53d0_wrap_pyop2_kernel_prolong       4 0.0 3.1668e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6f9ba8bd0_wrap_pyop2_kernel_prolong       4 0.0 7.7758e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f6f92fd790_wrap_pyop2_kernel_prolong       4 0.0 2.7716e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbf23d7f10_wrap_pyop2_kernel_prolong       4 0.0 7.6875e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14dbf2157850_wrap_pyop2_kernel_prolong       4 0.0 3.2697e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c169010d0_wrap_pyop2_kernel_prolong       4 0.0 7.6841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153c16ba6f90_wrap_pyop2_kernel_prolong       4 0.0 3.0616e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a14cc27650_wrap_pyop2_kernel_prolong       4 0.0 7.7160e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a14cbee7d0_wrap_pyop2_kernel_prolong       4 0.0 3.8255e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547edda6d50_wrap_pyop2_kernel_prolong       4 0.0 7.7448e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1547edd69790_wrap_pyop2_kernel_prolong       4 0.0 3.0168e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0d1b77ad0_wrap_pyop2_kernel_prolong       4 0.0 7.6871e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c0d1c017d0_wrap_pyop2_kernel_prolong       4 0.0 3.4047e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b5cbc1750_wrap_pyop2_kernel_prolong       4 0.0 7.7774e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x154b5cbd18d0_wrap_pyop2_kernel_prolong       4 0.0 3.8530e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153230b96d10_wrap_pyop2_kernel_prolong       4 0.0 7.6956e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153230c953d0_wrap_pyop2_kernel_prolong       4 0.0 3.0483e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b29226f10_wrap_pyop2_kernel_prolong       4 0.0 7.6954e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b29226c90_wrap_pyop2_kernel_prolong       4 0.0 3.5480e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b95a90b590_wrap_pyop2_kernel_prolong       4 0.0 7.7435e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14b95a995d10_wrap_pyop2_kernel_prolong       4 0.0 3.5686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14590055dc50_wrap_pyop2_kernel_prolong       4 0.0 7.6920e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1459003f5f50_wrap_pyop2_kernel_prolong       4 0.0 3.1505e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfec7b5850_wrap_pyop2_kernel_prolong       4 0.0 7.7675e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14cfec597c50_wrap_pyop2_kernel_prolong       4 0.0 2.4915e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153349fd47d0_wrap_pyop2_kernel_prolong       4 0.0 7.6880e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x153349b33b50_wrap_pyop2_kernel_prolong       4 0.0 3.4445e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a1b5a2010_wrap_pyop2_kernel_prolong       4 0.0 7.7207e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151a1b5a3490_wrap_pyop2_kernel_prolong       4 0.0 3.4652e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152969b0f990_wrap_pyop2_kernel_prolong       4 0.0 7.7593e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152968ec0250_wrap_pyop2_kernel_prolong       4 0.0 3.2943e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab0d5c2510_wrap_pyop2_kernel_prolong       4 0.0 7.7662e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ab0d5b5a90_wrap_pyop2_kernel_prolong       4 0.0 3.3704e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148279983490_wrap_pyop2_kernel_prolong       4 0.0 7.7402e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148279980810_wrap_pyop2_kernel_prolong       4 0.0 3.5614e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9e0987890_wrap_pyop2_kernel_prolong       4 0.0 7.7017e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14a9dbfe7ad0_wrap_pyop2_kernel_prolong       4 0.0 2.9451e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152201c3b210_wrap_pyop2_kernel_prolong       4 0.0 7.7511e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x152201b34090_wrap_pyop2_kernel_prolong       4 0.0 3.3732e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b5bd4b710_wrap_pyop2_kernel_prolong       4 0.0 7.6928e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x151b5aa4c5d0_wrap_pyop2_kernel_prolong       4 0.0 3.2261e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f65ecc5050_wrap_pyop2_kernel_prolong       4 0.0 7.6841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f65ecd1b10_wrap_pyop2_kernel_prolong       4 0.0 3.2565e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e87177210_wrap_pyop2_kernel_prolong       4 0.0 7.7646e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145e8704b0d0_wrap_pyop2_kernel_prolong       4 0.0 3.7431e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148555fb5550_wrap_pyop2_kernel_prolong       4 0.0 7.7841e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x148555fb5850_wrap_pyop2_kernel_prolong       4 0.0 3.0975e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15014eb60350_wrap_pyop2_kernel_prolong       4 0.0 7.7335e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15014eb7a990_wrap_pyop2_kernel_prolong       4 0.0 3.2686e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x15016965bf50_wrap_pyop2_kernel_prolong       4 0.0 7.7505e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150169855190_wrap_pyop2_kernel_prolong       4 0.0 2.7764e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9971f2250_wrap_pyop2_kernel_prolong       4 0.0 7.7783e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14f9968234d0_wrap_pyop2_kernel_prolong       4 0.0 3.7966e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed8e693b10_wrap_pyop2_kernel_prolong       4 0.0 7.6883e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14ed8e8fb5d0_wrap_pyop2_kernel_prolong       4 0.0 3.1611e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456d728eed0_wrap_pyop2_kernel_prolong       4 0.0 7.7248e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1456d72eb850_wrap_pyop2_kernel_prolong       4 0.0 3.6780e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f61566810_wrap_pyop2_kernel_prolong       4 0.0 7.7698e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150f60ca11d0_wrap_pyop2_kernel_prolong       4 0.0 3.4683e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2df8d9a50_wrap_pyop2_kernel_prolong       4 0.0 7.6889e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e2df953d10_wrap_pyop2_kernel_prolong       4 0.0 3.5293e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9f7461950_wrap_pyop2_kernel_prolong       4 0.0 7.7729e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14c9f7460110_wrap_pyop2_kernel_prolong       4 0.0 3.3354e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dbb2a8fd0_wrap_pyop2_kernel_prolong       4 0.0 7.7587e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x145dbb2f8050_wrap_pyop2_kernel_prolong       4 0.0 2.8522e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551cbfe5b50_wrap_pyop2_kernel_prolong       4 0.0 7.6960e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x1551cbfe7710_wrap_pyop2_kernel_prolong       4 0.0 4.0019e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5b2fbe510_wrap_pyop2_kernel_prolong       4 0.0 7.7471e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14e5b2fbdb50_wrap_pyop2_kernel_prolong       4 0.0 3.2808e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f64a0d490_wrap_pyop2_kernel_prolong       4 0.0 7.6899e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x147f64a0f6d0_wrap_pyop2_kernel_prolong       4 0.0 3.9786e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0d27feb90_wrap_pyop2_kernel_prolong       4 0.0 7.7383e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x14d0d27e0610_wrap_pyop2_kernel_prolong       4 0.0 3.6841e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b3da87490_wrap_pyop2_kernel_prolong       4 0.0 7.7839e-01 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_set_#x150b3da85d50_wrap_pyop2_kernel_prolong       4 0.0 3.7527e-03 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   225            225
              Viewer     3              3
           Index Set  1511           1511
   IS L to G Mapping   206            206
             Section   468            468
   Star Forest Graph   361            361
              Vector   133            133
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
Average time to get PetscTime(): 2.59e-08
Average time for MPI_Barrier(): 4.379e-06
Average time for zero size MPI_Send(): 2.25015e-06
#PETSc Option Table entries:
-log_view :/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/murrumbidgee/bjacobi/smoke.profile # (source: code)
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

