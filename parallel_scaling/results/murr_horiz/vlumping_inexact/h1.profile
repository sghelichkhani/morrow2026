****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/source/morrow/parallel_scaling/murrumbidgee_3d.py on a default named gadi-cpu-spr-0536.gadi.nci.org.au with 104 processes, by sg8812 on Thu Aug 20 16:08:56 2026
Using PETSc Development Git Revision: ab02c5218b841d6dcf87fa7163a72e0278009638 Git Date: 2026-08-15 17:25:53 +0000

                         Max       Max/Min     Avg       Total
Time (sec):           8.947e+02     1.000   8.947e+02
Objects:              0.000e+00     0.000   0.000e+00
Flops:                1.122e+12     1.127   1.067e+12  1.110e+14
Flops/sec:            1.254e+09     1.127   1.193e+09  1.241e+11
MPI Msg Count:        8.127e+04     2.666   5.716e+04  5.944e+06
MPI Msg Len (bytes):  9.039e+09     2.543   1.111e+05  6.604e+11
MPI Reductions:       1.115e+04     1.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 5.6318e+02  62.9%  8.7486e+13  78.8%  2.494e+06  42.0%  1.702e+05       64.3%  9.110e+03  81.7%
 1:        MG Apply: 3.3150e+02  37.1%  2.3511e+13  21.2%  3.450e+06  58.0%  6.841e+04       35.7%  2.024e+03  18.1%

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

BuildTwoSided       1070 1.0 4.9048e+01 6.1 0.00e+00 0.0 6.8e+04 4.0e+00 1.1e+03  4  0  1  0 10   6  0  3  0 12    -0
BuildTwoSidedF      1031 1.0 4.9042e+01 6.1 0.00e+00 0.0 1.1e+05 1.3e+06 1.0e+03  4  0  2 22  9   6  0  4 34 11    -0
SFSetGraph            42 1.0 5.1438e-03 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp               39 1.0 2.6484e-02 1.6 0.00e+00 0.0 2.5e+04 2.8e+03 3.9e+01  0  0  0  0  0   0  0  1  0  0    -0
SFBcastBegin         679 1.0 3.1523e-01 2.8 0.00e+00 0.0 3.5e+05 9.7e+04 0.0e+00  0  0  6  5  0   0  0 14  8  0    -0
SFBcastEnd           679 1.0 1.3507e+01 84.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
SFReduceBegin        291 1.0 6.4827e-02 17.7 0.00e+00 0.0 1.5e+05 1.1e+05 0.0e+00  0  0  3  2  0   0  0  6  4  0    -0
SFReduceEnd          291 1.0 2.1685e+00 41.1 2.82e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   951
SFFetchOpBegin         2 1.0 1.6714e-05 5.6 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFFetchOpEnd           2 1.0 2.5809e-04 15.3 0.00e+00 0.0 8.1e+02 1.1e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFCreateEmbed          2 1.0 1.0120e-03 1.7 0.00e+00 0.0 6.4e+02 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFDistSection         21 1.0 8.9268e-03 1.3 0.00e+00 0.0 2.1e+04 2.8e+02 2.4e+01  0  0  0  0  0   0  0  1  0  0    -0
SFSectionSF           21 1.0 3.9896e-03 3.7 0.00e+00 0.0 9.9e+03 1.6e+02 2.1e+01  0  0  0  0  0   0  0  0  0  0    -0
SFPack              4226 1.0 1.3596e+00 2.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            4228 1.0 1.5421e-01 11.8 2.82e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 13367
VecDot               205 1.0 5.9429e-01 4.2 1.65e+08 1.1 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2 27652
VecMDot             3049 1.0 2.6458e+01 2.5 1.15e+10 1.1 0.0e+00 0.0e+00 3.0e+03  2  1  0  0 27   3  1  0  0 33 43300
VecNorm             3944 1.0 1.0663e+01 2.5 3.18e+09 1.1 0.0e+00 0.0e+00 3.9e+03  1  0  0  0 35   1  0  0  0 43 29648
VecScale            3459 1.0 1.0042e+00 1.2 1.39e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 138060
VecCopy             1660 1.0 2.1082e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecSet               820 1.0 6.3775e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAXPY              410 1.0 6.5387e-01 1.1 3.31e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 50264
VecWAXPY             205 1.0 3.8811e-01 1.1 8.27e+07 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 21170
VecMAXPY            3459 1.0 1.7959e+01 1.1 1.40e+10 1.1 0.0e+00 0.0e+00 0.0e+00  2  1  0  0  0   3  2  0  0  0 77402
VecScatterBegin     3254 1.0 1.2329e+00 2.7 0.00e+00 0.0 1.7e+06 1.1e+05 0.0e+00  0  0 29 29  0   0  0 70 45  0    -0
VecScatterEnd       3254 1.0 1.2300e+01 26.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
VecReduceArith       410 1.0 2.7508e-01 1.7 3.31e+08 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0 119480
VecReduceComm        205 1.0 1.3674e-01 35.9 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+02  0  0  0  0  2   0  0  0  0  2    -0
VecNormalize        2255 1.0 7.4807e+00 2.4 2.73e+09 1.1 0.0e+00 0.0e+00 2.3e+03  1  0  0  0 20   1  0  0  0 25 36246
MatMult             3254 1.0 1.2611e+02 1.1 9.26e+10 1.1 1.7e+06 1.1e+05 0.0e+00 14  8 29 29  0  22 11 70 45  0 73114
MatSolve            2255 1.0 8.7689e+01 1.1 6.23e+10 1.1 0.0e+00 0.0e+00 0.0e+00  9  6  0  0  0  15  7  0  0  0 70597
MatLUFactorSym         1 1.0 2.5149e-01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatLUFactorNum       410 1.0 3.7427e+01 1.1 5.16e+10 1.1 0.0e+00 0.0e+00 0.0e+00  4  5  0  0  0   6  6  0  0  0 135265
MatILUFactorSym        1 1.0 1.4429e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatAssemblyBegin    1446 1.0 5.0132e+01 4.2 0.00e+00 0.0 1.1e+05 1.3e+06 1.0e+03  4  0  2 22  9   6  0  4 34 11    -0
MatAssemblyEnd      1446 1.0 9.7485e+00 11.6 2.08e+08 0.0 2.1e+03 1.4e+04 1.7e+01  1  0  0  0  0   1  0  0  0  0   929
MatGetRowIJ            1 1.0 1.3900e-06 10.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetOrdering         1 1.0 6.0817e-03 2.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatZeroEntries       410 1.0 6.8853e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
MatTranspose           2 1.0 1.4892e-02 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultSym          2 1.0 1.2692e-02 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatMatMultNum        410 1.0 4.7639e+00 1.6 5.91e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  1  0  0  0   1  1  0  0  0 123644
MatPtAPSymbolic        1 1.0 1.9583e-01 1.0 0.00e+00 0.0 1.6e+03 1.8e+05 7.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatPtAPNumeric       205 1.0 2.9408e+01 1.0 2.37e+10 1.1 1.1e+05 3.3e+05 2.1e+02  3  2  2  5  2   5  3  4  8  2 80133
MatGetLocalMat       205 1.0 1.4485e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MatGetBrAoCol        205 1.0 7.6850e-01 2.1 0.00e+00 0.0 1.1e+05 3.3e+05 0.0e+00  0  0  2  6  0   0  0  4  9  0    -0
PCSetUp              205 1.0 2.5761e+02 1.0 2.19e+11 1.1 1.2e+06 1.3e+05 4.8e+03 29 20 20 24 43  46 25 49 37 52 84153
PCApply              999 1.0 3.3799e+02 1.0 2.37e+11 1.1 3.5e+06 6.8e+04 2.0e+03 37 21 58 36 18 Multiple stages 69560
PCApplyOnBlocks     2255 1.0 8.7720e+01 1.1 6.23e+10 1.1 0.0e+00 0.0e+00 0.0e+00  9  6  0  0  0  15  7  0  0  0 70573
KSPSetUp             205 1.0 1.3109e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
KSPSolve             205 1.0 3.8277e+02 1.0 2.73e+11 1.1 4.0e+06 7.4e+04 4.2e+03 43 24 67 45 38 Multiple stages 70712
KSPGMRESOrthog      3049 1.0 4.0127e+01 1.6 2.31e+10 1.1 0.0e+00 0.0e+00 3.0e+03  4  2  0  0 27   6  3  0  0 33 57102
DMPlexCreateGmsh       1 1.0 5.2530e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexCrFromFile       1 1.0 1.7580e-01 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Partition         2 1.0 7.7031e-02 1.0 0.00e+00 0.0 6.7e+03 2.9e+02 2.5e+01  0  0  0  0  0   0  0  0  0  0    -0
Mesh Migration         2 1.0 2.2319e-02 1.1 0.00e+00 0.0 2.4e+04 3.7e+02 1.1e+02  0  0  0  0  1   0  0  1  0  1    -0
DMPlexPartSelf         1 1.0 8.0252e-03 3516.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblInv       2 1.0 1.1835e-02 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartLblSF        2 1.0 4.3507e-03 1.1 0.00e+00 0.0 1.3e+03 2.8e+02 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPartStrtSF       2 1.0 1.2195e-03 2.1 0.00e+00 0.0 6.4e+02 1.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexPointSF          2 1.0 5.5120e-03 1.3 0.00e+00 0.0 7.5e+02 2.1e+03 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexInterp           1 1.0 2.6478e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 5.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistribute       1 1.0 9.9735e-02 1.0 0.00e+00 0.0 4.4e+03 2.2e+03 6.3e+01  0  0  0  0  1   0  0  0  0  1    -0
DMPlexDistCones        2 1.0 2.8604e-03 1.0 0.00e+00 0.0 3.8e+03 7.1e+02 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexDistLabels       2 1.0 1.2757e-02 1.0 0.00e+00 0.0 1.3e+04 3.9e+02 7.6e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistOvrlp        1 1.0 4.7793e-03 1.1 0.00e+00 0.0 2.7e+04 9.9e+01 8.0e+01  0  0  0  0  1   0  0  1  0  1    -0
DMPlexDistField        3 1.0 3.2345e-03 1.1 0.00e+00 0.0 5.8e+03 1.4e+02 8.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexStratify         4 1.0 2.2349e-02 17.5 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
DMPlexSymmetrize       4 1.0 1.9233e-03 69.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESSolve             75 1.0 8.3941e+02 1.0 1.12e+12 1.1 5.9e+06 1.1e+05 1.1e+04 94 100 99 100 96 Multiple stages 132224
SNESSetUp              1 1.0 4.8993e-05 6.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SNESFunctionEval     280 1.0 2.9923e+01 1.2 2.48e+11 1.1 3.4e+05 1.1e+05 0.0e+00  3 22  6  6  0   5 28 14  9  0 811255
SNESJacobianEval     205 1.0 1.5966e+02 1.0 3.80e+11 1.1 2.2e+05 7.1e+05 8.2e+02 18 34  4 24  7  28 43  9 37  9 233570
SNESLineSearch       205 1.0 2.3951e+01 1.0 1.88e+11 1.1 3.3e+05 1.1e+05 8.2e+02  3 17  6  5  7   4 21 13  9  9 770075
firedrake              1 1.0 8.9247e+02 1.0 1.12e+12 1.1 5.9e+06 1.1e+05 1.1e+04 100 100 100 100 100 Multiple stages 124370
firedrake.__init__       1 1.0 6.7287e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateMesh             1 1.0 3.1699e-01 1.6 0.00e+00 0.0 5.6e+04 2.7e+02 2.0e+02  0  0  1  0  2   0  0  2  0  2    -0
firedrake.mesh._from_gmsh       1 1.0 1.7678e-01 3.3 0.00e+00 0.0 0.0e+00 0.0e+00 1.1e+01  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._set_partitioner       1 1.0 8.4946e-04 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._get_partitioner       1 1.0 1.5040e-06 1.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: numbering        1 1.0 3.0609e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 4.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Mesh: reorder          1 1.0 5.8780e-04 3.5 0.00e+00 0.0 0.0e+00 0.0e+00 2.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateFunctionSpace       9 1.0 2.4519e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.make_scalar_element      11 1.0 1.1049e-03 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspaceimpl.FunctionSpace.__init__       9 1.0 2.3041e-02 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.get_shared_data       8 1.0 2.1884e-02 1.2 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.__init__       8 1.0 2.1819e-02 1.2 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
FunctionSpaceData: CreateElement      16 1.0 1.1608e-02 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.MeshTopology._facets       2 1.0 2.1885e-03 1.1 0.00e+00 0.0 1.1e+03 1.4e+02 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.__init__       4 1.0 2.9924e-04 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.dmhooks.set_function_space       6 1.0 9.5399e-05 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.__init__      55 1.0 4.0601e-02 3.0 0.00e+00 0.0 0.0e+00 0.0e+00 1.0e+00  0  0  0  0  0   0  0  0  0  0    -0
CreateExtMesh          1 1.0 1.7521e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.__init__       1 1.0 1.4091e-04 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspace.VectorFunctionSpace       2 1.0 3.8008e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.ExtrudedMeshTopology.node_classes       3 1.0 7.5300e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.extrusion_utils.make_extruded_coords       1 1.0 1.7477e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 3.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.functionspacedata.FunctionSpaceData.get_map     634 1.0 8.9915e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopExecute      2232 1.0 1.7116e+02 1.2 6.28e+11 1.1 3.1e+05 1.1e+05 1.5e+01 17 55  5  5  0  27 70 12  8  0 359694
Parloop_Cells_wrap_pyop2_kernel_uniform_extrusion       2 1.0 1.7159e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_global_kernel)    4464 1.0 2.4708e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  3  0  0  0  0   4  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(_generate_code_from_global_kernel)      16 1.0 1.0886e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
GlobalKernel: generate loopy      16 0.0 1.2455e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
GlobalKernel: generate device code      16 0.0 9.0716e+00 0.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(load)      16 1.0 1.3641e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.load      16 1.0 1.3641e+01 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  2  0  0  0  0   2  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(make_so)      16 1.0 8.6581e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
pyop2.compilation.make_so      16 1.0 8.5153e+00 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
ParLoopRednBegin    2232 1.0 6.8245e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
ParLoopRednEnd      2232 1.0 6.7301e-03 1.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.make_mesh_from_coordinates       1 1.0 6.6614e-04 1.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.function.Function.interpolate      10 1.0 4.7680e+00 1.0 6.81e+07 1.1 9.7e+03 4.6e+04 1.2e+01  1  0  0  0  0   1  0  0  0  0  1421
firedrake.interpolation.interpolate      11 1.0 3.9341e-03 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assemble.assemble      11 1.0 5.7951e+00 1.0 7.06e+07 1.1 1.1e+04 4.2e+04 3.4e+01  1  0  0  0  0   1  0  0  0  0  1210
firedrake.formmanipulation.split_form      12 1.0 3.5173e-03 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.formmanipulation.ExtractSubBlock.split      12 1.0 1.6817e-04 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_expression)      11 1.0 1.5849e-01 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.interpolation.compile_expression       6 1.0 9.9831e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.halo.Halo.global_to_local_begin     574 1.0 3.6363e-01 2.3 0.00e+00 0.0 3.1e+05 1.1e+05 2.0e+00  0  0  5  5  0   0  0 12  8  0    -0
Parloop_Cells_wrap_expression_kernel      22 1.0 5.3496e+00 1.0 7.06e+07 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0  1311
firedrake.halo.Halo.global_to_local_end     574 1.0 1.3316e+01 159.9 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
firedrake.function.Function.assign     314 1.0 1.6818e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 9.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.assign.Assigner.assign     313 1.0 1.6114e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 6.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TestFunction       2 1.0 2.2962e-04 2.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.constant.Constant.evaluate     154 1.0 1.7142e-03 2.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.FacetNormal       1 1.0 6.1803e-05 3.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalProblem.__init__       1 1.0 3.2450e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.derivative       2 1.0 1.9296e-03 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.adjoint       1 1.0 2.9974e-02 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.__init__       1 1.0 7.2901e+00 1.0 0.00e+00 0.0 3.2e+03 4.5e+05 2.3e+01  1  0  0  0  0   1  0  0  0  0    -0
firedrake.solving_utils._SNESContext.__init__       1 1.0 7.2160e-04 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.cofunction.Cofunction.__init__       1 1.0 2.6272e-04 2.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.tsfc_interface.compile_form       2 1.0 4.9829e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
pyop2.caching.parallel_cache.wrapper(compile_form)       2 1.0 4.9829e+00 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  0  0  0  0    -0
CreateSparsity         2 1.0 3.9637e+00 1.1 0.00e+00 0.0 2.7e+03 2.6e+05 1.8e+01  0  0  0  0  0   1  0  0  0  0    -0
MatZeroInitial         2 1.0 5.2662e-01 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.variational_solver.NonlinearVariationalSolver.solve      75 1.0 8.3969e+02 1.0 1.12e+12 1.1 5.9e+06 1.1e+05 1.1e+04 94 100 99 100 97 Multiple stages 132180
firedrake.mesh.AbstractMeshTopology.measure_set       9 1.0 2.6830e-01 905.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh.AbstractMeshTopology.cell_subset       5 1.0 7.7690e-06 1.4 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.measure_set       7 1.0 2.6825e-01 1110.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.mesh._Facets.subset       2 1.0 2.6822e-01 1282.6 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
Parloop_Cells_wrap_form0_cell_integral     560 1.0 7.4648e+00 1.3 6.42e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 854684
Parloop_Cells_wrap_form0_exterior_facet_top_integral     560 1.0 9.9124e-01 1.0 8.34e+06 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   837
Parloop_ExtFacets_wrap_form0_exterior_facet_vert_integral     560 1.0 1.2503e+00 1.0 6.06e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  9057
Parloop_Cells_wrap_form0_interior_facet_horiz_integral     560 1.0 5.1063e+00 1.1 6.16e+10 1.1 0.0e+00 0.0e+00 0.0e+00  1  6  0  0  0   1  7  0  0  0 1200015
Parloop_IntFacets_wrap_form0_interior_facet_vert_integral     560 1.0 1.0669e+01 1.2 1.24e+11 1.2 0.0e+00 0.0e+00 0.0e+00  1 11  0  0  0   2 13  0  0  0 1101619
firedrake.halo.Halo.local_to_global_begin     280 1.0 7.4395e-02 7.8 0.00e+00 0.0 1.5e+05 1.1e+05 0.0e+00  0  0  3  2  0   0  0  6  4  0    -0
firedrake.halo.Halo.local_to_global_end     280 1.0 2.1698e+00 40.3 2.82e+07 2.5 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0   950
Parloop_Cells_wrap_form00_cell_integral     410 1.0 2.8132e+01 1.4 8.77e+10 1.1 0.0e+00 0.0e+00 0.0e+00  3  8  0  0  0   4 10  0  0  0 309838
Parloop_ExtFacets_wrap_form00_exterior_facet_vert_integral     410 1.0 1.9114e+00 1.8 4.52e+08 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0  4417
Parloop_Cells_wrap_form00_interior_facet_horiz_integral     410 1.0 3.1412e+01 1.1 1.16e+11 1.1 0.0e+00 0.0e+00 0.0e+00  3 10  0  0  0   5 13  0  0  0 367112
Parloop_IntFacets_wrap_form00_interior_facet_vert_integral     410 1.0 7.7229e+01 1.4 1.79e+11 1.2 0.0e+00 0.0e+00 0.0e+00  7 15  0  0  0  11 19  0  0  0 220478
firedrake.dmhooks.get_function_space       1 1.0 1.1015e-03 1.8 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
firedrake.ufl_expr.TrialFunction       1 1.0 5.1935e-05 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
MGSetup Level 0      205 1.0 7.2937e+00 1.0 6.40e+07 11.9 0.0e+00 0.0e+00 2.0e+00  1  0  0  0  0   1  0  0  0  0   262
MGSetup Level 1      205 1.0 2.1986e+02 1.0 1.95e+11 1.1 1.1e+06 1.1e+05 4.3e+03 25 17 18 18 39  39 22 44 28 47 87874
firedrake.constant.Constant.assign      75 1.0 3.0476e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0

--- Event Stage 1: MG Apply

BuildTwoSided        205 1.0 1.2837e-02 3.9 0.00e+00 0.0 1.3e+05 4.0e+00 2.0e+02  0  0  2  0  2   0  0  4  0 10    -0
SFSetGraph           205 1.0 8.5202e-03 2.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFSetUp              205 1.0 1.9321e-02 2.0 0.00e+00 0.0 2.6e+05 2.1e+02 2.0e+02  0  0  4  0  2   0  0  8  0 10    -0
SFPack              6993 1.0 1.4489e+00 3.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
SFUnpack            6993 1.0 6.2924e-03 2.5 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecCopy             2997 1.0 3.4392e+00 1.2 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0    -0
VecSet              3995 1.0 8.0419e-01 1.1 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
VecAYPX             5994 1.0 8.2582e+00 2.0 3.22e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  1  0  0  0 38789
VecAXPBYCZ          1998 1.0 3.8567e+00 1.6 4.03e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  2  0  0  0 103822
VecScatterBegin     6993 1.0 1.6401e+00 3.0 0.00e+00 0.0 2.8e+06 8.5e+04 0.0e+00  0  0 47 36  0   0  0 81 100  0    -0
VecScatterEnd       6993 1.0 2.0589e+01 26.7 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  0  0  0  0    -0
MatMult             3996 1.0 1.5901e+02 1.1 1.14e+11 1.1 2.1e+06 1.1e+05 0.0e+00 17 10 36 36  0  45 48 62 100  0 71212
MatMultAdd           999 1.0 4.8010e+00 1.2 2.42e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   1  1  0  0  0 50040
MatMultTranspose     999 1.0 4.2909e+00 2.5 2.42e+09 1.1 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  1  0  0  0 55988
MatSolve            4995 1.0 1.6838e+02 1.1 1.11e+11 1.1 1.3e+06 5.3e+02 1.0e+03 18 10 22  0  9  48 47 38  0 51 65248
MatResidual          999 1.0 4.3497e+01 1.2 2.88e+10 1.1 5.4e+05 1.1e+05 0.0e+00  4  3  9  9  0  12 12 16 25  0 66001
PCSetUpOnBlocks     1998 1.0 2.3360e-02 1.3 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0    -0
PCApply             4995 1.0 1.6846e+02 1.1 1.11e+11 1.1 1.3e+06 5.3e+02 1.0e+03 18 10 22  0  9  48 47 38  0 51 65216
PCApplyOnBlocks     3996 1.0 1.6328e+02 1.2 1.10e+11 1.1 0.0e+00 0.0e+00 0.0e+00 17 10  0  0  0  46 47  0  0  0 67187
KSPSolve            2997 1.0 2.9275e+02 1.1 2.03e+11 1.1 2.9e+06 6.1e+04 2.0e+03 32 18 49 27 18  86 86 84 75 100 68862
MGSmooth Level 0     999 1.0 1.1196e+01 2.4 5.89e+08 10.9 1.3e+06 5.3e+02 2.0e+03  1  0 22  0 18   2  0 38  0 100  1434
MGSmooth Level 1    1998 1.0 2.8810e+02 1.1 2.03e+11 1.1 1.6e+06 1.1e+05 0.0e+00 31 18 27 27  0  83 86 47 75  0 69917
MGResid Level 1      999 1.0 4.3502e+01 1.2 2.88e+10 1.1 5.4e+05 1.1e+05 0.0e+00  4  3  9  9  0  12 12 16 25  0 65994
MGInterp Level 1    1998 1.0 8.8935e+00 1.4 4.83e+09 1.1 0.0e+00 0.0e+00 0.0e+00  1  0  0  0  0   2  2  0  0  0 54027
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container   160            160
              Viewer     3              3
           Index Set   487            487
   IS L to G Mapping     7              7
             Section    90             90
   Star Forest Graph    82            287
              Vector   929            929
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

           Index Set   410            410
   Star Forest Graph   205              0
              Vector   205            205
========================================================================================================================
Average time to get PetscTime(): 2.65e-08
Average time for MPI_Barrier(): 4.2078e-06
Average time for zero size MPI_Send(): 2.02052e-06
#PETSc Option Table entries:
-BackwardEuler-Equation_lumped_pc_mg_galerkin both # (source: code)
-BackwardEuler-Equation_lumped_pc_mg_log # (source: code)
-log_view :/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z/stage2/results/vlumping_inexact/h1.profile # (source: code)
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

